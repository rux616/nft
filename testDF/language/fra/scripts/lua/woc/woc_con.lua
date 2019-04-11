--************************
--name   : woc_con.lua
--ver    : 0.0
--author : Farril
--date   : 07.09.2004
--lang   : en+de
--desc   : Template / Skelett f�r WoC Skill-Vergabe
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
	if (skill==0) then return "aucune" end
	if (skill==1) then return "Force" end
	if (skill==2) then return "Dext�rit�" end
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
		SAY("Que veux-tu, �tranger?")
		ANSWER("Je veux acc�der � la Sagesse de C�r�s.",10)
		ANSWER("Rien, c'est une erreur. Au revoir.",21) 
		
		
	-- now get to the checks
	NODE(10)
		GetWOCSkill()
		if (WOC_SKILL~=result) and (result~=0) then
			-- another skill already trained
			SAY("Mes sens me disent que tu ne cherches pas la ma�trise de "..SKILLNAME(result)..". Va parler aux autres, ils pourront t'aider.")
			ENDDIALOG()
		else
			if (result==0) then
				-- not trained any woc yet => Test for epic (master flag)
				GETFACTIONID()
				runnerfaction = result ;
				CANDOEPICRUN(runnerfaction,0)
				if (result~=-2) then
					-- runner hat die epic seiner fraktion noch nicht abgeschlossen
					SAY("Tu n'as pas encore les pr�requis pour recevoir la Connaissance de C�r�s. Termine d'abord un epic run avant de te pr�senter devant moi!") 
					ENDDIALOG()
				else
					-- runner hat die vorrausetzung epic
					SAY("Que veux-tu, �tranger?")
					ANSWER("Je viens pour b�n�ficier de la Sagesse de C�r�s en "..SKILLNAME(result)..". Peux-tu m'enseigner cela, honorable �rudit?",20)
				end
			else
				-- trained the right WOC skill for this npc already
				SAY("Que veux-tu, �tranger?")
				ANSWER("Je viens pour b�n�ficier de la Sagesse de C�r�s en "..SKILLNAME(result)..". Peux-tu m'enseigner cela, honorable �rudit?",20)
			end
		end
		
		
	-- add the skill
	NODE(20)
		SAY("Mes sens me disent que tu es pr�t � recevoir mon enseignement. Est-ce exact?") 
		ANSWER("Oui, honorable sage de C�r�s. C'est un grand honneur pour moi.",22) 
		ANSWER("Euh... J'ai rien dit.",21) 
	NODE(21)
		SAY("Reviens au moment opportun, dans ce cas. Maintenant laisse-moi, je dois m�diter.") 
		ENDDIALOG()
	NODE(22)
		AddWOCLevel(WOC_SKILL)
		if (result==0) then
			SAY("F�licitations! Tu es maintenant un Sage de C�r�s. J'esp�re que tu as pleinement conscience de l'honneur que tu viens de recevoir!") ;
			ENDDIALOG()
		elseif (result==1) then
			-- no money
			SAY("Reviens quand tu auras assez d'argent!") ;
			ENDDIALOG()
		elseif (result==2) then
			-- no item (1450) (or not skill * item)
			SAY("Je ne vois pas le disque de la Sagesse de C�r�s... Sans cet objet, je ne pourrai pas t'aider.") ;
			ENDDIALOG()
		elseif (result==3) then
			-- no exp
			SAY("Tes connaissances sont encore trop faibles. Reviens quand tu seras pr�t.") ;
			ENDDIALOG()
		elseif (result==4) then
			-- wrong skill
			SAY("Je ne peux pas t'aider. Demande aux autres sages.") ;
			ENDDIALOG()
		end		
end