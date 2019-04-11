--************************
--name   : SINGLE_AS_BT_01.lua
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
				SAY("Welcome, sir. What can I do for you?")
				SAY("Hello, sir.  May I help you?")
				SAY("Greetings, sir. May I help you?")
				
				ANSWER("I am just looking around. Thanks.",1)
				ANSWER("What can you tell me about this place?",1)
				ANSWER("Nice place here. What can I do here?",1)
				ANSWER("Sorry, I thought you were someone else.",1)
				ANSWER("I am here about a liquidation assignment.",2)
				ANSWER("The BioTec terminal referred me to you regarding a liquidation assignment.",2)
				ANSWER("Hi, I'm here about a liquidation assignment.",2)
				ANSWER("I'm here for an assignment I took on the BioTec terminal.",2)

			else    -- Player is a Woman:
				SAY("Welcome, miss. What can I do for you?")
				SAY("Hello miss, how may I help you?")
				SAY("Greetings, miss. May I help you?")
				
				ANSWER("I am just looking around. Thanks.",1)
				ANSWER("What can you tell me about this place?",1)
				ANSWER("Nice place here. What can I do here?",1)
				ANSWER("Sorry, I thought you were someone else.",1)
				ANSWER("I am here about a liquidation assignment.",2)
				ANSWER("The BioTec terminal referred me to you regarding a liquidation assignment.",2)
				ANSWER("Hi, I'm here about a liquidation assignment.",2)
				ANSWER("I'm here for an assignment I took on the BioTec terminal.",2)
			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Please don´t waste my time. I am very busy. Have a nice day.")
				SAY("I don´t have time for idle chat. Please leave now, sir!")
				SAY("Sir, do you think I have time for a smalltalk?  Please leave.")
				ENDDIALOG()
			else
				SAY("Don´t waste my time, lady. I am very busy. Have a nice day.")
				SAY("Listen, I don´t have time for chit-chat. Please be on your way.")
				SAY("Ma'am, do I look like I have time for a small talk? Please leave.")
				ENDDIALOG()
			end
	NODE(2) -- Giving mission
			SAY("I've been waiting for you. Here are the details for the liquidation:  The asset is %NPC_NAME(1) and is located in %NPC_WORLD(1).  Liquidate the target without attracting attention and return to me for a debriefing. No more questions, talk to no one, just do your job.")
			SAY("Fine, let's get straight to business. This is a liquidation, a solution to a problem. Locate the target asset, %NPC_NAME(1) in %NPC_WORLD(1) and eliminate them. Talk to no one but me; and the next time we talk, I want %NPC_NAME(1) taken care of.")
			SAY("Ah yes, Runner.  I'm glad you came.  The target goes by the name %NPC_NAME(1).  You should be able to find them in %NPC_WORLD(1).  Talk to no one.  Do your job, and when finished, come back and I will debrief you.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
		
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- mission is not accomplished
				SAY("What are you doing here?  Our intelligence indicates that you haven't yet completed your assignment.  Now please, get going.")
				SAY("Runner, I believe you have an assignment to attend to. Intelligence indicates that the target is still in %NPC_WORLD(1). Now please, get going.")
				SAY("Back already? We know that the target is still alive. Please, get moving and do what we are paying you to do.")
				SAY("What in the hell are you doing here? I strongly advise you to complete your assigned liquidation or you may find yourself in more trouble than you!")
				ENDDIALOG()
			else -- mission was accomplished
				SAY("Welcome back and congratulations, Runner. We're glad that you are on our side. Here are your %REWARD_MONEY() credits. Please keep an eye on the BioTech terminal for more jobs. Have a nice day.")
				SAY("Runner, good to see you again. Your successful liquidation has net you %REWARD_MONEY() credits.  BioTech certainly appreciates your work and we look forward to working with you again soon. Check our terminal for information on more jobs. Have a nice day.")
				SAY("Runner, congratulations. Our intelligence indicates that your assignment was carried to completion. Your %REWARD_MONEY() credits are well deserved. BioTech welcomes your continued support, please try our terminal for access to more assignments. Have a nice day.")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
						
		
			
