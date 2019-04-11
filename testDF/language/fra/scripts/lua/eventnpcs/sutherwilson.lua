--new
--EventDialog
--

function DIALOG()
--------------------------------------------------------------------
--Suther Wilson, Tangent
--ViaRosso
	
	NODE(0)
		SAY("Bist du mutig genug für eine Sache zu kämpfen?")

		ANSWER("Ja.",1)
		ANSWER("Nein.",3)
	NODE(1)
		SAY("Diese Larent Hovercrafts in den Wastelands sind mit neuartigen Gegenständen ausgestattet.")

		ANSWER("Neuartige Gegenstände?",2)
	NODE(2)
		SAY("Falls du den Mut besitzt sie zu zerstören könntest du vielleicht etwas nettes finden!")
		ENDDIALOG()
	NODE(3)
		SAY("Schade eigentlich.")
		ENDDIALOG()

end