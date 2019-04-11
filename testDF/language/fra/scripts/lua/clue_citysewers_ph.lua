function DIALOG() -- Clue Dialog - City Sewers place-holder

	NODE(0)
		SAY("Fais attention dans les égouts, c'est tout noir, plein de rats et d'araignées...")

		ANSWER("C'est si dangereux que ça?",1)
		
	NODE(1)
		SAY("En fait non. Une bonne batte, et tu t'en sors. Fais seulement attention à ne pas te faire encercler.")

		ENDDIALOG()

end