function DIALOG()

	NODE(0)

		SAY("Pourriez-vous nous aider � trouver certaines informations?")
		SAY("Nous cherchons des renseignements. Pouvez-vous nous aider?")
		
		ANSWER("Je pense. Dites-m'en plus.", 1)
		ANSWER("Je vais essayer. Qu'est-ce que vous voulez savoir?", 1)
		ANSWER("Je vais voir ce que je peux faire.", 1)

		ANSWER("Impossible.",20)
		ANSWER("Ca ne m'int�resse pas.",20)
		ANSWER("Non.",20)

	NODE(1)
		ACCEPTMISSION()
		SAY("Nous voulons des informations au sujet de la gamme de produits de NEXT. Vous devriez obtenir les informations n�cessaires aupr�s du service relationnel de NEXT. Adressez-vous � %NPC_NAME(0), dans %NPC_WORLD(0). Revenez quand vous avez termin� pour toucher vos %REWARD_MONEY() cr�dits.")
		SETNEXTDIALOGSTATE(5)
		ENDDIALOG()

	
	NODE(5)
		
		ISMISSIONTARGETACCOMPLISHED(0)
		if( result==0 ) then

			SAY("Allons! Vous n'avez encore rien trouv�?")
			ENDDIALOG()

		else			

			SAY("Bien. Merci pour votre aide. Voici vos %REWARD_MONEY() cr�dits.")
			ACTIVATEDIALOGTRIGGER(2)
			ENDDIALOG()

		end


	NODE(20)

		SAY("J'en suis navr�. Revenez si vous changez d'id�e.")
		ENDDIALOG()


end