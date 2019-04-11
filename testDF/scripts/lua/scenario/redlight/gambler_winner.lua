function DIALOG()

	NODE(0)
		SAY("Wow! Today is my lucky day!")
		
		ANSWER("Won?",1)
		ANSWER("Piss off! Leave me in peace!",100)
		
	NODE(1)
		SAY("You can say that again! I cleaned them out! In the lottery! 10 000 Credits in one shot. Madness!")
		ANSWER("I can see, Lucky streak.",2)
		
	NODE(2)
		SAY("I am gonna celebrate. I've earned it! Yippeeh!")
		ENDDIALOG()
			
	NODE(100)
		SAY("Nobody is going to spoil my day! Today is my lucky day!")
		ENDDIALOG()	

		
end


