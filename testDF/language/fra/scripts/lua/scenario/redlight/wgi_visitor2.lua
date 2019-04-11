function DIALOG()

	NODE(0)
		SAY("Merde!")
		
		ANSWER("Quoi, merde?",1)
		ANSWER("Fous-moi la paix! ",100)
		
	NODE(1)
		SAY("Je viens de perde un paquet de pognon! Tu sais, avec la ligue de combats virtuels... Je suis à sec!")
		ANSWER("Ha-ha, newbie!",2)
		
	NODE(2)
		SAY("Fais gaffe à ce que tu dis, mec! Notre champion est super doué! Mais des fois, j'comprends pas, j'fais que perdre... C'est trop frustrant.")
		ENDDIALOG()
			
	NODE(100)
		SAY("C'est toi qui m'as parlé en premier, pauvre truffe!")
		ENDDIALOG()	

		
end