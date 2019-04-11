--************************
--name		: SINGLE_CON_PP_03.lua
--ver		: 0.1e
--author	: Lupus
--date		: 2004/09/30
--lang		: en
--desc		: terminal construction mission for last 5 ProtoPharm Construction items TL110,120,130,140,150
--npc		: 52, 51
--translation	: Legba
--************************
--changelog:
--2004/09/30(0.1): Created all new script for new missions using mission only items
--************************

function DIALOG()
	NODE(0)
		SAY("Bonjour, comment puis-je vous aider?")
		SAY("Oui runner? Un problème?")
		SAY("Quoi? Je suis très occupé.")
		SAY("Vous avez un problème?") 
		SAY("Je vous écoute.")
		SAY("Je vous écoute, faites vite.")
		SAY("On se connaît.")
		SAY("Vous venez pour du travail?")
		SAY("Bonjour, runner.")
		SAY("Un problème? J'écoute.")
		
		ANSWER("Oui; je viens pour un job...",2)
		ANSWER("Vous avez du travail pour moi je crois.",2)
		ANSWER("Vous avez du travail pour moi?",2)
		ANSWER("Je viens pour le job.",2)
		ANSWER("Rien du tout, au revoir.",1)
		ANSWER("Je me suis trompé de personne.",1)
		ANSWER("Il y a erreur sur la personne.",1)
		ANSWER("J'ai changé d'avis.",1)
	NODE(1)
		SAY("Bonne continuation.")
		SAY("A la prochaine.")
		SAY("Au revoir, à la prochaine fois.")
		SAY("Au revoir, on se reverra bientôt.")
		ENDDIALOG()
		
	NODE(2)
		SAY("Nous avons beaucoup de travail à faire. Nous cherchons des runners qui pourraient construire quelques objets pour nous. Sans numéro de série, c'est pour un projet confidentiel.")
		SAY("Nous avons énormément de travail, nous avons un problème de production qu'il faut résoudre sans tarder.")
		SAY("Nous avons besoin de certains éléments, mais nous sommes submergés de travail et nous ne pouvons pas nous en occuper.")
		
		ANSWER("Quel genre de constructions?",6)
		
	NODE(3)
		SAY("Donnez ces objets à %NPC_NAME(1).")
		SAY("J'espère que tout se passe comme vous voulez...?")
		SAY("Continuez de travaillez, cesser de me déranger.")
		ENDDIALOG()
		ENDDIALOG()
		
	NODE(4)
		GETTARGETVALUE(0,2)
		TAKEITEMCNT(result,1)
		if(result==0)then
			SAY("Revenez uniquement quand vous avez fini.")
			SAY("Qu'est-ce que vous voulez? Vous abandonnez déjà?")
			ENDDIALOG()
		else
			SAY("Enfin! Nous allons pouvoir maintenir notre production grâce à vous. Tenez, voilà %REWARD_MONEY() crédits en récompense.")
			SAY("Bien, nous allons vérifier ça. Voilà %REWARD_MONEY() crédits, comme convenu.")
			SAY("Bon travail. Si vous avez encore du temps libre, il nous reste du travail. Voilà votre récompense de %REWARD_MONEY() crédits.")
			ACTIVATEDIALOGTRIGGER(1)
			ENDDIALOG()
		end
		
	NODE(5)
		if(node==state)then
		GETTARGETVALUE(0,2)
			if(result==4365)then -- Item 1
				GIVEITEM(4545)
				GIVEITEM(4546)
				GIVEITEM(4557)
				GIVESPECIALITEM(1507,1,4365)
				SAY("Voilà les plans et les composants nécessaires.\nBonne chance.")
				ACTIVATEDIALOGTRIGGER(0)
				SETNEXTDIALOGSTATE(3)
				ENDDIALOG()
			elseif(result==4366)then --Item 2
				GIVEITEM(4545)
				GIVEITEM(4546)
				GIVEITEM(4558)
				GIVESPECIALITEM(1507,1,4366)
				SAY("Très bien, voilà les plans et les composants.\nBonne chance!")
				ACTIVATEDIALOGTRIGGER(0)
				SETNEXTDIALOGSTATE(3)
				ENDDIALOG()
			elseif(result==4367)then --Item 3
				GIVEITEM(4545)
				GIVEITEM(4546)
				GIVEITEM(4559)
				GIVESPECIALITEM(1507,1,4367)
				SAY("Très bien, voilà les plans et les composants.\nBonne chance!")
				ACTIVATEDIALOGTRIGGER(0)
				SETNEXTDIALOGSTATE(3)
				ENDDIALOG()
			elseif(result==4368)then --Item 4
				GIVEITEM(4545)
				GIVEITEM(4546)
				GIVEITEM(4560)
				GIVESPECIALITEM(1507,1,4368)
				SAY("Très bien, voilà les plans et les composants.\nBonne chance!")
				ACTIVATEDIALOGTRIGGER(0)
				SETNEXTDIALOGSTATE(3)
				ENDDIALOG()
			elseif(result==4369)then --Item 5
				GIVEITEM(4545)
				GIVEITEM(4546)
				GIVEITEM(4561)
				GIVESPECIALITEM(1507,1,4369)
				SAY("Très bien, voilà les plans et les composants.\nBonne chance!")
				ACTIVATEDIALOGTRIGGER(0)
				SETNEXTDIALOGSTATE(3)
				ENDDIALOG()
			else
				SAY("Erreur de script... Veuillez le signaler...")
				ENDDIALOG()
			end
		end
		
	NODE(6)
		SAY("Nous aimerions que vous construisiez un %ITEMNAME(%TARGET_VALUE(0,2)) et que vous le transfériez à %NPC_NAME(1), secteur  %NPC_WORLD(1).")
		SAY("Construisez un %ITEMNAME(%TARGET_VALUE(0,2)). Ensuite, livrez-le à %NPC_NAME(1), secteur %NPC_WORLD(1).")
		
		ANSWER("Je commence tout de suite.",5)
end