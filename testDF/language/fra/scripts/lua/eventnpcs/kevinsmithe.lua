--new
--Event dialog

function DIALOG()
--------------------------------------------------------------------
--Kevin Smithe, FA
--Pepper Park
--0
	
	NODE(0)
		SAY("Hast du schon von diesen neuen Hovercrafts geh�rt?")

		ANSWER("Ja.",1)
		ANSWER("Nein.",2)
	NODE(1)
		SAY("Ger�chte besagen, dass sie diese neue Waffenmodifikationen tragen.")
		ENDDIALOG()
		
	NODE(2)
		SAY("Dann verschwinde!")
		ENDDIALOG()



end