function DIALOG()

	NODE(0)
		SAY("C'est tous des tricheurs, partout!")
		
		ANSWER("Un probl�me?",1)
		ANSWER("Laisse-moi tranquille!",100)
		
	NODE(1)
		SAY("Ce gars m'a d�pouill� de mon fric! J'ai tout perdu!")
		ANSWER("Il faut savoir s'arr�ter...",2)
		
	NODE(2)
		SAY("Non, c'est pas �a, les cartes sont truqu�es! Joue pas � ces trucs l�!")
		ENDDIALOG()
			
	NODE(100)
		SAY("C'est toi qui me parles, abruti!")
		ENDDIALOG()	

		
end