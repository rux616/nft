--************************
--name   : SINGLE_AG_FA_01.lua
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
		SAY("Hello, what can I do for you?")
		SAY("Greetings, how can I help you?")
		SAY("Yes? How can I help you?")
		SAY("Do you need anything?")
		
		ANSWER("Yeah, I applied for a vermin extermination job.",1)
		ANSWER("The terminal told me to come here for a vermin extermination job.",1)
		ANSWER("Never mind. Bye.",3)
	NODE(1)
		SAY("Yes... normally they aren't a problem, but recently %TARGET_NPCNAME(0) have been giving us a lot of trouble. We need you to eliminate at least %TARGET_VALUE(0,1) of them. You should be able to find plenty of them around. Return here for payment.")
		SAY("Yeah, you've probably noticed an increase in the number of %TARGET_NPCNAME(0). We're still running tests to find out where there are so many of them out there. Anyway, what we need you to do is kill %TARGET_VALUE(0,1) of them. We're trying to limit their numbers while we investigate.")
		SAY("Finally... we have a major pest problem on our hands. Our automated defenses can't get all of them because they're out of range. That's why we need you to kill %TARGET_VALUE(0,1) of %TARGET_NPCNAME(0). Return here when you've completed the mission.")
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				SAY("I'd like to chat, but we both have jobs to do. Speaking of which... shouldn't you be off killing something?")
				SAY("For this mission, none of the money is up front. You have to finish the job before you get paid.")
				SAY("You haven't killed enough yet. Come back when you have.")
				SAY("Did you take a wrong turn or something? You won't find any of those creatures in here...")
				ENDDIALOG()
			else
				SAY("Good work. Here's your money, it should come to %REWARD_MONEY() credits. If you want any more jobs, the terminal is always a good place to find them.")
				SAY("Nice job. That should keep them at bay for a little bit... %REWARD_MONEY() credits have been deposited in your account. Good luck.")
				SAY("Excellent. Here's the %REWARD_MONEY() credits for the job. We could always use a few extra people like you. If you're interested in any more jobs, try the terminal.")
				ACTIVATEDIALOGTRIGGER(1)
				ENDDIALOG()
			end
	NODE(3)
		SAY("Bye.")
		SAY("I'm busy right now. If you aren't here for anything, find someone else to talk to.")
		SAY("Come back when you know what you want. Bye")
		SAY("If you don't mind, I'm waiting for someone to do some pest control. Bye.")
		ENDDIALOG()
	
end
