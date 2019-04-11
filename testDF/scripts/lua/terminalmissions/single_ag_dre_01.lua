--************************
--name   : SINGLE_AG_DRE_01.lua
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
				SAY("Diamond Real-Estate. How can I help you, sir?")
				SAY("Yes? What can I do for you, sir?")
				SAY("Delivering or picking up? Oh, hrmm. May I be of assistance, sir?")
				
				ANSWER("I am just looking around. Thanks.",1)
				ANSWER("What can you tell me about this place?",1)
				ANSWER("Hey. What is this place?",1)
				ANSWER("Oh sorry, I thought you were someone else.",1)
				ANSWER("I have come about a job.",2)
				ANSWER("Yeah, I'm here about an extermination contract.",2)
				ANSWER("Hi, I heard you required competent muscle.",2)
				ANSWER("I'm here for an assignment I took on the Diamond Real-Estate terminal.",2)

			else    -- Player is a Woman:
				SAY("Welcome, miss. What can I do for you?")
				SAY("Hello there, miss, how may I help you?")
				SAY("Diamond Real-Estate. May I help you, miss?")
				SAY("Well now, what have we here. Can I help you, miss?")
				SAY("What can I do for you, miss?")
				
				ANSWER("I am just looking around. Thanks.",1)
				ANSWER("What can you tell me about this place?",1)
				ANSWER("Nice place here. What do you do here?",1)
				ANSWER("Pardon me, I thought you were someone else.",1)
				ANSWER("I am here about an extermination...",2)
				ANSWER("The Diamond Real-Estate terminal referred me to you regarding an extermination assignment.",2)
				ANSWER("Hi, I'm a competent exterminator looking work.",2)
				ANSWER("I'm here for an assignment I took on the Diamond Real-Estate terminal.",2)
			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Please don´t waste my time. I actually work for a living. Have a nice day.")
				SAY("Listen buddy, I don't have time for this. Get lost... sir.")
				SAY("sir, for general information please consult the terminals. Good day.")
				SAY("Thank you. Have a nice day.")
				ENDDIALOG()
			else
				SAY("Don´t waste my time, lady. I actually have to work for my pay-check. Have a nice day.")
				SAY("Listen, I am trying to work here. Please be on your way.")
				SAY("Please, for general information please consult the terminals. Good day to you.")
				SAY("Thank you, ma'am. Have a nice day.")
				ENDDIALOG()
			end
	NODE(2) -- Giving mission
			SAY("Good o'. We need you to terminate %TARGET_VALUE(0,1) of %TARGET_NPCNAME(0) in and around the faction area. Eradicate them and return to me for debriefing.")
			SAY("Finally, the exterminator has arrived! We have a small infestation of %TARGET_NPCNAME(0) in the faction area. Exterminate %TARGET_VALUE(0,1) of them and return to me for your reward.")
			SAY("Ah yes, Runner. Nice to see you. A sudden increase of %TARGET_NPCNAME(0) has been reported in the area. To protect our real estate we need you to exterminate %TARGET_VALUE(0,1) of them. Return to me when you are done.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- mission is not accomplished
				SAY("We still have complaints from numerous tenants. You can't have killed enough of the %TARGET_NPCNAME(0). Get out there and take care of it.")
				SAY("Runner, the area is still crawling. Get out there and exterminate some %TARGET_NPCNAME(0).")
				SAY("Oh, you again. Well, you can't have killed enough of the %TARGET_NPCNAME(0) because we still have reports coming in. Better get out there again...")
				SAY("What the blazes are you doing here? Didn't we hire you to take care of a problem? Well? Then get to it!")
				ENDDIALOG()
			else -- mission was accomplished
				SAY("Ah, good. We have confirmation that the %TARGET_NPCNAME(0) have been killed. Here are the %REWARD_MONEY() credits we agreed upon. Have a nice day and please check back for more jobs.")
				SAY("Well done! Mrs Easeldup and Dinklebin just called and said the problem was solved. Thanks for getting them off my back! A reward of %REWARD_MONEY() credits has been deposited into your account. Check our terminal for information on more jobs. Have a good one!")
				SAY("Runner, congratulations. We have been informed that area has been cleared of %TARGET_NPCNAME(0). %REWARD_MONEY() credits have been transfered to the specified account. We at Diamond Real-Estate are grateful for your assistance, please check our terminal for more assignments. Good day.")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
						
		
			

