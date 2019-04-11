function DIALOG()
-- single_ag_blackdragon
-- description single_ag_01

	NODE(0)
		GENDERCHECK()
			if (result==1) then
				SAY("Bienvenue au Dragon Noir. Je peux t'aider ?")
				SAY("Bonjour et bienvenue au Dragon Noir. Je peux t'aider à quelque chose ?")
				SAY("Le Dragon Noir te souhaite la bienvenue. Tu viens pour le job ?")
				SAY("Salutations. Que viens-tu faire au Dragon Noir ?")
				SAY("Tu viens d'entrer sur le territoire du Dragon Noir. Que cherches-tu ? Ou qui ?")
				
				ANSWER("Oh, je ne fais que passer. Merci.",1)
				ANSWER("Que pouvez-vous me dire sur cet endroit ?",1)
				ANSWER("Salut. Qu'est-ce que c'est, ici ?",1)
				ANSWER("je suis désolé, je vous ai pris pour quelqu'un d'autre.",1)
				ANSWER("Oui, je suis venu pour le contrat.",2)
				ANSWER("OK, j'ai entendu dire que vous recherchiez quelqu'un de compétent.",2)
				ANSWER("C'est bon, je suis là pour une mission que j'ai acceptée depuis un terminal.",2)

			else    
				SAY("Bienvenue au Dragon noir, miss...")
				SAY("Bonjour, mon amie. Le Dragon Noir te souhaite la bienvenue. Je peux t'aider, peut-être ?")
				SAY("Tu viens pour le job, dis-moi ?")
				SAY("Tu es sur le territoire du Clan, l'amie. Qu'est-ce que tu cherches au Dragon Noir ?")
				SAY("Le Clan te souhaite la bienvenue, l'amie. Qu'est-ce que tu recherches ?")
				
				ANSWER("Je ne fais que regarder. Merci.",1)
				ANSWER("Que pouvez-vous le dire sur cet endroit ?",1)
				ANSWER("Bel endroit. Qu'est-ce que vous faites ici ?",1)
				ANSWER("Je suis désolée, je vous ai pris pour quelqu'un d'autre.",1)
				ANSWER("Oui, je suis venue pour le job.",2)
				ANSWER("Salutations, le terminal m'a indiqué que je devais m'adresser à vous pour ma mission.",2)

			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Si tu ne veux pas traiter avec nous, efface-toi de ma vue avant que je t'efface personnellement.")
				SAY("Si tu n'as pas de raison particulière d'être ici, je te suggère de partir, l'ami. De préférence avant de ne plus être le bienvenu.")
				SAY("Pour des informations d'ordre général sur le clan, consulte les terminaux.")
				SAY("Merci pour ta visite, l'ami. Maintenant, tu dois partir.")
				ENDDIALOG()
			else
				SAY("Si tu ne veux pas traiter avec nous, efface-toi de ma vue avant que je t'efface personnellement.")
				SAY("Si tu n'as pas de raison particulière d'être ici, je te suggère de partir, l'amie. De préférence avant de ne plus être le bienvenu.")
				SAY("Pour des informations d'ordre général sur le clan, consulte les terminaux.")
				SAY("Merci pour ta visite, l'amie. Maintenant, tu dois partir.")
				ENDDIALOG()
			end
	NODE(2) -- Giving Mission
			SAY("Ceux qui sont sous notre protection se sont plaints d'agressions de %TARGET_NPCNAME(0) dans le secteur. On serait très heureux que tu ailles en abattre au moins %TARGET_VALUE(0,1). reviens me voir quand tu as fini.")
			SAY("Certains de nos... clients... ont eu des problèmes avec %TARGET_VALUE(0,1) %TARGET_NPCNAME(0) qui sévissent dans la zone. Va les tuer, et reviens me voir pour qu'on puisse discuter d'une compensation.")
			SAY("Bien, passons aux affaires. On nous a signalé des %TARGET_NPCNAME(0) dans le secteur. Tu dois en tuer au moins %TARGET_VALUE(0,1). Reviens ensuite me voir pour recevoir une compensation.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- Mission is not accomplished
				SAY("Tu n'as pas terminé ta mission, requin. Il en reste encore %TARGET_NPCNAME(0). L'échec n'est pas acceptable...")
				SAY("Tu n'as pas fait ce qui était demandé, requin. Tue ces %TARGET_NPCNAME(0), ou bien tu paieras le prix de ton échec.")
				SAY("Je t'ai embauché pour une mission, requin. L'échec n'est pas acceptable. La paresse non plus. Fais ton travail, ou prépare-toi à courir, vite et loin.")
				SAY("Tu as reçu ta mission, requin. Suis-la.")
				ENDDIALOG()
			else -- Mission was accomplished
				SAY("Mes hommes me disent que tu as réussi. Bien. Une récompense de %REWARD_MONEY() crédits sera transférée sur ton compte. J'espère que cette offre te convient ?")
				SAY("Bien joué, requin. Tous les %TARGET_NPCNAME(0) ont été tués. %REWARD_MONEY() crédits ont été transférés sur ton compte. Vérifie les terminaux pour accepter d'autres missions.")
				SAY("Pas très subtil, comme technique, mais efficace, jeune requin. les %REWARD_MONEY() crédits convenus ont été transférés sur ton compte. Le Dragon Noir a toujours besoin de gens comme toi.")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
