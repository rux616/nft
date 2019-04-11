--************************
--name   : SINGLE_AS_BD_01.lua
--ver    : 0.1
--author : Ferron
--date   : 2004/09/14
--lang   : en
--desc	 : terminal mission
--npc    :
--************************
--changelog:
--2004/09/14(0.1): edited TS script to build this BD version (Ferron)
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
				ANSWER("Yes, came regarding the contract.",2)
				ANSWER("OK, I heard you required a hit-man.",2)
				ANSWER("All right, I'm here for an assignment I took on the Black Dragon terminal.",2)

			else    -- Player is a Woman:
				SAY("Hey-o, legs! What a nice suprise. What can I do for you?")
				SAY("Welcome! Step into my office. What can I help you with, legs?")
				SAY("Hey-o. Have you come about the contract, Runner?")
				SAY("Hey, legs, what can I do you for?")
				SAY("Are you sure you stepped into the right office? Dancers are recruited down the hall...")
				
				ANSWER("I am just looking around. Thanks.",1)
				ANSWER("What can you tell me about this place?",1)
				ANSWER("Nice place. What do you do here?",1)
				ANSWER("Pardon me, I thought you were someone else.",1)
				ANSWER("Yes, I came about the contract.",2)
				ANSWER("Greetings, the Black Dragon terminal referred me to you regarding an assignment.",2)

			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Listen, if you are just going to stand around then go do it in one of the clubs, a'ight?")
				SAY("Either talk business or go away. I am trying to work.")
				SAY("For information about Black Dragon you better gock the terminals. Get my meaning?")
				SAY("Good bye, Runner.")
				ENDDIALOG()
			else
				SAY("Listen, if you are just going to stand around then go do it in one of the clubs, a'ight?")
				SAY("You came up here just to look at me? I know I am good-looking, but thats just plain silly...Bye.")
				SAY("For information about Black Dragon you better gock the terminals. See you later, legs.")
				SAY("A pleasure seeing you. Until we meet again...")
				ENDDIALOG()
			end
	NODE(2) -- Giving Mission
			SAY("We have this problem with a jingo named %NPC_NAME(1), usually found at %NPC_WORLD(1). We want you to burn the bastisch solid like. Don't come back here until %NPC_NAME(1) has a flatline.")
			SAY("Runner, we require your services in the neutralization of a certain %NPC_NAME(1), in %NPC_WORLD(1). Burn the coward and make it a good one. Return here when you have capped the bastisch.")
			SAY("Runner, Black Dragon needs your help in the neutralization of a jingo named %NPC_NAME(1). Look for the bastisch in %NPC_WORLD(1) and burn the coward real proper like. Then return to me.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- Mission is not accomplished
				SAY("Hey-o, you have that jingo to deal with, remember? Make sure you get it done. Now.")
				SAY("Hey Runner, you better hurry up and neutralize %NPC_NAME(1). If the bastisch gets away, you have a big problem on your hands...")
				SAY("I am to busy to talk to you. You should deal with your matters at hand.")
				SAY("Go neutralize that bastich or prepare to find yourself in a world of hurt...")
				ENDDIALOG()
			else -- Mission was accomplished
				SAY("Hey-o, samurai. I have been informed that %NPC_NAME(1) is as flatlined as a sea horizon. Well done. %REWARD_MONEY() credits have been moved to your account. Have a good day.")
				SAY("They say you neutralized %NPC_NAME(1). They say, you did it real solid to, samurai. The %REWARD_MONEY() credits have been moved to your acccount. We are most grateful for your assistance.")
				SAY("Hey-o, Runner. %NPC_NAME(1) is no more and Black Dragon is most grateful for your work. %REWARD_MONEY() credits will be moved to your account. Our pleasure doing business with you.")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
						
		
			

