function DIALOG()

	NODE(0)
		SAY("Oh...rubbish, shit! Rubbish! Damned!")
		ANSWER("Hey! What's the matter with you?",1)
				
	NODE(1)
		SAY("I wanted to build myself a firearm, but something went wrong! Damned!")
		ANSWER("Don't know how to built it right huh?",2)
		ANSWER("Yep that's what you call bad luck, don't worry, it will work next time.",3)
		ANSWER("With that ugly dial of yours I would oppose to being assembled by you too.",4)
	NODE(2)
		SAY("Hey, don't say that! I've made tons of those things but it just doesn't seem to work today!")
		ANSWER("Hmmm . It'll be alright, just try again.",5)
			
	NODE(3)
		SAY("But this streak of bad luck is going for a while already ...what a mess!")
		ANSWER("It'll be alright, give it another try.",5)	

	NODE(4)
		SAY("Your asking for a good beating, huh? You are just lucky that I'm in a pacifistic mood today.")
		ANSWER("Hey HEY! Alright, I was just kidding sheeesh.",6)
		
	NODE(5)
		SAY("You're right, well at least the parts here are not as expensive as in Neocron...")
		ENDDIALOG()

	NODE(6)
		SAY("Hmpf! This time you got lucky, just piss off, before I change my mind.")
		ENDDIALOG()


end