--************************
--name   : SINGLE_DEL_NX_01.lua
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
		ANSWER("Yeah, I heard you needed a drop done. Just give me the information and the package.",1)
		ANSWER("I'm here about the delivery job. Just give me the where and when and I will drop it off.",1)
		ANSWER("Sorry, I all ready have a job.",4)
		ANSWER("Find someone else, I am not interested in helping you.",4)
		ANSWER("Look buddy, do I look like some kind of Runner? I don't do deliveries.",4)
	NODE(1)
		GIVEQUESTITEM(91)
		SAY("OK. I have a package here for a certain %NPC_NAME(1) at %NPC_WORLD(1). Make sure you deliver it fast, we do work with transportation after all. Good luck.")
		SAY("All right, Runner. %NPC_NAME(1) is waiting for this delivery. Try looking at %NPC_WORLD(1). Please make a swift drop, we are in the transportation business after all.")
		SAY("Hmmm, this isn't right... Oh, yeah, listen up. %NPC_NAME(1) of the Bergen-Dahl Motor company needs this package. Deliver it at %NPC_WORLD(1). Make it quick and then get back here.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(1)
			if (result==0) then
				SAY("Wherever you want to go - go NEXT. Yes, that applies to packages too. Make the drop like I told you.")
				SAY("%NPC_NAME(1) from Bergen-Dahl Motors called, again, and asked for his package. Hurry up and drop it off.")
				SAY("Are you into anarchy? Well, NEXT isn't. Here you do as you have been told. Deliver the friggin package!")
				SAY("Listen, I don't have time to talk. %NPC_NAME(1) is still waiting for the drop.")
				ENDDIALOG()
			else
				SAY("Well done. The guys from Bergen-Dahl called and said they got the package. The fee of %REWARD_MONEY() credits has been deposited into your account.")
				SAY("Thanks. %NPC_NAME(1) confirmed the drop and %REWARD_MONEY() credits has been deposited in your account. Thank you for your assistance.")
				SAY("Hello again. The drop has been confirmed and %REWARD_MONEY() credits has been moved to your account. G'day and we look forward to working with you again.")
				SAY("Bergen-Dahl Motors called and confirmed the drop. I have moved %REWARD_MONEY() credits to your personal account. We are thankful for your assistance.")
				SAY("That wasn't very fast... But, the guys at Bergen-Dahl motors got the package. %REWARD_MONEY() credits have been moved to your account. That is all, you may leave.")
				ACTIVATEDIALOGTRIGGER(2)
				ENDDIALOG()
			end
	NODE(3)
		TAKEQUESTITEM(91)
			if (result==0) then
				SAY("Listen, buddy. We at Bergen-Dahl are not suckers. You have a package for me, right? Hand it over!")
				SAY("I was promised that package long ago. I hope you are not withholding it from me, pal...")
				SAY("Yeah, sure, screw the Bergen-Dahl grease-monkey why don't you. I know you are supposed to deliver a package for me. Where is it?")
				ENDDIALOG()
			else	
				SAY("Ah, good. The package from NEXT, right? %NPC_NAME(0) will pay you for the delivery.")
				SAY("You have the package from NEXT! Good. %NPC_NAME(0) probably has some creds for you.")
				SAY("This is the stuff %NPC_NAME(0) at NEXT sent us? OK. They will pay for the delivery. Thanks, pal.")
				SAY("All right! The NEXT package. Kind of funny Bergen-Dahl motors have to rely on NEXT for this. %NPC_NAME(0) will pay you.")
				SAY("Took you long enough to get that thing here. %NPC_NAME(0) will have to pay you, because I won't.")
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
		SAY("What the hell do you want here? I got the packet, now go back to %NPC_NAME(0) to recieve your reward")
		SAY("Thanks for delivering this package. Now go back to %NPC_NAME(0) to recieve your reward.") 
		ENDDIALOG()
end
