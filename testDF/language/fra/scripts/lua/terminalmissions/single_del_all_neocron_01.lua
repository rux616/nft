--************************
--name   : SINGLE_DEL_ALL_NEOCRON_01.lua
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
		SAY("Good luck for ... whatever you do.")
		SAY("Please visit us again.")
		SAY("Goodbye, I too have more pressing business to attend to.")
		SAY("Goodbye. Maybe next time you will be interested in a Job.")
		ENDDIALOG()
	NODE(2)
		SAY("The delivery contains special replacement items for ion accelerators. First you have to collect them from %NPC_NAME(1) in the %NPC_WORLD(1) section.")
		SAY("The delivery is about the transport of fragile machinery parts. But first you should get them in the %NPC_NAME(1) district from %NPC_WORLD(1). You will receive further information there as well. ")
		SAY("We need you for a fast delivery. In order to do this you must contact %NPC_NAME(1) in the %NPC_WORLD(1) section and get instructions as well as the package.")
		
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(3)	
		ENDDIALOG()
	NODE(3)
		SAY("You will get the package from %NPC_NAME(1). Go and see him.")
		SAY("We had an agreement, I thought, that you will take care of the job.")
		SAY("You should really do your assignment.")
		ENDDIALOG()
	NODE(4)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("What do you want from me? Do I know you?")
--NEW
			ANSWER("Doesn't matter, goodbye.")
--NEWEND
			ENDDIALOG()
		else
			GIVEQUESTITEM(99)
			SAY("I have already been informed about your arrival. Bring this package to %NPC_NAME(2)in the %NPC_WORLD(2) district.")
			SAY("Be very careful with this delivery. The parts are very fragile. %NPC_NAME(2)in the %NPC_WORLD(2) district is probably already waiting.")
			SAY("%NPC_NAME(2)in the %NPC_WORLD(2) district awaits this package. I hope you know how dangerous this stuff is.")
			ACTIVATEDIALOGTRIGGER(1)
			SETNEXTDIALOGSTATE(5)
			ENDDIALOG()
		end
	NODE(5)
		SAY("You still have the package. Go and bring it to its destination.")
		SAY("You should not waste that much time.")
		SAY("What are you doing here? Do your assignment.")
		SAY("I would like to see you pursuing your work.")
		ENDDIALOG()
	NODE(6)
		--Person 2
		TAKEQUESTITEM(99)
		if(result==0)then
			SAY("Are you the delivery man? Where is the package?")
			SAY("Why do you approach me without the delivery? This does not make sense.")
			SAY("I am already waiting for this delivery for a considerable time. I do not feel like waiting for much longer.")
			ENDDIALOG()
		else
			SAY("Thank you, this package will help us. I don't have much time, the experiment awaits. Here are your %REWARD_MONEY() credits.")
			SAY("Finally a reliable delivery man. As promised, here are your %REWARD_MONEY() credits reward.")
			SAY("Finally we can continue with the experiments. Of course you shall receive your %REWARD_MONEY() credits.")
			ACTIVATEDIALOGTRIGGER(2)
			ENDDIALOG()
		end
end