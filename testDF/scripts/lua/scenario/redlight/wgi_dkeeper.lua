function DIALOG()

	NODE(0)
		SAY("Come in! Test your power against the best Runners of the area!!")
		SAY("Fight against the best! Test your power!!")
		SAY("Dive in to virtual worlds! Test the best!!")
		
		ANSWER("Sounds crazy, man! How does it work?",1)
		ANSWER("To test the best? How?",1)
				
		ANSWER("Leave me in peace.",100)
		ANSWER("Piss off man! Not interested.",100)
		
	
	NODE(1)
		SAY("War Games Inn gives Entertainment a New Dimension! At our Terminals you can go into a Virtual Arena to test your fighting abilities against others without danger for body and soul.")
		ANSWER("Sounds sharp! Virtual Arenas?",2)
		
	NODE(2)
		SAY("That's it! We offer everything from a medivean Castle to a Spaceship. The ultimative experience!")
		ANSWER("Madness! I've got to try that.",3)
		ANSWER("Crazy! Pity I'm not a fighter, but it is going to be interesting for my friends.",5)
	
	NODE(3)
		SAY("Come in and convince yourself with this superior technology.")
		ENDDIALOG()

	NODE(5)
		SAY("Send them here. No fighter should miss this experience.")
		ENDDIALOG()
	
	NODE(100)
		SAY("You don't know what you'll miss! War Games Inn gives entertainment a new dimension!")
		ENDDIALOG()	

		
end