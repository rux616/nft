function DIALOG()

	NODE(0)
		SAY("Hell! Those things really scare me.")
		ANSWER("Huh? What you talk about?",1)
				
	NODE(1)
		SAY("Can't you see all those Bots here? They can go crazy anytime and kill us!")
		ANSWER("I don't think so. I think the people here have programmed them correctly.",2)
		ANSWER("You're right in a way, but if they go crazy, we are all dead.",3)
		
	NODE(2)
		SAY("But how do you know that nothing goes wrong? I tell you: We'll all die.")
		ANSWER("Keep calm. Those nice men with the straightjacket are going to be here soon...",4)
			
	NODE(3)
		SAY("And I tell you, we have to take the initiative and eliminate those things.")
		ANSWER("And just how are you going to do that?",5)	

	NODE(4)
		SAY("Good god! Did you hear that? Just now they are going to shoot at us!")
		ENDDIALOG()
		
	NODE(5)
		SAY("eeeh I haven't thought about that actually...")
		ANSWER("Well I'll wait for it.",6)

	NODE(6)
		SAY("I'll find a way to save us all!")
		ENDDIALOG()

end