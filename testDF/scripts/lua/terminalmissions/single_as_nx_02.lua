--************************
--name   : SINGLE_AS_NX_02.lua
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
			if (result==1) then -- Player is Man
				SAY("NEXT, how can I help you, sir?")
				SAY("NEXT, where do you want to go today, sir?")
				SAY("Hello there. Come about the contract, sir?")
				SAY("Welcome to Neocron Exploration Technology Inc. How can I help you, sir?")
				SAY("G'day to you, sir. We here at NEXT could use your help, if you are interested.")
				
				ANSWER("I am just looking around. Thanks.",1)
				ANSWER("What can you tell me about this place?",1)
				ANSWER("Hey. What is this place?",1)
				ANSWER("Oh sorry, I thought you were someone else.",1)
				ANSWER("Yeah, I'm here about the contract.",2)
				ANSWER("Hey, I heard you needed the services of a trouble-shooter.",2)
				ANSWER("I'm here for an assignment I took on the NEXT terminal.",2)

			else    -- Player is a Woman
				SAY("NEXT, how can I help you, madame?")
				SAY("NEXT, where do you want to go today, ma'am?")
				SAY("Well, hello there. Come about the contract, madame?")
				SAY("Welcome to Neocron Exploration Technology Inc. How can I help you, ma'am?")
				SAY("G'day to you, madame. We here at NEXT could use your help, if you are interested.")
				
				ANSWER("I am just looking around. Thanks.",1)
				ANSWER("What can you tell me about this place?",1)
				ANSWER("Nice place here. What do you do here?",1)
				ANSWER("Pardon me, I thought you were someone else.",1)
				ANSWER("Yes, I am here about the contract.",2)
				ANSWER("The NEXT terminal referred me to you regarding a termination assignment.",2)
			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Thank you for visiting NEXT. Have a nice day, sir.")
				SAY("Sir, I am a bit busy. If you don't have any business with NEXT I will have to ask you to leave.")
				SAY("Sir, for general information please consult the terminals. Bye.")
				SAY("Thank you, sir. Have a nice day.")
				ENDDIALOG()
			else
				SAY("Thank you for the visit. Have a nice day, ma'am.")
				SAY("Listen, I am trying to work here. Have a nice day.")
				SAY("Please, for general information please consult the terminals. Bye.")
				SAY("Thank you, ma'am. Have a nice day.")
				ENDDIALOG()
			end
	NODE(2) -- Giving Mission
			SAY("This bastisch named %NPC_NAME(1) has stolen one of our experimental tanks, naturally, he has to die for that. You find the target somewhere in %NPC_WORLD(1). Kill him, solid, and get back here afterwards.")
			SAY("Ok, this friggin slug named %NPC_NAME(1) stole one of our experimental vehicles. Located in %NPC_WORLD(1), we'd like the CopBots to find him flatlined. Return here when you have taken care of the matter.")
			SAY("Runner. Your target is a bastisch of a thief named %NPC_NAME(1). Go to %NPC_WORLD(1), the target should be there. Return here when the slug has been flatlined.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
		
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- Mission is not accomplished
				SAY("%NPC_NAME(1) is still breathing. Last I remember, we agreed he shouldn't be. Deal with it.")
				SAY("%NPC_NAME(1) has lived long enough... agreed?")
				SAY("Look, the target is still alive. NEXT wants him dead, so flatline the bugger.")
				SAY("Please don't come back until %NPC_NAME(1) has been taken care off.")
				ENDDIALOG()
			else -- Mission was accomplished
				SAY("Good work! The bastisch slug is dead. Here are your %REWARD_MONEY() credits. Looking forward to working with you again.")
				SAY("You have returned. Well done! Your successful flatlining of the target has resulted %REWARD_MONEY() credits moved to your acccount. NEXT is grateful for your help in this matter. Have a nice day.")
				SAY("Runner. We have been informed that the mark has been terminated. %REWARD_MONEY() credits have been moved to your account. Please check our terminal for more assignments.")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
						
		
			
