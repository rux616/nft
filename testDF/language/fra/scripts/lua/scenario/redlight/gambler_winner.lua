function DIALOG()

	NODE(0)
		SAY("C'est mon jour de chance!")
		
		ANSWER("T'as gagn�?",1)
		ANSWER("Fiche-moi la paix!",100)
		
	NODE(1)
		SAY("Je les ai mis � sec, oui! 10.000 cr�dits en un coup! La folie!")
		ANSWER("Beau coup de chance.",2)
		
	NODE(2)
		SAY("Je vais faire la f�te! Youpiiii!")
		ENDDIALOG()
			
	NODE(100)
		SAY("Je ne laisserai personne g�cher ce moment merveilleux, c'est mon jour de chance!")
		ENDDIALOG()	

		
end