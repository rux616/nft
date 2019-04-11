--************************
--name   : SINGLE_AG_TS_01.lua
--ver    : 0.1
--author : Kintama
--date   : 2004/09/08
--lang   : en
--desc   : terminal mission
--npc    : 
--************************
--changelog:
--2004/09/08(0.1): Added description
--************************

function DIALOG()

	NODE(0)
		GENDERCHECK()
			if (result==1) then -- Player is Man:
				SAY("What is your business here, mister?")
				SAY("Hey-o, mister. What can I help you with?")
				SAY("Yes? What is it that you want, Runner?")
				SAY("Welcome to my office. How can I be of assistance, mister...?")
				SAY("Hey-o Runner, you come to see me about a job maybe?")
				
				ANSWER("Oh, I am just looking around. Thanks.",1)
				ANSWER("What can you tell me about this place?",1)
				ANSWER("Hey. What is this place?",1)
				ANSWER("Oh sorry, I thought you were someone else.",1)
				ANSWER("Yes, came regarding the cleaning assignment.",2)
				ANSWER("OK, I heard you required a competent cleaner.",2)
				ANSWER("All right, I'm here for an assignment I took on the Tsunami terminal.",2)

			else    -- Player is a Woman:
				SAY("Hey-o, legs! What a nice suprise. What can I do for you?")
				SAY("Welcome! Step into my office. What can I help you with, legs?")
				SAY("Hey-o. Have you come about the job, Runner?")
				SAY("Hey legs, what can I do you for?")
				SAY("Are you sure you stepepd into the right office? Dancers are recruited down the hall...")
				
				ANSWER("I am just looking around. Thanks.",1)
				ANSWER("What can you tell me about this place?",1)
				ANSWER("Nice place. What do you do here?",1)
				ANSWER("Pardon me, I thought you were someone else.",1)
				ANSWER("Yes, I came about the cleaning job.",2)
				ANSWER("Greetings, the Tsunami terminal referred me to you regarding an assignment.",2)

			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Listen, if you are just going to stand around then go do it in one of the clubs, a'ight?")
				SAY("Either talk business or go away. I am trying to work.")
				SAY("For information about Tsunami you better gock the terminals. Get my meaning?")
				SAY("Good bye, Runner.")
				ENDDIALOG()
			else
				SAY("Listen, if you are just going to stand around then go do it in one of the clubs, a'ight?")
				SAY("You came up here just to look at me? I know I am good-looking, but that's just plain silly... bye.")
				SAY("For information about Tsunami you better gock the terminals. See you later, legs.")
				SAY("A pleasure seeing you. Until we meet again...")
				ENDDIALOG()
			end
	NODE(2) -- Giving Mission
			SAY("Our working women have had encounters with aggressive %TARGET_NPCNAME(0) recently. We need a street samurai like yourself to go out there and do some cleaning, at least %TARGET_VALUE(0,1) of them. Come back here when you are done.")
			SAY("Some of our dancers refuse to work certain areas until we have cleaned up the area of %TARGET_VALUE(0,1). Burn %TARGET_NPCNAME(0) of them in the faction area. Come and see me when you are done.")
			SAY("It seems we are in dire need of a street samurai to do a cleaning job. We have some %TARGET_NPCNAME(0) in this area and we want you to burn at least %TARGET_VALUE(0,1). Come see me when you have finished them off.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- Mission is not accomplished
				SAY("Hey-o, hope you haven't forgotten about the cleaning job. Tsunami don't take kindly to turncoat ronins.")
				SAY("Hey Runner, better hurry up and burn those %TARGET_NPCNAME(0). The natives are getting restless again.")
				SAY("I am to busy to talk to you. Which reminds me, don't you have some %TARGET_NPCNAME(0) to deal with?")
				SAY("Get that cleaning job done or you'll be finding yourself on the wire.")
				ENDDIALOG()
			else -- Mission was accomplished
				SAY("Hey-o, samurai. I have been told you cleaned up good. %REWARD_MONEY() credits will be transferred to your account. Tsunami values its loyal friends, we might have more work for you in the future.")
				SAY("They say you did a good job cleaning up the area. They say, you did it just right, Runner. %REWARD_MONEY() credits have been moved to your acccount for your hard work. Check the terminals for more assignments.")
				SAY("Nice work, Runner. The %REWARD_MONEY() credits have been moved to your account. We at Tsunami are thankful for your assistance.")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
