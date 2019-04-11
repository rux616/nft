function DIALOG()

	NODE(0)
		SAY("Yes?")                      
		ANSWER("Are you a hunter too?",1)
				
	NODE(1)
		SAY("More of a driver. But I also hunt. Together with that one there.")
		ANSWER("Is he any good?",2)                                            
				
	NODE(2)
		SAY("You can say that again. He organized a cannon based on Copbotic technology for us.")
		ANSWER("Genuine? Man that's awesome.",3)                                                   
	
	NODE(3)
		SAY("Our Tank ain't bad either. I`ve altered a couple of things there too.")
		ANSWER("Altered?",4)                                                             

	NODE(4)
		SAY("Tracks reinforced, Armour doubled up, Engine bored out, that was my work.")
		ANSWER("Wow. I can see you know what you are doing.",100)                       
		ANSWER("Bragger!",101)                                                          
			
	NODE(100)
		SAY("Yep, we do!")
		ENDDIALOG()	

	NODE(101)
		SAY("Oh Shorty. You've got no idea.")
		ENDDIALOG()
		
end