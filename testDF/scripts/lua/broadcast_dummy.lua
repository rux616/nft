function DIALOG()
	NODE(0)
		SAY("Parsing input stream ... checking shedules ...")
		ANSWER("List \"\",15,2",1)
	NODE(1)
		SAY("Sheduled tasks:\n- No Entries -")
		ENDDIALOG()
end