function DIALOG()

	NODE(0)
		SAY("H� toi, t'aurais pas quelques cr�dits pour un malheureux?")
		SAY("Je tuerais pour avoir quelques cr�dits!")
		SAY("T'aurais pas... comment �a s'appelle, d�j�... un cred ou deux?")
		SAY("T'aurais pas de quoi aider un malheureux sans toit?")


		ANSWER("Pas une chance! Je gagne ma vie, � toi de faire pareil.",1)
		ANSWER("Je vois. Et avec �a, tu vas acheter � boire, hein? Allez, retourne dans ta poubelle.",1)
		ANSWER("D�sol�, mais j'ai pas d'argent pour les pauvres. Je te conseille d'aller voir CityAdmin pour un job.",2)

		
	NODE(1)
		SAY("Allez d�gage, j'ai pas demand� � �tre l�, moi.")
		SAY("Esp�ce de trou du cul! Fais attention, un jour tu te retrouveras dans mon carton.")
		SAY("Ouais, ben si un CopBot te flingue dans l'heure qui suit, je verserai pas une larme!")

		ENDDIALOG()

	NODE(2)
		SAY("Merci... pour rien.")
		SAY("CityAdmin? Mais c'est � cause d'eux que je suis l�!")

		ENDDIALOG()

end