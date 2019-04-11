function DIALOG()

	NODE(0)
		SAY("...and I say: buying ammunition IS cheaper!")
		ANSWER("Huh? What`s this about?",1)
				
	NODE(1)
		SAY("Oh hehehe, sorry, but I just had an argument with my buddy here...")
		ANSWER("What about exactly?",2)
		ANSWER("That's not my problem. I'm leaving.",3)
		
	NODE(2)
		SAY("He thinks to recycle ammunition from old parts is cheaper then to buy it in a shop. He's crazy!")
		ANSWER("And it's tue too! Your nuts, if you think your way is cheaper!",4)
		ANSWER("Never! Buying is cheaper and faster.",5)
	NODE(3)
		SAY("Well ciao then!")
		ENDDIALOG()

	NODE(4)
		SAY("You just don't want to admit that I am right.")
		ENDDIALOG()
		
	NODE(5)
		SAY("Hahaha! See! I am right!")
		ANSWER("Glad to be of help.",6)
	NODE(6)
		SAY("Okay, thanks again. I've shown him.")
		ENDDIALOG()
	
end