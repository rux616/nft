--new
--EventDialog
--

function DIALOG()
--------------------------------------------------------------------
--Suther Wilson, Tangent
--ViaRosso
	
	NODE(0)
		SAY("Bist du mutig genug f�r eine Sache zu k�mpfen?")

		ANSWER("Ja.",1)
		ANSWER("Nein.",3)
	NODE(1)
		SAY("Diese Larent Hovercrafts in den Wastelands sind mit neuartigen Gegenst�nden ausgestattet.")

		ANSWER("Neuartige Gegenst�nde?",2)
	NODE(2)
		SAY("Falls du den Mut besitzt sie zu zerst�ren k�nntest du vielleicht etwas nettes finden!")
		ENDDIALOG()
	NODE(3)
		SAY("Schade eigentlich.")
		ENDDIALOG()

end