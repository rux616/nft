function DIALOG()
-- single_as_cityadmin
-- description single_as_02

	NODE(0)
		GENDERCHECK()
			if (result==1) then -- Player is Man:
				SAY("CityAdmin, comment puis-je vous aider, monsieur ?")
				SAY("CityAdmin, avez-vous besoin d'aide, monsieur ?")
				SAY("Bonjour monsieur, vous venez pour le job ?")
				SAY("Bienvenue à CityAdmin. Comment puis-je vous aider, monsieur ?")
				SAY("Bien le bonjour, monsieur. Le gouvernement a besoin de votre aide sans plus attendre.")
				
				ANSWER("Je regarde, c'est tout. Merci.",1)
				ANSWER("Que pouvez-vous me dire sur cet endroit ?",1)
				ANSWER("Bonjour, qu'est-ce que c'est ici ?",1)
				ANSWER("Pardon, je pensais que vous étiez quelqu'un d'autre.",1)
				ANSWER("Oui, je viens pour le contrat.",2)
				ANSWER("OK, j'ai entendu dire que vous aviez besoin d'un tireur compétent.",2)
				ANSWER("Je viens pour une mission que j'ai prise sur un terminal.",2)

			else    -- Player is a Woman:
				SAY("CityAdmin, comment puis-je vous aider, madame ?")
				SAY("CityAdmin, avez-vous besoin d'aide, madame ?")
				SAY("Bonjour madame, vous venez pour le job ?")
				SAY("Bienvenue à CityAdmin. Comment puis-je vous aider, madame ?")
				SAY("Bien le bonjour, madame. Le gouvernement a besoin de votre aide sans plus attendre.")
				
				ANSWER("Je regarde, c'est tout. Merci.",1)
				ANSWER("Que pouvez-vous me dire sur cet endroit ?",1)
				ANSWER("Bonjour, qu'est-ce que c'est ici ?",1)
				ANSWER("Pardon, je pensais que vous étiez quelqu'un d'autre.",1)
				ANSWER("Oui, je viens pour un contrat.",2)
				ANSWER("Je viens pour une mission que j'ai prise sur un terminal.",2)

			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("CityAdmin vous souhaite une bonne journée.")
				SAY("Passez une bonne journée. Pour le peuple !")
				SAY("Monsieur, pour des informations d'ordre général veuillez consulter les terminaux. CityAdmin et Lioon Reza vous souhaitent une bonne journée.")
				SAY("Merci monsieur, passez une bonne journée.")
				ENDDIALOG()
			else
				SAY("CityAdmin vous souhaite une bonne journée.")
				SAY("Passez une bonne journée. Pour le peuple !")
				SAY("Madame, pour des informations d'ordre général veuillez consulter les terminaux. CityAdmin et Lioon Reza vous souhaitent une bonne journée.")
				SAY("Merci madame, passez une bonne journée.")
				ENDDIALOG()
			end
	NODE(2) -- Giving Mission
			SAY("Votre cible est un espion du nom de %NPC_NAME(1), signalé pour la dernière fois dans %NPC_WORLD(1). Il s'agit d'une exécution officielle avec autorisation de la hiérarchie. Soyez discret, puis revenez ici pour votre compte-rendu.")
			SAY("Runner, voici l'ordre d'exécution officiel d'un espion nommé %NPC_NAME(1). La cible a été repérée pour la dernière fois dans %NPC_WORLD(1). Abattez-le, poignardez-le, faites ce que vous voulez. Puis revenez ici pour votre compte-rendu.")
			SAY("Runner, il s'agit d'une exécution officielle. La cible, %NPC_NAME(1), se trouve dans %NPC_WORLD(1). Abattez-la et revenez ici pour votre compte-rendu. Rompez.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
	
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- Mission is not accomplished
				SAY("On nous signale qu'un espion suspect, %NPC_NAME(1), est toujours en ligne. Abattez votre cible au nom de Reza et du peuple de Neocron !")
				SAY("Runner, vous n'avez pas encore accompli votre mission. Occupez-vous du problème.")
				SAY("Runner, %NPC_NAME(1) est encore en état de se déplacer, selon mes relevés. Trouvez et éliminez votre cible.")
				SAY("Mes rapports montrent que votre mission n'a pas encore été accomplie. Occupez-vous du problème, pour le bien du peuple de Neocron !")
				ENDDIALOG()
			else -- Mission was accomplished
				SAY("On me signale que vous avez accompli votre mission. La récompense standard de %REWARD_MONEY() crédits a été transférée sur votre compte. CityAdmin vous remercie pour votre travail. Rompez.")
				SAY("Runner, on nous signale que %NPC_NAME(1) n'est plus en état d'assurer ses fonctions vitales. La récompense standard de %REWARD_MONEY() crédits a été transférée sur votre compte. Pour Reza, pour le peuple !")
				SAY("Runner, beau travail. On nous a confirmé la mort de %NPC_NAME(1). La récompense standard de %REWARD_MONEY() crédits a été transférée sur votre compte. Marchez la tête haute en pensant à ce que vous avez fait aujourd'hui pour Reza, pour le peuple !")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
						
		
			
