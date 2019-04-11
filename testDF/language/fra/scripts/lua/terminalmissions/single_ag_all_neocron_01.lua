--************************
--name   : SINGLE_AG_ALL_NEOCRON_01.lua
--ver    : 0.1
--author : Kintama
--date   : 2004/09/09
--lang   : en
--desc   : Recycling Mission for Dome of York
--npc    : 
--************************
--changelog:
--2004/09/09(0.1): Added description
--************************

function DIALOG()
	NODE(0)
		SAY("Hello, how can I help you?")
		SAY("Yes, Runner? Do you have a problem?")
		SAY("What? I am very busy.")
		SAY("What's the matter?") 
		SAY("Yes, I am all yours.")
		SAY("Whatever you want, be quick about it.")
		SAY("I don't believe that I know you.")
		SAY("You are here about the job, right?")
		SAY("A productive day, Runner.")
		SAY("If you have a problem, just ask.")
		
		ANSWER("Yes, I am here because of the job you have...",2)
		ANSWER("I believe you have a job for me.",2)
		ANSWER("Do you have work for me?",2)
		ANSWER("I am here for the job.",2)
		ANSWER("Forget it, Goodbye.",1)
		ANSWER("I didn't want to speak to you in the first place anyway.",1)
		ANSWER("I wanted to talk to somebody else.",1)
		ANSWER("I made up my mind, Bye.",1)
	NODE(1)	
		--Person 0
		SAY("Good luck for ... whatever you do.")
		SAY("Please visit us again.")
		SAY("Goodbye, I too have more pressing business to attend to.")
		SAY("Goodbye. Maybe next time you will be interested in a Job.")
		ENDDIALOG()
	NODE(2)
		--Person 0
		--Auftrag wird erklärt, Mission vergeben
		SAY("I will come straight to the point. There are a lot of critters around. We need you to take care of that.")
		SAY("You will surely have noticed the masses of crawling critters that are roaming the area, right?")
		SAY("We still have machinery that needs to be repaired almost every hour since those critters destroy almost everything.")
		
		ANSWER("And what do I have to do?",4)
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Didn't we send you out to kill critters?")
			SAY("Don't you have some work to do?")
		else
			SAY("Thank you for your cooperation. Here are your %REWARD_MONEY() credits reward.")
			SAY("Well done, Runner. Here is your payment, %REWARD_MONEY() credits.")
			SAY("Thank you for your services. %REWARD_MONEY() credits were promised as payment, right?")
			ACTIVATEDIALOGTRIGGER(1)
			ENDDIALOG()
		end
	NODE(4)
		SAY("Your assignment is to kill %TARGET_VALUE(0,1) %TARGET_NPCNAME(0) and then return to me for your payment.")
		SAY("We need you to exterminate %TARGET_VALUE(0,1) %TARGET_NPCNAME(0) of those little bastards. After that I will have your reward for you.")
		ACTIVATEDIALOGTRIGGER(2)
		SETNEXTDIALOGSTATE(3)
		ENDDIALOG()
end