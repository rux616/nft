function DIALOG()

	NODE(0)
		SAY("Shit!")
		
		ANSWER("What's shit?",1)
		ANSWER("Leave me alone. Fuck off! ",100)
		
	NODE(1)
		SAY("I've just lost big time! We've got this Virtual Fighting League there and its just shredded me.")
		ANSWER("Hehe! Bloody beginner!",2)
		
	NODE(2)
		SAY("Watch out what you say man! Our Champ's just too strong. But those Virtual arenas are worth the frustration...")
		ENDDIALOG()
			
	NODE(100)
		SAY("You've chatted me up, you moron!")
		ENDDIALOG()	

		
end