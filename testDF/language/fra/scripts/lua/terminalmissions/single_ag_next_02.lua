function DIALOG()
-- single_ag_NEXT
-- description single_ag_02

	NODE(0)
		GENDERCHECK()
			if (result==1) then -- Player is Man:
				SAY("NEXT, comment puis-je vous aider monsieur ?")
				SAY("NEXT, que puis-je faire pour vous aujourd'hui, monsieur ?")
				SAY("Bonjour. Vous venez pour le contrat, monsieur ?")
				SAY("Bienvenue chez NEXT. Comment puis-je vous aider, monsieur ?")
				SAY("Bonne journée monsieur. Nous pourrions avoir recours à votre aide, si vous êtes intéressé.")
				
				ANSWER("Je ne fais que regarder. Merci.",1)
				ANSWER("Que pouvez-vous me dire sur cet endroit ?",1)
				ANSWER("Salut. Qu'est-ce que c'est ici ?",1)
				ANSWER("Je suis désolé, je vous ai pris pour quelqu'un d'autre.",1)
				ANSWER("Oui, je viens pour le contrat.",2)
				ANSWER("Bonjour, j'ai entendu dire que vous aviez besoin d'une puissance de feu.",2)
				ANSWER("Je viens pour un job que j'ai trouvé sur un terminal.",2)

			else    -- Player is a Woman:
				SAY("NEXT, comment puis-je vous aider madame ?")
				SAY("NEXT, que puis-je faire pour vous aujourd'hui, madame ?")
				SAY("Bonjour. Vous venez pour le contrat, madame ?")
				SAY("Bienvenue chez NEXT. Comment puis-je vous aider, madame ?")
				SAY("Bonne journée madame. Nous pourrions avoir recours à votre aide, si vous êtes intéressée.")
				
				ANSWER("Je ne fais que regarder. Merci.",1)
				ANSWER("Que pouvez-vous me dire sur cet endroit ?",1)
				ANSWER("Salut. Qu'est-ce que c'est ici ?",1)
				ANSWER("Je suis désolé, je vous ai pris pour quelqu'un d'autre.",1)
				ANSWER("Oui, je viens pour le contrat.",2)
				ANSWER("Je viens pour un job que j'ai trouvé sur un terminal.",2)

			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Nous apprécions votre visite. Au revoir.")
				SAY("Ecoutez-moi... Je n'ai pas le temps de jouer avec vous. Au revoir.")
				SAY("Monsieur, pour des informations générales veuillez consulter les terminaux. Bonne journée.")
				SAY("Merci. Passez une bonne journée.")
				ENDDIALOG()
			else
				SAY("Ici, c'est NEXT. C'est là que je travaille. Ca veut dire que je n'ai pas le temps de bavarder avec vous. Bonne journée.")
				SAY("Ecoutez, j'essaie de faire mon travail. Veuillez circuler.")
				SAY("Madame, pour des informations d'ordre général sur NEXT, veuillez consulter les terminaux publics. Bonne journée.")
				SAY("Merci madame. Passez une bonne journée.")
				ENDDIALOG()
			end
	NODE(2) -- Giving Mission
			SAY("Récemment, souterrains de NEXT ont été infestés de %TARGET_NPCNAME(0). Nous voulons que vous en abattiez %TARGET_VALUE(0,1) pour diminuer les chances de dégâts sur nos véhicules. Revenez me voir quand vous avez fini.")
			SAY("Ecoutez. Des groupes de %TARGET_NPCNAME(0) ont causé quelques... problèmes dans le secteur. Exterminez-en %TARGET_VALUE(0,1), et revenez me voir ensuite.")
			SAY("Runner, des %TARGET_NPCNAME(0) en grande quantité ont été signalés ans la zone. Abattez-en %TARGET_VALUE(0,1), et revenez me voir quand vous avez fini.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- Mission is not accomplished
				SAY("Nos senseurs montrent une trop importante concentration de %TARGET_NPCNAME(0) dans le secteur. Vous feriez mieux d'en abattre quelques-uns uns de plus.")
				SAY("Runner, il en reste encore. Exterminez-les.")
				SAY("Un message de Sukram, un de nos techs, mentionne encore quelques %TARGET_NPCNAME(0). Allez les abattre.")
				SAY("Je n'ai pas le temps pour ça. Allez détruire les %TARGET_NPCNAME(0) qui infestent le secteur, et faites vite.")
				ENDDIALOG()
			else -- Mission was accomplished
				SAY("Ah, bien. Le problème a été résolu. Voici vos %REWARD_MONEY() crédits, comme convenu. Passez une bonne journée, et pensez à revenir nous voir.")
				SAY("Merci pour votre aide. %REWARD_MONEY() crédits ont été transférés sur votre compte. Pensez à revenir nous voir pour d'autres missions. Passez une bonne journée.")
				SAY("Runner, la zone semble nettoyée. Je n'enregistre que quelques échos isolés dans le secteur. %REWARD_MONEY() crédits ont été transférés sur votre compte. NEXT vous remercie pour votre aide. Passez une bonne journée.")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
						
		
			

