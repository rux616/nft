function DIALOG()

	NODE(0)
		SAY("Man, what a fight!")
		
		ANSWER("Fight? In there?",1)
		ANSWER("Leave me alone! Not interested.",100)
		
	NODE(1)
		SAY("Yes man we have our own league there: The Virtual Fighting League. I have just cleaned them out!")
		ANSWER("Sounds crazy. Are you the Champ now?",2)
		
	NODE(2)
		SAY("Yes. I'm the strongest, the fastest and best. The unbeaten Champion of all categories...")
		ANSWER("Can I join the league?",3)
			
	NODE(3)
		SAY("Sorry, we are full. But just look for some of your mates and start your own thing. Nothing difficult about it... . But we are going to party and waste the price money.")
		ENDDIALOG()

	NODE(100)
		SAY("You don't know what you'll miss.")
		ENDDIALOG()	

		
end