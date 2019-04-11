function DIALOG()
-- single_as_NEXT
-- description single_as_02

	NODE(0)
		GENDERCHECK()
			if (result==1) then -- Player is Man
				SAY("NEXT, comment puis-je vous aider monsieur ?")
				SAY("NEXT, o� voulez-vous aller aujourd'hui, monsieur ?")
				SAY("Bonjour monsieur, vous venez pour le contrat ?")
				SAY("Bienvenue chez NEXT. Comment puis-je vous aider, monsieur ?")
				SAY("Bonjour monsieur. NEXT pourrait avoir recours � vos services, si vous �tes int�ress�.")
				
				ANSWER("Je ne fais que regarder. Merci.",1)
				ANSWER("Que pouvez-vous m'apprendre sur cet endroit ?",1)
				ANSWER("Bonjour, qu'est-ce que c'est ici ?",1)
				ANSWER("D�sol�, je vous ai pris pour quelqu'un d'autre.",1)
				ANSWER("Oui, je viens pour le contrat.",2)
				ANSWER("J'ai entendu dire que vous aviez quelques probl�mes � r�soudre.",2)
				ANSWER("Je viens pour une mission que j'ai trouv�e sur un terminal.",2)

			else    -- Player is a Woman
				SAY("NEXT, comment puis-je vous aider madame ?")
				SAY("NEXT, o� voulez-vous aller aujourd'hui, madame ?")
				SAY("Bonjour madame, vous venez pour le contrat ?")
				SAY("Bienvenue chez NEXT. Comment puis-je vous aider, madame ?")
				SAY("Bonjour madame. NEXT pourrait avoir recours � vos services, si vous �tes int�ress�e.")
				
				ANSWER("Je ne fais que regarder. Merci.",1)
				ANSWER("Que pouvez-vous m'apprendre sur cet endroit ?",1)
				ANSWER("Bonjour, qu'est-ce que c'est ici ?",1)
				ANSWER("D�sol�, je vous ai pris pour quelqu'un d'autre.",1)
				ANSWER("Oui, je viens pour le contrat.",2)
				ANSWER("Je viens pour une mission d'ex�cution que j'ai trouv�e sur un terminal.",2)
			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Merci pour votre visite, monsieur. Passez une bonne journ�e.")
				SAY("Monsieur, j'ai beaucoup de choses � faire. Si vous ne venez pas pour affaires, je vais devoir vous demander de partir.")
				SAY("Monsieur, pour des informations d'ordre g�n�ral veuillez consulter les terminaux. Au revoir.")
				SAY("Merci monsieur. Passez une bonne journ�e.")
				ENDDIALOG()
			else
				SAY("Merci pour votre visite, madame. Passez une bonne journ�e.")
				SAY("Madame, j'ai beaucoup de choses � faire. Passez une bonne journ�e.")
				SAY("Madame, pour des informations d'ordre g�n�ral veuillez consulter les terminaux. Au revoir.")
				SAY("Merci madame. Passez une bonne journ�e.")
				ENDDIALOG()
			end
	NODE(2) -- Giving Mission
			SAY("Cet individu du nom de %NPC_NAME(1) a vol� un de nos caissons d'exp�rience, et il nous faut agir. Vous trouverez la cible � %NPC_WORLD(1). Abattez-la, c'est tout. Et revenez me voir ensuite.")
			SAY("%NPC_NAME(1) a vol� un de nos v�hicules exp�rimentaux. La cible se trouve � %NPC_WORLD(1), et on aimerait bien que les CopBots retrouvent son cadavre. Revenez ici quand vous lui avez r�gl� son compte.")
			SAY("Runner, votre cible est un voleur du nom de %NPC_NAME(1). Rendez-vous � %NPC_WORLD(1) pour vous occuper de son cas, et devenez ici quand l'affaire sera r�gl�e.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
		
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- Mission is not accomplished
				SAY("%NPC_NAME(1) est encore en vie. La derni�re fois que je vous ai parl�, nous avions convenu qu'il fallait rem�dier � ce probl�me. C'est � vous de jouer.")
				SAY("Vous ne pensez pas que %NPC_NAME(1) a outrageusement d�pass� son esp�rance de vie ?")
				SAY("La cible est toujours en vie, et nous voulons la voir morte. Alors �liminez-moi �a.")
				SAY("Ne revenez pas tant que vous n'aurez pas trait� le cas %NPC_NAME(1).")
				ENDDIALOG()
			else -- Mission was accomplished
				SAY("Excellent travail ! La cible est raide morte. Voici vos %REWARD_MONEY() cr�dits. J'esp�re que nous travaillerons ensemble � nouveau.")
				SAY("Vous revoil�, bon travail ! Votre r�solution du cas %NPC_NAME(1) vous a permis de gagner la somme de %REWARD_MONEY() cr�dits. NEXT vous remercie de votre aide. Passez une bonne journ�e.")
				SAY("Runner, on nous a inform�s que vous avez trait� le cas qui nous pr�occupait. %REWARD_MONEY() cr�dits ont �t� transf�r�s sur votre compte. Pensez � surveiller votre terminal pour de futures missions.")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
						
		
			
