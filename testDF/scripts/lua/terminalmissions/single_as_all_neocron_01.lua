--************************
--name   : SINGLE_AS_ALL_NEOCRON_01.lua
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
		--Person vergibt Name einer Kontaktperson
		SAY("This is classified as top secret, understood? Good, go and meet %NPC_NAME(1) in the %NPC_WORLD(1) district. That is your contact.")
		SAY("Officially we will deny that we ever had any dealings with you. The contact will provide you with further details. You can find him in the %NPC_WORLD(1) section, the name is %NPC_NAME(1).")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(3)
		ENDDIALOG()
	NODE(3)
		SAY("You will get more information from the contact person to whom I referred you to.")
		SAY("Please be very discret about this job.")
		ENDDIALOG()
	NODE(4)
		--Person 1 Kontaktperson, nennt Zielperson
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Get lost, I've got better things to do than to talk to every run-down Runner.")
			SAY("Out of my sight.")
			ENDDIALOG()
		else
			SAY("Here is your assignment. Kill %NPC_NAME(2) in the %NPC_WORLD(2) district. Come back to me for the payment.")
			SAY("The target is %NPC_NAME(2) in the %NPC_WORLD(2) section. Return after you finished the target for your reward.")
			SAY("%NPC_NAME(2) in the %NPC_WORLD(2) section needs to be eliminated. I will hand out the reward afterwards.")
			ACTIVATEDIALOGTRIGGER(3)
			SETNEXTDIALOGSTATE(5)
			ENDDIALOG()
		end
	NODE(5)
		--Person 1 Kontaktperson
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("You are not very professional. Back to your assignment. The target is %NPC_NAME(2) in the %NPC_WORLD(2) district.")
			SAY("Why do they send me such an amateur. The assignment awaits you. The target is %NPC_NAME(2) in the %NPC_WORLD(2) district.")
			SAY("Finish off the target. The target is %NPC_NAME(2) in the %NPC_WORLD(2) district.")
			ENDDIALOG()
		else
			SAY("Here are your %REWARD_MONEY() credits. We never saw each other, understood?")
			SAY("A reward of %REWARD_MONEY() credits. And now go, I don't want to be seen talking to you.")
			SAY("Good Job. Here are the promised %REWARD_MONEY() credits.")
			ACTIVATEDIALOGTRIGGER(2)
			ENDDIALOG()
		end
end