function DIALOG()
-- single_as_diamond
-- description single_as_02

	NODE(0)
		GENDERCHECK()
			if (result==1) then 
				SAY("Bonjour monsieur, avez-vous besoin d'aide ?")
				SAY("Bonjour monsieur, puis-je vous aider ?")
				SAY("Bien le bonjour, monsieur.")
				SAY("Oui, je peux vous aider monsieur ?")
				SAY("Livraison ? Oh pardon, je voulais dire : Puis-je vous aider, monsieur ?")
				
				ANSWER("Je regarde, c'est tout. Merci.",1)
				ANSWER("Que pouvez-vous me dire sur cet endroit ?",1)
				ANSWER("C'est quoi, ici ?",1)
				ANSWER("Désolé, je vous ai pris pour quelqu'un d'autre.",1)
				ANSWER("Je viens pour un... job.",2)
				ANSWER("Oui, je viens pour l'exécution.",2)
				ANSWER("Bonjour, je viens pour le contrat d'exécution.",2)
				ANSWER("Je viens pour une mission que j'ai acceptée sur un terminal.",2)

			else    
				SAY("Bonjour madame, avez-vous besoin d'aide ?")
				SAY("Bonjour madame, puis-je vous aider ?")
				SAY("Bien le bonjour, madame.")
				SAY("Oui, je peux vous aider madame ?")
				SAY("Oui, oui. Que puis-je faire pour vous, madame ?")
				
				ANSWER("Je regarde, c'est tout. Merci.",1)
				ANSWER("Que pouvez-vous me dire sur cet endroit ?",1)
				ANSWER("C'est quoi, ici ?",1)
				ANSWER("Désolée, je vous ai pris pour quelqu'un d'autre.",1)
				ANSWER("Je viens pour un... job.",2)
				ANSWER("Oui, je viens pour l'exécution.",2)
				ANSWER("Bonjour, je viens pour le contrat d'exécution.",2)
				ANSWER("Je viens pour une mission que j'ai acceptée sur un terminal.",2)
			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Ne me faites pas perdre mon temps. J'ai énormément de choses à faire. Passez une bonne journée.")
				SAY("Ecoutez, je n'ai pas le temps pour ça. Veuillez sortir.")
				SAY("Monsieur, pour des informations d'ordre général veuillez consulter un terminal. Bonne journée.")
				SAY("Merci. Passez une bonne journée.")
				ENDDIALOG()
			else
				SAY("Ne me faites pas perdre mon temps. J'ai énormément de choses à faire. Passez une bonne journée.")
				SAY("Ecoutez, je n'ai pas le temps pour ça. Veuillez sortir.")
				SAY("Madame, pour des informations d'ordre général veuillez consulter un terminal. Bonne journée.")
				SAY("Merci. Passez une bonne journée.")
				ENDDIALOG()
			end
	NODE(2) -- Giving mission
			SAY("Bien, nous avons une mission urgente. Votre cible s'appelle %NPC_NAME(1), vous la trouverez dans %NPC_WORLD(1). Mettez fin à ses jours rapidement et discrètement, et revenez ici.")
			SAY("Bien, nous avons un problème à traiter. Notre problème s'appelle %NPC_NAME(1) et se trouve dans %NPC_WORLD(1). Occupez-vous en rapidement. La prochaine vois que je vous vois, je veux que ce problème soit résolu.")
			SAY("Ah oui, runner. Notre problème s'appelle %NPC_NAME(1) et requiert un traitement urgent. Tuez la cible, brûlez-la, faites-en de la pâtée pour chat, ce que vous voulez. Vous trouverez votre cible dans %NPC_WORLD(1). Revenez quand vous avez fini. Dépêchez-vous.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
		
	NODE(3)
		ISmissIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- mission is not accomplished
				SAY("Qu'est-ce que vous faites ici ? La cible est encore en vie. Je vous avais dit que c'était urgent. Nous n'avons pas le temps d'attendre !")
				SAY("Runner, vous n'avez pas un problème à prendre en charge ? On nous signale que %NPC_NAME(1) est toujours en vie. Alors dépêchez-vous !")
				SAY("Ne me dites pas que notre problème n'est pas encore résolu ! Soit vous vous en occupez maintenant, soit nous trouvons quelqu'un pour le faire à votre place.")
				SAY("Je ne vous ai pas assez dit que c'était urgent ? Comme dans 'Allez tuer %NPC_NAME(1) tout de suite !!!'")
				ENDDIALOG()
			else -- mission was accomplished
				SAY("Félicitations pour cette affaire rondement menée, runner. Et en plus, vous avez été rapide ! Voici vos %REWARD_MONEY() crédits. Passez une bonne journée.")
				SAY("Ah, vous revoilà. Beau travail ! Votre réussite vous a permis de gagner %REWARD_MONEY() crédits. Diamond Immobilier apprécie votre geste. Pensez à consulter votre terminal pour de nouvelles missions. Passez une bonne journée.")
				SAY("Runner, félicitations. Vous avez résolu notre problème dans les temps. %REWARD_MONEY() crédits ont été transférés sur votre compte. Diamond Immobilier vous remercie. Passez une bonne journée.")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
						
		
			
