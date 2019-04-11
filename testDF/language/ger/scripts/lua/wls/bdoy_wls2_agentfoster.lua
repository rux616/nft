--************************
--name   : bdoy_wls2_agentfoster.lua
--ver    : 0.1
--author : Farril
--date   : 2004/09/14
--lang   : de
--desc	 : Missionscript for „Guardian Recon Stations“
--npc    : Agent Foster
--************************
--changelog:
--2004/09/14(0.1): written(Farril)
--2004/09/27(0.2): re-added german translation(Snotra)
--************************

-- NPCs: 
--   Agent Foster	Briefing: 0, Checking 50,
mission_id = 3802		-- index to missionbase.def

--   Signal Intelligence Officer Gordon Herald
dogtag1_id = 11019
--   Signal Intelligence Officer Isabelle Renard
dogtag2_id = 11020
--   Signal Intelligence Officer Morten Ludvigsen
dogtag3_id = 11021
--   Signal Intelligence Officer Lambros Theodorou
dogtag4_id = 11022

-- Mission Targets:
--   1. Gain Dogtags of NPCs b-e
prim_goal_flag = 0
--   2. Kill all TG Guards inside. 16x
sec_goal_flag = 1
-- both targets are done ... last flag so that mission is not finished 
-- before he talked to Agent Foster again
final_goal_flag = 2

-- *** Rewards:
-- primary =>
prim_goal_reward_credits = 150000
prim_goal_reward_symp = 5 -- still need sthg so i can add factionloyality of not main faction
prim_goal_reward_item = -1
-- secondary =>
sec_goal_reward_credits = 0
sec_goal_reward_symp = 0
sec_goal_reward_item = 10500 -- Golden Eagle Medal (CA Medal lvl 1)

-- Anforderungen:
faction_id = 1
min_symph = 10

function CHECK_REQS()
	if (node==state) then
		DOYALIGNMENT()
		if (result==1) then
			-- DoYler ist ok
		else
			result = -2
			return
		end
		GETFACTIONSYMPATHY(faction_id)
		if (result >= min_symph) then
			result = 1
		elseif (result<0) then
			result = -1
		else
			result = 0
		end
	end
end

function CHECK_DOGTAGS()
	if (node==state) then
		TAKEITEM(dogtag1_id) ;
		took1 = result ;
		TAKEITEM(dogtag2_id) ;
		took2 = result ;
		TAKEITEM(dogtag3_id) ;
		took3 = result ;
		TAKEITEM(dogtag4_id) ;
		took4 = result ;
		count = took1+took2+took3+took4 ;
		if (count<4) then
			-- not all dogtags here
			commata = 0 ;
			missingtext = "Meine Quellen berichten, dass"
			if (took1==1) then 
				GIVEITEM(dogtag1_id) ;
			else
				missingtext = missingtext.." Gordon Herald"
				commata = 1 ;
			end
			if (took2==1) then
				GIVEITEM(dogtag2_id) ;
			else
				if (commata==1) then
					missingtext = missingtext..","
				end
				missingtext = missingtext.." Isabelle Renard"
				commata = 1 ;
			end
			if (took3==1) then
				GIVEITEM(dogtag3_id) ;
			else
				if (commata==1) then
					missingtext = missingtext..","
				end
				missingtext = missingtext.." Morten Ludvigsen"
				commata = 1 ;
			end
			if (took4==1) then
				GIVEITEM(dogtag4_id) ;
			else
				if (commata==1) then
					missingtext = missingtext..","
				end
				missingtext = missingtext.." Lambros Theodorou"
				commata = 1 ;
			end
			if (count>1) then
				missingtext = missingtext.." noch am Leben sind."
			else
				missingtext = missingtext.." noch am Leben ist."
			end
			-- tell mainscript that fact
			result = 0 ;
		else
			result = 1 ;
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

	-- ToDo
	-- Tell of possible reward of change faction

	-- **************************** Briefing

	NODE(0)
		CHECK_REQS()
		if (result==0) then
			-- Ist nicht geeignet, also ein bissle belangloser text ... immer
			-- schön unauffällig :p
			SAY("Schönes Wetter heute, nicht?",1) ;
			ANSWER("Ja klar, aber ich muss weiter...",1) ;
			ANSWER("Verfick Dich! Oder ich reib' Dir meine Black Sun unter die Nase!",1) ;
			ANSWER("Egal.",1) ;
		elseif (result==-1) then 
			-- Char ist feindlich gesinnt (neg. Faction Symp)
			SAY("Du wirst mich schon töten müssen, ich würde jemandem wie Dir nie meine Quellen verraten, Abschaum!\nVerpiss Dich!") ;
			ATTACK() ;
			ENDDIALOG() ;
		elseif (result==-2) then
			-- Char ist bereits pro NC
			SAY("Lang lebe Neocron.") ;
			ENDDIALOG() ;
		else 
			-- Der Char hat alle Anforderungen
			SAY("*flüstert* Hey, Du...") ;
			ANSWER("Hey, was gibt's Kumpel?",2) ;
			ANSWER("JA?",2) ;
			ANSWER("Lass mich bloß in Frieden.",1) ;
		end
	NODE(1)
		-- hat keine interesse oder darfs nicht hören => möglichst unauffällig ausm staub machen
		SAY("Oje! Ich denke, ich habe zuhause das Licht brennen lassen ... *macht sich aus dem Staub*") ;
