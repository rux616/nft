function DIALOG()
-- single_ag_tsunami
-- description single_ag_01

	NODE(0)
		GENDERCHECK()
			if (result==1) then -- Player is Man:
				SAY("Que faites-vous ici, monsieur ?")
				SAY("Bonjour monsieur, je peux vous aider ?")
				SAY("Oui, qu'est-ce que vous voulez, runner ?")
				SAY("Bienvenue dans mon bureau. Je peux vous aider, monsieur...?")
				SAY("Bonjour runner ! Vous venez pour un job, peut-être ?")
				
				ANSWER("Je ne fais que regarder, merci.",1)
				ANSWER("Que pouvez-vous m'apprendre sur cet endroit ?",1)
				ANSWER("Bonjour. Qu'est-ce que c'est ici ?",1)
				ANSWER("Pardon, je vous ai pris pour quelqu'un d'autre.",1)
				ANSWER("Je viens pour le nettoyage.",2)
				ANSWER("J'ai entendu dire que vous aviez besoin d'un nettoyeur compétent.",2)
				ANSWER("Je viens pour une annonce que j'ai trouvée sur un terminal.",2)

			else    -- Player is a Woman:
				SAY("Salut beauté, quelle surprise ! Qu'est-ce que je peux faire pour vous ?")
				SAY("Bienvenue, donnez-vous la peine d'entrer dans mon bureau. Qu'est-ce que je peux faire pour vous, beauté ?")
				SAY("Bonjour, vous venez pour le job ?")
				SAY("Salut beauté, besoin de quelque chose ?")
				SAY("Vous êtes certaine de ne pas vous être trompée d'étage ? Pour les danseuses, c'est au fond de la salle...")
				
				ANSWER("Je ne fais que regarder, merci.",1)
				ANSWER("Que pouvez-vous m'apprendre sur cet endroit ?",1)
				ANSWER("Joli, cet endroit. Qu'est-ce que vous faites ici ?",1)
				ANSWER("Pardon, je vous ai pris pour quelqu'un d'autre.",1)
				ANSWER("Oui, je viens pour le nettoyage.",2)
				ANSWER("Salutations. Je viens pour une annonce que j'ai trouvée sur un terminal.",2)

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
			SAY("Récemment, une de nos employées est tombée sur des %TARGET_NPCNAME(0). On a besoin d'un samouraï des rues comme vous pour faire un peu de nettoyage. Abattez-en... disons %TARGET_VALUE(0,1). Revenez quand vous avez fini.")
			SAY("Nos danseuses ne veulent plus travailler tant que la zone n'a pas été débarrassée des %TARGET_VALUE(0,1) qui grouillent dans les environs. Descendez-en %TARGET_NPCNAME(0) dans le secteur, et revenez me voir quand vous avez terminé.")
			SAY("On a un grand besoin d'un samouraï des rues pour faire un peu de nettoyage. Nous avons des %TARGET_NPCNAME(0) dans le secteur, et nous voulons que vous en descendiez au moins %TARGET_VALUE(0,1). Revenez me voir lorsque ce sera fini.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- Mission is not accomplished
				SAY("J'espère que vous avez fini votre job. Tsunami n'aime pas les gens qui font leur travail à moitié.")
				SAY("Runner, vous feriez mieux de vous dépêcher d'abattre ces %TARGET_NPCNAME(0). Les gens commencent à devenir nerveux.")
				SAY("J'ai trop de choses à faire pour pouvoir vous parler. Oh, ça me fait penser, vous n'aviez pas un petit problème à traiter concernant des %TARGET_NPCNAME(0), par hasard ?")
				SAY("Allez finir ce job, ou bien vous allez vous retrouver à la porte.")
				ENDDIALOG()
			else -- Mission was accomplished
				SAY("Samouraï ! On m'a dit que c'était nettoyé. %REWARD_MONEY() crédits ont été transférés sur votre compte. Tsunami apprécie les amis loyaux, on pourrait travailler ensemble dans un avenir proche.")
				SAY("On m'a dit que vous aviez terminé. On m'a dit que ça s'était bien passé. %REWARD_MONEY() crédits ont été transférés sur votre compte pour vous récompenser. Consultez les terminaux pour d'autres missions.")
				SAY("Beau travail, runner. Une récompense de %REWARD_MONEY() crédits a été transférée sur votre compte. Tsunami vous remercie pour votre aide.")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
						
		
			


