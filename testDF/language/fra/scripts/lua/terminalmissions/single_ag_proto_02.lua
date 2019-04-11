function DIALOG()
-- single_ag_proto
-- description single_ag_02

	NODE(0)
		GENDERCHECK()
			if (result==1) then -- Player is Man:
				SAY("Votre espoir. Votre force. Votre remède. Protopharm, comment puis-je vous aider monsieur ?")
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
			SAY("Bien, voici la mission. Quelques %TARGET_NPCNAME(0), %TARGET_VALUE(0,1) environ, nous causent des problèmes dans le voisinage. Nous voulons que vous les exterminiez. Revenez quand vous les avez éradiqués.")
			SAY("Quelques %TARGET_NPCNAME(0) ont élu domicile dans la zone. Si vous en tuez %TARGET_VALUE(0,1), nous pensons que les autres s'enfuiront ou se disperseront. Revenez me voir quand vous avez fini.")
			SAY("Ah, enfin quelqu'un de compétent. On nous a signalé des %TARGET_NPCNAME(0) dans le secteur. Le département de sécurité estime qu'il faut en tuer au moins %TARGET_VALUE(0,1). Revenez me voir quand vous avez fini.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- Mission is not accomplished
				SAY("Et si vous alliez plutôt tuer ces %TARGET_NPCNAME(0), comme convenu ?")
				SAY("Runner, il reste encore quelques %TARGET_NPCNAME(0). Ne revenez pas tant que vous n'avez pas terminé.")
				SAY("Vous faites une petite pause ? Parce que je vous signale qu'on a encore des %TARGET_NPCNAME(0) dans le secteur, j'espère que vous le savez...")
				SAY("Je ne vous ai pas dit que c'était urgent, mais j'aimerais tout de même que vous terminiez cette mission avant la fin du siècle. Allez, au travail, runner !")
				ENDDIALOG()
			else -- Mission was accomplished
				SAY("On dirait que vous avez abattu tous les %TARGET_NPCNAME(0). ProtoPharm a une dette envers vous. Nous nous occupons actuellement de vos %REWARD_MONEY() crédits. Passez une bonne journée.")
				SAY("Beau travail ! Vous avez abattu suffisamment de %TARGET_NPCNAME(0), et les autres ont pris la fuite. Votre récompense, %REWARD_MONEY() crédits, a été déposée sur votre compte. Consultez les terminaux si vous désirez d'autres missions chez nous. Passez une bonne journée !")
				SAY("Joli travail ! Je pensais qu'on n'en viendrait jamais à bout. Voici vos %REWARD_MONEY() crédits. ProtoPharm apprécie beaucoup votre aide. Pensez à consulter votre terminal pour d'autres missions.")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
						
		
			

