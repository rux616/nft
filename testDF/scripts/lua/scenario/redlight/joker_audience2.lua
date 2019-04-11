function DIALOG()


	NODE(0)
		SAY("This Bum is selling jokes. And I've bought one. Damned.")
		ANSWER("What's so bad about buying jokes?",2)
				
	NODE(2)
		SAY("Man, his jokes are so bad... not even worth a credit!")
		ENDDIALOG()
			
	NODE(100)
		SAY("Thanks man. See you.")
		ENDDIALOG()	


		
end