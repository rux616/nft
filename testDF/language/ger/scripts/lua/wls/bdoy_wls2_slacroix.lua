--************************
--name   : bdoy_wls2_slacroix.lua
--ver    : 0.1
--author : Farril
--date   : 2004/09/07
--lang   : de
--desc	 : Missionscript for „Danger from the Desert“
--npc    : 
--************************
--changelog:
--2004/09/26(0.1): header added(Ferron)
--************************

-- special edittion - testserver

-- NPCs: 
--   Sandra Lacroix	Briefing: 0, Checking 50,
mission_id = 3803		-- index to missionbase.def

--   CityAdmin, 44th Special Forces Division, Commanding Officer
dogtag1_id = 11023
--   CityAdmin, 44th Special Forces Division, Corporal 
dogtag2_id = 11024

-- Mission Targets:
--   1. Gain Dogtags of NPCs b-c
prim_goal_flag = 0
--   2.4 Groups of the Corporals = 4x	
sec_goal_flag = 1
-- both targets are done ... last flag so that mission is not finished 
-- before he talked to Agent Foster again
final_goal_flag = 2

-- *** Rewards:
-- primary =>
prim_goal_reward_credits = 150000
prim_goal_reward_symp = 5
prim_goal_reward_item = -1
-- secondary =>
sec_goal_reward_credits = 0
sec_goal_reward_symp = 0
sec_goal_reward_item = 10521 -- Medal: 'Guardian Democrat'

-- Anforderungen:
faction_id = 15		-- TG
min_symph = 30		

function CHECK_REQS()
	if (node==state) then
		GETFACTIONSYMPATHY(faction_id)
		if (result >= min_symph) then
			result = 1
		else
			result = 0
		end
	end
end

function CHECK_DOGTAGS()
	if (node==state) then
		TAKEITEM(dogtag1_id)
		if (result==1) then
			TAKEITEM(dogtag2_id)
			if (result==1) then
				-- all items found
				result = 1
			else
				GIVEITEM(dogtag1_id)
				result = 0 
			end	
		else
			-- kein Dogtag gehabt => nix zurück
			result = 0 
		end
	end
end

function REWARD_PRIM()
	if (state==node) then
		if (prim_goal_reward_credits>0) then
			GIVEMONEY(prim_goal_reward_credits) ;
		end
		if (prim_goal_reward_symp>0) then
		end
		if (prim_goal_reward_item>0) then
			GIVEITEM(prim_goal_reward_item) ;
		end
	end
end

function REWARD_SEC()
	if (state==node) then
		if (sec_goal_reward_credits>0) then
			GIVEMONEY(sec_goal_reward_credits) ;
		end
		if (sec_goal_reward_symp>0) then
		end
		if (sec_goal_reward_item>0) then
			GIVEITEM(sec_goal_reward_item) ;
		end
	end
end

function DEBUGMSG(text)
	_ERRORMESSAGE(text) ;
end

-- **************************************************************
-- **************************************************************
-- **************************************************************

