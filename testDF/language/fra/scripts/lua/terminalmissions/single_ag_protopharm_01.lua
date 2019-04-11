function DIALOG()
-- single_ag_proto
-- description single_ag_01

	NODE(0)
		GENDERCHECK()
			if (result==1) then -- Player is Man:
				SAY("Votre espoir. Votre force. Votre rem�de. ProtoPharm, comment puis-je vous aider monsieur ?")
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
			SAY("Bien. Nous avons besoin que vous �liminiez %TARGET_VALUE(0,1) %TARGET_NPCNAME(0) dans le secteur. Abattez-les, et revenez me voir pour toucher votre r�compense. Souvenez-vous qu'on vous observe.")
			SAY("On a eu quelques probl�mes avec une exp�rience, et des sujets de laboratoire se sont �chapp�s. Les %TARGET_NPCNAME(0) en question sont encore dans le secteur. Exterminez-les, tous les %TARGET_VALUE(0,1), et revenez pour votre r�compense.")
			SAY("Ah, enfin quelqu'un ! On a signal� dans la zone une augmentation soudaine du nombre de %TARGET_NPCNAME(0) apr�s un accident de laboratoire. Pour prot�ger nos fragiles installations et nos structures, il est imp�ratif de tuer au moins %TARGET_VALUE(0,1) de ces cr�atures. Revenez me voir quand vous avez fini.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- Mission is not accomplished
				SAY("Bien essay�, mais il reste encore des %TARGET_NPCNAME(0). Allez les abattre.")
				SAY("Runner, la zone est encore contamin�e par les %TARGET_NPCNAME(0). Retournez les �liminer.")
				SAY("Vous faites une pause ? Parce que je vous signale qu'il en reste encore. Vous le savez, j'esp�re ?")
				SAY("Mais oui, c'est �a, prenez votre temps. Ce n'est pas comme si on �tait press�s. Des %TARGET_NPCNAME(0) s'�chappent de nos labos tous les jours...")
				ENDDIALOG()
			else -- Mission was accomplished
				SAY("Nos relev�s nous montrent que les %TARGET_NPCNAME() ont disparu. Bien jou�. Voici les %REWARD_MONEY() cr�dits convenus.")
				SAY("Beau travail ! La zone a �t� nettoy�e, on ne signale plus de %TARGET_NPCNAME(0). Une r�compense de %REWARD_MONEY() cr�dits a �t� transf�r�e sur votre compte. Si vous d�sirez une autre mission chez nous, consultez un terminal. Passez une bonne journ�e !")
				SAY("Runner, f�licitations. Je pensais qu'on ne les aurait jamais... %REWARD_MONEY() cr�dits ont �t� transf�r�s sur votre compte. ProtoPharm vous est reconnaissante pour votre aide. Si vous le d�sirez, d'autres missions sont disponibles sur votre terminal. Bonne journ�e.")				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
						
		
			

