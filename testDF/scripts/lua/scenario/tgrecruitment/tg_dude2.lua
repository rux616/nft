function DIALOG()

	NODE(0)
	
	
		SAY("Hey punk! You look as if you could do with some action. You're at the right adress to find it.")
		
		ANSWER("Who is offering?",1)
		ANSWER("Who you calling a punk, punk? Get out of my way!",3)
		
	
	NODE(1)
	
	
		SAY("We are the Twilight Guardians, mate. We fight for freedom, against Reza and his asskissers, for all that is just and right.")
		
		ANSWER("Nice poem, you recited there dude. Tell me: you really believe in the shit you infantery get told here?",2)
		ANSWER("Sounds good in my ears; I'll have a look around. See you.",4)
		
		
	NODE(2)
	
		SAY("'Course I believe in it, asshole. I was a simple citizen of Neocron under Reza's rule long enough.")
		ENDDIALOG()
		
		
	NODE(3)
	
		SAY("Fuck off asshole!")
		ENDDIALOG()
		
		
	NODE(4)
	
		SAY("Yea just take a good look around, see you later buddy.")
		ENDDIALOG()

end