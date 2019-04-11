function DIALOG()

	NODE(0)
		SAY("Hé toi, t'aurais pas quelques crédits pour un malheureux?")
		SAY("Je tuerais pour avoir quelques crédits!")
		SAY("T'aurais pas... comment ça s'appelle, déjà... un cred ou deux?")
		SAY("T'aurais pas de quoi aider un malheureux sans toit?")


		ANSWER("Pas une chance! Je gagne ma vie, à toi de faire pareil.",1)
		ANSWER("Je vois. Et avec ça, tu vas acheter à boire, hein? Allez, retourne dans ta poubelle.",1)
		ANSWER("Désolé, mais j'ai pas d'argent pour les pauvres. Je te conseille d'aller voir CityAdmin pour un job.",2)

		
	NODE(1)
		SAY("Allez dégage, j'ai pas demandé à être là, moi.")
		SAY("Espèce de trou du cul! Fais attention, un jour tu te retrouveras dans mon carton.")
		SAY("Ouais, ben si un CopBot te flingue dans l'heure qui suit, je verserai pas une larme!")

		ENDDIALOG()

	NODE(2)
		SAY("Merci... pour rien.")
		SAY("CityAdmin? Mais c'est à cause d'eux que je suis là!")

		ENDDIALOG()

end