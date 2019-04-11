function DIALOG()
-- single_as_proto
-- description single_as_02

	NODE(0)
		GENDERCHECK()
			if (result==1) then -- Player is Man:
				SAY("Votre espoir, votre force, votre remède. ProtoPharm, puis-je vous aider monsieur ?")
				SAY("Bienvenue à ProtoPharm, comment puis-je vous aider monsieur ?")
				SAY("Excusez mon langage direct, monsieur, mais êtes-vous là pour l'exécution ?")
				SAY("Bonjour monsieur. ProtoPharm pourrait avoir recours à vos services, si vous êtes intéressé.")
				SAY("Bonjour monsieur, et bienvenue à ProtoPharm. Nous avons du travail pour vous, si cela vous intéresse.")
				
				ANSWER("Je ne fais que regarder, merci.",1)
				ANSWER("Que pouvez-vous me dire au sujet de cet endroit ?",1)
				ANSWER("Je ne suis pas votre homme, désolé.",1)
				ANSWER("Désolé, je vous ai pris pour quelqu'un d'autre.",1)
				ANSWER("Je viens pour le job.",2)
				ANSWER("Je viens pour le contrat, c'est bien moi.",2)
				ANSWER("J'ai entendu dire que vous aviez un problème à résoudre.",2)
				ANSWER("Je viens pour une mission que j'ai trouvée sur un terminal.",2)

			else    -- Player is a Woman:
				SAY("Votre espoir, votre force, votre remède. ProtoPharm, puis-je vous aider madame ?")
				SAY("Bienvenue à ProtoPharm, comment puis-je vous aider madame ?")
				SAY("Excusez mon langage direct, madame, mais êtes-vous là pour l'exécution ?")
				SAY("Bonjour madame. ProtoPharm pourrait avoir recours à vos services, si vous êtes intéressée.")
				SAY("Bonjour madame, et bienvenue à ProtoPharm. Nous avons du travail pour vous, si cela vous intéresse.")
				
				ANSWER("Je ne fais que regarder, merci.",1)
				ANSWER("Que pouvez-vous me dire au sujet de cet endroit ?",1)
				ANSWER("Je ne suis pas celle que vous recherchez, désolée.",1)
				ANSWER("Désolée, je vous ai pris pour quelqu'un d'autre.",1)
				ANSWER("Je viens pour le job.",2)
				ANSWER("Je viens pour le contrat, c'est bien moi.",2)
				ANSWER("J'ai entendu dire que vous aviez un problème à résoudre.",2)
				ANSWER("Je viens pour une mission que j'ai trouvée sur un terminal.",2)
			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Vous êtes à ProtoPharm, et pour vivre nous devons travailler. Faites comme nous ou bien sortez.")
				SAY("Ecoutez, l'ami, je cherche quelqu'un pour nous aider tout de suite. Si vous n'êtes pas là pour ça, veuillez sortir.")
				SAY("Monsieur, je suis pris entre deux feux en ce moment. Alors aidez-moi ou partez. Merci.")
				SAY("Merci. Passez une bonne journée.")
				ENDDIALOG()
			else
				SAY("Vous êtes à ProtoPharm, et pour vivre nous devons travailler. Faites comme nous ou bien sortez.")
				SAY("Ecoutez, très chère, je cherche quelqu'un pour nous aider tout de suite. Si vous n'êtes pas là pour ça, veuillez sortir.")
				SAY("Madame, je suis pris entre deux feux en ce moment. Alors aidez-moi ou partez. Merci.")
				SAY("Merci. Passez une bonne journée.")
				ENDDIALOG()
			end
	NODE(2) -- Giving Mission
			SAY("Bien. C'est une mission urgente, et absolument confidentielle. La cible s'appelle %NPC_NAME(1), c'est une taupe qui a revendu à l'extérieur des informations très importantes sur la compagnie. La cible se trouve à %NPC_WORLD(1). Faites vite et bien. Et évidemment, si on vous pose des questions, je n'existe pas.")
			SAY("OK, voici ce que vous avez besoin de savoir : votre cible se nomme %NPC_NAME(1), et se trouve à %NPC_WORLD(1). Occupez-vous de son cas rapidement et proprement. Puis revenez me voir.")
			SAY("Salutations. Il s'agit d'une opération secrète à caractère sensible. La cible s'appelle %NPC_NAME(1), elle se trouve actuellement à %NPC_WORLD(1). Son crime est d'avoir vendu des secrets d'entreprise à d'autres compagnies. Nous voulons que vous vous occupiez de son cas rapidement et discrètement. Revenez me voir quand vous aurez terminé.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- Mission is not accomplished
				SAY("La discrétion est ce qui compte le plus, je suis d'accord. Mais pensez à y mettre un peu plus d'empressement, enfin...")
				SAY("Runner, je vous paie pour refroidir une cible. Alors en piste !")
				SAY("Ecoutez, c'est tout ce que nous savons, et chaque seconde compte. Alors occupez-vous du cas %NPC_NAME(1), maintenant !")
				SAY("Allez, allez, il faut vous occuper de cet individu qui ne sait pas tenir sa langue ! On ne peut pas se permettre de voir %NPC_NAME(1) continuer à jouer son petit jeu.")
				ENDDIALOG()
			else -- Mission was accomplished
				SAY("Bien joué, vous avez épargné beaucoup de dépenses à ProtoPharm. Tenez, à propos, voici vos %REWARD_MONEY() crédits. Au plaisir de travailler à nouveau avec vous.")
				SAY("Vous me dites que vous avez abattu %NPC_NAME(1). Merveilleux. %REWARD_MONEY() crédits ont été transférés sur votre compte. ProtoPharm vous remercie pour votre professionnalisme, et nous serons ravis de travailler une nouvelle fois avec vous.")
				SAY("L'hôpital a confirmé que %NPC_NAME(1) a trouvé la mort. Bon travail. %REWARD_MONEY() crédits ont été transférés sur votre compte. ProtoPharm vous remercie pour votre aide. Bonne journée.")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
						
		
			
