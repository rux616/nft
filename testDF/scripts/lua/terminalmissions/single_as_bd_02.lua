--************************
--name   : SINGLE_AS_BD_02.lua
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
				SAY("Hey legs, what can I do you for?")
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
				SAY("You came up here just to look at me? I know I am good-looking, but that's just plain silly...Bye.")
				SAY("For information about Black Dragon you better gock the terminals. See you later, legs.")
				SAY("A pleasure seeing you. Until we meet again...")
				ENDDIALOG()
			end
	NODE(2) -- Giving Mission
			SAY("There is this...competitor, named %NPC_NAME(1) that needs an urgent visit by a hit-man. The targat can usually be found in %NPC_WORLD(1). We here at Black Dragon would like it very much if you dealt with this matter. Make sure the target has flatlined and then come back here.")
			SAY("Runner, I need your assistance in the neutralization of a competitor named %NPC_NAME(1), in %NPC_WORLD(1). Make a good burn and see to it that people notice. Return here when you have confirmed the flatline.")
			SAY("Runner, Black Dragon needs your help with the neutralization of a certain %NPC_NAME(1) in %NPC_WORLD(1). Deal with it, make it publicly and then return to me.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- Mission is not accomplished
				SAY("Hey-o, I told you to burn %NPC_NAME(1) didn't I? So, what are you doing here?")
				SAY("Hey Runner, you better neutralize %NPC_NAME(1) some time soon. There can be no margin for error.")
				SAY("I am to busy to talk to you. You should deal with your matters at hand.")
				SAY("Hey-o. Hope the job is going well. For your sake...")
				ENDDIALOG()
			else -- Mission was accomplished
				SAY("Hey-o. I have been told %NPC_NAME(1) won't be a problem anymore. Good. %REWARD_MONEY() credits will be moved to your account. Check the terminals for more work.")
				SAY("Samurai, they say you neutralized %NPC_NAME(1) like I told you. They say you did a good job. The %REWARD_MONEY() credits will be moved to your acccount. Black Dragon thanks you for your gratious assistance.")
				SAY("Runner, %NPC_NAME(1) is no more and %REWARD_MONEY() credits will be moved to your account. Our pleasure is doing business with you.")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
				ENDDIALOG()
			end
end
						
		
			

