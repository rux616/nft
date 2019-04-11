function DIALOG()

	NODE(0)
		SAY("Ahhhhhhhh......!")
		ANSWER("Huh?",1)
				
	NODE(1)
		SAY("Hey, you scared me! I guess I was too busy with choosing my tools.")
		ANSWER("Uh, is it so complicated?",2)
		ANSWER("Why do you stand in the way like an idiot? Some people want to get through here!",3)
		ANSWER("Oh sorry! Won't happen again.",4)
	NODE(2)
		SAY("Of course yes. I have to produce high quality stuff and for that you need the proper tools.")
		ANSWER("Okay. Then I'll leave you to it. Sorry to have troubled you.",4)
			
	NODE(3)
		SAY("Now don't you get cocky pal, I can take you on any time of the day!")
		ANSWER("Yeah, They all say that. Ciao, you nutcase.",5)	

	NODE(4)
		SAY("That's alright. I'll just have another look around.")
		ENDDIALOG()
		
	NODE(5)
		SAY("Piss off! And don't you come back!")
		ENDDIALOG()

	NODE(6)
		SAY("You've been lucky this time. Now you better piss off before I change my mind.")
		ENDDIALOG()


end