--************************
--name   : SINGLE_DEL_FA_01.lua
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
		SAY("Yes, friend what can I help you with?")
		SAY("Do you have a question to ask me?")
		SAY("Yes? What you need?")
		SAY("Do you need anything?")
		
		ANSWER("Hell yeah, I heard you need something delivered.",1)
		ANSWER("I was checking the Terms and it shows that you need a package delivered. I'll be happy to help.",1)
		ANSWER("It's OK. I don't think I should be here.",4)
	NODE(1)
		GIVEQUESTITEM(91)
		SAY("If it is at all possible, please head towards %NPC_World() and drop of these leaflets about free thinking to our disruption agent. He will then distribute these to the suppressed people of Neocron, bringing new Talent and Technical magic to that of the Fallen Angels. Our Agent is called %NPC_NAME(). Thank you for this service, Runner. You will be provided with a reward upon your return to me. Good luck and remember: only free minds can form a free society.")
		SAY("Runner please make sure that an important shipment is delivered to our circulation agent. This is no simple task as our Agent is currently in %NPC_WORLD() Take great care Runner. We do not want to see you hurt in any way. Once you have successfully completed your task, come back to me here and I will supply you with credits, they will be justly deserved in this matter. Now please leave with these.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(1)
			if (result==0) then
				SAY("Please go and complete your task Runner.")
				SAY("It is vital that package is delivered to our agent %NPC_in %NPC_WORLD(), please hurry ")
				SAY("I have vital work that needs done, I will talk to you later")
				SAY("You know what to do! So go do it")
				ENDDIALOG()
			else
				SAY("Speedy work, here take these %REWARD_MONEY() credits and check the Terms for further work. Thank you.")
				SAY("Nice job. That should help the people of Neocron. These %REWARD_MONEY() credits have been deposited in your account. Good luck.")
				SAY("Excellent. Here's the %REWARD_MONEY() credits for the job. Check the Terminal for more work, Runner, and thank you.")
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
