--************************
--name   : SINGLE_DEL_ALL_DOME_01.lua
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
		SAY("Hello, whats up?")
		SAY("Yes, Runner? I think you got a problem there.")
		SAY("What? I am very busy. Got it?")
		SAY("What's the matter?") 
		SAY("Yes, I am all yours.")
		SAY("Whatever you want, be quick about it. No foolin around.")
		SAY("I've never seen you before.")
		SAY("You are here cause you want a job, right?")
		SAY("Take it easy, let it flow, Runner.")
		SAY("What'cha want?")
		
		ANSWER("You got a job I am interested in.",2)
		ANSWER("I think you got a job for me.",2)
		ANSWER("Need some work done?",2)
		ANSWER("I am here for the job.",2)
		ANSWER("Forget it, Goodbye.",1)
		ANSWER("I didn't want to speak to you in the first place anyway.",1)
		ANSWER("I wanted to talk to somebody else.",1)
		ANSWER("I made up my mind, Bye.",1)
	NODE(1)	
		SAY("Hey, stay out of trouble, right?")
		SAY("Laterz, Runner.")
		SAY("You'd think Ive got something else to do instead of wasting time talking to you. Well, truth is that I ain't.")
		SAY("Might be I've got something for you next time.")
		ENDDIALOG()
	NODE(2)
		SAY("The package has some tech items needed for machinery. Collect em from %NPC_NAME(1) in the %NPC_WORLD(1) section first. You'll get more information there.")
		SAY("Fragile machinery parts must be transported. Real careful, mind. But first get them from %NPC_NAME(1) in the %NPC_WORLD(1) section. You will receive further information there as well. ")
		SAY("We need you for a fast delivery. In order to do this you must contact %%NPC_NAME(1) in the %NPC_WORLD(1) section and get instructions as well as the package.")
		
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(3)	
		ENDDIALOG()
	NODE(3)
		SAY("You will get the package from %NPC_NAME(1). Go and see him.")
		SAY("Thought we had an agreement. Thought you'd do the job. Was I wrong?")
		SAY("You should really do your job.")
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
			SAY("I know, you're here for the package, right? Deliver it to %NPC_NAME(2)in the %NPC_WORLD(2) district.")
			SAY("Careful with this delivery. The parts are very fragile. %NPC_NAME(2)in the %NPC_WORLD(2) district is probably already waiting.")
			SAY("%NPC_NAME(2)in the %NPC_WORLD(2) district is already waiting for some time. Bring the package there, but careful.")
			ACTIVATEDIALOGTRIGGER(1)
			SETNEXTDIALOGSTATE(5)
			ENDDIALOG()
		end
	NODE(5)
		SAY("You still have the package. Go and bring it to its destination.")
		SAY("You should not waste that much time.")
		SAY("What are you doing here? Do your assignment.")
		SAY("I would like to have the job done.")
		ENDDIALOG()
	NODE(6)
		--Person 2
		TAKEQUESTITEM(99)
		if(result==0)then
			SAY("You the delivery boy? Where is the package?")
			SAY("Where's the package? How stupid is that? A delivery without the package.")
			SAY("I am already waiting for this delivery for a considerable time. I do not feel like waiting for much longer.")
			ENDDIALOG()
		else
			SAY("Thanks, that'll help us for a while. No time, got stuff to do. Here are your %REWARD_MONEY() credits.")
			SAY("Finally a reliable delivery man. As promised, here are your %REWARD_MONEY() credits reward.")
			SAY("Great. You just have to wait long enough and before you realise what heppened the package is there. After hours and hours of waiting. %REWARD_MONEY() credits for you, Runner. Next time a bit faster, alright?")
			ACTIVATEDIALOGTRIGGER(2)
			ENDDIALOG()
		end
end