--************************
--name   : SINGLE_AS_BT_02.lua
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
		GENDERCHECK()
			if (result==1) then
				SAY("Welcome, sir. What can I do for you?")
				SAY("Yes, sir? How may I help you?")
				SAY("Greetings, sir. May I help you?")
				SAY("Welcome, Runner. What can I do for you?")
				SAY("Yes, Runner? How may I help you?")
				SAY("Greetings, Runner. May I help you?")

				ANSWER("I am just looking around. Thanks.",1)
				ANSWER("I'm sorry, I thought you were someone else. Excuse me.",1)
				ANSWER("I'm here for the wetworks-",2)
				ANSWER("I signed up for an assignment on the BioTech terminal. It was a wetworks-",2)
				ANSWER("The BioTech terminal directed me to you. I'm here for a wetworks-",2)
				ANSWER("I signed up for an assignment on the BioTech terminal. But you already knew that.",4)
				ANSWER("The BioTech terminal directed me to you. Of course, you already knew that.",4)

			else
				SAY("Welcome, Runner. What can I do for you?")
				SAY("Yes, Runner? How may I help you?")
				SAY("Greetings, Runner. May I help you?")
				SAY("Welcome, miss. What can I do for you?")
				SAY("Yes, ma'am? How may I help you?")
				SAY("Greetings, miss. May I help you?")

				ANSWER("I am just looking around. Thanks.",1)
				ANSWER("I'm sorry, I thought you were someone else. Excuse me.",1)
				ANSWER("I'm here for the wetworks-",2)
				ANSWER("I signed up for an assignment on the BioTech terminal. It's a wetworks-",2)
				ANSWER("The BioTech terminal directed me to you. I'm here for a wetworks-",2)
				ANSWER("I signed up for an assignment on the BioTech terminal. But you already knew that.",3)
				ANSWER("The BioTech terminal directed me to you. Of course, you already knew that.",3)
			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Sir, don´t waste my time. I am very busy. Now, have a nice day.")
				SAY("I'm sorry, I don´t have time for any chit-chat. Please leave me alone and have a nice day.")
				ENDDIALOG()
			else
				SAY("Miss, don´t waste my time. I am very busy. Now, have a nice day.")
				SAY("I'm sorry, I don´t have time for any chit-chat. Please leave me alone and have a nice day.")
				ENDDIALOG()
			end
	NODE(2)
		SAY("Please! Don't use that term when talking to me.  Now listen, you cannot talk to anyone other than myself about this assignment.  All you need to know is that the target is named %NPC_NAME(1) and they are located in %NPC_WORLD(1). Please eliminate the target and return to me for debriefing. Move out and do your job.")
		SAY("Please! Don't ever use that term when talking to me.  This is serious business and you cannot talk to anyone but me about this assignment.  Now, let's get to it.  Locate and remove the target, %NPC_NAME(1), in %NPC_WORLD(1). After it's done, return to me.")
		SAY("Runner! You must not use that term when talking to me.  You also will not speak to anyone else about this job. Now, you will go to %NPC_WORLD(1) and eliminate %NPC_NAME(1). Afterwards, return to me for debriefing. Please, go now.")
		SETNEXTDIALOGSTATE(4)
		ENDDIALOG()

	NODE(3)
		SAY("That is correct.  You understand this business.  You therefore understand that you cannot talk to anyone other than me about this assignment. All you need to know is that the target is named %NPC_NAME(1) and they are located in %NPC_WORLD(1). Please eliminate the target and return to me for debriefing. Move out and do your job.")
		SAY("Yes, I do know why you are here.  Locate and remove the target, %NPC_NAME(1), in %NPC_WORLD(1). Talk to no one. After it's done, return to me.")
		SAY("You understand the seriousness of this business and realize that you can tell no one about this job. You will go to %NPC_WORLD(1) and eliminate %NPC_NAME(1). Afterwards, return to me for debriefing. Please, go now.")
		SETNEXTDIALOGSTATE(4)
		ENDDIALOG()

	NODE(4)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				SAY("Runner, what are doing back here? You need to go and do you job. NOW!")
				SAY("What in the hell are you doing back here? I strongly advise to finish your job as soon as possible. You don't want to end up seeing your replacement. Now go!")
				SAY("I told you what you need to do. Stop jabbering and do your job!")
				ENDDIALOG()
			else
				SAY("Welcome back, Runner. You performed very well. Here are your %REWARD_MONEY() credits. You've earned them. Please, check the BioTech terminal for more job offers. We need skilled Runners like you. Remember to keep quiet about the job and have a nice day.")
				SAY("Nice work, Runner. Here are your %REWARD credits. Please, keep an eye on our terminal for further job offers. BioTech should always have a place for you. Now, keep your mouth shut and have a nice day.")
				SAY("Our intelligence indicates that you performed very well, Runner. It seems like you may know what you are doing. BioTech will always be able to use a skilled Runner like yourself. Keep an eye on our terminal, will you? Here is your payment. Keep the assignment's details between you and I and I'm sure we will work together again. Goodbye.")
				ACTIVATEDIALOGTRIGGER(1)
			end
end
						
		
			