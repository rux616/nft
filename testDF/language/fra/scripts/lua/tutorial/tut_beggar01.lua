function DIALOG()

	NODE(0)
		SAY("T'as pas quelques creds pour un malheureux?")
		SAY("Je tuerais pour quelques cr�dits!")
		SAY("Quelques cr�dits pour aider un pauvre malheureux?")
		SAY("Hep l'ami, t'as pas, comment �a s'appelle d�j�... Un cred ou deux?")


		ANSWER("Pas question, va gagner ta vie comme tout le monde.",1)
		ANSWER("Pour que tu puisses t'acheter � boire? Pas question!",1)
		ANSWER("Je n'ai pas envie de gaspiller. Va trouver du travail chez CityAdmin.",2)

		
	NODE(1)
		SAY("Va chier! J'ai pas demand� � vivre �a, moi!")
		SAY("Salopard. Un jour tu seras � ma place!Y")
		SAY("J'esp�re qu'un cop te fera la peau par erreur!")

		ENDDIALOG()

	NODE(2)
		SAY("Trop aimable.")
		SAY("C'est justement � cause d'eux que je suis l�!")

		ENDDIALOG()

end