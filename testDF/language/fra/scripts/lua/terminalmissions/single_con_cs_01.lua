--************************
--name		: SINGLE_CON_CS_01.lua
--ver		: 0.1f
--author	: Lupus
--date		: 2004/09/30
--lang		: fra
--desc		: terminal construction mission for first 5 Crahn Sect Construction items TL10,20,30,40,50
--npc		: 142, 140
--translation	: Legba
--************************
--changelog:
--2004/09/30(0.1): Created all new script for new missions using mission only items
--************************

function DIALOG()
	NODE(0)
		SAY("Bonjour, comment puis-je vous aider?")
		SAY("Oui runner? Un probl�me?")
		SAY("Quoi? Je suis tr�s occup�.")
		SAY("Vous avez un probl�me?") 
		SAY("Je vous �coute.")
		SAY("Je vous �coute, faites vite.")
		SAY("On se conna�t.")
		SAY("Vous venez pour du travail?")
		SAY("Bonjour, runner.")
		SAY("Un probl�me? J'�coute.")
		
		ANSWER("Oui; je viens pour un job...",2)
		ANSWER("Vous avez du travail pour moi je crois.",2)
		ANSWER("Vous avez du travail pour moi?",2)
		ANSWER("Je viens pour le job.",2)
		ANSWER("Rien du tout, au revoir.",1)
		ANSWER("Je me suis tromp� de personne.",1)
		ANSWER("Il y a erreur sur la personne.",1)
		ANSWER("J'ai chang� d'avis.",1)
	NODE(1)
		SAY("Bonne continuation.")
		SAY("A la prochaine.")
		SAY("Au revoir, � la prochaine fois.")
		SAY("Au revoir, on se reverra bient�t.")
		ENDDIALOG()
		
	NODE(2)
		SAY("Nous avons beaucoup de travail � faire. Nous cherchons des runners qui pourraient construire quelques objets pour nous. Sans num�ro de s�rie, c'est pour un projet confidentiel.")
		SAY("Nous avons �norm�ment de travail, nous avons un probl�me de production qu'il faut r�soudre sans tarder.")
		SAY("Nous avons besoin de certains �l�ments, mais nous sommes submerg�s de travail et nous ne pouvons pas nous en occuper.")
		
		ANSWER("Quel genre de constructions?",6)
		
	NODE(3)
		SAY("Donnez ces objets � %NPC_NAME(1).")
		SAY("J'esp�re que tout se passe comme vous voulez...?")
		SAY("Continuez de travaillez, cesser de me d�ranger.")
		ENDDIALOG()
		ENDDIALOG()
		
	NODE(4)
		GETTARGETVALUE(0,2)
		TAKEITEMCNT(result,1)
		if(result==0)then
			SAY("Revenez uniquement quand vous avez fini.")
			SAY("Qu'est-ce que vous voulez? Vous abandonnez d�j�?")
			ENDDIALOG()
		else
			SAY("Enfin! Nous allons pouvoir maintenir notre production gr�ce � vous. Tenez, voil� %REWARD_MONEY() cr�dits en r�compense.")
			SAY("Bien, nous allons v�rifier �a. Voil� %REWARD_MONEY() cr�dits, comme convenu.")
			SAY("Bon travail. Si vous avez encore du temps libre, il nous reste du travail. Voil� votre r�compense de %REWARD_MONEY() cr�dits.")
			ACTIVATEDIALOGTRIGGER(1)
			ENDDIALOG()
		end
		
	NODE(5)
		if(node==state)then
		GETTARGETVALUE(0,2)
			if(result==4400)then -- Item 1
				GIVEITEM(4596)
				GIVEITEM(4597)
				GIVEITEM(4598)
				GIVESPECIALITEM(1507,1,4400)
				SAY("Voil� les plans et les composants n�cessaires.\nBonne chance.")
				ACTIVATEDIALOGTRIGGER(0)
				SETNEXTDIALOGSTATE(3)
				ENDDIALOG()
			elseif(result==4401)then --Item 2
				GIVEITEM(4596)
				GIVEITEM(4597)
				GIVEITEM(4599)
				GIVESPECIALITEM(1507,1,4401)
				SAY("Tr�s bien, voil� les plans et les composants.\nBonne chance!")
				ACTIVATEDIALOGTRIGGER(0)
				SETNEXTDIALOGSTATE(3)
				ENDDIALOG()
			elseif(result==4402)then --Item 3
				GIVEITEM(4596)
				GIVEITEM(4597)
				GIVEITEM(4600)
				GIVESPECIALITEM(1507,1,4402)
				SAY("Tr�s bien, voil� les plans et les composants.\nBonne chance!")
				ACTIVATEDIALOGTRIGGER(0)
				SETNEXTDIALOGSTATE(3)
				ENDDIALOG()
			elseif(result==4403)then --Item 4
				GIVEITEM(4596)
				GIVEITEM(4597)
				GIVEITEM(4601)
				GIVESPECIALITEM(1507,1,4403)
				SAY("Tr�s bien, voil� les plans et les composants.\nBonne chance!")
				ACTIVATEDIALOGTRIGGER(0)
				SETNEXTDIALOGSTATE(3)
				ENDDIALOG()
			elseif(result==4404)then --Item 5
				GIVEITEM(4596)
				GIVEITEM(4597)
				GIVEITEM(4602)
				GIVESPECIALITEM(1507,1,4404)
				SAY("Tr�s bien, voil� les plans et les composants.\nBonne chance!")
				ACTIVATEDIALOGTRIGGER(0)
				SETNEXTDIALOGSTATE(3)
				ENDDIALOG()
			else
				SAY("Erreur de script... Veuillez le signaler...")
				ENDDIALOG()
			end
		end
		
	NODE(6)
		SAY("Nous aimerions que vous construisiez un %ITEMNAME(%TARGET_VALUE(0,2)) et que vous le transf�riez � %NPC_NAME(1), secteur  %NPC_WORLD(1).")
		SAY("Construisez un %ITEMNAME(%TARGET_VALUE(0,2)). Ensuite, livrez-le � %NPC_NAME(1), secteur %NPC_WORLD(1).")
		
		ANSWER("Je commence tout de suite.",5)
end