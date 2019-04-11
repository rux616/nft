function DIALOG()
-- single_ag_blackdragon
-- description single_ag_01

	NODE(0)
		GENDERCHECK()
			if (result==1) then -- Player is Man:
				SAY("Bienvenue au Dragon Noir. Je peux t'aider ?")
				SAY("Bonjour et bienvenue au Dragon Noir. Je peux t'aider � quelque chose ?")
				SAY("Le Dragon Noir te souhaite la bienvenue. Tu viens pour le job ?")
				SAY("Salutations. Que viens-tu faire au Dragon Noir ?")
				SAY("Tu viens d'entrer sur le territoire du Dragon Noir. Que cherches-tu ? Ou qui ?")
				
				ANSWER("Oh, je ne fais que passer. Merci.",1)
				ANSWER("Que pouvez-vous me dire sur cet endroit ?",1)
				ANSWER("Salut. Qu'est-ce que c'est, ici ?",1)
				ANSWER("je suis d�sol�, je vous ai pris pour quelqu'un d'autre.",1)
				ANSWER("Oui, je suis venu pour le contrat.",2)
				ANSWER("OK, j'ai entendu dire que vous recherchiez quelqu'un de comp�tent.",2)
				ANSWER("C'est bon, je suis l� pour une mission que j'ai accept�e depuis un terminal.",2)

			else    -- Player is a Woman:
				SAY("Bienvenue au Dragon noir, miss...")
				SAY("Bonjour, mon amie. Le Dragon Noir te souhaite la bienvenue. Je peux t'aider, peut-�tre ?")
				SAY("Tu viens pour le job, dis-moi ?")
				SAY("Tu es sur le territoire du Clan, l'amie. Qu'est-ce que tu cherches au Dragon Noir ?")
				SAY("Le Clan te souhaite la bienvenue, l'amie. Qu'est-ce que tu recherches ?")
				
				ANSWER("Je ne fais que regarder. Merci.",1)
				ANSWER("Que pouvez-vous le dire sur cet endroit ?",1)
				ANSWER("Bel endroit. Qu'est-ce que vous faites ici ?",1)
				ANSWER("Je suis d�sol�e, je vous ai pris pour quelqu'un d'autre.",1)
				ANSWER("Oui, je suis venue pour le job.",2)
				ANSWER("Salutations, le terminal m'a indiqu� que je devais m'adresser � vous pour ma mission.",2)

			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Si tu ne veux pas traiter avec nous, efface-toi de ma vue avant que je t'efface personnellement.")
				SAY("Si tu n'as pas de raison particuli�re d'�tre ici, je te sugg�re de partir, l'ami. De pr�f�rence avant de ne plus �tre le bienvenu.")
				SAY("Pour des informations d'ordre g�n�ral sur le clan, consulte les terminaux.")
				SAY("Merci pour ta visite, l'ami. Maintenant, tu dois partir.")
				ENDDIALOG()
			else
				SAY("Si tu ne veux pas traiter avec nous, efface-toi de ma vue avant que je t'efface personnellement.")
				SAY("Si tu n'as pas de raison particuli�re d'�tre ici, je te sugg�re de partir, l'amie. De pr�f�rence avant de ne plus �tre le bienvenu.")
				SAY("Pour des informations d'ordre g�n�ral sur le clan, consulte les terminaux.")
				SAY("Merci pour ta visite, l'amie. Maintenant, tu dois partir.")
				ENDDIALOG()
			end
	NODE(2) -- Giving Mission
			SAY("Nous avons besoin de faire une d�monstration de force. On a signal� des %TARGET_NPCNAME(0) dans le secteur. On serait ravis que tu en tues au moins %TARGET_VALUE(0,1). Reviens quand tu as fini.")
			SAY("Le Clan d�sire envoyer un message, un message fort. On veut que tu abattes %TARGET_VALUE(0,1) %TARGET_NPCNAME(0) dans le secteur de la faction. Reviens me voir ensuite pour qu'on discute de ta compensation.")
			SAY("Pour des raisons que tu n'as pas besoin de conna�tre, le Clan a besoin de faire une d�monstration de sa puissance. Va tuer au moins %TARGET_VALUE(0,1) %TARGET_NPCNAME(0) dans le secteur. Puis reviens me voir pour une compensation.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- Mission is not accomplished
				SAY("Tu n'as pas termin� ta mission, requin. Il en reste encore %TARGET_NPCNAME(0). L'�chec n'est pas acceptable...")
				SAY("Tu n'as pas fait ce que je t'avais demand�, requin. Abats les %TARGET_NPCNAME(0), ou bien tu entendras une autre musique, et je parie que tu ne l'aimeras pas...")
				SAY("Je te paye pour un job, requin. Tue ces %TARGET_NPCNAME(0), ou bien tu te retrouveras du mauvais c�t� du flingue.")
				SAY("Tu as une mission, requin. Il faut t'en occuper.")
				ENDDIALOG()
			else -- Mission was accomplished
				SAY("Mes hommes me disent que tu as r�ussi. Bien. Une r�compense de %REWARD_MONEY() cr�dits sera transf�r�e sur ton compte. J'esp�re que cette offre te convient ?")
				SAY("Bien jou�, requin. Tous les %TARGET_NPCNAME(0) ont �t� tu�s. %REWARD_MONEY() cr�dits ont �t� transf�r�s sur ton compte. V�rifie les terminaux pour accepter d'autres missions.")
				SAY("Impressionnant, requin. La r�compense de %REWARD_MONEY() cr�dits a �t� transf�r�e sur ton compte. Le Dragon Noir appr�cie ton d�vouement.")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
						
		
			
 
