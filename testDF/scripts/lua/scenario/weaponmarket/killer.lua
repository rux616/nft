function DIALOG()

	NODE(0)
		SAY("Hi Shorty!")                            
		ANSWER("You`re cool. What you doing here?",1)
				
	NODE(1)
		SAY("In my job you have to be cool, Shorty. I do 'contracts' for cash..")
		ANSWER("Contracts?.......ah yes 'contracts'. Hehehe.",2)                       
				
	NODE(2)
		SAY("Right. And this is the right place to get hold of some... tools! The best place.")
		ANSWER("That's why I am here too",3)                                                          
	
	NODE(3)
		SAY("Shorty you haven't got a clue. What you need is C&C. ")
		ANSWER("Cash & Carry?",4)                                   

	NODE(4)
		SAY("Coolnes and Contacts, Shorty.")                  
		ANSWER("Can I buy anything off you?",100)             
		ANSWER("Arn't you overrating yourself a bit there?",101)
			
	NODE(100)
		SAY("Man, Shorty. You don't get it. I am just cool and no arms dealer. Piss off! ")
		ENDDIALOG()	

	NODE(101)
		SAY("No Shorty. I just know what I am and what I can do.")
		ENDDIALOG()
		
end