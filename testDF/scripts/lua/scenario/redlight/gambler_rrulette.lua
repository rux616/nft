function DIALOG()

	NODE(0)
		SAY("Hu..Hullo! *HICK* I've got biiig plans...")
		
		ANSWER("Plans? Better get over your hangover first?",1)
		ANSWER("You're drunk! Keep quiet!",100)
		
	NODE(1)
		SAY("The opposite... *HICK* The opposite is right! I've lost everything to that guy over there. Have to get some of it *HICK* back. Need all... *HICK*...need all the guts I can muster.")
		ANSWER("Nahh! You stink! What do I have to do with it?",2)
		
	NODE(2)
		timesplayed=0
		SAY("You..give me 200... *HICK* Credits and I pl..ay Russian Rrrrou... Roulette! Just for your *HICK* fun. If I peg... you take all I've *HICK* got. If I win, the money is mine, for my risk. You going *HICK* along?")
		ANSWER("You're nuts! But you're on! Here is 200. But do me a favour. Die!",3)
		ANSWER("Man, what have you thrown in? But okay here is 200.",3)

		ANSWER("Piss off, freak!",100)
		
	NODE(3)
		TAKEMONEY(200)
			if( result==1 ) then
				SAY("OK, here we go! One out of 6 hits.")
				SAY("Away we go! 1 against 6 chee... *HICK* ..rio...")
				ANSWER("Go on, go ahead!",4)
				ANSWER("Okay, go ahead!",4)
				timesplayed=timesplayed+1
			else
				SAY("Hey! I'm not that *HICK* drunk! No bread, noooo... gamble!")
				ENDDIALOG()
			end

	NODE(4)
		RAND(6)
			if( result==0 ) then
				RAND(1000)
				bill=(timesplayed*200)+result
				GIVEMONEY(bill)
				SAY("*BOOMMM*")
				DIE()
				ENDDIALOG()
			else
				SAY("....Poooh , wow!...Made it! Once more? *HICK* ")
				ANSWER("You're mad man! But here: Another 200.",3)
				ANSWER("You're nuts man! All I can say: Let them put you into the Loonie Bin.",100)
			end			
	NODE(5)
	
		SAY("But you *HICKS* can say what you like. I've done it! I've done it once!")
		ENDDIALOG()

	NODE(100)
		SAY("Shit...Shit man! *HICK* What's the matter 'th you? You don't talk like that to the *Hick* doomed *Hick*!")
		ENDDIALOG()	

		
end