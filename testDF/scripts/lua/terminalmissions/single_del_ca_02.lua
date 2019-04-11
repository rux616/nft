--************************
--name   : SINGLE_DEL_CA_02.lua
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
		SAY("Welcome to the CityAdministration. How can I help you?")
		SAY("Greetings. Are you here about the job?")
		
		ANSWER("Yes, I am here regarding the delivery job.",1)
		ANSWER("Yeah, I heard you needed a drop done. Just give me the information and the package...",1)
		ANSWER("I'm here about the delivery job. Just give me the where and when and I will drop it off.",1)
		ANSWER("Sorry, I all ready have a job.",4)
		ANSWER("Find someone else, I am not interested in helping you.",4)
		ANSWER("Look buddy, do I look like some kind of Runner? I don't do deliveries.",4)
	NODE(1)
		GIVEQUESTITEM(91)
		SAY("Agent %NPC_NAME(1) at %NPC_WORLD(1) needs this piece of equipment urgently. Hurry up and get over there. Then return here for debriefing.")
		SAY("Runner, citizen %NPC_NAME(1) is waiting for this equipment at %NPC_WORLD(1). It is urgent, so please hurry. Then return here for debriefing.")
		SAY("Runner, %NPC_NAME(1) at %NPC_WORLD(1) needs this equipment, now. Make the delivery and then get back here for debriefing.")
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
				SAY("Hmmm, you had a package for me, right? Well, better go get it then.")
				SAY("Come on all ready. I don't have all day. Get me that piece of equipment.")
				SAY("Look buddy, I don't particulary enjoy standing around like this in the same spot, waiting. Get that package for me.")
				ENDDIALOG()
			else	
				SAY("The package from the office, right?. %NPC_NAME(0) will pay you, thanks for getting it here quickly.")
				SAY("Good. %NPC_NAME(0) probably has some creds for you.")
				SAY("Thanks. %NPC_NAME(0) will pay you for the delivery.")
				SAY("Bastisch, hurry up! I have been standing around here for to long. %NPC_NAME(0) will pay you for the delivery.")
				SAY("Sure as grid took you long enough to get here! %NPC_NAME(0) said to get back there for the reward.")
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
