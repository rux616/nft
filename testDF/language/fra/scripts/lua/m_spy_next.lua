function DIALOG()

	NODE(0)

		SAY("Pourriez-vous nous aider à trouver certaines informations?")
		SAY("Nous cherchons des renseignements. Pouvez-vous nous aider?")
		
		ANSWER("Je pense. Dites-m'en plus.", 1)
		ANSWER("Je vais essayer. Qu'est-ce que vous voulez savoir?", 1)
		ANSWER("Je vais voir ce que je peux faire.", 1)

		ANSWER("Impossible.",20)
		ANSWER("Ca ne m'intéresse pas.",20)
		ANSWER("Non.",20)

	NODE(1)
		ACCEPTMISSION()
		SAY("Nous voulons des informations au sujet de la gamme de produits de NEXT. Vous devriez obtenir les informations nécessaires auprès du service relationnel de NEXT. Adressez-vous à %NPC_NAME(0), dans %NPC_WORLD(0). Revenez quand vous avez terminé pour toucher vos %REWARD_MONEY() crédits.")
		SETNEXTDIALOGSTATE(5)
		ENDDIALOG()

	
	NODE(5)
		
		ISMISSIONTARGETACCOMPLISHED(0)
		if( result==0 ) then

			SAY("Allons! Vous n'avez encore rien trouvé?")
			ENDDIALOG()

		else			

			SAY("Bien. Merci pour votre aide. Voici vos %REWARD_MONEY() crédits.")
			ACTIVATEDIALOGTRIGGER(2)
			ENDDIALOG()

		end


	NODE(20)

		SAY("J'en suis navré. Revenez si vous changez d'idée.")
		ENDDIALOG()


end