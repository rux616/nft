--************************
--name   : SINGLE_DEL_DRE_01.lua
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
		SAY("I need this package urgently delivered to %NPC_NAME(1) in %NPC_WORLD(1). The package should have been there yesterday, so you better be wearing your running shoes. Now, get going!")
		SAY("Hello Runner. I have an urgent delivery for you. A tenant named %NPC_NAME(1) is waiting for this package. You will find him in %NPC_WORLD(1). Get this to him as fast as you can and then return to me.")
		SAY("Ah yes, I'm glad you came. %NPC_NAME(1), one of our tenants, needs this package urgently. He is currently at %NPC_WORLD(1). Please hurry and then return to me for your reward.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(1)
			if (result==0) then
				SAY("What are you doing here? You must deliver the package in order to get the reward. So hop to it.")
				SAY("Runner, I just got a call from %NPC_NAME(1) stating that the package hadn't been delivered yet. You better hurry up.")
				SAY("Look, %NPC_NAME(1) is still waiting. Stop mucking about and get the job done!")
				SAY("What the blazes are you doing here? Don't try and tell me you have already delivered because I know you haven't. So get to it!")
				ENDDIALOG()
			else
				SAY("Well done. The %REWARD_MONEY() credits have been moved to your account. Diamond Real-Estate is thankful for your assistance.")
				SAY("Thank you. That tenant has been calling us by the half-hour about that package. Here, have %REWARD_MONEY() credits for the delivery.")
				SAY("Hello again. I have recieved confirmation about the delivery and %REWARD_MONEY() credits have been moved to your account. Have a nice day.")
				SAY("Welcome back. The tenant called and confirmed the drop. %REWARD_MONEY() credits have been moved to your account. We are thankful for your assistance.")
				SAY("You sure took your own sweet time. Like we have nothing better to do here... %REWARD_MONEY() credits have been moved to your account. That is all, you may leave.")
				ACTIVATEDIALOGTRIGGER(2)
				ENDDIALOG()
			end
	NODE(3)
		TAKEQUESTITEM(91)
			if (result==0) then
				SAY("I knew it! Those buggers at the Diamond admin are morons. They can't do anything right. Go get my package!!")
				SAY("Look, %NPC_NAME(0) said the package should be delivered yesterday! Do you plan to deliver a package or not?!")
				SAY("This figures. First they screw me on the phone and now they screw me with the delivery. Either you get my package or I am reporting you for theft! I know my rights!!")
				ENDDIALOG()
			else	
				SAY("Thank you, thank you, thank you! Glad to see Diamond has at least a couple of competent people working for them. %NPC_NAME(0) will pay you for the delivery.")
				SAY("About time. They promised me I'd have it yesterday! %NPC_NAME(0) probably has some credits waiting for you.")
				SAY("Is that the package from %NPC_NAME(0), that should have been delivered yesterday? Morons and idiots the lot. They will have to pay you for this, cause I sure as hell won't.")
				SAY("Be happy I didn't shoot you for being so late. Hand it over! That idiot %NPC_NAME(0) is going to have to pay you because I sure won't.")
				SAY("The deliveryman! Thank you for getting this out of the dreadful Diamond offices. I am sure %NPC_NAME(0) has a reward for you.")
				SAY("Took you long enough to get it delivered. %NPC_NAME(0) probably has credits for you.")
				ACTIVATEDIALOGTRIGGER(1)
				SETNEXTDIALOGSTATE(5)	
				ENDDIALOG()
			end
	NODE(4)
		SAY("Look, I have to work for a living. Unless you do too, I suggest you get out of here. Have a nice day.")
		SAY("Well, if you change your mind then I`ll be waiting right here.")
		SAY("All right, fine, whatever. Now go before I have you thrown out. Have a nice day.")
		ENDDIALOG()
	NODE(5)
		SAY("What the hell do you want here? I got the packet, now go back to %NPC_NAME(0) to recieve your reward.")
		SAY("Thanks for delivering this package. Now go back to %NPC_NAME(0) to recieve your reward.") 

		ENDDIALOG()
end
