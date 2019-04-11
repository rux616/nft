function DIALOG()

	NODE(0)
		SAY("...and I say: to recycle ammunition IS cheaper!")
		ANSWER("Huh? What do you want?",1)
				
	NODE(1)
		SAY("Oh hehe, sorry. Just had a little argument with my buddy here...")
		ANSWER("What about?",2)
		ANSWER(" Hmm. Not my problem. I'm leaving.",3)
		
	NODE(2)
		SAY("He thinks to buy ammunition is cheaper then to recycle. He's nuts!")
		ANSWER("It's true too. Your crazy if you think your way is cheaper.",4)
		ANSWER("Never! To recycle is far cheaper and far more effective!",5)
	NODE(3)
		SAY("Whatever")
		ENDDIALOG()

	NODE(4)
		SAY("Recycling is cheaper I tell you!")
		ENDDIALOG()
		
	NODE(5)
		SAY("Yes! You see, mate? I'm right! This guy says so!")
		ANSWER("Glad to be of help!",6)
	NODE(6)
		SAY("No problem, ciao!")
		ENDDIALOG()
	
end