function DIALOG()

	NODE(0)
		SAY("C'est mon jour de chance!")
		
		ANSWER("T'as gagné?",1)
		ANSWER("Fiche-moi la paix!",100)
		
	NODE(1)
		SAY("Je les ai mis à sec, oui! 10.000 crédits en un coup! La folie!")
		ANSWER("Beau coup de chance.",2)
		
	NODE(2)
		SAY("Je vais faire la fête! Youpiiii!")
		ENDDIALOG()
			
	NODE(100)
		SAY("Je ne laisserai personne gâcher ce moment merveilleux, c'est mon jour de chance!")
		ENDDIALOG()	

		
end