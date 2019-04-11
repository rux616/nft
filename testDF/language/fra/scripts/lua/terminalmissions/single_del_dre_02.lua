--************************
--name   : SINGLE_DEL_DRE_02.lua
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
		SAY("Delivering or picking up?")
		SAY("Greetings and welcome to Diamond Real-Estate. How may I be of assistance?")
		SAY("Hello there. Come about the delivery job?")
		SAY("Welcome to Diamond Real-Estate. How can I help you?")
		SAY("Hey. Are you here about the delivery job?")
		SAY("Hello there. I have an assignment for you, if you are interested.")
		
		ANSWER("Yes, I am here regarding the delivery job.",1)
		ANSWER("Yeah, I heard you needed a drop done. Just give me the information and the package...",1)
		ANSWER("I'm here about the delivery job. Just give me the where and when and I will drop it off.",1)
		ANSWER("Sorry, I am not the messanger you are waiting for.",4)
		ANSWER("Find someone else, I don`t have the time.",4)
		ANSWER("Look buddy, do I look like some kind of servant? I don't do deliveries.",4)
	NODE(1)
		GIVEQUESTITEM(91)
		SAY("I need this stuff delivered to %NPC_NAME(1) in %NPC_WORLD(1). The techs there can't continue working until the package gets there so don't take to long. Time is money after all!")
		SAY("Hello Runner. A tech named %NPC_NAME(1) is waiting for his package. He is working at %NPC_WORLD(1). Get this to him and then return to me.")
		SAY("Ah yes, I'm glad to see you. %NPC_NAME(1), one of our techs, needs this stuff in order to continue working. He is over at %NPC_WORLD(1). Deliver and return to me for your reward.")
		SAY("Finally, a Runner. Take this package to %NPC_NAME(1) at %NPC_WORLD(1), he can't continue with his work until you have delivered. Ones you handed it over, return here for the reward.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(1)
			if (result==0) then
				SAY("Look, %NPC_NAME(1) needs the package. The company is losing money because of your speed, or lack thereof. So hurry up.")
				SAY("Runner, I just got a call stating that the package hadn't been delivered yet. Get to it.")
				SAY("Don't I look busy enough as it is? You have a package to drop off, do that and come back.")
				SAY("What the blazes are you doing here? Deliver. Deliver! Deliver!!")
				ENDDIALOG()
			else
				SAY("Thank you. The %REWARD_MONEY() credits have been moved to your account. Diamond Real-Estate is thankful for your assistance.")
				SAY("Well done. %NPC_NAME(1) really needed what was in that package. Here, have %REWARD_MONEY() credits for the delivery.")
				SAY("Hello again. I have recieved confirmation about the delivery and %REWARD_MONEY() credits have been moved to your account. Have a nice day.")
				SAY("Welcome back. The techie called and confirmed the drop. %REWARD_MONEY() credits have been moved to your account. Thank you for your assistance.")
				SAY("You are back! Well done, %NPC_NAME(1) got the package just in time. %REWARD_MONEY() credits has been moved to your account. Nice doing business with you!")
				SAY("I hope you understand that while you managed to deliver, the time it took cost the company credits that could have been better used elsewhere. %REWARD_MONEY() credits have been moved to your account. Go away.")
				ACTIVATEDIALOGTRIGGER(2)
				ENDDIALOG()
			end
	NODE(3)
		TAKEQUESTITEM(91)
			if (result==0) then
				SAY("Hey slick, I really need the package. Like, now. Please hurry and get it for me.")
				SAY("Bugger me. Didn't they tell you I need the package in order to continue the work here? Get the package or else I don't know what I'll do to you!")
				SAY("Yeah, I need that package pretty urgently. So please go and get it.")
				SAY("I could use that package...on the other hand, I get paid by the hour. So take your time...")
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
		SAY("Look, I have to work for a living. Unless you do to, I suggest you get out of here. Have a nice day.")
		SAY("Well, if you change your mind then I'll be waiting right here.")
		SAY("Ok. I am sure there are others that need the creds. If you don't have business here I suggest you leave. Have a nice day.")
		ENDDIALOG()
	NODE(5)
		SAY("What the hell do you want here? I got the packet, now go back to %NPC_NAME(0) to recieve your reward.")
		SAY("Thanks for delivering this package. Now go back to %NPC_NAME(0) to recieve your reward.") 
		ENDDIALOG()
end
