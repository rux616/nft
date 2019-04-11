--************************
--name   : SINGLE_AS_DRE_01.lua
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
			if (result==1) then -- Player is Man:
				SAY("Good day, sir. Do you require assistance?")
				SAY("Hello, sir. May I help you?")
				SAY("Greetings, sir.")
				SAY("Yes? How can I help you, sir?")
				SAY("Delivering or picking up? Oh, sorry. How may I be of assistance, sir?")
				
				ANSWER("I am just looking around. Thanks.",1)
				ANSWER("What can you tell me about this place?",1)
				ANSWER("Yeah... what is this place?",1)
				ANSWER("Sorry, I thought you were someone else.",1)
				ANSWER("I am here about... a job.",2)
				ANSWER("Yeah, I'm here about a flatline contract.",2)
				ANSWER("Hi, I heard you had a termination contract open.",2)
				ANSWER("I'm here for an assignment I took on the Diamond Real-Estate terminal.",2)

			else    -- Player is a Woman:
				SAY("Welcome, miss. What can I do for you?")
				SAY("Hello there, miss, how may I help you?")
				SAY("Greetings, miss. May I help you?")
				SAY("Well now, how can I help you?")
				SAY("Yes, yes. What can I do for you, miss?")
				
				ANSWER("I am just looking around. Thanks.",1)
				ANSWER("What can you tell me about this place?",1)
				ANSWER("Nice place. What can I do here?",1)
				ANSWER("Oh sorry, I thought you were someone else.",1)
				ANSWER("I am here about the termination contract.",2)
				ANSWER("The Diamond Real-Estate terminal referred me to you regarding a termination assignment.",2)
				ANSWER("Hi, I'm here about the flatline contract.",2)
				ANSWER("I'm here for an assignment I took on the Diamond Real-Estate terminal.",2)
			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Please don´t waste my time. I am a busy and important person. Have a nice day.")
				SAY("Listen buddy, I don't have time for this. Get lost... sir.")
				SAY("Sir, for general information please consult the terminals. Good day.")
				SAY("Thank you. Have a nice day.")
				ENDDIALOG()
			else
				SAY("Don´t waste my time, lady. I am very busy. Have a nice day.")
				SAY("Listen, I am trying to work here. Please be on your way.")
				SAY("Please, for general information please consult the terminals. Good day to you.")
				SAY("Thank you, ma'am. Have a nice day.")
				ENDDIALOG()
			end
	NODE(2) -- Giving mission
			SAY("About time. Your mark is %NPC_NAME(1), a troublesome tenant that needs permanent eviction. The target is located in %NPC_WORLD(1). Terminate the target without to much fuzz and return to me for a debriefing. If you are caught, we will deny all knowledge.")
			SAY("Good, let's cut the chit-chat. This is a flatlining of a troublesome tenant, a permanent solution to a temporary problemn. Locate the mark, %NPC_NAME(1) in %NPC_WORLD(1) and kill them dead. Make it look like a mugging or regular assault. The next time I see you %NPC_NAME(1) should be RIP'ed.")
			SAY("Ah yes, Runner. I'm glad you came. The problem, a disruptive tenant, is named %NPC_NAME(1). The solution is termination. The target lives in %NPC_WORLD(1). I am sure you understand the covert nature of this assignment. Return here when the target has been flatlined.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- mission is not accomplished
				SAY("What are you doing here? %NPC_NAME(1) is still active. Now please, get going and get the job done.")
				SAY("Runner, don't you have a problem to take care of? Intelligence indicates that %NPC_NAME(1) is still in %NPC_WORLD(1). Now, get the job done.")
				SAY("Look, %NPC_NAME(1) is still alive. Stop mucking about and get the job done instead!")
				SAY("What the blazers are you doing here? I strongly advise you to complete your contracted assignment or you may find yourself in a world of hurt.")
				ENDDIALOG()
			else -- mission was accomplished
				SAY("Congratulations on a job well done, Runner.  Pleasure doing business with a proffesional like yourself.  Here are your %REWARD_MONEY() credits. Looking forward to working with you again.")
				SAY("Ah, its you. Well done! Your sucessful flatlining of %NPC_NAME(1) has resulted %REWARD_MONEY() credits deposited into your acccount. Diamond Real-Estate is grateful for your profesionalism. Check our terminal for information on more jobs. Have a nice day.")
				SAY("Runner, congratulations. We have been informed that %NPC_NAME(1) has been terminated. %REWARD_MONEY() credits have been transfered to the specified account. We at Diamond Real-Estate are grateful for your assistance, please check our terminal for more assignments. Good day.")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
						
		
			
