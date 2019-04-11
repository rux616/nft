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
				ANSWER("D�sol�, je vous ai pris pour quelqu'un d'autre.",1)
				ANSWER("Je viens pour un... job.",2)
				ANSWER("Oui, je viens pour l'ex�cution.",2)
				ANSWER("Bonjour, je viens pour le contrat d'ex�cution.",2)
				ANSWER("Je viens pour une mission que j'ai accept�e sur un terminal.",2)

			else    
				SAY("Bonjour madame, avez-vous besoin d'aide ?")
				SAY("Bonjour madame, puis-je vous aider ?")
				SAY("Bien le bonjour, madame.")
				SAY("Oui, je peux vous aider madame ?")
				SAY("Oui, oui. Que puis-je faire pour vous, madame ?")
				
				ANSWER("Je regarde, c'est tout. Merci.",1)
				ANSWER("Que pouvez-vous me dire sur cet endroit ?",1)
				ANSWER("C'est quoi, ici ?",1)
				ANSWER("D�sol�e, je vous ai pris pour quelqu'un d'autre.",1)
				ANSWER("Je viens pour un... job.",2)
				ANSWER("Oui, je viens pour l'ex�cution.",2)
				ANSWER("Bonjour, je viens pour le contrat d'ex�cution.",2)
				ANSWER("Je viens pour une mission que j'ai accept�e sur un terminal.",2)
			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Ne me faites pas perdre mon temps. J'ai �norm�ment de choses � faire. Passez une bonne journ�e.")
				SAY("Ecoutez, je n'ai pas le temps pour �a. Veuillez sortir.")
				SAY("Monsieur, pour des informations d'ordre g�n�ral veuillez consulter un terminal. Bonne journ�e.")
				SAY("Merci. Passez une bonne journ�e.")
				ENDDIALOG()
			else
				SAY("Ne me faites pas perdre mon temps. J'ai �norm�ment de choses � faire. Passez une bonne journ�e.")
				SAY("Ecoutez, je n'ai pas le temps pour �a. Veuillez sortir.")
				SAY("Madame, pour des informations d'ordre g�n�ral veuillez consulter un terminal. Bonne journ�e.")
				SAY("Merci. Passez une bonne journ�e.")
				ENDDIALOG()
			end
	NODE(2) -- Giving mission
			SAY("Bien, nous avons une mission urgente. Votre cible s'appelle %NPC_NAME(1), vous la trouverez dans %NPC_WORLD(1). Mettez fin � ses jours rapidement et discr�tement, et revenez ici.")
			SAY("Bien, nous avons un probl�me � traiter. Notre probl�me s'appelle %NPC_NAME(1) et se trouve dans %NPC_WORLD(1). Occupez-vous en rapidement. La prochaine vois que je vous vois, je veux que ce probl�me soit r�solu.")
			SAY("Ah oui, runner. Notre probl�me s'appelle %NPC_NAME(1) et requiert un traitement urgent. Tuez la cible, br�lez-la, faites-en de la p�t�e pour chat, ce que vous voulez. Vous trouverez votre cible dans %NPC_WORLD(1). Revenez quand vous avez fini. D�p�chez-vous.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
		
	NODE(3)
		ISmissIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- mission is not accomplished
				SAY("Qu'est-ce que vous faites ici ? La cible est encore en vie. Je vous avais dit que c'�tait urgent. Nous n'avons pas le temps d'attendre !")
				SAY("Runner, vous n'avez pas un probl�me � prendre en charge ? On nous signale que %NPC_NAME(1) est toujours en vie. Alors d�p�chez-vous !")
				SAY("Ne me dites pas que notre probl�me n'est pas encore r�solu ! Soit vous vous en occupez maintenant, soit nous trouvons quelqu'un pour le faire � votre place.")
				SAY("Je ne vous ai pas assez dit que c'�tait urgent ? Comme dans 'Allez tuer %NPC_NAME(1) tout de suite !!!'")
				ENDDIALOG()
			else -- mission was accomplished
				SAY("F�licitations pour cette affaire rondement men�e, runner. Et en plus, vous avez �t� rapide ! Voici vos %REWARD_MONEY() cr�dits. Passez une bonne journ�e.")
				SAY("Ah, vous revoil�. Beau travail ! Votre r�ussite vous a permis de gagner %REWARD_MONEY() cr�dits. Diamond Immobilier appr�cie votre geste. Pensez � consulter votre terminal pour de nouvelles missions. Passez une bonne journ�e.")
				SAY("Runner, f�licitations. Vous avez r�solu notre probl�me dans les temps. %REWARD_MONEY() cr�dits ont �t� transf�r�s sur votre compte. Diamond Immobilier vous remercie. Passez une bonne journ�e.")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
						
		
			
