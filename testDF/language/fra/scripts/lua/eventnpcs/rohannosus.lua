--new
--Events
--

function DIALOG()
--------------------------------------------------------------------
--Rohan Nosus, Crahn
--Crahn Abbey
	
	NODE(0)
		SAY("Hast du diese neue PSI Modul Modifikation gefunden?")

		ANSWER("Ja.",1)
		ANSWER("Nein.",3)
	NODE(1)
		SAY("Schande auf dich, es sind verfluchte Gegenst�nde!")

		ANSWER("Verfluchte Gegenst�nde?",2)
	NODE(2)
		SAY("Es wird der Bruderschaft von Crahn nicht gerecht!")
		ENDDIALOG()
	NODE(3)
		SAY("Umso besser!")
		ENDDIALOG()


end