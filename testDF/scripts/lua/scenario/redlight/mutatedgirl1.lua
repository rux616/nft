function DIALOG()

--Geschlechterspaltung		
	NODE(0)
		GENDERCHECK()
		if (result==1) then
			SAY("Hi Sweety. How about the two of us?")
			
			ANSWER("Hmm... your 'colleague' there looks...sort of odd. Are you... a mutant too...?",10)
			ANSWER("Gotta go.",100)
		else
			SAY("Hi, sister how about us?")
			ANSWER("I need cash!",103)
			ANSWER("I`m not a Lesbian, man!",102)
		end

--Männer
	NODE(10)
		SAY("Well, with me my goodies are better hidden. But I have some nice surprises to offer too *stichs out a 15 inch tongue and plays laszivly with her breasts*")
		ANSWER("My god that's mad! How much?",11)
		ANSWER("My god... *jumps back* are there really guys that like something like that?",101)
	NODE(11)
		SAY("The price is secondary, Sweety, the fun, the pleasure ist he vital thing. If you`ve never done it, you`ve got no idea of what I can do with it.")
		ANSWER("Alright. Stop! Say! How much?",12)
	NODE(12)
		SAY("200.000 Credits for one Go. For that I can do...")
		ANSWER("200.000?! Are you insane?! Who's gonna pay that?",13)
	NODE(13)
		SAY("Everybody that honores a first class service.")
		ANSWER("Sorry little one, than I rather do it to myself.",14)
	NODE(14)
		SAY("Everybody according to his own fashion. Sweety. Think about me, while doing it. *tickles the Runners chin with her tongue*")
		ENDDIALOG()
	

-- Dialog Ausstiege			
	NODE(100)
		SAY(" Come back, when you think different, lover.")
		ENDDIALOG()	

	NODE(101)
		SAY("I have new dimension of lust to show you! Think about it, lover.")
		ENDDIALOG()

	NODE(102)
		SAY("Alright, no reason to go over the top. If you don't like, just buzz off!")
		ENDDIALOG()
		
	NODE(103)
		SAY("Speak to my guy there. Maybe he can do something for you.")
		ENDDIALOG()
end