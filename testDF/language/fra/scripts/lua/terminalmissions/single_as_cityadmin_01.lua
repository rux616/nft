function DIALOG()
-- single_as_cityadmin
-- description single_as_01

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
			SAY("Cette mission est classée Top Secret. Votre cible s'appelle %NPC_NAME(1), c'est un traître. Nous l'avons localisé à %NPC_WORLD(1). Cet assassinat doit être discret, n'attirez pas l'attention sur vous. Revenez pour un compte-rendu une fois que vous avez terminé.")
			SAY("Runner, il s'agit d'une mission secrète. %NPC_NAME(1), un traître complotant contre Neocron, a dépassé son espérance de vie. La cible a été localisée à %NPC_WORLD(1). Exécutez-la sans attirer l'attention sur vous, puis revenez pour un compte-rendu.")
			SAY("Runner, c'est une mission discrète. Votre cible est %NPC_NAME(1), un traître, que nous avons localisé à %NPC_WORLD(1). Abattez-le discrètement, puis revenez me voir pour un compte-rendu.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
		
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- Mission si ont accomplished
				SAY("On nous signale que le traître %NPC_NAME(1) est toujours en vie. Abattez cet individu au nom de Reza et du peuple de Neocron !")
				SAY("Runner, votre mission n'est pas encore accomplie. Réglez le problème immédiatement.")
				SAY("Runner, %NPC_NAME(1) montre encore des signes de vie, selon mes rapports. Trouvez-le et éliminez-le.")
				SAY("Mes relevés montrent que cette mission n'a pas encore été menée à bien. Occupez-vous du problème, pour notre chef bien aimé, pour le peuple !")
				ENDDIALOG()
			else -- Mission was accomplished
				SAY("On me signale que la mission a été accomplie. La récompense standard de %REWARD_MONEY() crédits a été transférée sur votre compte. CityAdmin vous remercie pour votre travail.")
				SAY("Runner, on nous signale que %NPC_NAME(1) a été éradiqué. Beau travail. La récompense standard de %REWARD_MONEY() crédits  a été transférée sur votre compte. Pour Reza !")
				SAY("Runner, beau travail. %NPC_NAME(1) a été trouvé mort. La récompense standard de %REWARD_MONEY() crédits a été transférée sur votre compte. Merci pour la ville et pour le peuple de Neocron !")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
						
		
			
