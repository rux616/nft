--************************
--name   : bdoy_wls2_agentfoster.lua
--ver    : 0.1
--author : Farril
--date   : 2004/09/14
--lang   : en
--desc	 : Missionscript for „Guardian Recon Stations“
--npc    : Agent Foster
--************************
--changelog:
--2004/09/14(0.1): written(Farril)
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
			missingtext = "My sources reported me that"
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
				missingtext = missingtext.." are still alive"
			else
				missingtext = missingtext.." is still alive"
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
			SAY("The weather is nice today, aint it?",1) ;
			ANSWER("Yeah right but i got to go ...",1) ;
			ANSWER("Fuck off! Or i'll show you my black sun",1) ;
			ANSWER("Nevermind",1) ;
		elseif (result==-1) then 
			-- Char ist feindlich gesinnt (neg. Faction Symp)
			SAY("You will need to kill me, I would never compromise my sources to you, Scum!\nFuck off!") ;
			ATTACK() ;
			ENDDIALOG() ;
		elseif (result==-2) then
			-- Char ist bereits pro NC
			SAY("Hail Neocron") ;
			ENDDIALOG() ;
		else 
			-- Der Char hat alle Anforderungen
			SAY("*whisper* Hey you...") ;
			ANSWER("Hey, whats up mate?",2) ;
			ANSWER("YES?",2) ;
			ANSWER("Leave me alone.",1) ;
		end
	NODE(1)
		-- hat keine interesse oder darfs nicht hören => möglichst unauffällig ausm staub machen
		SAY("Oh dear!, i think i forgot to turn of the lights in my Appartment ... *hurries away*") ;
-- CAUTION! CRASHES SERVER!		REMOVE() ;	-- disappear (till he respawns)
		ENDDIALOG() ;
	NODE(2)
		-- ok he showed interest, but is attrackting other ppl
		SAY("psssst. *looks left and right*  Not that loud....") ;
		ANSWER("Pah, I'm talking in the way I want!",3) ;
		ANSWER("okok. is that better ?",4) ;
		ANSWER("*pretends to look at the nature* Ok, whats up?",5) ;
	NODE(3)
		-- ouch, that aint a good agent ... too egocentric
		-- schön unauffällig :p
		SAY("The weather is nice today, aint it?",1) ;
		ANSWER("Yeah right but i got to go ...",1) ;
		ANSWER("Fuck off! Or i'll show you my black sun",1) ;
		ANSWER("Nevermind",1) ;
	NODE(4)
		-- asks if he wants to earn a bit
		SAY("Hey, would you like to earn some fast money?") ;
		ANSWER("Depends, what do i have to do?",6) ;
		ANSWER("Whom should i kill?",13) ;
		ANSWER("Money is nothing, you have to give me something special.",8) ;	
	NODE(5)
		-- detailed story
		SAY("What i gonna tell you now, has to be kept totally secret. Agreed?") ;
		ANSWER("Never!",3) ;
		ANSWER("Agreed.",9) ;
	NODE(6)
		--ok the right guy
		SAY("You will keep silence about what i tell you know. CA knows where to find you") ;
		ANSWER("Sure, i'd never harm the CityAdmin",13)
	NODE(8)
		-- false reasons to help
		SAY("Nevermind. See ya ...") ;
-- CAUTION! CRASHES SERVER!		REMOVE() ;	-- disappear (till he respawns)
		ENDDIALOG()
	NODE(9) 
		-- customer signed the NDA for full story :p
		SAY("My sources reported me, that the Anti-Neocron has started a new threatening task against the free world. They said, they had heard rumors of an Special Task Force.") ;
		ANSWER("What do these rumors say?",10) ;
	NODE(10)
		SAY("Let me tell this step by step. They followed some of the Twilight Guardian after a secret meeting near the DoY entrances last week. Their uniforms looked something special. Small insignias marked them as 'Signal Intelligence Officers'.") ;
		ANSWER("Go on.",11) ;
	NODE(11)
		SAY("We have certain conclusions that those four Officers are a real threat to Neocron. This threat has to be terminated.") ;
		ANSWER("So why don't you just go and kill them?",12)
	NODE(12)
		SAY("Psst, keep quiet.....*looks left and right again*") ;
		ANSWER("So, why?",13) ;
	NODE(13)
		-- here comes the other tree in again too ... that not so detailed desc.
		SAY("The City Administration already sent several assasination groups to these Twilight Signal Inteligence Officers. Unfortunally they failed every time. We belive the DoY-Aliance was able to spy out our plans and the groups ran into ambush.") ;
		ANSWER("You believe?",14) ;
	NODE(14)
		SAY("Yes, we are not sure. All their tracking signals were lost. But it seems i found a pattern. I belive that will show the way, where to find them.") ;
		ANSWER("So tell me.",15) ;
	NODE(15)
		SAY("Can i really trust you ? What ha.... erm ok, i have no other way. I'll tell there, but remind to keep it secret and never mention my name. To noone.") ;
		ANSWER("OK,OK, just tell me",16) ;
	NODE(16)
		SAY("The signals were lost in the Zones J06, C11, F03 and *looks left and right* in I14. That's all i can tell you for now. Please hurry away now. This looks to conspiciuos")	;
		ANSWER("I'll do my very best") ;
	NODE(17)
		SAY("I am sure the administration will show you their gratitude. If you can get hold of the complete problem they'll for sure amnesty your enemy soul.")	;
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
				SAY("Please look inconspicuous. They might have followed you.") ;
				REWARD_PRIM() ;
				ACTIVATEDIALOGTRIGGER(prim_goal_flag) ;
				ANSWER("Don't worry that can't be, i killed them all. Haha!",51) ;
				ANSWER("Damn, now that you say it.... *runs off*",52) ;
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
			SAY("Finally those bastards got what they deserved. *talks a bit with himself*") ;
			ANSWER("What now, don't you think you should pay me some extra ? I mean comeon, i killed them all!",53) 
		else
			-- failed on the secondary goal.
			SAY("Don't come back till you got them all. They'll kill me if they notice who i am.") ;
			ENDDIALOG()
		end
	NODE(52)
-- ToDo:
-- Ask if he wants to abort, let him decide to maybe switch faction.
		
		SAY("I never said nothing to you, remember ? Remember! *walks away*") ;
-- CAUTION! CRASHES SERVER!		REMOVE() ;	-- disappear (till he respawns)
		ENDDIALOG()
	NODE(53)
		SAY("Calm down please, I have something for you. Today you showed good loyality to the CityAdmin. I can talk with some mighty persons. Do you want me to invite you into the CityAdmin?") ;
		ANSWER("Hell, no!",54) ;
		ANSWER("Can you do that? That would be great.") ;
	NODE(54)
		-- he does not want to change faction
		ACTIVATEDIALOGTRIGGER(final_goal_flag) ;
		ENDDIALOG()
	NODE(55)		
		SAY("Welcome to the City Admin. Let me honor you with this medal.") ;
		CHANGEFACTION(faction_id) ;	-- make him CityAdmin (will fail if clanned) then he cant give the medal
		if (result==0) then
			sec_reward_item = -1 ;  -- no item in this if hes now not CA
		end
		REWARD_SEC() ;
		-- finish this quest
		ACTIVATEDIALOGTRIGGER(final_goal_flag) ;
		ENDDIALOG()
end
