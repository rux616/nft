function DIALOG()

	NODE(0)
		SAY("T'as pas quelques creds pour un malheureux?")
		SAY("Je tuerais pour quelques crédits!")
		SAY("Quelques crédits pour aider un pauvre malheureux?")
		SAY("Hep l'ami, t'as pas, comment ça s'appelle déjà... Un cred ou deux?")


		ANSWER("Pas question, va gagner ta vie comme tout le monde.",1)
		ANSWER("Pour que tu puisses t'acheter à boire? Pas question!",1)
		ANSWER("Je n'ai pas envie de gaspiller. Va trouver du travail chez CityAdmin.",2)

		
	NODE(1)
		SAY("Va chier! J'ai pas demandé à vivre ça, moi!")
		SAY("Salopard. Un jour tu seras à ma place!Y")
		SAY("J'espère qu'un cop te fera la peau par erreur!")

		ENDDIALOG()

	NODE(2)
		SAY("Trop aimable.")
		SAY("C'est justement à cause d'eux que je suis là!")

		ENDDIALOG()

end