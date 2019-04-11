function DIALOG()

	NODE(0)
		SAY("Shit! They cheat all over the place!")
		
		ANSWER("What's the matter?",1)
		ANSWER("Leave me in peace! Fuck off!",100)
		
	NODE(1)
		SAY("That guy over there has ripped me off. I lost everything.")
		ANSWER("Have you gone too far?",2)
		
	NODE(2)
		SAY("No man the cards are rigged. I got screwed big time! I can only tell you this: Hands off!")
		ENDDIALOG()
			
	NODE(100)
		SAY("Me? You chatted me up you moron!")
		ENDDIALOG()	

		
end