function DIALOG()
	-- **************************** Briefing

	NODE(0)
		CHECK_REQS()
		if (result==0) then
			-- Ist nicht geeignet, also ein bissle belangloser text ... immer
			-- schön unauffällig :p
			SAY("Weiter gehen. Es gibt hier nichts zu sehen.",1) ;
			ENDDIALOG()
		else 
			-- Der Char hat alle Anforderungen
			SAY("Hallo, Was kann ich für Dich tun?") ;
			ANSWER("Ich suche das Abenteuer.",3) ;
			ANSWER("Hast Du einen Job für mich?",2) ;
			ANSWER("Hmm, sorry, dachte Sie sind jemand anderes.",1) ;
		end
	NODE(1)
		SAY("Friede und Freiheit mit Dir.") ;
		ENDDIALOG() ;
	NODE(2)
		SAY("Arbeit? Da hast Du den Richtigen gefunden. Die Anführer der Rebellen haben ein echtes Abenteuer für Dich.") ;
		ANSWER("Hört sich ja interessant an. Um was handelt es sich?",3) ;
	NODE(3)
		SAY("Nach den letzten Angriffen, hat die City Admin den militärischen Druck um unsere schützende Kuppel erhöht. Die S.T.O.R.M. Einheiten formieren sich und sind eine echte Bedrohung für unsere Zivilisten.") ;
		ANSWER("Ja, einige Gruppen auf Patrouille habe ich schon gesehen.",4)
	NODE(4)
		SAY("Einige Runner haben berichtet, dass zwischen den gewöhnlichen Corporals einige speziell ausgebildete Offiziere ihren Dienst tun. Wir glauben, dass wenn einmal alle Gruppen unter der Führung dieser Sonder-Offiziere sind, sie versuchen werden in den Dome of York einzudringen.") ;
		ANSWER("Sprich weiter.",5) ;
	NODE(5)
		SAY("Während unsere Truppen an anderen Fronten kämpfen, oder sich von früheren Angriffen erholen, müssen wir unbedingt diese Commander ausschalten. Die Rebellen-Allianz wird Deine Hilfe nicht vergessen.") ;
		ANSWER("Ach, ich denke nicht das ich mit denen zurecht komme.",7) ;
		ANSWER("Betrachte es als erledigt.",6)
	NODE(6)
		SAY("Zeig es ihnen. Ich hoffe ich seh dich bald wieder.")	;
		STARTMISSION(mission_id)			-- ok accepted
		SETNEXTDIALOGSTATE(50)				-- next time just check if he has done the missions
		ENDDIALOG()			
	NODE(7)
		SAY("Das ist Deine Entscheidung. Jemand anders wird sich die Gelegenheit und die damit verbundene Ehre nicht entgehen lassen.") ;
		ENDDIALOG()			
		
	-- ************************* Checking 
	
	NODE(50)
		ISMISSIONTARGETACCOMPLISHED(prim_goal_flag)
		if (result==1) then
			CHECK_DOGTAGS()
			if (result==1) then
				-- all DogTags were there, all were taken
				SAY("Wie ich sehe, hast Du die Commander erledigt.") ;
				REWARD_PRIM() ;
				ACTIVATEDIALOGTRIGGER(prim_goal_flag) ;
				ANSWER("Es war nicht leicht, aber ich habe es geschafft. Ich denke, die Gegend ist jetzt sauber",51) ;
				ANSWER("Ich habe nur die Offiziere erwischt. Aber ich mache noch mit dem Rest der Gruppen weiter.",52) ;
			else
				-- not all Dogtags
				SAY("Sie sind stark, nicht wahr?") ;
				ENDDIALOG()
			end	
		else
			-- prim goal was done previous
			-- not repeatable within one run
			state = 51 ;
			-- = continue with node 51 (only works if node 51 is defined after this node)
		end
	NODE(51)
		ISMISSIONTARGETACCOMPLISHED(sec_goal_flag) ;
		if (result==1) then
			-- secondary goal accomplished
			SAY("Gut gemacht.") ;
			ANSWER("Was jetzt, denkst Du nicht auch ich hätte einen Bonus verdient? Komm schon, ich habe sie alle erledigt!",53) 
		else
			-- failed on the secondary goal.
			SAY("Sie sind stark, nicht wahr?") ;
			ENDDIALOG()
		end
	NODE(52)
		SAY("Ich bleibe hier.") ;
		ENDDIALOG()
	NODE(53)
		SAY("Beruhig Dich doch, natürlich habe ich etwas für Dich. Du hast den Rebellen heute einen großen Dienst erwiesen. Ich kann mit einigen einflußreichen Leuten in Kontakt treten. Soll ich für Dich sprechen, damit Du als Twilight Guardian aufgenommen wirst?") ;
		ANSWER("Zur Hölle, nein!",54) ;
		ANSWER("Das kannst Du für mich tun? Das wäre ja großartig.",55) ;
	NODE(54)
		-- he does not want to change faction
		SAY("Dann verzieh' Dich von hier, aber schnell!") 
		ACTIVATEDIALOGTRIGGER(prim_goal_flag) ;
		ACTIVATEDIALOGTRIGGER(sec_goal_flag) ;
		ACTIVATEDIALOGTRIGGER(final_goal_flag) ;
		ENDDIALOG()
	NODE(55)		
		SAY("Willkommen bei den Twilight Guardian. Lass mich Dich mit dieser Medaille auszeichnen.") ;
		CHANGEFACTION(faction_id) ;	-- make him CityAdmin (will fail if clanned) then he cant give the medal
		if (result==0) then
			sec_reward_item = -1 ;  -- no item in this if hes now not CA
		end
		REWARD_SEC() ;
		-- finish this quest
		ACTIVATEDIALOGTRIGGER(prim_goal_flag) ;
		ACTIVATEDIALOGTRIGGER(sec_goal_flag) ;
		ACTIVATEDIALOGTRIGGER(final_goal_flag) ;
		ENDDIALOG()
end
