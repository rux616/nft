function DIALOG()

	NODE(0)
		SAY("Ahhh fantastic ...I feel like being newborn.")
		ANSWER("What happened?",1)
				
	NODE(1)
		SAY("Just bought a couple of implants and had them put in straight away, now at long last my backaches are gone.")
		ANSWER("Cool! I think, I'll get a couple myself later on.",2)
		ANSWER("Bahh. Nothing for me! I stick to nature. Straight!",3)
		ANSWER("Yup! Confirm! Implants are a real blessing!",4)
	NODE(2)
		SAY("Do that! I can only recommend it.")
		ENDDIALOG()
			
	NODE(3)
		SAY("Go away. Those Bone Enforcements last till doomsday in contrast to proper bones.")
		ANSWER("I just don't trust this artificial stuff.",5)	

	NODE(4)
		SAY("Cool! You've got some already, huh? Hmm I think I'll get myself one of those Pistoleyes...")
		ENDDIALOG()
		
	NODE(5)
		SAY("Right, let's see what you say in 50 years time.")
		ENDDIALOG()


end