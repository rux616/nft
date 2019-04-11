--************************
--name   : woc_con.lua
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
	WOC_SKILL = 3
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
		SAY("Was ist Dein Begehr, Fremder?")
		ANSWER("Ich suche die Weisheit von Ceres.",10)
		ANSWER("Ach nichts. Ich denke ich bin hier falsch, ciao.",21) 
		
		
	-- now get to the checks
	NODE(10)
		GetWOCSkill()
		if (WOC_SKILL~=result) and (result~=0) then
			-- another skill already trained
			SAY("Mein Gespür sagt mir, dass Du das alte Wissen von Ceres im Bereich "..SKILLNAME(result).." nicht suchst. Sprich mit einem der anderen Großen Gelehrten. Sie werden Dir auf Deiner Suche weiterhelfen können.")
			ENDDIALOG()
		else
			if (result==0) then
				-- not trained any woc yet => Test for epic (master flag)
				GETFACTIONID()
				runnerfaction = result ;
				CANDOEPICRUN(runnerfaction,0)
				if (result~=-2) then
					-- runner hat die epic seiner fraktion noch nicht abgeschlossen
					SAY("Du erfüllst nicht die Voraussetzungen, um das Wissen von Ceres zu erwerben. Du musst mindestens einen Epic Run erledigen, bevor ich Dich unterrichten kann! Komme wieder, wenn Du bereit bist, diese große Ehre zu empfangen.") 
					ENDDIALOG()
				else
					-- runner hat die vorrausetzung epic
					SAY("Was ist Dein Begehr, Fremder?")
					ANSWER("Ich möchte die Weisheit von Ceres im Bereich "..SKILLNAME(result).." erwerben. Können Sie mich unterrichten, ehrbarer Gelehrter?",20)
				end
			else
				-- trained the right WOC skill for this npc already
				SAY("Was ist Dein Begehr, Fremder?")
				ANSWER("Ich möchte mein Wissen von Ceres im Bereich "..SKILLNAME(result).." erweitern. Bitte unterrichtet mich, ehrbarer Gelehrter von Ceres.",20)
			end
		end
		
		
	-- add the skill
	NODE(20)
		SAY("Mein Gespür sagt mir, dass Du das alte Wissen von Ceres suchst. Gehe ich richtig in dieser Annahme?") 
		ANSWER("Ja, ehrbarer Gelehrter von Ceres. Ich bin bereit diese große Ehre zu empfangen.",22) 
		ANSWER("Errrr... Nichts für ungut...",21) 
	NODE(21)
		SAY("Komme wieder, wenn Du bereit bist für die Weisheit von Ceres. Jetzt geh! Störe uns nicht weiter in unserer Meditation.") 
		ENDDIALOG()
	NODE(22)
		AddWOCLevel(WOC_SKILL)
		if (result==0) then
			SAY("Gratuliere! Du hast so eben das alte Wissen von Ceres erworben. Ich hoffe Du bist Dir dieser großen und einzigartigen Ehre bewußt.") ;
			ENDDIALOG()
		elseif (result==1) then
			-- no money
			SAY("Komm wieder, wenn Du es Dir leisten kannst!") ;
			ENDDIALOG()
		elseif (result==2) then
			-- no item (1450) (or not skill * item)
			SAY("Du trägst die Wisdom of Ceres Disc nicht bei Dir. Ohne diesen Gegenstand kannst Du die Weisheit von Ceres nie verstehen. Komm erst wieder, wenn Du die Disc hast.") ;
			ENDDIALOG()
		elseif (result==3) then
			-- no exp
			SAY("Deine Erfahrung reicht noch nicht aus um die Weisheit von Ceres zu begreifen. Komme erst wieder, wenn Du bereit bist diese große Ehre zu empfangen!") ;
			ENDDIALOG()
		elseif (result==4) then
			-- wrong skill
			SAY("Ich kann Dich nicht trainieren. Frage bei einem meiner Mitgelehrten, ob er Dich unterstützen kann.") ;
			ENDDIALOG()
		end		
end