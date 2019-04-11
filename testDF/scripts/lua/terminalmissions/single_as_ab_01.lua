--************************
--name   : SINGLE_AS_AB_01.lua
--ver    : 0.1
--author : Kintama
--date   : 2004/09/09
--lang   : en
--desc   : Terminal mission
--npc    : 
--************************
--changelog:
--2004/09/09(0.1): Added description
--************************


function DIALOG()

	NODE(0)
		GENDERCHECK()
			if (result==1) then
			SAY("Hola, chumba. Wa'sup?")
			SAY("Greetz, chumba. What the hell can I do for you?")
			SAY("Hello, chumba. Watcha wantin' from me?")

			ANSWER("I am here for the dispatch job. Who's my target?",2)
			ANSWER("Chumba? I must be in the wrong place. Goodbye",1)
			ANSWER("Chumba? I must have mistaken you for someone else. Goodbye.",1)

			else -- Female
			SAY("Hola, chumbata. Wa'sup?")
			SAY("Greetz, chumbata. What the hell can I do for you?")
			SAY("Hello, chumbata. Watcha wantin' from me?")

			ANSWER("I am here for the dispatch job. Who's my target?",2)
			ANSWER("Chumbata? I must be in the wrong place. Goodbye",1)
			ANSWER("Chumbata? I must have mistaken you for someone else. Goodbye.",1)
			end
	NODE(1)	
		SAY("Right. Hope you find your way home.")
		SAY("Your mother teach you to waste other people's time? Get the hell outta here!")
		SAY("Then stop wasting my time, you mutant asshole.")
		SAY("I don't have time for this, you suck-hole. Get the hell outta here!")
		ENDDIALOG()

	NODE(2)
		SAY("All right, straight to business. Your target is %NPC_NAME(1) and is located in %NPC_WORLD(1). When you're done, you can come back to me to recieve your payment.")
		SAY("Right to business, I see. %NPC_NAME(1) is the target's name, and you should find them in %NPC_WORLD(1). Take 'em out and return to me for your payment.")
		SAY("Straight to business. I like that. The sap you're going to take out is named %NPC_NAME(1). You should be able to locate them in %NPC_WORLD(1). Once you've buried them, come back to me to recieve your payment.")
		SETNEXTDIALOGSTATE(3)
		ENDDIALOG()

	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				SAY("Get lost on your way to %NPC_WORLD(1)? If you want your %REWARD_MONEY() credits, you need to bury that pawn. Now go!")
				SAY("You haven't killed %NPC_NAME(1) yet, so why are you back here? Kill the pawn, get the money. You rez me? Now, get outta here!")
				SAY("You want to screw with the Breed? Well, keep bugging me and don't do your job. Otherwise, you could kill %NPC_NAME(1) and get your money.  It's up to you. Now, get going.")
				ENDDIALOG()
			else
				GENDERCHECK()
					if (result==1) then
						SAY("Very good, chumba. It seems that you might know what you are doing. Here are your %REWARD_MONEY() credits in payment. Check the terminals for other jobs with the Breed, or join the pawns as a slave to Reza. Either way, stop buggin' me.")
						SAY("Your target is dead and don't have any blood on your clothes. Chumba knows what he is doing! Anyway, here are your %REWARD_MONEY() credits. Check the terminals for more Breed jobs. I'll catch you later, man.")
						SAY("Hey, my man! Guess I shouldn't mess with you, huh? Your target is dead and these credits are yours. Keep an eye on our terminals for more jobs. I will catch you later, man.")
						ACTIVATEDIALOGTRIGGER(1)
						ENDDIALOG()
					else
						SAY("Very good, chumbata. It seems that you might know what you are doing. Here are your %REWARD_MONEY() credits in payment. Check the terminals for other jobs with the Breed, or join the pawns as a slave to Reza. Either way, stop buggin' me.")
						SAY("Your target is dead and don't have any blood on your clothes. Chumbata knows what she is doing! Anyway, here are your %REWARD_MONEY() credits. Check the terminals for more Breed jobs. I'll catch you later, lady.")
						SAY("Hey, my friend! Guess I shouldn't mess with you, huh? Your target is dead and these credits are yours. Keep an eye on our terminals for more jobs. I'll catch you later, lady.")
						ACTIVATEDIALOGTRIGGER(1)
						ENDDIALOG()
					end
			end
end
	