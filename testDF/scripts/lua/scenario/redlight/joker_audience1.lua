function DIALOG()

	NODE(0)
		SAY("Hahaha... That guy is good! He really has the best jokes. You just have to listen to him.")
		
		ANSWER("He's telling jokes?",1)
		ANSWER("Fuck off man!",100)
		
	NODE(1)
		SAY("And what jokes! The absolute exclusive collection.")
		ANSWER("Let me chat him up too.",2)
		ANSWER("Not for me man. Thanks. I hate jokes.",101)
		
	NODE(2)
		SAY("Do that! And take the sexy jokes! Hahaha.... Absolutely tops!")
		ENDDIALOG()
			
	NODE(100)
		SAY("Fuck off loser!")
		ENDDIALOG()	

	NODE(101)
		SAY("You don`t know what you are going to miss.")
		ENDDIALOG()
		
end