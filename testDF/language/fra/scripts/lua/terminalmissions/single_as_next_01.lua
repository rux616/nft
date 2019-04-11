function DIALOG()
-- single_as_NEXT
-- description single_as_01

	NODE(0)
		GENDERCHECK()
			if (result==1) then -- Player is Man
				SAY("NEXT, comment puis-je vous aider monsieur ?")
				SAY("NEXT, où voulez-vous aller aujourd'hui, monsieur ?")
				SAY("Bonjour monsieur, vous venez pour le contrat ?")
				SAY("Bienvenue chez NEXT. Comment puis-je vous aider, monsieur ?")
				SAY("Bonjour monsieur. NEXT pourrait avoir recours à vos services, si vous êtes intéressé.")
				
				ANSWER("Je ne fais que regarder. Merci.",1)
				ANSWER("Que pouvez-vous m'apprendre sur cet endroit ?",1)
				ANSWER("Bonjour, qu'est-ce que c'est ici ?",1)
				ANSWER("Désolé, je vous ai pris pour quelqu'un d'autre.",1)
				ANSWER("Oui, je viens pour le contrat.",2)
				ANSWER("J'ai entendu dire que vous aviez quelques problèmes à résoudre.",2)
				ANSWER("Je viens pour une mission que j'ai trouvée sur un terminal.",2)

			else    -- Player is a Woman
				SAY("NEXT, comment puis-je vous aider madame ?")
				SAY("NEXT, où voulez-vous aller aujourd'hui, madame ?")
				SAY("Bonjour madame, vous venez pour le contrat ?")
				SAY("Bienvenue chez NEXT. Comment puis-je vous aider, madame ?")
				SAY("Bonjour madame. NEXT pourrait avoir recours à vos services, si vous êtes intéressée.")
				
				ANSWER("Je ne fais que regarder. Merci.",1)
				ANSWER("Que pouvez-vous m'apprendre sur cet endroit ?",1)
				ANSWER("Bonjour, qu'est-ce que c'est ici ?",1)
				ANSWER("Désolé, je vous ai pris pour quelqu'un d'autre.",1)
				ANSWER("Oui, je viens pour le contrat.",2)
				ANSWER("Je viens pour une mission d'exécution que j'ai trouvée sur un terminal.",2)
			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Merci pour votre visite, monsieur. Passez une bonne journée.")
				SAY("Monsieur, j'ai beaucoup de choses à faire. Si vous ne venez pas pour affaires, je vais devoir vous demander de partir.")
				SAY("Monsieur, pour des informations d'ordre général veuillez consulter les terminaux. Au revoir.")
				SAY("Merci monsieur. Passez une bonne journée.")
				ENDDIALOG()
			else
				SAY("Merci pour votre visite, madame. Passez une bonne journée.")
				SAY("Madame, j'ai beaucoup de choses à faire. Passez une bonne journée.")
				SAY("Madame, pour des informations d'ordre général veuillez consulter les terminaux. Au revoir.")
				SAY("Merci madame. Passez une bonne journée.")
				ENDDIALOG()
			end
	NODE(2) -- Giving Mission
			SAY("Votre cible est un concurrent du nom de %NPC_NAME(1). Vous la trouverez quelque part dans %NPC_WORLD(1). Travaillez discrètement, et revenez me voir pour toucher votre récompense.")
			SAY("Nous avons besoin que vous refroidissiez un individu du nom de %NPC_NAME(1), à %NPC_WORLD(1). N'attirez pas l'attention sur vous. Revenez ici quand vous aurez terminé.")
			SAY("Runner. C'est un plaisir de vous rencontrer. Votre cible s'appelle %NPC_NAME(1), et c'est un concurrent très turbulent. Rendez-vous dans %NPC_WORLD(1), vous devriez y trouver la cible. Je sais que vous comprenez la nature confidentielle de cette opération. Revenez me voir lorsque la cible aura été abattue.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
		
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- Mission is not accomplished
				SAY("%NPC_NAME(1) est encore en vie. La dernière fois que je vous ai parlé, nous avions convenu qu'il fallait remédier à ce problème. C'est à vous de jouer.")
				SAY("Vous avez reçu la mission de vous occuper de %NPC_NAME(1) dans %NPC_WORLD(1), c'est exact ? Alors allez-y...")
				SAY("Ecoutez, la cible est encore envie. Remédiez à cette situation... On se comprend ?")
				SAY("Ne revenez pas tant que vous n'aurez pas traité le cas %NPC_NAME(1).")
				ENDDIALOG()
			else -- Mission was accomplished
				SAY("Excellent travail ! La cible est raide morte. Voici vos %REWARD_MONEY() crédits. J'espère que nous travaillerons ensemble à nouveau.")
				SAY("Vous revoilà, bon travail ! Votre résolution du cas %NPC_NAME(1) vous a permis de gagner la somme de %REWARD_MONEY() crédits. NEXT vous remercie de votre aide. Passez une bonne journée.")
				SAY("Runner, on nous a informés que vous avez traité le cas qui nous préoccupait. %REWARD_MONEY() crédits ont été transférés sur votre compte. Pensez à surveiller votre terminal pour de futures missions.")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
						
		
			
