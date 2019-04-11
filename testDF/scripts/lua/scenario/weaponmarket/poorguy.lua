function DIALOG()

	NODE(0)
		SAY("You got a Credit?")                                     
		ANSWER("What for?",1)                                        
		ANSWER("Old beggar! Earn your money when you need some!",101)
				
	NODE(1)
		SAY("I need a cannon! Just a small one, but without one I can't make any money.")
		ANSWER("And now you want me to give you the money?",2)                           
				
	NODE(2)
		SAY("Ehhmm... If you put it like that…. Yeah.")                                              
		ANSWER("You won't get a dime from me. I worked hard for my money",101)
		ANSWER("Here's a 20. You just have to ask around some more.",3)                               
		ANSWER("200 you can have. You have to ask others for more.",5)                                       
		ANSWER("Here I'll give you 2000. That has to be enough.",7)                        

	NODE(3)
		GIVEMONEY(20)
		SAY("Thanks man, thanks. Even if it isn't much.")
		ENDDIALOG()
		
	NODE(5)
		GIVEMONEY(200)
		SAY("Cool. Now I'll soon be able to get a cannon. Thanks!")
		ENDDIALOG()
		
	NODE(7)
		GIVEMONEY(2000)
		SAY("At last! My days being a beggar are over! I'm a free man! I can take my own money....")
		ENDDIALOG()
			
	NODE(100)
		SAY("...AARRHGGGGNNNN....!")
		ENDDIALOG()	

	NODE(101)
		SAY("Screw you arrogant asshole!")
		ENDDIALOG()	
		
end