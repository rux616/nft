function DIALOG()
-- single_ag_tsunami
-- description single_ag_02

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
			SAY("Un demeuré a laissé une trappe ouverte, et maintenant on doit faire face à une invasion de %TARGET_NPCNAME(0). On a besoin d'un samouraï des rues pour faire de la régulation de population, et les abattre. Les %TARGET_VALUE(0,1). Revenez quand vous avez réglé le problème.")
			SAY("Un de nos employés, pas très malin, a laissé une trappe ouverte, et des %TARGET_VALUE(0,1) sont entrés dans le secteur. Brûlez-en %TARGET_NPCNAME(0), et revenez quand le problème est réglé.")
			SAY("Vous pourriez nous aider pour une mission de routine, un contrôle de population. Actuellement, on a un problème avec les %TARGET_NPCNAME(0) dans le secteur. Il faudrait que vous en abattiez %TARGET_VALUE(0,1). Revenez me voir après ça.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- Mission is not accomplished
				SAY("J'espère que vous avez fini votre job. Tsunami n'aime pas les gens qui font leur travail à moitié.")
				SAY("Runner, allez vous occuper de ces %TARGET_NPCNAME(0). S'ils commencent à se répandre, on va vraiment être dans la merde.")
				SAY("J'ai trop de choses à faire pour vous parler. Vous devriez vous occuper de votre mission.")
				SAY("Allez vous occuper de ces %TARGET_NPCNAME(0), ou bien on retrouvera votre cadavre dans les égouts.")
				ENDDIALOG()
			else -- Mission was accomplished
				SAY("Samouraï, on m'a dit que le problème était réglé. %REWARD_MONEY() crédits ont été versés sur votre compte. Surveillez votre terminal pour de futures missions.")
				SAY("On m'a dit que vous aviez abattu tous les intrus. Et on m'a dit que vous aviez fait du très bon travail, samouraï. %REWARD_MONEY() crédits ont été transférés sur votre compte. Merci beaucoup. Surveillez votre terminal, on pourrit avoir besoin de vous bientôt.")
				SAY("Bon travail, runner. La récompense de %REWARD_MONEY() crédits a été transférée sur votre compte. Ca a été un plaisir de travailler avec vous.")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
						
		
			


