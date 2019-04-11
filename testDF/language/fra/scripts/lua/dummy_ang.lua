function DIALOG()


	NODE(0)
		SAY("Foutez-moi la paix!")
		SAY("Pas le temps de parler à tous les abrutis qui passent!")
		SAY("Vous allez la fermer, espèce de raclure?")
		SAY("Vous vous croyez intéressant?")
		SAY("Vous ne voyez pas que je travaille?")
		SAY("Allez, du vent! TOUT DE SUITE!")
		SAY("Oh non.. Arrêtez ça!")

		ANSWER("Mais... Mais...",2)
		ANSWER("Est-ce que vous pourriez me dire...",2)
		ANSWER("Est-ce que vous pourriez...",2)
		ANSWER("Je vous énervez pas, je voulais seulement savoir...",2)
		ANSWER("Est-ce que vous pouvez me dire où...",2)

	NODE(2)
		SAY("Vous n'avez pas entendu ce que je viens de vous dire?")
		SAY("Soit vous êtes sourd, soit vous êtes complètement stupide...")
		SAY("Allez, du vent!")
		SAY("Cher... Citoyen... Veuillez... Me... Laisser... Tranquille... MAINTENANT!!! VOUS AVEZ COMPRIS COMME CA???")
		SAY("Je le crois pas, ça... DEGAGEZ!!")
		SAY("Vous êtes sourd, ou simplement stupide?")
		SAY("Vous n'avez personne d'autre avec qui parler?")
		
		ENDDIALOG()


end