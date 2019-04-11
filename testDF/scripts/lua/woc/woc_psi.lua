--************************
--name   : woc_psi.lua
--ver    : 0.0
--author : Farril
--date   : 07.09.2004
--lang   : en+de
--desc   : Template / Skelett für WoC Skill-Vergabe
--npc    : - none yet -
--************************
--changelog:
-- 07.09.2004 - Create
--************************  


--************************
-- Presets:
	WOC_SKILL = 5
--************************


function SKILLNAME(skill)
	if (skill==0) then return "none" end
	if (skill==1) then return "Strength" end
	if (skill==2) then return "Dexterity" end
	if (skill==3) then return "Constitution" end
	if (skill==4) then return "Intelligence" end
	if (skill==5) then return "PSI" end
end

-- GETFACTION functions
function GETFACTIONID()
	CANDOEPICRUN(1,0)
	if (result~=-1) then
		result = 1
		return
	end
	CANDOEPICRUN(2,0)
	if (result~=-1) then
		result = 2
		return
	end	
	CANDOEPICRUN(3,0)
	if (result~=-1) then
		result = 3
		return
	end
	CANDOEPICRUN(4,0)
	if (result~=-1) then
		result = 4
		return
	end
	CANDOEPICRUN(5,0)
	if (result~=-1) then
		result = 5
		return
	end
	CANDOEPICRUN(6,0)
	if (result~=-1) then
		result = 6
		return
	end
	CANDOEPICRUN(8,0)
	if (result~=-1) then
		result = 8
		return
	end
	CANDOEPICRUN(9,0)
	if (result~=-1) then
		result = 9
		return
	end
	CANDOEPICRUN(10,0)
	if (result~=-1) then
		result = 10
		return
	end
	CANDOEPICRUN(11,0)
	if (result~=-1) then
		result = 11
		return
	end
	CANDOEPICRUN(14,0)
	if (result~=-1) then
		result = 14
		return
	end
	CANDOEPICRUN(15,0)
	if (result~=-1) then
		result = 15
		return
	end
end


function DIALOG()
	-- preamble
	NODE(0) 
		SAY("What is your covet, stranger?")
		ANSWER("I am seeking the knowledge of the Wisdom of Ceres.",10)
		ANSWER("Nevermind, I think I am wrong here. Bye",21) 
		
		
	-- now get to the checks
	NODE(10)
		GetWOCSkill()
		if (WOC_SKILL~=result) and (result~=0) then
			-- another skill already trained
			SAY("My senses are telling me that you are not seeking the Wisdom of Ceres "..SKILLNAME(WOC_SKILL)..". Talk to the other Savants. They may assist you with your needs.")
			ENDDIALOG()
		else
			if (result==0) then
				-- not trained any woc yet => Test for epic (master flag)
				GETFACTIONID()
				runnerfaction = result ;
				CANDOEPICRUN(runnerfaction,0)
				if (result~=-2) then
					-- runner hat die epic seiner fraktion noch nicht abgeschlossen
					SAY("You don't meet the requirements for recieving the Knowledge of Ceres. You have to finish at least one Epic Run before I can train you! So come back when you are ready to recieve the great honor.") 
					ENDDIALOG()
				else
					-- runner hat die vorrausetzung epic
					SAY("What is your covet, stranger?")
					ANSWER("I want to recieve my Wisdom of Ceres "..SKILLNAME(WOC_SKILL).." skill. Can you train me, honorable Savant?",20)
				end
			else
				-- trained the right WOC skill for this npc already
				SAY("What is your covet, Stranger?")
				ANSWER("I want to extend my Wisdom of Ceres "..SKILLNAME(result).."? Please train me, honorable Savant of Ceres.",20)
			end
		end
		
		
	-- add the skill
	NODE(20)
		SAY("My senses tell me that you are ready to recieve the Wisdom of Ceres? Is that correct?") 
		ANSWER("Yes, honorable Savant of Ceres. I am prepared to recieve this great honor.",22) 
		ANSWER("Errrr....Nevermind...",21) 
	NODE(21)
		SAY("Come back when you are prepared to recieve the Wisdom of Ceres. Now go away and leave us in our meditation.") 
		ENDDIALOG()
	NODE(22)
		AddWOCLevel(WOC_SKILL)
		if (result==0) then
			SAY("Congratulations! Your just recieved the Wisdom of Ceres. I hope you are aware about this great unique honor.") ;
			ENDDIALOG()
		elseif (result==1) then
			-- no money
			SAY("Come back when you have enough money!") ;
			ENDDIALOG()
		elseif (result==2) then
			-- no item (1450) (or not skill * item)
			SAY("You don't have the Wisdom of Ceres Disc. Without this item you won't be able to recieve the Wisdom of Ceres. Come back when you have the disc.") ;
			ENDDIALOG()
		elseif (result==3) then
			-- no exp
			SAY("Your knowledge is not meeting the requirements for Wisdom of Ceres. Come back when you are ready to recieve this great honor!") ;
			ENDDIALOG()
		elseif (result==4) then
			-- wrong skill
			SAY("I am not able to train you. Ask my fellow Savants if they can assist you with your needs.") ;
			ENDDIALOG()
		end		
end