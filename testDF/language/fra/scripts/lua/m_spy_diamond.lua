function DIALOG()

	NODE(0)

		SAY("Pourriez-vous nous aider à trouver des renseignements?")
		SAY("Nous voulons connaître quelque chose au sujet de Diamond Immobilier. Pourriez-vous nous aider?")
		
		ANSWER("Je pense. Qu'est-ce que c'est?", 1)
		ANSWER("Je vais essayer. Qu'est-ce que vous voulez savoir?", 1)
		ANSWER("Je ferai ce que je peux. Diamond Immobilier?", 1)

		ANSWER("Impossible.",20)
		ANSWER("Ca ne m'intéresse pas.",20)
		ANSWER("Non.",20)

	NODE(1)
		ACCEPTMISSION()
		SAY("Lioon Reza est le fondateur de Diamond Immobilier. Nous voulons savoir quand cela s'est passé. Nous voulons l'année exacte. Les relations publiques de Diamond devraient pouvoir répondre à cette question. Adressez-vous à %NPC_NAME(0), dans %NPC_WORLD(0). Vous recevrez %REWARD_MONEY() crédits pour ce travail. Revenez quand vous avez fini.")
		SETNEXTDIALOGSTATE(5)
		ENDDIALOG()

	
	NODE(5)
		
		ISMISSIONTARGETACCOMPLISHED(0)
		if( result==0 ) then

			SAY("Allez, vous n'avez encore rien trouvé!")
			ENDDIALOG()

		else			

			SAY("C'est bon à savoir. Tenez, voilà vos %REWARD_MONEY() crédits.")
			ACTIVATEDIALOGTRIGGER(2)
			ENDDIALOG()

		end


	NODE(20)

		SAY("Quel dommage... Revenez si vous changez d'avis.")
		ENDDIALOG()


end