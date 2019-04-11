--************************
--name   : SINGLE_AG_NX_02.lua
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
				ANSWER("Hey, I heard you required competent muscle.",2)
				ANSWER("I'm here for an assignment I took on the NEXT terminal.",2)

			else    -- Player is a Woman:
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
				ANSWER("The NEXT terminal referred me to you regarding an extermination assignment.",2)

			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("We at NEXT appretiate the visit and bid you farewell.")
				SAY("Listen friend, I don't have time for this. G'day, sir.")
				SAY("Sir, for general information about NEXT please consult the terminals. Good day.")
				SAY("Thank you. Have a nice day.")
				ENDDIALOG()
			else
				SAY("This is the NEXT office. I work here. This means, I don't have time for chit-chat. G'day.")
				SAY("Listen, I am working here. Please be on your way.")
				SAY("Please, for general information about NEXT please consult the terminals. Good day to you.")
				SAY("Thank you, m'am. Have a nice day.")
				ENDDIALOG()
			end
	NODE(2) -- Giving Mission
			SAY("Recently the NEXT grounds have been littered with %TARGET_NPCNAME(0) roadkill. We need you to decimate their numbers by %TARGET_VALUE(0,1), thus decreasing the risk of them damaging our vehicles. Return here when you are done.")
			SAY("Listen up. Packs of %TARGET_NPCNAME(0) in the faction area have been causing some... issues. Exterminate %TARGET_VALUE(0,1) of them and come back here for your reward.")
			SAY("Runner, packs of %TARGET_NPCNAME(0) have been reported in the faction area. Take out %TARGET_VALUE(0,1) of them. Return to me when you are done.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- Mission is not accomplished
				SAY("Sensors still show a too high concentration of %TARGET_NPCNAME(0) in the area. You better take out a couple more.")
				SAY("Runner, there are still a couple of them left. Exterminate the buggers.")
				SAY("A message from Sukram, one of our techs, says that there are still some %TARGET_NPCNAME(0) left. Go wipe them out.")
				SAY("I don't have time for this. Go destroy the %TARGET_NPCNAME(0) in the faction area and do it fast.")
				ENDDIALOG()
			else -- Mission was accomplished
				SAY("Ah, good. The problem has been solved. Here are the %REWARD_MONEY() credits we agreed upon. Have a nice day and please check back for more jobs.")
				SAY("Thank you for your assistance. %REWARD_MONEY() credits has been deposited into your acccount. Check your NEXT terminal for information on more jobs.")
				SAY("Runner, the area looks clear, just a couple of lonely blips on my terminal. %REWARD_MONEY() credits have been moved to your account. NEXT thanks you for your help, have a nice day.")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
						
		
			

