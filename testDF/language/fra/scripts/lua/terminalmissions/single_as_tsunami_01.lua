function DIALOG()
-- single_as_tsunami
-- description single_as_01

	NODE(0)
		GENDERCHECK()
			if (result==1) then -- Player is Man:
				SAY("Que cherchez-vous ici, monsieur ?")
				SAY("Bonjour monsieur, on peut vous aider ?")
				SAY("Oui ? Que voulez-vous, runner ?")
				SAY("Bienvenue dans mon bureau. Comment puis-je vous aider, monsieur...?")
				SAY("Hol� Runner, Tu viens me voir au sujet du travail, peut-�tre ?")
				
				ANSWER("Je ne fais que regarder, merci.",1)
				ANSWER("Que pouvez-vous m'apprendre sur cet endroit ?",1)
				ANSWER("Bonjour, qu'est-ce que c'est ici ?",1)
				ANSWER("D�sol�, je vous ai pris pour quelqu'un d'autre.",1)
				ANSWER("Je viens pour le contrat.",2)
				ANSWER("On m'a dit que vous cherchiez un tueur.",2)
				ANSWER("Voil�, je viens pour une mission que j'ai trouv�e sur un terminal.",2)

			else    -- Player is a Woman:
				SAY("Bonjour, beaut�. Quelle surprise ! Qu'est-ce que je peux faire pour vous ?")
				SAY("Donnez-vous la peine d'entrer dans mon bureau. Comment puis-je vous aider, beaut� ?")
				SAY("Bonjour, vous venez pour le contrat, runner ?")
				SAY("Salut beaut�, en quoi est-ce que je peux vous aider ?")
				SAY("Vous �tes certaine que vous �tes au bon endroit ? Pour les danseuses c'est au fond du couloir...")
				
				ANSWER("Je ne fais que regarder, merci.",1)
				ANSWER("Que pouvez-vous m'apprendre sur cet endroit ?",1)
				ANSWER("Bonjour, qu'est-ce que c'est ici ?",1)
				ANSWER("D�sol�e, je vous ai pris pour quelqu'un d'autre.",1)
				ANSWER("Je viens pour le contrat.",2)
				ANSWER("Voil�, je viens pour une mission que j'ai trouv�e sur un terminal.",2)

			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Ecoutez, si vous pensez juste tra�ner � ne rien faire, pourquoi vous n'allez pas dans un des clubs du quartier ?")
				SAY("Parlons affaires, ou bien partez. J'essaie de travailler, moi.")
				SAY("Pour des infos sur Tsunami, vous feriez mieux d'aller voir sur un terminal. Compris ?")
				SAY("Au revoir, runner.")
				ENDDIALOG()
			else
				SAY("Ecoutez, si vous pensez juste tra�ner � ne rien faire, pourquoi vous n'allez pas dans un des clubs du quartier ?")
				SAY("Vous comptez rester ici � me regarder toute la journ�e ? Je sais que je suis beau, mais quand m�me... Au revoir.")
				SAY("Pour de l'info sur Tsunami, vous feriez mieux d'aller voir un terminal. A plus tard, beaut�.")
				SAY("Ravi d'avoir pu vous rencontrer. A la prochaine fois...")
				ENDDIALOG()
			end
	NODE(2) -- Giving Mission
			SAY("On a un probl�me concernant un certain %NPC_NAME(1), il tra�ne habituellement du c�t� de %NPC_WORLD(1). On veut que vous lui fassiez la peau. Ne revenez ici que lorsque vous lui avez r�gl� son compte.")
			SAY("Runner, on a besoin de vos services pour neutraliser %NPC_NAME(1) � %NPC_WORLD(1). Faites �a en beaut�, et revenez me voir quand c'est r�gl�.")
			SAY("Runner, Tsunami a besoin de votre aide pour neutraliser un guignol du nom de %NPC_NAME(1). Cherchez votre cible dans %NPC_WORLD(1) et faites-en ce que vous voulez pourvu que �a se termine par la mort. Ensuite, revenez.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- Mission is not accomplished
				SAY("On avait un petit probl�me � traiter, vous vous souvenez. Allez vous en occuper tout de suite.")
				SAY("Runner, vous feriez mieux d'aller neutraliser %NPC_NAME(1). Si votre cible s'enfuit, vous allez avoir de gros probl�mes...")
				SAY("J'ai beaucoup trop de trucs � faire pour vous parler. Occupez-vous de ce que je vous ai dit, �a vaut mieux pour vous.")
				SAY("Allez neutraliser votre cible, ou bien pr�parez-vous � avoir une toute petite vie...")
				ENDDIALOG()
			else -- Mission was accomplished
				SAY("Samoura�, on m'a inform� que l'�lectroenc�phalogramme de %NPC_NAME(1) �tait aussi plat qu'un bel horizon. Beau travail. %REWARD_MONEY() cr�dits ont �t� transf�r�s sur votre compte. Passez une bonne journ�e.")
				SAY("On m'a dit que vous aviez refroidi %NPC_NAME(1) et que c'�tait pas beau � voir. C'�tait ce qu'on voulait. Voil� vos %REWARD_MONEY() cr�dits. On a beaucoup appr�ci� votre aide.")
				SAY("Runner, %NPC_NAME(1) ne fait plus partie de ce monde, et Tsunami s'en r�jouit. %REWARD_MONEY() cr�dits ont �t� transf�r�s sur votre compte. Ce fut un plaisir de traiter avec vous.")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
						
		
			

