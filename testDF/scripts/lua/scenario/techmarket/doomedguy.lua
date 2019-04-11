function DIALOG()

	NODE(0)
		SAY("Buaah! I feel soooooooo  shitty... .")
		ANSWER("What happened with you?",1)
				
	NODE(1)
		SAY("I was going to have an implant done. Didn't go too well. Oh Christ it hurts.")
		ANSWER("What implant was that?",2)
		ANSWER("Not my problem, I'm leaving.",3)
		
	NODE(2)
		SAY("A brain part implant. It was supposed to help me to better hacking, but something went wrong! This shithouse of a doctor!")
		ANSWER("Went to a bad doctor, huh?",4)
			
	NODE(3)
		SAY("Don't you leave me hang out to dry as well....")
		ENDDIALOG()

	NODE(4)
		SAY("Yes... seems like hell, if I catch that bastard! Ughhh That pain!")
		ANSWER("Hell, man. I'm really sorry for you...",5)
		
	NODE(5)
		SAY("Haah Hah... You know what? I`m gonna tear the damned thing out!?")
		ANSWER("Witout Implant Gel? Don't!11 You'll die!! Better get a specialist to do it for you.",6)
		ANSWER("Yup! Go ahead. this is gonna be interesting.",7)
	NODE(6)
		SAY("Oh...Okay maybe you're right.")
		ENDDIALOG()
	NODE(7)
		SAY("Okay...... Rahhhhhh! *Whoop!* Done it It's out!")
		ANSWER ("Cool man. But there is a lot pf fuzzy, bloody things hanging on it.",8)
	NODE(8)
		SAY("Ahhh! My brain! I die...Oh God so much blood...")
		ANSWER("Uhh, sorry man. But I think I'll have to go now.",9)
	NODE(9)
		SAY("Aaargh")
		DIE()
		ENDDIALOG()

end