--************************
--name   : SINGLE_AS_CA_01.lua
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
				SAY("CityAdmin, do you need assistance, Ma'am?")
				SAY("Hello there. Come about the job, madame?")
				SAY("Welcome to the CityAdministration. How can I help you, Ma'am?")
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
			SAY("This mission is classified Secret. Your target is %NPC_NAME(1), a traitor to the people located at %NPC_WORLD(1). This is a covert assassination, so don't draw too much attention to yourself. Return to me for debriefing when he is terminated.")
			SAY("Runner, this is a Secret mission. %NPC_NAME(1), a traitor to the city has outlived their life expectency. The target is located in %NPC_WORLD(1). Terminate without drawing attention to yourself and then return to me for debriefing.")
			SAY("Runner, this is a mission of covert nature, classified Secret. Your target is %NPC_NAME(1), a traitor to the people located at %NPC_WORLD(1). Take the target out discretely and then return to me for debriefing.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
		
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- Mission is not accomplished
				SAY("Surveillance reports that the traitor %NPC_NAME(1) is still alive. Flatline the bastard in the name of Reeza and the people!")
				SAY("Runner, you have not completed the mission. See to it.")
				SAY("Runner, %NPC_NAME(1) still has a pulse according to my intel. Find and eliminate.")
				SAY("Intel shows you have not yet completed the mission. See to it, for your beloved leader and for the people!")
				ENDDIALOG()
			else -- Mission was accomplished
				SAY("Surveillance tells me you have completed the mission. The standard %REWARD_MONEY() credit reward has been moved to your account. The CityAdmin thanks you for doing your duty.")
				SAY("Runner, reports show that %NPC_NAME(1) has flatlined. Well done. The standard %REWARD_MONEY() credit reward has been moved to your acccount. For Reeza!")
				SAY("Runner, well done. %NPC_NAME(1) has been collected and found DOA. The standard %REWARD_MONEY() credit reward has been moved to your account. Thank you for protecting the city for the people!")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
						
		
			
