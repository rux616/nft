--************************
--name   : SINGLE_AS_PP_02.lua
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
-- single_as_proto
-- description single_as_02

	NODE(0)
		GENDERCHECK()
			if (result==1) then -- Player is Man:
				SAY("Your hope. Your strength. Your cure. ProtoPharm, can I be of assistance, sir?")
				SAY("Welcome to ProtoPharm. How may I be of assistance, sir?")
				SAY("Pardon my abruptness, but are you here about the termination?")
				SAY("Hello. ProtoPharm could use your assistance, sir. Are you interested?")
				SAY("Hello, sir. Welcome to ProtoPharm. We have a job for you, if you are interested.")
				
				ANSWER("I am just looking around. Thanks.",1)
				ANSWER("What can you tell me about this place?",1)
				ANSWER("No, I am not your man. Sorry.",1)
				ANSWER("Oh sorry, I thought you were someone else.",1)
				ANSWER("I came about the job.",2)
				ANSWER("Yeah, I'm here about a termination contract.",2)
				ANSWER("Yes, I heard you were looking for competent trouble-shooters.",2)
				ANSWER("I'm here for an assignment I took on the ProtoPharm terminal.",2)

			else    -- Player is a Woman:
				SAY("Your hope. Your strength. Your cure. ProtoPharm, can I be of assistance, m'am?")
				SAY("Welcome to ProtoPharm. How may I be of assistance, madame?")
				SAY("Hey there. Looking for a contract, m'am?")
				SAY("Are you here about the termination job, madame?")
				SAY("Hello, m'am. Welcome to ProtoPharm. We have a job for you, if you are interested.")
				
				ANSWER("I am just looking around. Thanks.",1)
				ANSWER("What can you tell me about this place?",1)
				ANSWER("No, you got the wrong person. Sorry.",1)
				ANSWER("Pardon me, I thought you were someone else.",1)
				ANSWER("I am here about a termination...",2)
				ANSWER("The ProtoPharm terminal referred me to you regarding a termination assignment.",2)
				ANSWER("Yes, I was told you needed assistance with a termination.",2)
				ANSWER("I'm here for an assignment I took on the Protopharm terminal.",2)
			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("This is ProtoPharm, where we work for a living. Get with the program or get out.")
				SAY("Listen pal, I am looking for a trouble-shooter right now. If that is not you then please leave, sir.")
				SAY("Sir, I am in a big pit between a cliff and a boulder. Either help me or get lost.")
				SAY("Thank you. Have a nice day.")
				ENDDIALOG()
			else
				SAY("This is ProtoPharm, where we work for a living. Get with the program or get out.")
				SAY("Listen you, I am looking for a trouble-shooter right now. If that is not you then please leave, madame.")
				SAY("Please madame, I am in a big pit between a cliff and a boulder. Either help me or get lost.")
				SAY("Thank you, m'am. Have a nice day.")
				ENDDIALOG()
			end
	NODE(2) -- Giving Mission
			SAY("All right. This is urgent and strictly cloak and dagger. The target %NPC_NAME(1), a high ranking mole who has been selling corporate information. The target is located at %NPC_WORLD(1). Make it clean and quick. Of course, if anyone asks, I never gave you this mission.")
			SAY("OK, this on a need to know bases. All you need to know is the name, %NPC_NAME(1), and the location, %NPC_WORLD(1). Get it done quickly, and cleanly. Then return to me.")
			SAY("Greetings. This matter is covert and sensitive. A high ranking executive, %NPC_NAME(1), currently at %NPC_WORLD(1), has been selling industrial secrets to other companies. We want him taken out quickly and quietly. Then return to me for the reward.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- Mission is not accomplished
				SAY("Discretion is the better part of valor. But please hurry and get the job done.")
				SAY("Runner, I paid you to flatline that bastisch. Get to it!")
				SAY("Look, we are in a bind here and time is of the essence. Take out %NPC_NAME(1), now!")
				SAY("Hurry, hurry. Get that blabbering piece of crap silenced now! We can't afford %NPC_NAME(1) leaking more info.")
				ENDDIALOG()
			else -- Mission was accomplished
				SAY("Well done! You saved ProtoPharm a lot of money. Speaking of which, here are your %REWARD_MONEY() credits. Looking forward to working with you again.")
				SAY("Ok, so %NPC_NAME(1) is dead? Marvelous. %REWARD_MONEY() credits have been deposited into your acccount. ProtoPharm is grateful for your profesionalism and we look forward to working with you again.")
				SAY("The hospital confirmed that %NPC_NAME(1) has flatlined, well done. %REWARD_MONEY() credits have been transfered to your account. ProtoPharm is grateful for your assistance. Good day.")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
						
		
			
