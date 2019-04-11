--************************
--name   : SINGLE_DEL_TS_01.lua
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
		SAY("What is your business here?")
		SAY("Hey-o. What can I help you with?")
		SAY("Yes? What is it that you want, Runner?")
		SAY("Welcome to my office. How can I be of assistance?")
		SAY("Hey-o Runner, you come to see me about the delivery job maybe?")
		
		ANSWER("Yes, I am here regarding the delivery job.",1)
		ANSWER("Yeah, I heard you needed a drop done. Just give me the information and the package...",1)
		ANSWER("Sorry, I all ready have a job.",4)
		ANSWER("Find someone else, I am not interested in helping you.",4)
		ANSWER("Look buddy, do I look like some kind of Runner? I don't do deliveries.",4)
	NODE(1)
		GIVEQUESTITEM(91)
		SAY("I have this package I want you to deliver to %NPC_NAME(1) at %NPC_WORLD(1). It is a personal matter, but still important. Return here when you have handed it over.")
		SAY("Hey Runner, I have a package I need delivered to %NPC_NAME(1) at %NPC_WORLD(1). It is a personal matter, but still important. Come back and see me when you have handed it over.")
		SAY("Good. %NPC_NAME(1) at %NPC_WORLD(1) needs this package. Drop it off and then get back to me.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(1)
			if (result==0) then
				SAY("While it is a personal matter, it is still important... Important enough to make me mad if it doesn't get to its destination in time and in one piece...")
				SAY("I am to busy to deal with you right now. Get that package to %NPC_NAME(1) at %NPC_WORLD(1) as soon as possible.")
				SAY("Hey-o. Forgot where to go, Jingo? %NPC_NAME(1) at %NPC_WORLD(1). Now hurry, don't just stand around here.")
				SAY("Get the package delivered to %NPC_NAME(1) and make it fast.")
				ENDDIALOG()
			else
				SAY("Runner, %NPC_NAME(1) called and confirmed the drop. You have my personal thanks for your help in this matter. %REWARD_MONEY() credits has been deposited into your account.")
				SAY("Hey-o. %NPC_NAME(1) confirmed the delivery and the %REWARD_MONEY() credits will be moved to your account. I'm thankful for a job well done.")
				SAY("The drop is confirmed and %REWARD_MONEY() credits have been moved to your account. Thank you for a job well done. See you around.")
				SAY("Runner, %REWARD_MONEY() credits have been moved to your account. Good job.")
				SAY("Hey-o Runner, well done. You have been paid %REWARD_MONEY() credits. Look at the terminals for more jobs. See you around.")
				ACTIVATEDIALOGTRIGGER(2)
				ENDDIALOG()
			end
	NODE(3)
		TAKEQUESTITEM(91)
			if (result==0) then
				SAY("%NPC_NAME(0) sent me a package? Well, where is it?")
				SAY("You had a package for me, right? Mind getting it?")
				SAY("Give me the package right now or I will call %NPC_NAME(0) and say you stole it.")
				ENDDIALOG()
			else	
				SAY("Thank you for your help with the package, Runner. %NPC_NAME(0) will pay you for the run.")
				SAY("This is from %NPC_NAME(0)? OK, %NPC_NAME(0) probably has some creds for you.")
				SAY("AH, yes. I have been expecting this. %NPC_NAME(0) will pay you for the delivery I hope.")
				SAY("Thanks. %NPC_NAME(0) will have to pay you because I don't have any credits for this.")
				SAY("Ah, nice. %NPC_NAME(0) handles the payment for the run.")
				ACTIVATEDIALOGTRIGGER(1)
				SETNEXTDIALOGSTATE(5)	
				ENDDIALOG()
			end
	NODE(4)
		SAY("For general information about Tsunami I suggest you gock the terminals.")
		SAY("If you can't help me with the delivery I suggest you leave me alone...")
		SAY("Ok, I get it. You are some kind of tourist or something, right? Get out before I call the muscle in here...")
		ENDDIALOG()
	NODE(5)
		SAY("What the hell do you want here? I got the packet, now go back to %NPC_NAME(0) to recieve your reward.")
		SAY("Thanks for delivering this package. Now go back to %NPC_NAME(0) to recieve your reward.") 
		ENDDIALOG()
end

