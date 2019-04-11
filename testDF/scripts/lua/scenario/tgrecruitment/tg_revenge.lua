function DIALOG()

	NODE(0)
	
	
		SAY("So you are also one of this Twilight Guardian bastards? If so, piss off!")
		
		ANSWER("Well No, but if so, what problem have you got with them?",1)
		ANSWER("I am a TG and what are you going to do about it?",2)
		
		
	NODE(1)
	
	
		SAY("Those swine have blown up a Café a short time back. In this Café my wife and my 9 year old son were having breakfast. They never harmed anybody but still, they had to die at this cowardly attack. WHY? I ask you. However, I recognised the face of one of them. As soon as he leaves the building over there, I'm going to pump him full of lead. He's going to die slowly and he will hurt terribly!!!")
		
		ANSWER("Hmmm...Sorry to hear that. Well, I'm leaving...",3)
		ANSWER("Ugh... I hope you'll hit your target...",3)
		
		
	NODE(2)
	
	
		SAY("To put some lead between your eyes if you don't piss off!")
		ENDDIALOG()
		
		
	NODE(3)
	
	
		SAY("Look after yourself...")
		ENDDIALOG()
		
		
		
		
end