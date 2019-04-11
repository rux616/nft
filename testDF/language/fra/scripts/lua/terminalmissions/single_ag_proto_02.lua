function DIALOG()
-- single_ag_proto
-- description single_ag_02

	NODE(0)
		GENDERCHECK()
			if (result==1) then -- Player is Man:
				SAY("Votre espoir. Votre force. Votre rem�de. Protopharm, comment puis-je vous aider monsieur ?")
				SAY("Bienvenue � ProtoPharm. Comment puis-je vous aider, monsieur ?")
				SAY("Bonjour. Vous cherchez quelque chose, monsieur ?")
				SAY("Puis-je vous aider, monsieur ?")
				SAY("Bonjour monsieur. Bienvenue � ProtoPharm. Nous avons du travail pour vous, �tes-vous int�ress� ?")
				
				ANSWER("Je ne fais que regarder. Merci.",1)
				ANSWER("Que pouvez-vous me dire au sujet de cet endroit ?",1)
				ANSWER("Bonjour. Qu'est-ce que c'est, ici ?",1)
				ANSWER("Oh pardon, je me suis tromp� de personne.",1)
				ANSWER("Je viens pour un job.",2)
				ANSWER("Je viens pour un contrat d'extermination.",2)
				ANSWER("Bonjour, j'ai entendu dire que vous cherchiez un nettoyeur.",2)
				ANSWER("Je viens pour une annonce que j'ai trouv�e sur un terminal.",2)

			else    -- Player is a Woman:
				SAY("Votre espoir. Votre force. Votre rem�de. ProtoPharm, comment puis-je vous aider madame ?")
				SAY("Bienvenue � ProtoPharm. Comment puis-je vous aider, madame ?")
				SAY("Bonjour. Vous cherchez quelque chose, madame ?")
				SAY("Puis-je vous aider, madame ?")
				SAY("Bonjour madame. Bienvenue � ProtoPharm. Nous avons du travail pour vous, �tes-vous int�ress�e ?")
				
				ANSWER("Je ne fais que regarder. Merci.",1)
				ANSWER("Que pouvez-vous me dire au sujet de cet endroit ?",1)
				ANSWER("Bonjour. Qu'est-ce que c'est, ici ?",1)
				ANSWER("Oh pardon, je me suis tromp�e de personne.",1)
				ANSWER("Je viens pour une extermination...",2)
				ANSWER("Je viens pour une mission que j'ai trouv�e sur un terminal.",2)
				ANSWER("Bonjour, je viens pour l'extermination, j'ai les comp�tences requises.",2)
				ANSWER("J'ai pris une mission sur un terminal, et me voil�.",2)
			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Ecoutez, ProtoPharm est une compagnie s�rieuse. Ici, on travaille. Veuillez ne pas nous importuner.")
				SAY("Ecoutez, l'ami, je n'ai pas le courage de m'occuper de vous. Au revoir.")
				SAY("Monsieur, veuillez consulter les terminaux si vous avez des questions d'ordre g�n�ral. Bonne journ�e.")
				SAY("Merci. Maintenant, veuillez partir.")
				ENDDIALOG()
			else
				SAY("Ecoutez, ProtoPharm est une compagnie s�rieuse. Ici, il y a des gens qui travaillent. Veuillez ne pas nous d�ranger.")
				SAY("Ecoutez, j'essaie de travailler. Veuillez me laisser tranquille, madame.")
				SAY("Madame, veuillez consulter les terminaux si vous avez des questions d'ordre g�n�ral. Bonne journ�e.")
				SAY("Merci madame. Passez une bonne journ�e.")
				ENDDIALOG()
			end
	NODE(2) -- Giving Mission
			SAY("Bien, voici la mission. Quelques %TARGET_NPCNAME(0), %TARGET_VALUE(0,1) environ, nous causent des probl�mes dans le voisinage. Nous voulons que vous les exterminiez. Revenez quand vous les avez �radiqu�s.")
			SAY("Quelques %TARGET_NPCNAME(0) ont �lu domicile dans la zone. Si vous en tuez %TARGET_VALUE(0,1), nous pensons que les autres s'enfuiront ou se disperseront. Revenez me voir quand vous avez fini.")
			SAY("Ah, enfin quelqu'un de comp�tent. On nous a signal� des %TARGET_NPCNAME(0) dans le secteur. Le d�partement de s�curit� estime qu'il faut en tuer au moins %TARGET_VALUE(0,1). Revenez me voir quand vous avez fini.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- Mission is not accomplished
				SAY("Et si vous alliez plut�t tuer ces %TARGET_NPCNAME(0), comme convenu ?")
				SAY("Runner, il reste encore quelques %TARGET_NPCNAME(0). Ne revenez pas tant que vous n'avez pas termin�.")
				SAY("Vous faites une petite pause ? Parce que je vous signale qu'on a encore des %TARGET_NPCNAME(0) dans le secteur, j'esp�re que vous le savez...")
				SAY("Je ne vous ai pas dit que c'�tait urgent, mais j'aimerais tout de m�me que vous terminiez cette mission avant la fin du si�cle. Allez, au travail, runner !")
				ENDDIALOG()
			else -- Mission was accomplished
				SAY("On dirait que vous avez abattu tous les %TARGET_NPCNAME(0). ProtoPharm a une dette envers vous. Nous nous occupons actuellement de vos %REWARD_MONEY() cr�dits. Passez une bonne journ�e.")
				SAY("Beau travail ! Vous avez abattu suffisamment de %TARGET_NPCNAME(0), et les autres ont pris la fuite. Votre r�compense, %REWARD_MONEY() cr�dits, a �t� d�pos�e sur votre compte. Consultez les terminaux si vous d�sirez d'autres missions chez nous. Passez une bonne journ�e !")
				SAY("Joli travail ! Je pensais qu'on n'en viendrait jamais � bout. Voici vos %REWARD_MONEY() cr�dits. ProtoPharm appr�cie beaucoup votre aide. Pensez � consulter votre terminal pour d'autres missions.")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
						
		
			

