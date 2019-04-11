--************************
--name   : SINGLE_AG_TS_02.lua
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
				SAY("You came up here just to look at me? I know I am good-looking, but thats just plain silly... bye.")
				SAY("For information about Tsunami you better gock the terminals. See you later, legs.")
				SAY("A pleasure seeing you. Until we meet again...")
				ENDDIALOG()
			end
	NODE(2) -- Giving Mission
			SAY("Some jingo left a hatch open and as a result we got invaded by %TARGET_NPCNAME(0). We need a street samurai to do some population control for us, burning all %TARGET_VALUE(0,1) of them. Come back here when they have been taken care of.")
			SAY("One of our stinkin' jingos left a security-hatch open and managed to let several %TARGET_VALUE(0,1) in to the faction area. Burn all %TARGET_NPCNAME(0) of them in. Come and see me when you are done.")
			SAY("We could use some help with basic population control. We have some %TARGET_NPCNAME(0) in this area and we need you to take out all %TARGET_VALUE(0,1) of them. Come see me afterwards.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- Mission is not accomplished
				SAY("Hey-o, hope you haven't forgotten about your job. Tsunami don't take kindly to turncoat ronins.")
				SAY("Hey Runner, go deal with those %TARGET_NPCNAME(0). If they start humping arond we will have a real friggin problem.")
				SAY("I am to busy to talk to you. You should deal with your matters at hand.")
				SAY("Go neutralize those %TARGET_NPCNAME(0) or you'll find yourself floating face down in the sewers.")
				ENDDIALOG()
			else -- Mission was accomplished
				SAY("Hey-o, samurai. They say you got all of them. %REWARD_MONEY() credits have been moved to your account. Check our terminals for future assignments.")
				SAY("They say you neutralized all of the intruders. They say you were good at it to, samurai. %REWARD_MONEY() credits have been moved to your acccount. You have our thanks. Check the terminals for more assignments.")
				SAY("Well done, Runner. The %REWARD_MONEY() credits have been moved to your account. Our pleasure doing business with you.")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
