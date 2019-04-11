--************************
--name   : SINGLE_DEL_FA_02.lua
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
		SAY("Welcome, I work for the Fallen Angels. How can I help you?")
		SAY("What the Fallen Angels help you with friend?")
		SAY("What would you like, Runner?")
		SAY("Do you need anything?")
		
		ANSWER("I was checking the Terms, you got something you need delivered, right?",1)
		ANSWER("I was checking the Terms and thought I would apply for the job.",1)
		ANSWER("It's OK. I don't think I should be here.",4)
	NODE(1)
		GIVEQUESTITEM(91)
		SAY("Only free minds can free society. For that reason, we are currently producing leaflets so that people can be informed about what it currently happening to the people of Neocron. Please take this package to %NPC_WORLD(1) and give it to %NPC_NAME(1), this is vital to Fallen Angels. Please take care, and before I forget, return to me and I will provide you with payment.")
		SAY("Runner, head quickly to %NPC_WORLD(1) and make sure %NPC_NAME(1) gets this package. Within the package you are carrying is a number of promotional leaflets that the people of Neocron will be issued by a distribution agent. Please hurry as this could mean the growth or decline in the popularity of Fallen Angels. Hurry, Runner. Return to me for a reward.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()	
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(1)
			if (result==0) then
				SAY("Please go and complete your task, Runner.")
				SAY("It is vital that package is delivered to our agent in %NPC_WORLD(1), please hurry!")
				SAY("I have vital work that needs done, I will talk to you later.")
				SAY("You know what to do! So go do it.")
				ENDDIALOG()
			else
				SAY("Swift work, here, take these %REWARD_MONEY()credits and check the Terms for supplementary employment. Thank you.")
				SAY("Fine work. That should help the individuals of Neocron. These %REWARD_MONEY() credits have been deposited in your financial account. Excellent luck in the future, Runner, and please check the Terms soon.")
				SAY("Superb. Here's the %REWARD_MONEY() credits for the job. Check the workstation for more employment, Runner, and thank you.")
				ACTIVATEDIALOGTRIGGER(2)
				ENDDIALOG()
			end
	NODE(3)
		TAKEQUESTITEM(91)
			if (result==0) then
				SAY("I am still waiting for that package...")
				SAY("Ah, sorry. You were supposed to deliver a package for me? Could you please hurry up and get it!")
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
		SAY("Bye.")
		SAY("I'm busy right now. If you aren't here for anything, find someone else to talk to.")
		SAY("Come back when you know what you want. Bye")
		SAY("If you don't mind, I'm waiting for someone to do some tasks. Bye.")
		ENDDIALOG()
	NODE(5)
		SAY("What the hell do you want here? I got the packet, now go back to %NPC_NAME(0) to recieve your reward")
		SAY("Thanks for delivering this package. Now go back to %NPC_NAME(0) to recieve your reward.") 
		ENDDIALOG()
end
