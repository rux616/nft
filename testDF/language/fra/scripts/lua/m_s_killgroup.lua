function DIALOG()

	NODE(0)

		SAY("Bonjour, vous m'avez l'air de savoir chasser... Vous pourriez nous rendre un service?")
		SAY("Bonjour, vous m'avez l'air de savoir vous battre... Vous �tes tout � fait le genre de personne que nous recherchons.")

		ANSWER("Bien s�r. De quoi s'agit-il?",2)
		ANSWER("Hors de ma vue!",1)
		ANSWER("Laissez-moi tranquille.",1)
	

	NODE(1)

		SAY("&$%!%$")	
		SAY("%$%!&!(/&$�(&$)($")	
		SAY("Peuh! Pauvre petite nature...")	
		ENDDIALOG()
	

	NODE(2)

		SAY("OK, voil� de quoi il s'agit. Il faut abattre %TARGET_VALUE(0, 1) %TARGET_NPCNAME(0)s. Vous les trouverez dans le secteur, �a se cache dans tous les trous. Je vous donnerai %REWARD_MONEY() cr�dits. Vous acceptez?")

		ANSWER("Bien s�r, pourquoi pas?",3)
		ANSWER("Mmmh... OK.",3)
		ANSWER("Oui.",3)
		ANSWER("Pas question.",1)
		ANSWER("NON!",1)
		ANSWER("Haha... Vous me prenez pour qui?",1)

	
	NODE(3)

		SAY("OK, alors d�p�chez-vous. Ces %TARGET_NPCNAME(0) commencent � devenir envahissants.")

		ACCEPTMISSION()
		SETNEXTDIALOGSTATE(4)
		ENDDIALOG()

	NODE(4)

		ISMISSIONTARGETACCOMPLISHED(0)
		if( result==0 ) then

			SAY("Allez, en chasse, il y a du travail!")
			SAY("Allez, vous n'avez pas termin� votre mission.")
			SAY("Il n'y en a pas assez, vous devez en tuer plus que �a.")
			ENDDIALOG()

		else			

			SAY("Whoa, vous avez termin�? Alors voici votre r�compense.")
			ACTIVATEDIALOGTRIGGER(1)
			ENDDIALOG()

		end
end