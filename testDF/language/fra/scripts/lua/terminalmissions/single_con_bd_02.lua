--************************
--name		: SINGLE_CON_BD_02.lua
--ver		: 0.1f
--author	: Lupus
--date		: 2004/09/30
--lang		: fra
--desc		: terminal construction mission for second 5 Black Dragon Construction items TL60,70,80,90,100
--npc		: 132, 131
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
			if(result==4390)then -- Item 1
				GIVEITEM(4579)
				GIVEITEM(4580)
				GIVEITEM(4586)
				GIVESPECIALITEM(1507,1,4390)
				SAY("Voil� les plans et les composants n�cessaires.\nBonne chance.")
				ACTIVATEDIALOGTRIGGER(0)
				SETNEXTDIALOGSTATE(3)
				ENDDIALOG()
			elseif(result==4391)then --Item 2
				GIVEITEM(4579)
				GIVEITEM(4580)
				GIVEITEM(4587)
				GIVESPECIALITEM(1507,1,4391)
				SAY("Tr�s bien, voil� les plans et les composants.\nBonne chance!")
				ACTIVATEDIALOGTRIGGER(0)
				SETNEXTDIALOGSTATE(3)
				ENDDIALOG()
			elseif(result==4392)then --Item 3
				GIVEITEM(4579)
				GIVEITEM(4580)
				GIVEITEM(4588)
				GIVESPECIALITEM(1507,1,4392)
				SAY("Tr�s bien, voil� les plans et les composants.\nBonne chance!")
				ACTIVATEDIALOGTRIGGER(0)
				SETNEXTDIALOGSTATE(3)
				ENDDIALOG()
			elseif(result==4393)then --Item 4
				GIVEITEM(4579)
				GIVEITEM(4580)
				GIVEITEM(4589)
				GIVESPECIALITEM(1507,1,4393)
				SAY("Tr�s bien, voil� les plans et les composants.\nBonne chance!")
				ACTIVATEDIALOGTRIGGER(0)
				SETNEXTDIALOGSTATE(3)
				ENDDIALOG()
			elseif(result==4394)then --Item 5
				GIVEITEM(4579)
				GIVEITEM(4580)
				GIVEITEM(4590)
				GIVESPECIALITEM(1507,1,4394)
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