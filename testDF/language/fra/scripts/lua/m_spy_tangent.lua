function DIALOG()

	NODE(0)

		SAY("Pourriez-vous nous rendre un service?")
		SAY("Nous avons besoin d'informations au sujet de Tangent. Vous pourriez nous aider?")
		
		ANSWER("Je pense.", 1)
		ANSWER("Je vais essayer.", 1)
		ANSWER("Je ferai ce que je peux.", 1)

		ANSWER("Non, impossible.",20)
		ANSWER("Pardon, �a ne m'int�resse pas.",20)
		ANSWER("Non.",20)

	NODE(1)
		ACCEPTMISSION()
		SAY("Nous voulons savoir qui a fond� Tangent Technologies, et nous voulons des informations de premi�re main. Allez parler � %NPC_NAME(0). Vous le trouverez dans %NPC_WORLD(0). On vous paiera %REWARD_MONEY() cr�dits pour cette information. Je vous reverrai quand vous aurez fini.")
		SETNEXTDIALOGSTATE(5)
		ENDDIALOG()

	
	NODE(5)
		
		ISMISSIONTARGETACCOMPLISHED(0)
		if( result==0 ) then

			SAY("Allez! Qui a fond� Tangent!")
			ENDDIALOG()

		else			

			SAY("Bien. Merci pour l'information. Voil� vos %REWARD_MONEY() cr�dits.")
			ACTIVATEDIALOGTRIGGER(2)
			ENDDIALOG()

		end


	NODE(20)

		SAY("Bien, revenez si vous changez d'avis.")
		ENDDIALOG()


end