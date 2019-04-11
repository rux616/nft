--************************
--name   : SINGLE_DEL_CA_01.lua
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
		SAY("CityAdmin, how can I help you?")
		SAY("CityAdmin, do you need assistance?")
		SAY("Hello there. Come about the job?")
		SAY("Welcome to the City Administration. How can I help you?")
		SAY("Greetings. Are you here about the job?")
		
		ANSWER("Yes, I am here regarding the delivery job.",1)
		ANSWER("Yeah, I heard you needed a drop done. Just give me the information and the package...",1)
		ANSWER("I'm here about the delivery job. Just give me the where and when and I will drop it off.",1)
		ANSWER("Sorry, I all ready have a job.",4)
		ANSWER("Find someone else, I am not interested in helping you.",4)
		ANSWER("Look buddy, do I look like some kind of Runner? I don't do deliveries.",4)
	NODE(1)
		GIVEQUESTITEM(91)
		SAY("It is important that %NPC_NAME(1) at %NPC_WORLD(1) gets this package. Return here for debriefing ones you have made the drop.")
		SAY("Runner,  %NPC_NAME(1) is waiting for the package at %NPC_WORLD(1). Return here for debriefing when you have handed it over.")
		SAY("Runner, %NPC_NAME(1) at %NPC_WORLD(1) needs this package, now. Drop it off and then get back here for debriefing.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)
		ISMISSIONTARGETACCOMPLISHED(1)
			if (result==0) then
				SAY("The CityAdmin requires you to deliver that package. You have accepted to do so. Now get it done or I will summon CopBots to deal with you.")
				SAY("%NPC_NAME(1) is waiting for that piece of equipment. Better get it delivered or I will make sure you never work within the City again.")
				SAY("You were supposed to go to %NPC_NAME(1) at %NPC_WORLD(1) with a package. What are you doing here?")
				SAY("Get that equipment delivered, now.")
				ENDDIALOG()
			else
				SAY("Runner, %NPC_NAME(1) confirmed the drop. The standard reward of %REWARD_MONEY() credits has been deposited into your account. Thank you for assisting the CityAdmin.")
				SAY("Runner, %NPC_NAME(1) confirmed the delivery and the standard %REWARD_MONEY() credits have been moved to your account. Thanks for your assistance in the name of Reeza, for the people!")
				SAY("The drop has been confirmed and the standard %REWARD_MONEY() credits have been moved to your account. The CityAdmin is grateful for your help.")
				SAY("Runner, I have moved the standard %REWARD_MONEY() credits to your personal account as a reward for a job well done. Walk proudly in the service of Reeza and the people!")
				SAY("Runner, well done. Intel confirms the drop. The standard %REWARD_MONEY() credits have been moved to your account. Look at the terminals for more work.")
				ACTIVATEDIALOGTRIGGER(2)
				ENDDIALOG()
			end
	NODE(3)
		TAKEQUESTITEM(91)
			if (result==0) then
				SAY("Well, if you have a delivery for me, maybe you should have actually brought the package?")
				SAY("A package for me? Sweet! Where is it?")
				SAY("I am quite busy, if you have a package for me you'd better hurry up and get it here.")
				ENDDIALOG()
			else
				SAY("Package from CityAdmin? For me? Are you sure about this? Its ticking... I didn't order no watch. Thanks, buddy!")
				SAY("From CityAdmin? Ok. %NPC_NAME(0) probably has some creds for you.")
				SAY("Thank you. %NPC_NAME(0) will pay you for the delivery I hope.")
				SAY("Great, the package! %NPC_NAME(0) will pay you for the delivery.")
				SAY("What? I wasn't expecting no package. Sounds like a watch... Hmm. %NPC_NAME(0) will have to pay you because I didn't order this...")
				ACTIVATEDIALOGTRIGGER(1)	
				SETNEXTDIALOGSTATE(5)	
				ENDDIALOG()
			end
	NODE(4)
		SAY("Please look at the terminals for general information. Thank you.")
		SAY("Good day to you.")
		SAY("Good bye.")
		ENDDIALOG()
	NODE(5)
		SAY("What the hell do you want here? I got the packet, now go back to %NPC_NAME(0) to recieve your reward.")
		SAY("Thanks for delivering this package. Now go back to %NPC_NAME(0) to recieve your reward.") 
		ENDDIALOG()	
	
end