-- CAUTION! CRASHES SERVER!		REMOVE() ;	-- disappear (till he respawns)
		ENDDIALOG() ;
	NODE(2)
		-- ok he showed interest, but is attrackting other ppl
		SAY("Psssst. *blickt nach links und rechts*  Nicht so laut....") ;
		ANSWER("Pah, ich spreche so laut ich will!",3) ;
		ANSWER("okok. ist das jetzt besser?",4) ;
		ANSWER("*gespielt abwesend* Ok, was ist los?",5) ;
	NODE(3)
		-- ouch, that aint a good agent ... too egocentric
		-- schön unauffällig :p
		SAY("Schönes Wetter heute, nicht",1) ;
		ANSWER("Ja klar, aber ich muss weiter...",1) ;
		ANSWER("Verfick Dich! Oder ich reib' Dir meine Black Sun unter die Nase!",1) ;
		ANSWER("Egal.",1) ;
	NODE(4)
		-- asks if he wants to earn a bit
		SAY("Hey, möchtest Du schnelles Geld machen?") ;
		ANSWER("Kommt darauf an - was muss ich dafür tun?",6) ;
		ANSWER("Wen muss ich töten?",13) ;
		ANSWER("Geld ist nichts wert. Du musst mir schon etwas ganz Besonderes bieten.",8) ;
	NODE(5)
		-- detailed story
		SAY("Was ich Dir jetzt erzähle muss unser Geheimnis bleiben. Einverstanden?") ;
		ANSWER("Niemals!",3) ;
		ANSWER("Einverstanden.",9) ;
	NODE(6)
		--ok the right guy
		SAY("Du musst Stillschweigen bewahren, von was ich Dir jetzt erzähle. Die CA weiß, wie sie Dich finden kann.") ;
		ANSWER("Sicher doch. Ich würde der CityAdmin niemals Schaden zufügen.",13)
	NODE(8)
		-- false reasons to help
		SAY("Egal. Bis bald...") ;
