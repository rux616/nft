--************************
--name   : bdoy_wls2_slacroix.lua
--ver    : 0.1
--author : Farril
--date   : 2004/09/07
--lang   : en
--desc	 : Missionscript for „Danger from the Desert“
--npc    : 
--************************
--changelog:
--2004/09/25(0.1): header added(Ferron)
--************************

-- special edittion - testserver

-- NPCs: 
--   Sandra Lacroix	Briefing: 0, Checking 50,
mission_id = 3803		-- index to missionbase.def

--   CityAdmin, 44th Special Forces Division, Commanding Officer
dogtag1_id = 11023
--   CityAdmin, 44th Special Forces Division, Corporal 
dogtag2_id = 1124

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
			SAY("Please go on. Nothing to see here.",1) ;
			ENDDIALOG()
		else 
			-- Der Char hat alle Anforderungen
			SAY("Hello, What can i do for you") ;
			ANSWER("I'm looking for some adventure",3) ;
			ANSWER("Do you have a job for me?",2) ;
			ANSWER("Hmm, sorry, thought you were someone else",1) ;
		end
	NODE(1)
		SAY("Freedom and peace with you.") ;
		ENDDIALOG() ;
	NODE(2)
		SAY("A job? You found the right person. The rebell leaders have an real adventure assigned to your name.") ;
		ANSWER("That sounds interesting. What is it?",3) ;
	NODE(3)
		SAY("After the last attacks, the city admin has increased the pressure around the dome. Several S.T.O.R.M. units are gathering. They are a real threat to our civil comrades") ;
		ANSWER("Yes, i have seen some groups patroling around.",4)
	NODE(4)
		SAY("Some runners reported that inbetween the groups of corporals were some special Officers. We believe, that once all groups are commanded by these officers they will try to enter the dome.") ;
		ANSWER("Go on.",5) ;
	NODE(5)
		SAY("While our troups are fighting on other lines or recovering from past attacks, we need you to take care of those commanders. The rebell alliance wont forget your help") ;
		ANSWER("Ugh, dont think i can handle them",7) ;
		ANSWER("Look onto this as solved",6)
	NODE(6)
		SAY("Kick them. Hope to see you again.")	;
		STARTMISSION(mission_id)			-- ok accepted
		SETNEXTDIALOGSTATE(50)				-- next time just check if he has done the missions
		ENDDIALOG()			
	NODE(7)
		SAY("It's your decission. Someone else will grab the chance and its honor") ;
		ENDDIALOG()			
		
	-- ************************* Checking 
	
	NODE(50)
		ISMISSIONTARGETACCOMPLISHED(prim_goal_flag)
		if (result==1) then
			CHECK_DOGTAGS()
			if (result==1) then
				-- all DogTags were there, all were taken
				SAY("I see you have slain the commanders.") ;
				REWARD_PRIM() ;
				ACTIVATEDIALOGTRIGGER(prim_goal_flag) ;
				ANSWER("It was hard, but i made it. I think the area is clean now",51) ;
				ANSWER("I only managed to kill the officers. But ill continue on the other groups.",52) ;
			else
				-- not all Dogtags
				SAY("They are strong, aren't they?") ;
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
			SAY("Well done.") ;
			ANSWER("What now, don't you think you should pay me some extra ? I mean comeon, i killed them all!",53) 
		else
			-- failed on the secondary goal.
			SAY("They are strong, aren't they?") ;
			ENDDIALOG()
		end
	NODE(52)
		SAY("I'll stay here") ;
		ENDDIALOG()
	NODE(53)
		SAY("Calm down please, I have something for you. Today you showed good loyality to the rebells. I can talk with some mighty persons. Do you want me to invite you into the Twilight Guardian?") ;
		ANSWER("Hell, no!",54) ;
		ANSWER("Can you do that? That would be great.",55) ;
	NODE(54)
		-- he does not want to change faction
		ACTIVATEDIALOGTRIGGER(final_goal_flag) ;
		ENDDIALOG()
	NODE(55)		
		SAY("Welcome to the Twilight Guardian. Let me honor you with this medal.") ;
		CHANGEFACTION(faction_id) ;	-- make him CityAdmin (will fail if clanned) then he cant give the medal
		if (result==0) then
			sec_reward_item = -1 ;  -- no item in this if hes now not CA
		end
		REWARD_SEC() ;
		-- finish this quest
		ACTIVATEDIALOGTRIGGER(final_goal_flag) ;
		ENDDIALOG()
end
