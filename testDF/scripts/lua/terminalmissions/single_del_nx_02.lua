--************************
--name   : SINGLE_DEL_NX_02.lua
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
		SAY("NEXT, how can I help you?")
		SAY("NEXT, where do you want to go today?")
		SAY("Hello there. Come about the delivery job?")
		SAY("Welcome to Neocron Exploration Technology Inc. How can I help you?")
		SAY("Hey. Are you here about the delivery job?")
		SAY("G'day to you. We here at NEXT could use your help, if you are interested.")
		
		ANSWER("Yes, I am here regarding the delivery job.",1)
		ANSWER("Yeah, I heard you needed a drop done. Just give me the information and the package...",1)
		ANSWER("I'm here about the delivery job. Just give me the where and when and I will drop it off.",1)
		ANSWER("Sorry, I all ready have a job.",4)
		ANSWER("Find someone else, I am not interested in helping you.",4)
		ANSWER("Look buddy, do I look like some kind of runner? I don't do deliveries.",4)
	NODE(1)
		GIVEQUESTITEM(91)
		SAY("%NPC_NAME(1) at %NPC_WORLD(1) needs this piece of equipment, real urgent like. Make a good, clean, swift drop. Good luck.")
		SAY("OK, Runner. %NPC_NAME(1) is waiting for this delivery at %NPC_WORLD(1). Its kind of urgent, so please hurry. Then return here for your reward.")
		SAY("Hello! %NPC_NAME(1) at %NPC_WORLD(1) needs this package, urgently. Make the drop and then get back here as fast as you can.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(1)
			if (result==0) then
				SAY("Wherever you want to go - go NEXT. Yes, that applies to packages to. Make the drop like I told you.")
				SAY("%NPC_NAME(1) sent a message letting us know that you were a slow slob. Make the drop or prepare to get black-balled.")
				SAY("Forget something? Package. Deliver. %NPC_NAME(1) at %NPC_WORLD(1). Now!")
				SAY("Listen, I don't have time to talk. %NPC_NAME(1) is still waiting for the delivery so get going.")
				ENDDIALOG()
			else
				SAY("OK %NPC_NAME(1) sent a message of confirmation. The fee of %REWARD_MONEY() credits has been deposited into your account. Have a good day.")
				SAY("Thank you. %NPC_NAME(1) confirmed the drop and %REWARD_MONEY() credits have been moved to your account. Thanks for the assistance.")
				SAY("Hello again. The drop has been confirmed and %REWARD_MONEY() credits have been moved to your account. G'day.")
				SAY("I have moved %REWARD_MONEY() credits to your personal account as a reward for a job well done. We are thankful for your assistance.")
				SAY("You made pretty good time there. %REWARD_MONEY() credits has been moved to your account. Please check the terminals for more work.")
				ACTIVATEDIALOGTRIGGER(2)
				ENDDIALOG()
			end
	NODE(3)
		TAKEQUESTITEM(91)
			if (result==0) then
				SAY("I am still waiting for that package...")
				SAY("Ah, sorry. You were supposed to deliver a package for me? Could you please hurry up and get it...")
				SAY("No package? I really need that package from NEXT.")
				ENDDIALOG()
			else	
				SAY("The package from NEXT, right?. %NPC_NAME(0) will pay you for the delivery.")
				SAY("Good. %NPC_NAME(0) probably has some creds for you.")
				SAY("Thanks. %NPC_NAME(0) will pay for the delivery.")
				SAY("About time. I thought I'd have to wait until doomsday. %NPC_NAME(0) will pay you for the delivery.")
				SAY("Took you long enough to get here. %NPC_NAME(0) said to get back there for the reward.")
				ACTIVATEDIALOGTRIGGER(1)
				SETNEXTDIALOGSTATE(5)	
				ENDDIALOG()
			end
	NODE(4)
		SAY("Ok, please go away if you don't have any business here at NEXT.")
		SAY("This is me talking to you. This is me ignoring you...")
		SAY("NEXT thanks you for your visit and wishes you a good day. Bye.")
		ENDDIALOG()
	NODE(5)
		SAY("What the hell do you want here? I got the packet, now go back to %NPC_NAME(0) to recieve your reward.")
		SAY("Thanks for delivering this package. Now go back to %NPC_NAME(0) to recieve your reward.") 
		ENDDIALOG()
end
