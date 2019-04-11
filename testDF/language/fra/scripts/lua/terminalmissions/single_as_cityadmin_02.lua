function DIALOG()
-- single_as_cityadmin
-- description single_as_02

	NODE(0)
		GENDERCHECK()
			if (result==1) then -- Player is Man:
				SAY("CityAdmin, comment puis-je vous aider, monsieur ?")
				SAY("CityAdmin, avez-vous besoin d'aide, monsieur ?")
				SAY("Bonjour monsieur, vous venez pour le job ?")
				SAY("Bienvenue � CityAdmin. Comment puis-je vous aider, monsieur ?")
				SAY("Bien le bonjour, monsieur. Le gouvernement a besoin de votre aide sans plus attendre.")
				
				ANSWER("Je regarde, c'est tout. Merci.",1)
				ANSWER("Que pouvez-vous me dire sur cet endroit ?",1)
				ANSWER("Bonjour, qu'est-ce que c'est ici ?",1)
				ANSWER("Pardon, je pensais que vous �tiez quelqu'un d'autre.",1)
				ANSWER("Oui, je viens pour le contrat.",2)
				ANSWER("OK, j'ai entendu dire que vous aviez besoin d'un tireur comp�tent.",2)
				ANSWER("Je viens pour une mission que j'ai prise sur un terminal.",2)

			else    -- Player is a Woman:
				SAY("CityAdmin, comment puis-je vous aider, madame ?")
				SAY("CityAdmin, avez-vous besoin d'aide, madame ?")
				SAY("Bonjour madame, vous venez pour le job ?")
				SAY("Bienvenue � CityAdmin. Comment puis-je vous aider, madame ?")
				SAY("Bien le bonjour, madame. Le gouvernement a besoin de votre aide sans plus attendre.")
				
				ANSWER("Je regarde, c'est tout. Merci.",1)
				ANSWER("Que pouvez-vous me dire sur cet endroit ?",1)
				ANSWER("Bonjour, qu'est-ce que c'est ici ?",1)
				ANSWER("Pardon, je pensais que vous �tiez quelqu'un d'autre.",1)
				ANSWER("Oui, je viens pour un contrat.",2)
				ANSWER("Je viens pour une mission que j'ai prise sur un terminal.",2)

			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("CityAdmin vous souhaite une bonne journ�e.")
				SAY("Passez une bonne journ�e. Pour le peuple !")
				SAY("Monsieur, pour des informations d'ordre g�n�ral veuillez consulter les terminaux. CityAdmin et Lioon Reza vous souhaitent une bonne journ�e.")
				SAY("Merci monsieur, passez une bonne journ�e.")
				ENDDIALOG()
			else
				SAY("CityAdmin vous souhaite une bonne journ�e.")
				SAY("Passez une bonne journ�e. Pour le peuple !")
				SAY("Madame, pour des informations d'ordre g�n�ral veuillez consulter les terminaux. CityAdmin et Lioon Reza vous souhaitent une bonne journ�e.")
				SAY("Merci madame, passez une bonne journ�e.")
				ENDDIALOG()
			end
	NODE(2) -- Giving Mission
			SAY("Votre cible est un espion du nom de %NPC_NAME(1), signal� pour la derni�re fois dans %NPC_WORLD(1). Il s'agit d'une ex�cution officielle avec autorisation de la hi�rarchie. Soyez discret, puis revenez ici pour votre compte-rendu.")
			SAY("Runner, voici l'ordre d'ex�cution officiel d'un espion nomm� %NPC_NAME(1). La cible a �t� rep�r�e pour la derni�re fois dans %NPC_WORLD(1). Abattez-le, poignardez-le, faites ce que vous voulez. Puis revenez ici pour votre compte-rendu.")
			SAY("Runner, il s'agit d'une ex�cution officielle. La cible, %NPC_NAME(1), se trouve dans %NPC_WORLD(1). Abattez-la et revenez ici pour votre compte-rendu. Rompez.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
	
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- Mission is not accomplished
				SAY("On nous signale qu'un espion suspect, %NPC_NAME(1), est toujours en ligne. Abattez votre cible au nom de Reza et du peuple de Neocron !")
				SAY("Runner, vous n'avez pas encore accompli votre mission. Occupez-vous du probl�me.")
				SAY("Runner, %NPC_NAME(1) est encore en �tat de se d�placer, selon mes relev�s. Trouvez et �liminez votre cible.")
				SAY("Mes rapports montrent que votre mission n'a pas encore �t� accomplie. Occupez-vous du probl�me, pour le bien du peuple de Neocron !")
				ENDDIALOG()
			else -- Mission was accomplished
				SAY("On me signale que vous avez accompli votre mission. La r�compense standard de %REWARD_MONEY() cr�dits a �t� transf�r�e sur votre compte. CityAdmin vous remercie pour votre travail. Rompez.")
				SAY("Runner, on nous signale que %NPC_NAME(1) n'est plus en �tat d'assurer ses fonctions vitales. La r�compense standard de %REWARD_MONEY() cr�dits a �t� transf�r�e sur votre compte. Pour Reza, pour le peuple !")
				SAY("Runner, beau travail. On nous a confirm� la mort de %NPC_NAME(1). La r�compense standard de %REWARD_MONEY() cr�dits a �t� transf�r�e sur votre compte. Marchez la t�te haute en pensant � ce que vous avez fait aujourd'hui pour Reza, pour le peuple !")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
						
		
			
