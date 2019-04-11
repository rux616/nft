function DIALOG()

	NODE(0)

		SAY("Vous pourriez nous aider pour une recherche?")
		SAY("Vous pourriez faire une recherche pour nous?")
		
		ANSWER("Je pense. Qu'est-ce que c'est?", 1)
		ANSWER("Je vais essayer. Qu'est-ce que vous voulez savoir?", 1)
		ANSWER("Je vais voir ce que je peux faire.", 1)

		ANSWER("Impossible.",20)
		ANSWER("Pardon, mais ça ne m'intéresse pas.",20)
		ANSWER("Non.",20)

	NODE(1)
		ACCEPTMISSION()
		SAY("Nous avons besoin d'informations à jour sur le catalogue de BioTech. Essayez de parler à %NPC_NAME(0), dans %NPC_WORLD(0). C'est un membre de leur service clientèle. Revenez quand vous avez ce que nous cherchons.")
		SETNEXTDIALOGSTATE(5)
		ENDDIALOG()

	
	NODE(5)
		
		ISMISSIONTARGETACCOMPLISHED(0)
		if( result==0 ) then

			SAY("Allons, vous n'avez pas trouvé ce que nous voulons!")
			ENDDIALOG()

		else			

			SAY("C'est bon à savoir. Merci pour votre aide. Tenez, voilà vos %REWARD_MONEY() crédits.")
			ACTIVATEDIALOGTRIGGER(2)
			ENDDIALOG()

		end


	NODE(20)

		SAY("Navré de l'apprendre. Revenez si vous changez d'avis!")
		ENDDIALOG()


end