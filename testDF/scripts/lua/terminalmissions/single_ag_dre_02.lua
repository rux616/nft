--************************
--name   : SINGLE_AG_DRE_02.lua
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
				SAY("Hello, sir. Can I help you?")
				SAY("Diamond Real-Estate. How can I help you, sir?")
				SAY("Yes? What can I do for you, sir?")
				SAY("Delivering or picking up? Oh, hrmm. May I be of assistance, sir?")
				
				ANSWER("I am just looking around. Thanks.",1)
				ANSWER("What can you tell me about this place?",1)
				ANSWER("Hey. What is this place?",1)
				ANSWER("Oh sorry, I thought you were someone else.",1)
				ANSWER("I have come about a job.",2)
				ANSWER("Yeah, I'm here about the extermination contract.",2)
				ANSWER("Hi, I heard you required competent muscle for an extermination.",2)
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
				ANSWER("I am here about a termination...",2)
				ANSWER("The Diamond Real-Estate terminal referred me to you regarding a termination assignment.",2)
				ANSWER("Hi, I'm here about the flatline contract.",2)
				ANSWER("I'm here for an assignment I took on the Diamond Real-Estate terminal.",2)
			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Please don´t waste my time. I actually work for a living. Have a nice day.")
				SAY("Listen buddy, I don't have time for this. Get lost out of here, sir.")
				SAY("Sir, for general information please consult the terminals. Good day.")
				SAY("Thank you. Have a nice day.")
				ENDDIALOG()
			else
				SAY("Don't waste my time, Lady. I actually have to work for my pay check. Have a nice day.")
				SAY("Listen, I am trying to work here. Please leave me alone.")
				SAY("Please, for general information please consult the terminals. Good day to you.")
				SAY("Thank you, ma'am. Have a nice day.")
				ENDDIALOG()
			end
	NODE(2) -- Giving mission
			SAY("Well then. The population of %TARGET_NPCNAME(0) has gotten way to big and we need you to kill at least %TARGET_VALUE(0,1) in and around the faction area. Take them out and get back here afterwards.")
			SAY("Great, its you! Several %TARGET_NPCNAME(0) have been reported in the faction area by a Mr Biesehel . Destroy %TARGET_VALUE(0,1) of them and return to me for your reward.")
			SAY("Finally a Runner. Nice to see you. We have a sudden increase of %TARGET_NPCNAME(0) in the area. To protect our real estate we need you to destroy %TARGET_VALUE(0,1) of them. Return here when you are done.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- mission is not accomplished
				SAY("We still have complaints from a couple of tenants and clients. You can't have killed enough of the %TARGET_NPCNAME(0). Make sure you take out the rest or you will not get any reward.")
				SAY("Runner, we still have reports of problems in the area. Get out there and exterminate.")
				SAY("Oh, it's you again. You better get out there as fast as possible and get the job done, Mr Greb Tluh is keeping the lines warm with complaints.")
				SAY("What the blazers are you doing here? Didn't we hire you to take care of a problem? Well? Then go kill some %TARGET_NPCNAME(0)!")
				ENDDIALOG()
			else -- mission was accomplished
				SAY("Hello again. We have just confirmated that the problem has been solved. Here are the %REWARD_MONEY() credits we agreed upon. Have a nice day and please check back for more jobs.")
				SAY("Excellent work! Mr Greb Tluh just called and said the problem was solved. Thanks for getting him off my back! A reward of %REWARD_MONEY() credits has been deposited into your acccount. Have a good day, I know I will!")
				SAY("Runner, congratulations. Security has reported the area to be clear of %TARGET_NPCNAME(0). %REWARD_MONEY() credits have been transferred to the specified account. Diamond Real-Estate is grateful for your assistance. Do check our terminal for more assignments. Good day.")
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end

