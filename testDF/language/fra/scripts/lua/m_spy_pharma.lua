function DIALOG()

	NODE(0)

		SAY("Vous pourriez nous rendre un service?")
		SAY("Nous cherchons des informations sur ProtoPharm; Vous pourriez nous aider?")
		
		ANSWER("Je pense, oui. Qu'est-ce que ça concerne?", 1)
		ANSWER("Je vais essayer. Qu'est-ce que vous voulez savoir?", 1)
		ANSWER("Je ferai ce que je peux. ProtoPharm?", 1)

		ANSWER("Impossible.",20)
		ANSWER("Ca ne m'intéresse pas.",20)
		ANSWER("Non.",20)

	NODE(1)
		ACCEPTMISSION()
		SAY("Sandra Frasier est à la tête de ProtoPharm. Nous voulons savoir la date à laquelle elle a atteint cette position. Nous voulons l'année exacte. Les employés aux relations publiques de ProtoPharm devraient connaître la réponse. Allez parler à %NPC_NAME(0), dans %NPC_WORLD(0). Vous toucherez %REWARD_MONEY() crédits pour cette information. Revenez quand vous avez terminé.")
		SETNEXTDIALOGSTATE(5)
		ENDDIALOG()

	
	NODE(5)
		
		ISMISSIONTARGETACCOMPLISHED(0)
		if( result==0 ) then

			SAY("Allez! Trouvez-moi ce que je recherche!")
			ENDDIALOG()

		else			

			SAY("Bien. Merci pour votre aide. Voici vos %REWARD_MONEY() crédits.")
			ACTIVATEDIALOGTRIGGER(2)
			ENDDIALOG()

		end


	NODE(20)

		SAY("Bon, revenez si vous changez d'avis.")
		ENDDIALOG()


end