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
				SAY("Holà Runner, Tu viens me voir au sujet du travail, peut-être ?")
				
				ANSWER("Je ne fais que regarder, merci.",1)
				ANSWER("Que pouvez-vous m'apprendre sur cet endroit ?",1)
				ANSWER("Bonjour, qu'est-ce que c'est ici ?",1)
				ANSWER("Désolé, je vous ai pris pour quelqu'un d'autre.",1)
				ANSWER("Je viens pour le contrat.",2)
				ANSWER("On m'a dit que vous cherchiez un tueur.",2)
				ANSWER("Voilà, je viens pour une mission que j'ai trouvée sur un terminal.",2)

			else    -- Player is a Woman:
				SAY("Bonjour, beauté. Quelle surprise ! Qu'est-ce que je peux faire pour vous ?")
				SAY("Donnez-vous la peine d'entrer dans mon bureau. Comment puis-je vous aider, beauté ?")
				SAY("Bonjour, vous venez pour le contrat, runner ?")
				SAY("Salut beauté, en quoi est-ce que je peux vous aider ?")
				SAY("Vous êtes certaine que vous êtes au bon endroit ? Pour les danseuses c'est au fond du couloir...")
				
				ANSWER("Je ne fais que regarder, merci.",1)
				ANSWER("Que pouvez-vous m'apprendre sur cet endroit ?",1)
				ANSWER("Bonjour, qu'est-ce que c'est ici ?",1)
				ANSWER("Désolée, je vous ai pris pour quelqu'un d'autre.",1)
				ANSWER("Je viens pour le contrat.",2)
				ANSWER("Voilà, je viens pour une mission que j'ai trouvée sur un terminal.",2)

			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Ecoutez, si vous pensez juste traîner à ne rien faire, pourquoi vous n'allez pas dans un des clubs du quartier ?")
				SAY("Parlons affaires, ou bien partez. J'essaie de travailler, moi.")
				SAY("Pour des infos sur Tsunami, vous feriez mieux d'aller voir sur un terminal. Compris ?")
				SAY("Au revoir, runner.")
				ENDDIALOG()
			else
				SAY("Ecoutez, si vous pensez juste traîner à ne rien faire, pourquoi vous n'allez pas dans un des clubs du quartier ?")
				SAY("Vous comptez rester ici à me regarder toute la journée ? Je sais que je suis beau, mais quand même... Au revoir.")
				SAY("Pour de l'info sur Tsunami, vous feriez mieux d'aller voir un terminal. A plus tard, beauté.")
				SAY("Ravi d'avoir pu vous rencontrer. A la prochaine fois...")
				ENDDIALOG()
			end
	NODE(2) -- Giving Mission
			SAY("On a un problème concernant un certain %NPC_NAME(1), il traîne habituellement du côté de %NPC_WORLD(1). On veut que vous lui fassiez la peau. Ne revenez ici que lorsque vous lui avez réglé son compte.")
			SAY("Runner, on a besoin de vos services pour neutraliser %NPC_NAME(1) à %NPC_WORLD(1). Faites ça en beauté, et revenez me voir quand c'est réglé.")
			SAY("Runner, Tsunami a besoin de votre aide pour neutraliser un guignol du nom de %NPC_NAME(1). Cherchez votre cible dans %NPC_WORLD(1) et faites-en ce que vous voulez pourvu que ça se termine par la mort. Ensuite, revenez.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- Mission is not accomplished
				SAY("On avait un petit problème à traiter, vous vous souvenez. Allez vous en occuper tout de suite.")
				SAY("Runner, vous feriez mieux d'aller neutraliser %NPC_NAME(1). Si votre cible s'enfuit, vous allez avoir de gros problèmes...")
				SAY("J'ai beaucoup trop de trucs à faire pour vous parler. Occupez-vous de ce que je vous ai dit, ça vaut mieux pour vous.")
				SAY("Allez neutraliser votre cible, ou bien préparez-vous à avoir une toute petite vie...")
				ENDDIALOG()
			else -- Mission was accomplished
				SAY("Samouraï, on m'a informé que l'électroencéphalogramme de %NPC_NAME(1) était aussi plat qu'un bel horizon. Beau travail. %REWARD_MONEY() crédits ont été transférés sur votre compte. Passez une bonne journée.")
				SAY("On m'a dit que vous aviez refroidi %NPC_NAME(1) et que c'était pas beau à voir. C'était ce qu'on voulait. Voilà vos %REWARD_MONEY() crédits. On a beaucoup apprécié votre aide.")
				SAY("Runner, %NPC_NAME(1) ne fait plus partie de ce monde, et Tsunami s'en réjouit. %REWARD_MONEY() crédits ont été transférés sur votre compte. Ce fut un plaisir de traiter avec vous.")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
						
		
			

