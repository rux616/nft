function DIALOG()
-- single_as_proto
-- description single_as_02

	NODE(0)
		GENDERCHECK()
			if (result==1) then -- Player is Man:
				SAY("Votre espoir, votre force, votre rem�de. ProtoPharm, puis-je vous aider monsieur ?")
				SAY("Bienvenue � ProtoPharm, comment puis-je vous aider monsieur ?")
				SAY("Excusez mon langage direct, monsieur, mais �tes-vous l� pour l'ex�cution ?")
				SAY("Bonjour monsieur. ProtoPharm pourrait avoir recours � vos services, si vous �tes int�ress�.")
				SAY("Bonjour monsieur, et bienvenue � ProtoPharm. Nous avons du travail pour vous, si cela vous int�resse.")
				
				ANSWER("Je ne fais que regarder, merci.",1)
				ANSWER("Que pouvez-vous me dire au sujet de cet endroit ?",1)
				ANSWER("Je ne suis pas votre homme, d�sol�.",1)
				ANSWER("D�sol�, je vous ai pris pour quelqu'un d'autre.",1)
				ANSWER("Je viens pour le job.",2)
				ANSWER("Je viens pour le contrat, c'est bien moi.",2)
				ANSWER("J'ai entendu dire que vous aviez un probl�me � r�soudre.",2)
				ANSWER("Je viens pour une mission que j'ai trouv�e sur un terminal.",2)

			else    -- Player is a Woman:
				SAY("Votre espoir, votre force, votre rem�de. ProtoPharm, puis-je vous aider madame ?")
				SAY("Bienvenue � ProtoPharm, comment puis-je vous aider madame ?")
				SAY("Excusez mon langage direct, madame, mais �tes-vous l� pour l'ex�cution ?")
				SAY("Bonjour madame. ProtoPharm pourrait avoir recours � vos services, si vous �tes int�ress�e.")
				SAY("Bonjour madame, et bienvenue � ProtoPharm. Nous avons du travail pour vous, si cela vous int�resse.")
				
				ANSWER("Je ne fais que regarder, merci.",1)
				ANSWER("Que pouvez-vous me dire au sujet de cet endroit ?",1)
				ANSWER("Je ne suis pas celle que vous recherchez, d�sol�e.",1)
				ANSWER("D�sol�e, je vous ai pris pour quelqu'un d'autre.",1)
				ANSWER("Je viens pour le job.",2)
				ANSWER("Je viens pour le contrat, c'est bien moi.",2)
				ANSWER("J'ai entendu dire que vous aviez un probl�me � r�soudre.",2)
				ANSWER("Je viens pour une mission que j'ai trouv�e sur un terminal.",2)
			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Vous �tes � ProtoPharm, et pour vivre nous devons travailler. Faites comme nous ou bien sortez.")
				SAY("Ecoutez, l'ami, je cherche quelqu'un pour nous aider tout de suite. Si vous n'�tes pas l� pour �a, veuillez sortir.")
				SAY("Monsieur, je suis pris entre deux feux en ce moment. Alors aidez-moi ou partez. Merci.")
				SAY("Merci. Passez une bonne journ�e.")
				ENDDIALOG()
			else
				SAY("Vous �tes � ProtoPharm, et pour vivre nous devons travailler. Faites comme nous ou bien sortez.")
				SAY("Ecoutez, tr�s ch�re, je cherche quelqu'un pour nous aider tout de suite. Si vous n'�tes pas l� pour �a, veuillez sortir.")
				SAY("Madame, je suis pris entre deux feux en ce moment. Alors aidez-moi ou partez. Merci.")
				SAY("Merci. Passez une bonne journ�e.")
				ENDDIALOG()
			end
	NODE(2) -- Giving Mission
			SAY("Bien. C'est une mission urgente, et absolument confidentielle. La cible s'appelle %NPC_NAME(1), c'est une taupe qui a revendu � l'ext�rieur des informations tr�s importantes sur la compagnie. La cible se trouve � %NPC_WORLD(1). Faites vite et bien. Et �videmment, si on vous pose des questions, je n'existe pas.")
			SAY("OK, voici ce que vous avez besoin de savoir : votre cible se nomme %NPC_NAME(1), et se trouve � %NPC_WORLD(1). Occupez-vous de son cas rapidement et proprement. Puis revenez me voir.")
			SAY("Salutations. Il s'agit d'une op�ration secr�te � caract�re sensible. La cible s'appelle %NPC_NAME(1), elle se trouve actuellement � %NPC_WORLD(1). Son crime est d'avoir vendu des secrets d'entreprise � d'autres compagnies. Nous voulons que vous vous occupiez de son cas rapidement et discr�tement. Revenez me voir quand vous aurez termin�.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- Mission is not accomplished
				SAY("La discr�tion est ce qui compte le plus, je suis d'accord. Mais pensez � y mettre un peu plus d'empressement, enfin...")
				SAY("Runner, je vous paie pour refroidir une cible. Alors en piste !")
				SAY("Ecoutez, c'est tout ce que nous savons, et chaque seconde compte. Alors occupez-vous du cas %NPC_NAME(1), maintenant !")
				SAY("Allez, allez, il faut vous occuper de cet individu qui ne sait pas tenir sa langue ! On ne peut pas se permettre de voir %NPC_NAME(1) continuer � jouer son petit jeu.")
				ENDDIALOG()
			else -- Mission was accomplished
				SAY("Bien jou�, vous avez �pargn� beaucoup de d�penses � ProtoPharm. Tenez, � propos, voici vos %REWARD_MONEY() cr�dits. Au plaisir de travailler � nouveau avec vous.")
				SAY("Vous me dites que vous avez abattu %NPC_NAME(1). Merveilleux. %REWARD_MONEY() cr�dits ont �t� transf�r�s sur votre compte. ProtoPharm vous remercie pour votre professionnalisme, et nous serons ravis de travailler une nouvelle fois avec vous.")
				SAY("L'h�pital a confirm� que %NPC_NAME(1) a trouv� la mort. Bon travail. %REWARD_MONEY() cr�dits ont �t� transf�r�s sur votre compte. ProtoPharm vous remercie pour votre aide. Bonne journ�e.")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
						
		
			
