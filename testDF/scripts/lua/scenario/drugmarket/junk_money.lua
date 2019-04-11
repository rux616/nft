function DIALOG()

	NODE(0)
		SAY("Hey man! You got a Credit? I need a Credit")
		ANSWER("What for?",1)
		ANSWER("Dirty beggar! If you need dough, earn it!",101)
				
	NODE(1)
		SAY("I need a shot man! Now! Otherwise i`ll die!")
		ANSWER("Not one Credit from me, man! I don`t find my money in the street, man.",101)
		ANSWER("Here's 20.",3)
		ANSWER("You can have 200. That should be sufficient.",5)
		ANSWER("Here. I give you 2 Grand. Think of me when you meet your maker. He.He.He!",7)

	NODE(3)
		TAKEMONEY(20)
		SAY("Thanks man, even if it`s not much.")
		ENDDIALOG()
		
	NODE(5)
		TAKEMONEY(200)
		SAY("Cool man. It`ll do for one shot.")
		ENDDIALOG()
		
	NODE(7)
		TAKEMONEY(2000)
		SAY("At last! A better world awaits me! Here I come...")
		ENDDIALOG()
			
	NODE(101)
		SAY("Stuff you, scrooge!")
		ENDDIALOG()	
		
end


