function DIALOG()
	NODE(0)
		SAY("Analysiere Eingangs-Datenfluss ... pr�fe Planungen ...")
		ANSWER("List \"\",15,2",1)
	NODE(1)
		SAY("Geplante Aufgaben:\n- Keine Eintr�ge -")
		ENDDIALOG()
end