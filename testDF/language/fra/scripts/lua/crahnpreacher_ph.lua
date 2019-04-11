function DIALOG() -- Crahn Preacher place-holder

	NODE(0)
		SAY("Suis les préceptes de Crahn, et tu trouveras le salut!")

		ANSWER("Merci du conseil, j'arrive.",1)
		ANSWER("Entre les religions et les gros flingues, j'ai choisi ma voie, et c'est pas la tienne.",2)
		
	NODE(1)
		SAY("Marche dans les pas de Crahn.")

		ENDDIALOG()
		
	NODE(2)
		SAY("Ta langue fourchue sera ta clé pour un au-delà de souffrances.")
		
		ENDDIALOG()
end