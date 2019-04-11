function DIALOG()
-- single_ag_proto
-- description single_ag_01

	NODE(0)
		GENDERCHECK()
			if (result==1) then -- Player is Man:
				SAY("Votre espoir. Votre force. Votre remède. ProtoPharm, comment puis-je vous aider monsieur ?")
				SAY("Bienvenue à ProtoPharm. Comment puis-je vous aider, monsieur ?")
				SAY("Bonjour. Vous cherchez quelque chose, monsieur ?")
				SAY("Puis-je vous aider, monsieur ?")
				SAY("Bonjour monsieur. Bienvenue à ProtoPharm. Nous avons du travail pour vous, êtes-vous intéressé ?")
				
				ANSWER("Je ne fais que regarder. Merci.",1)
				ANSWER("Que pouvez-vous me dire au sujet de cet endroit ?",1)
				ANSWER("Bonjour. Qu'est-ce que c'est, ici ?",1)
				ANSWER("Oh pardon, je me suis trompé de personne.",1)
				ANSWER("Je viens pour un job.",2)
				ANSWER("Je viens pour un contrat d'extermination.",2)
				ANSWER("Bonjour, j'ai entendu dire que vous cherchiez un nettoyeur.",2)
				ANSWER("Je viens pour une annonce que j'ai trouvée sur un terminal.",2)

			else    -- Player is a Woman:
				SAY("Votre espoir. Votre force. Votre remède. ProtoPharm, comment puis-je vous aider madame ?")
				SAY("Bienvenue à ProtoPharm. Comment puis-je vous aider, madame ?")
				SAY("Bonjour. Vous cherchez quelque chose, madame ?")
				SAY("Puis-je vous aider, madame ?")
				SAY("Bonjour madame. Bienvenue à ProtoPharm. Nous avons du travail pour vous, êtes-vous intéressée ?")
				
				ANSWER("Je ne fais que regarder. Merci.",1)
				ANSWER("Que pouvez-vous me dire au sujet de cet endroit ?",1)
				ANSWER("Bonjour. Qu'est-ce que c'est, ici ?",1)
				ANSWER("Oh pardon, je me suis trompée de personne.",1)
				ANSWER("Je viens pour une extermination...",2)
				ANSWER("Je viens pour une mission que j'ai trouvée sur un terminal.",2)
				ANSWER("Bonjour, je viens pour l'extermination, j'ai les compétences requises.",2)
				ANSWER("J'ai pris une mission sur un terminal, et me voilà.",2)
			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Ecoutez, ProtoPharm est une compagnie sérieuse. Ici, on travaille. Veuillez ne pas nous importuner.")
				SAY("Ecoutez, l'ami, je n'ai pas le courage de m'occuper de vous. Au revoir.")
				SAY("Monsieur, veuillez consulter les terminaux si vous avez des questions d'ordre général. Bonne journée.")
				SAY("Merci. Maintenant, veuillez partir.")
				ENDDIALOG()
			else
				SAY("Ecoutez, ProtoPharm est une compagnie sérieuse. Ici, il y a des gens qui travaillent. Veuillez ne pas nous déranger.")
				SAY("Ecoutez, j'essaie de travailler. Veuillez me laisser tranquille, madame.")
				SAY("Madame, veuillez consulter les terminaux si vous avez des questions d'ordre général. Bonne journée.")
				SAY("Merci madame. Passez une bonne journée.")
				ENDDIALOG()
			end
	NODE(2) -- Giving Mission
			SAY("Bien. Nous avons besoin que vous éliminiez %TARGET_VALUE(0,1) %TARGET_NPCNAME(0) dans le secteur. Abattez-les, et revenez me voir pour toucher votre récompense. Souvenez-vous qu'on vous observe.")
			SAY("On a eu quelques problèmes avec une expérience, et des sujets de laboratoire se sont échappés. Les %TARGET_NPCNAME(0) en question sont encore dans le secteur. Exterminez-les, tous les %TARGET_VALUE(0,1), et revenez pour votre récompense.")
			SAY("Ah, enfin quelqu'un ! On a signalé dans la zone une augmentation soudaine du nombre de %TARGET_NPCNAME(0) après un accident de laboratoire. Pour protéger nos fragiles installations et nos structures, il est impératif de tuer au moins %TARGET_VALUE(0,1) de ces créatures. Revenez me voir quand vous avez fini.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- Mission is not accomplished
				SAY("Bien essayé, mais il reste encore des %TARGET_NPCNAME(0). Allez les abattre.")
				SAY("Runner, la zone est encore contaminée par les %TARGET_NPCNAME(0). Retournez les éliminer.")
				SAY("Vous faites une pause ? Parce que je vous signale qu'il en reste encore. Vous le savez, j'espère ?")
				SAY("Mais oui, c'est ça, prenez votre temps. Ce n'est pas comme si on était pressés. Des %TARGET_NPCNAME(0) s'échappent de nos labos tous les jours...")
				ENDDIALOG()
			else -- Mission was accomplished
				SAY("Nos relevés nous montrent que les %TARGET_NPCNAME() ont disparu. Bien joué. Voici les %REWARD_MONEY() crédits convenus.")
				SAY("Beau travail ! La zone a été nettoyée, on ne signale plus de %TARGET_NPCNAME(0). Une récompense de %REWARD_MONEY() crédits a été transférée sur votre compte. Si vous désirez une autre mission chez nous, consultez un terminal. Passez une bonne journée !")
				SAY("Runner, félicitations. Je pensais qu'on ne les aurait jamais... %REWARD_MONEY() crédits ont été transférés sur votre compte. ProtoPharm vous est reconnaissante pour votre aide. Si vous le désirez, d'autres missions sont disponibles sur votre terminal. Bonne journée.")				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
						
		
			

