function DIALOG()

--Geschlechterspaltung		
	NODE(0)
		GENDERCHECK()
		if (result==0) then
			SAY("Hi, Sweetheart. How about the two of us?")
			
			ANSWER("Arn`t you cold, the way you`re dressed, Baby?",10)
			ANSWER("Gotta be on my way.",100)
		else
			SAY("Hi Sister, how about the two of us?")
			ANSWER("Do I look like a dyke to you, you bitch?",102)
		end

--Männer
	NODE(10)
		SAY("Not when I see you you hot stallion. Can I take you out for a ride?")
		ANSWER("Sure, what are your prices?",11)
		ANSWER("Oh errm... god... I don`t know. How much?",11)
		ANSWER("I don't think so Baby. See ya.",101)
	NODE(11)
		SAY("Handjob right here is 1.000 Bucks, the real job 5 Grand and the De Luxe job is 25.000 Credits.")
		ANSWER("Hmmmm... Handjob? And right here?",12)
	NODE(12)
		SAY("No Problem sweety. I`ll do everything for you.")
		ANSWER("You`re really making me randy, Baby... ",13)
	NODE(13)
		SAY("So?")
		ANSWER("Okay! Do it.",14)
	NODE(14)
		SAY("*cuddles up to the Runner, sinks her Hand discretly into his pants and starts with the agreed service*")
		ANSWER("...mmm....uhhh...",15)
	NODE(15)
		SAY("*presses even closer to the Runner, her lips touch his ear, as she whispers: *See that doll over there? I think, she's looking at us...")
		ANSWER("Uuuhh Baby but you`re hot!",16)
	NODE(16)
		SAY("Am I good for you lover?")
		ANSWER("Ahhh...yes. Yes! *his body shakes in spasms- then everything has passed.*",17)
	NODE(17)
		TAKEMONEY(1000)
		SAY("*Steps back smiling* So lover? You liked that?")
		ANSWER("Oh boy! That was crazy. And right in the middle of the road. First class service baby. Here is your cash.",18)
	NODE(18)
		SAY("Glad you enjoyed it. Come back for more.")
		ENDDIALOG()
	

-- Dialog Ausstiege			
	NODE(100)
		SAY("Come back when you are randy, lover. I can do you a first class job.")
		ENDDIALOG()	

	NODE(101)
		SAY("Think about it lover. I'll wait right here for you.")
		ENDDIALOG()

	NODE(102)
		SAY("Alright! No reason to go ballistic. Piss off if you don`t like it.")
		ENDDIALOG()

end