-- CAUTION! CRASHES SERVER!		REMOVE() ;	-- disappear (till he respawns)
		ENDDIALOG()
	NODE(9) 
		-- customer signed the NDA for full story :p
		SAY("Meine Quellen berichten, dass Anti-Neocron einen neuen Schlag gegen die Freie Welt vorbereitet. Mir wurde berichtet, dass Gerüchte über eine Spezial-Einsatztruppe im Umlauf sind.") ;
		ANSWER("Was für Gerüchte sind das?",10) ;
	NODE(10)
		SAY("Lass es mich Dir Schritt für Schritt erklären. Meine Leute sind einer Gruppe von Twilight Guardian nach einem Geheimtreffen an einem DoY Eingang gefolgt. Deren Uniformen sahen  irgendwie nach einer Spezialeinheit aus. Kleine Inschriften zeichneten sie angeblich als 'Signal Intelligence Officers' aus.") ;
		ANSWER("Erzähle weiter.",11) ;
	NODE(11)
		SAY("Wir haben stichhaltige Beweise, dass diese Gruppe von vier Offizieren eine massive Bedrohung für Neocron darstellt. Diese Bedrohung muss ausgelöscht werden.") ;
		ANSWER("Ja und warum werden sie dann nicht einfach ausgeschaltet?",12)
	NODE(12)
		SAY("Psst, leise.....*blickt sich erneut nach links und rechts um*") ;
		ANSWER("Also warum?",13) ;
	NODE(13)
		-- here comes the other tree in again too ... that not so detailed desc.
		SAY("Die City Administration hat bereits mehrere Gruppen von Attentätern auf diese Twilight Signal Intelligence Offiziere angesetzt, doch leider kam keines der Teams lebend zurück. Wir glauben, der DoY-Allianz gelang es unsere Pläne auszuspionieren und die Einheiten in Hinterhalte zu locken.") ;
		ANSWER("Ihr glaubt das?",14) ;
	NODE(14)
		SAY("Ja, wir können nicht sicher sein. Ihre Transponder-Signale zur Nachverfolgung gingen verloren, doch denke ich, darin ein Muster entdeckt zu haben. Ich glaube die dunklen Flecken in unseren Aufzeichnungen können Dir den Weg zu ihnen weisen.") ;
		ANSWER("Erzähle es mir genauer.",15) ;
	NODE(15)
		SAY("Kann ich Dir wirklich trauen? Was ha... aber egal. Ich habe ohnehin keine andere Wahl. Ich werde es Dir erzählen, aber vergiss nie: Halte die Sache geheim und erwähne zu niemanden meinen Namen. Zu niemandem.") ;
		ANSWER("Ok, Ok, erzähle es mir endlich.",16) ;
	NODE(16)
		SAY("Die Signale brachen in den Sektoren J06, C11, F03 und *blickt sich um* in I14 ab. Vorerst ist das Alles was ich Dir sagen kann. Bitte beeile Dich jetzt von hier wegzukommen ... wir sehen schon ziemlich verdächtig zusammen aus.")	;
		ANSWER("Ich werde mein Bestes geben.") ;
	NODE(17)
		SAY("Ich bin sicher die Administration wird Dir Ihren Dank zum Ausdruck bringen. Wenn Du das gesamte Problem löst, bin ich sicher sie werden Deiner feindlichen Seele Straferlass gewähren.")	;
		STARTMISSION(mission_id)			-- ok accepted
		SETNEXTDIALOGSTATE(50)				-- next time just check if he has done the missions

		ENDDIALOG()			
		
		
	-- ************************* Checking 
	
	NODE(50)
		ISMISSIONTARGETACCOMPLISHED(prim_goal_flag)
		if (result==0) then
			CHECK_DOGTAGS()
			if (result==1) then
				-- all DogTags were there, all were taken
				SAY("Bitte versuche unauffällig zu wirken. Sie könnten Dir gefolgt sein.") ;
				REWARD_PRIM() ;
				ACTIVATEDIALOGTRIGGER(prim_goal_flag) ;
				ANSWER("Mach' Dir keine Sorgen. Ich habe sie getötet, alle. Haha!",51) ;
				ANSWER("Verdammt, jetzt wo Du es erwähnst.... *läuft davon*",52) ;
			else
				-- not all Dogtags
				-- tell which dogtags are still missing
				SAY(missingtext) ;
				ENDDIALOG()
			end	
		else
			-- prim goal was done previous
			-- not repeatable within one run
			if (state==node) then
				state = 51 ;
			end
			-- = continue with node 51 (only works if node 51 is defined after this node)
		end
	NODE(51)
		ISMISSIONTARGETACCOMPLISHED(sec_goal_flag) ;
		if (result==1) then
			-- secondary goal accomplished
			SAY("Endlich haben diese Bastarde bekommen, was sie verdient haben. *spricht ein wenig mit sich selbst*") ;
			ANSWER("Was jetzt. Meinst Du nicht ich hätte einen Bonus verdient? Ich habe sie immerhin alle erledigt!",53) 
		else
			-- failed on the secondary goal.
			SAY("Komm' bloß nicht wieder solange Du nicht auch wirklich alle eliminiert hast. Die werden mich töten, wenn sie herausfinden wer ich bin.") ;
			ENDDIALOG()
		end
	NODE(52)
-- ToDo:
-- Ask if he wants to abort, let him decide to maybe switch faction.
		
		SAY("Ich habe zu Dir nie ein Sterbenswörtchen gesagt. Klar? Vergiss das nicht! *entfernt sich*") ;
-- CAUTION! CRASHES SERVER!		REMOVE() ;	-- disappear (till he respawns)
		ENDDIALOG()
	NODE(53)
		SAY("Beruhig Dich bitte, ich habe schon etwas für Dich. Heute hast Du der City Admin Deine Loyalität bewiesen. Ich kann mit mächtigen Leuten sprechen. Möchtest Du, dass ich für Dich spreche, damit Du zur CityAdmin aufgenommen werden kannst?") ;
		ANSWER("Zum Teufel, nein!",54) ;
		ANSWER("Das könntest Du wirklich machen? Das wäre ja großartig.") ;
	NODE(54)
		-- he does not want to change faction
		ACTIVATEDIALOGTRIGGER(final_goal_flag) ;
		ENDDIALOG()
	NODE(55)		
		SAY("Willkommen bei der City Admin. Lass mich Dich mit dieser Medaille dekorieren.") ;
		CHANGEFACTION(faction_id) ;	-- make him CityAdmin (will fail if clanned) then he cant give the medal
		if (result==0) then
			sec_reward_item = -1 ;  -- no item in this if hes now not CA
		end
		REWARD_SEC() ;
		-- finish this quest
		ACTIVATEDIALOGTRIGGER(final_goal_flag) ;
		ENDDIALOG()
end
