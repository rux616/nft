--************************
--name   : SINGLE_AG_CA_02.lua
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
-- single_ag_cityadmin
-- description single_ag_02

	NODE(0)
		GENDERCHECK()
			if (result==1) then -- Player is Man:
				SAY("CityAdmin, how can I help you, sir?")
				SAY("CityAdmin, do you need assistance, sir?")
				SAY("Hello there. Come about the job, sir?")
				SAY("Welcome to the City Administration. How can I help you, sir?")
				SAY("Greetings, sir. You are required to assist your government in an urgent matter.")
				
				ANSWER("I am just looking around. Thanks.",1)
				ANSWER("What can you tell me about this place?",1)
				ANSWER("Hey. What is this place?",1)
				ANSWER("Oh sorry, I thought you were someone else.",1)
				ANSWER("Yeah, I'm here about the contract.",2)
				ANSWER("OK, I heard you required a competent trouble-shooter.",2)
				ANSWER("All right, I'm here for an assignment I took on the CityAdmin terminal.",2)

			else    -- Player is a Woman:
				SAY("CityAdmin, how can I help you, madame?")
				SAY("CityAdmin, do you need assistance, ma'am?")
				SAY("Hello there. Come about the job, madame?")
				SAY("Welcome to the CityAdministration. How can I help you, ma'am?")
				SAY("Greetings, madame. You are required to assist your government in an urgent matter.")
				
				ANSWER("I am just looking around. Thanks.",1)
				ANSWER("What can you tell me about this place?",1)
				ANSWER("Nice place here. What do you do here?",1)
				ANSWER("Pardon me, I thought you were someone else.",1)
				ANSWER("Yes, I am here about a job.",2)
				ANSWER("Hi, the CityAdmin terminal referred me to you regarding an assignment.",2)

			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("The CityAdmin wishes you a pleasant day.")
				SAY("Have a good day. For the people!")
				SAY("Sir, for general information about the CityAdmin please consult the terminals. We and the great Reeza wish you a good day!")
				SAY("Thank you, sir. Have a nice day.")
				ENDDIALOG()
			else
				SAY("The CityAdmin wishes you a pleasant day.")
				SAY("Have a good day. For the people!")
				SAY("Madame, for general information about the CityAdmin please consult the terminals. We and the great Reeza wish you a good day!")
				SAY("Thank you, m'am. Have a nice day.")
				ENDDIALOG()
			end
	NODE(2) -- Giving Mission
			SAY("Mission: A pack of %TARGET_NPCNAME(0) have been causing some trouble. Task: Exterminate %TARGET_VALUE(0,1) of the %TARGET_NPCNAME(0). Avoid civilian casualties at all costs.")
			SAY("Runner, your mission is as followes. Exterminate %TARGET_VALUE(0,1) of the %TARGET_NPCNAME(0) that are terrorising our citizens. Return here for your reward upon completion.")
			SAY("Runner, we have a search and destroy mission for you. Your targets are a pack of %TARGET_NPCNAME(0). Kill at least %TARGET_VALUE(0,1) of them. Civilian casualties are not acceptable.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- Mission is not accomplished
				SAY("Surveillance reports that there are still too many %TARGET_NPCNAME(0) left. Deal with it.")
				SAY("Runner, you have not completed the mission. Deal with it.")
				SAY("Runner, there are still some %TARGET_NPCNAME(0) left according to my intel. Search out and destroy.")
				SAY("I am to busy to babysit you, Runner. Intel shows you haven't completed the mission. Do it!")
				ENDDIALOG()
			else -- Mission was accomplished
				SAY("Surveillance tells me you have completed the mission. The standard %REWARD_MONEY() credit reward has been moved to your account. CityAdmin thanks you for doing your duty.")
				SAY("Runner, mission accomplished. Well done. The standard %REWARD_MONEY() credit reward has been moved to your acccount. For Reeza!")
				SAY("Runner, well done. The standard %REWARD_MONEY() credit reward has been moved to your account. Thank you for protecting the city in the name of Reeza and for the people!")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
						
		
			

