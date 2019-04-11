function DIALOG()

	NODE(0)
		SAY(".....")
		ANSWER("Ca va?)",1)
				
	NODE(1)
		SAY(".....")
		ANSWER("Hep, ca va pas ??)",2)
				
	NODE(2)
		SAY(".....du super matos...vraiment super.....")
		ANSWER("Encore un qui a pris quelques derms de trop.",3)

	NODE(3)
		SAY(".....")
		ENDDIALOG()
		
end


