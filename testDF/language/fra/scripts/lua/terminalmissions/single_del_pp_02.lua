--************************
--name   : SINGLE_DEL_PP_02.lua
--ver    : 0.1
--author : Kintama
--date   : 2004/09/09
--lang   : en
--desc   : terminal mission
--npc    : 
--************************
--changelog:
--2004/09/09(0.1): Added description
--************************

function DIALOG()

	NODE(0)
		SAY("Your hope. Your strength. Your cure. ProtoPharm, can I be of assistance?")
		SAY("Welcome to ProtoPharm. How may I be of assistance?")
		SAY("Hey. Come about the delivery job?")
		SAY("How can I help you?")
		SAY("Greetings. Are you the deliveryman?")
		SAY("Hello there. We have a job for you, if you are interested.")
		
		ANSWER("Hello, I am here about the delivery job.",1)
		ANSWER("Yeah, I can deliver. Just give me the information and the package...",1)
		ANSWER("I'm here about the delivery job, sure enough. Just give me the where and when and I will see to it.",1)
		ANSWER("Sorry, not my cup of tea.",4)
		ANSWER("Find someone else, I don't have the time.",4)
		ANSWER("Look buddy, I don't do deliveries, OK?",4)
	NODE(1)
		GIVEQUESTITEM(91)
		SAY("I need these drugs delivered to %NPC_NAME(1) in %NPC_WORLD(1). Be careful with it. Its still experimental and any leaks might be hazardous. Return here when you are done.")
		SAY("Hello, Runner. A labcoat named %NPC_NAME(1) is waiting for these drugs. He works at %NPC_WORLD(1). Be careful so the container doesn't break. Get this to him and then return to me.")
		SAY("Ah yes, I'm glad to see you. %NPC_NAME(1), one of our labcoats, is working on a new project and needs this experimental toxin over at %NPC_WORLD(1). Deliver and return here for your reward.")
		SAY("Finally, a Runner. Take this...uhmm... package to %NPC_NAME(1), he needs to do some tests on it over at %NPC_WORLD(1). Once you handed it over, return here for the reward.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(1)
			if (result==0) then
				SAY("OK, those drugs you have there can like save the world or something. So hurry up and deliver them to %NPC_NAME(1)!")
				SAY("Runner, I just got a call from %NPC_NAME(1) stating that the package hadn't been delivered yet. Get to it.")
				SAY("Hello there! I am glad to see that you apparently run so fast that you can idle around whilst on the job... get to it!")
				SAY("I have seen worn down junkies work faster than you. Are you going to deliver or not?")
				ENDDIALOG()
			else
				SAY("Thank you for the drop. The %REWARD_MONEY() credits have been moved to your account. Have a nice day.")
				SAY("Well done. The labcoat really needed those drugs. Here, have %REWARD_MONEY() as a token of our appreciation.")
				SAY("Hey there. The delivery has been confirmed and %REWARD_MONEY() credits have been moved to your account. Good day to you.")
				SAY("Welcome back. The labcoat has called and confirmed. %REWARD_MONEY() credits will be moved to your account. Thank you for your help.")
				SAY("Oh, it's you. Well done. %REWARD_MONEY() credits has been moved to your account. A pleasure doing business with you!")
				SAY("Catch the sights on the way? Sure took you long enough. Anyway, %REWARD_MONEY() credits have been moved to your account. You are dismissed.")
				ACTIVATEDIALOGTRIGGER(2)
				ENDDIALOG()
			end
	NODE(3)
		TAKEQUESTITEM(91)
			if (result==0) then
				SAY("Have you got it? The package, you got it? No? Then go get it! Friggin workers...")
				SAY("...divided by seven, no eight and.. Oh, do you have the package? No? Then I suggest you go get it, drone.")
				SAY("Yeah, I need that package pretty urgently. So please go and get it.")
				SAY("Look here, I could create a drug that cures all illnesses if you morons only learned to actually deliver the packages! Get me that package!")
				ENDDIALOG()
			else	
				SAY("Ah, nice. The package from the office. %NPC_NAME(0) will pay you for the delivery.")
				SAY("Delivery? Ah, the SROXUS 1.11 the office promised me. Thanks. %NPC_NAME(0) will pay you for the delivery.")
				SAY("Is that the SROXUS %NPC_NAME(0) sent me? Yeah, it is. The office will pay you for the delivery.")
				SAY("You sure took your time. Hand it over! %NPC_NAME(0) probably has your reward.")
				SAY("The deliveryman! And you have the SROXUS 1.11. Sweet. I am sure %NPC_NAME(0) has a reward for you.")
				ACTIVATEDIALOGTRIGGER(1)
				SETNEXTDIALOGSTATE(5)	
				ENDDIALOG()
			end
	NODE(4)
		SAY("Look, I have to work for a living. Unless you do too, I suggest you get out of here. Have a nice day.")
		SAY("Well, if you change your mind then I'll be waiting right here.")
		SAY("Ok. I am sure there are others that need the creds. If you don't have business here I suggest you leave. Have a nice day.")
		ENDDIALOG()
	NODE(5)
		SAY("What the hell do you want here? I got the packet, now go back to %NPC_NAME(0) to recieve your reward.")
		SAY("Thanks for delivering this package. Now go back to %NPC_NAME(0) to recieve your reward.") 
		ENDDIALOG()
end
