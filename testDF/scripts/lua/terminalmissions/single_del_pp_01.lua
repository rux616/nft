--************************
--name   : SINGLE_DEL_PP_01.lua
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
		SAY("One of our patients needs this medication urgently. Find %NPC_NAME(1) in %NPC_WORLD(1) and hand this over. Hurry up and return here when you are done.")
		SAY("Hello, Runner. A patient named %NPC_NAME(1) is waiting for this medication over at %NPC_WORLD(1). Get this over there quickly and then return to me.")
		SAY("Ah yes, at last. %NPC_NAME(1), one of our patients is in dire need of this medication at %NPC_WORLD(1). Deliver and return here for your reward.")
		SAY("Finally, a Runner. Take this medication to %NPC_NAME(1). It is needed urgently at %NPC_WORLD(1). Ones you handed it over, return here for the reward.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(1)
			if (result==0) then
				SAY("Look, %NPC_NAME(1) life is in your hands. So hurry up and deliver!")
				SAY("Runner, I just got a call stating that the package hadn't been delivered yet. A person might die because of your sloppy work! Get going!!")
				SAY("Unless you are a divine entity I suggest you deliver those meds now.")
				SAY("I hope you realize that %NPC_NAME(1) is suffering because you are slow as a slug?")
				ENDDIALOG()
			else
				SAY("Thank you for the timely delivery. The %REWARD_MONEY() credits have been moved to your account. Have a nice day.")
				SAY("Well done. %NPC_NAME(1) would have died if it wasn't for you. Here, have %REWARD_MONEY() as a token of our PR department's appreciation.")
				SAY("Hey there. The delivery has been confirmed and %REWARD_MONEY() credits have been moved to your account. Good day to you.")
				SAY("%NPC_NAME(1) called and confirmed. %REWARD_MONEY() credits will be moved to your account. Thank you for your help.")
				SAY("Great job! %REWARD_MONEY() credits has been moved to your account. A pleasure doing business with you!")
				SAY("Sure took you long enough. The patient nearly died. Anyway, %REWARD_MONEY() credits have been moved to your account. You may go.")
				ACTIVATEDIALOGTRIGGER(2)
				ENDDIALOG()
			end
	NODE(3)
		TAKEQUESTITEM(91)
			if (result==0) then
				SAY("Come on. Come on! Give it to me? What do you mean don't have it? I am dying here!!")
				SAY("What?! I need those meds, you prick. Don't you dare play with my life this way. Get those meds!")
				SAY("Figures they would send my meds with a drone like you. Get the package or the last thing I do before I die will be shooting you down.")
				SAY("Yeah, this is some game to you right? Hide-the-package from the sick fellow, right? Give it to me or you'll be sorry!")
				ENDDIALOG()
			else	
				SAY("Ah, my medication. Thank you so very much! %NPC_NAME(0) will pay you for the delivery.")
				SAY("Are those the meds? Yes! Come on, hurry up! %NPC_NAME(0) will pay you for the delivery.")
				SAY("That is the medication %NPC_NAME(0) over at ProtoPharm sent me right? Finally, I was getting worried. The office will pay you for the delivery.")
				SAY("You sure took your time. Hand it over! %NPC_NAME(0) probably has your reward.")
				SAY("Meds! Meds! Meds! Gimme, gimme, gimme! Oh yes, sweet meds!! I am sure %NPC_NAME(0) has a reward for you, but what do I care? I got meds!")
				ACTIVATEDIALOGTRIGGER(1)
				SETNEXTDIALOGSTATE(5)	
				ENDDIALOG()
			end
	NODE(4)
		SAY("Well, ProtoPharm is an actual company and we DO work here. So unless you plan on doing the same, I suggest you leave. Now.")
		SAY("Well, if you change your mind then I'll be waiting right here.")
		SAY("Well then, you have over-stayed your welcome. Please leave. Have a nice day.")
		ENDDIALOG()
	NODE(5)
		SAY("What the hell do you want here? I got the packet, now go back to %NPC_NAME(0) to recieve your reward.")
		SAY("Thanks for delivering this package. Now go back to %NPC_NAME(0) to recieve your reward.") 
		ENDDIALOG()
end
