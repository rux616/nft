function DIALOG()

	NODE(0)
		SAY("C'est tous des tricheurs, partout!")
		
		ANSWER("Un problème?",1)
		ANSWER("Laisse-moi tranquille!",100)
		
	NODE(1)
		SAY("Ce gars m'a dépouillé de mon fric! J'ai tout perdu!")
		ANSWER("Il faut savoir s'arrêter...",2)
		
	NODE(2)
		SAY("Non, c'est pas ça, les cartes sont truquées! Joue pas à ces trucs là!")
		ENDDIALOG()
			
	NODE(100)
		SAY("C'est toi qui me parles, abruti!")
		ENDDIALOG()	

		
end