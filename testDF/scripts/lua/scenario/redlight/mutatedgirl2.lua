function DIALOG()

--Geschlechterspaltung		
	NODE(0)
		GENDERCHECK()
		if (result==1) then
			SAY("Hey lover! You like kinky sex? Got something to offer there.")
			
			ANSWER("Hmm... you... you ..look...odd.",10)
			ANSWER("Gotta go!",100)
		else
			SAY("Hi, sister! How about the two of us?")
			ANSWER("Even though I like women, I don`t fancy freaks like you.",102)
		end

--Männer
	NODE(10)
		SAY("I can offer some unique body features. Which girl can say for herself that she has more than one gorgeous gully?")
		ANSWER("Really? That`s weird. How much?",12)
		ANSWER("Oh my god! That is weird! Are there really some men, that go for something like that?",101)

	NODE(12)
		SAY("250.000 for one go! For that price you can even bring two mates along. Hehehe...")
		ANSWER("250.000?! Are you mad?! Who`s gonna pay that?",13)
	NODE(13)
		SAY("Everyone that likes something special. Like an extravagant service.")
		ANSWER("Sorry my sweetheart. No Go! Out of the question!",100)
	

-- Dialog Ausstiege			
	NODE(100)
		SAY("Come back when you think differently, lover.")
		ENDDIALOG()	

	NODE(101)
		SAY("Of course lover, most of them! Think about it, I`ll wait for you.")
		ENDDIALOG()

	NODE(102)
		SAY("Okay, okay! No reason to go off your rocker. If you don`t like it just buzz off.")
		ENDDIALOG()
		
	NODE(103)
		SAY("Speak to my guy than. Maybe he arrange something for you.")
		ENDDIALOG()
end