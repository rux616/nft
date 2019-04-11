function DIALOG()

	NODE(0)
		
		
		SAY("Hallo. Nice of you to pop in. Take your time to look around, speak to the people. You'll see that we of the Twilight Guardian have nothing to hide.")
		
		ANSWER("I'll do that. What's there to see?",1)
		ANSWER("You just keep your flattery for yourself, you hear! You of the Twilight Guardian are nothing but a bunch of terrorists!",2)
		
		
		
	NODE(1)
	
	
		SAY("In this centre we recruit new guys that like to support us. If you feel like doing so, speak to a recruiter. He will inform you about everything.")
		ENDDIALOG()
		
		
	NODE(2)
	
	
		SAY("With this attitude you won't get very far around here,mate. What do you want here anyway? Go back and hide under Reza's apron.")
		ENDDIALOG()
		


end