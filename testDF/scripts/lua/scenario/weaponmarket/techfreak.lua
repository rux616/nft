function DIALOG()

	NODE(0)
		SAY("I just love this place!")
		ANSWER("Why is that?",1)         
				
	NODE(1)
		SAY("Here you get the hottest of weapons technolody in the area. I would even say in the whole of Dome of York. Only the best.")
		ANSWER("Are there any specific places to go to? Who do I turn to? ",2)                                                                  
		ANSWER("Technology? Weapons? Nothing for me, man.",101)                                                                                 
		
	NODE(2)
		SAY("I have some old contacts. People with connections to Neocron that can deliver brandnew H.E.W. stuff. And I know some other guys that sell top of the art DoY technology. ")
		ANSWER("Sounds crazy. Who?",100)                                                                                                                                                
			
	NODE(100)
		SAY("I cant give away my contacts. Maybe you're a spy or something. Trust you have to earn. Gotta go.")
		ENDDIALOG()	

	NODE(101)
		SAY("You're at the wrong adress then buddy.")
		ENDDIALOG()
		
end