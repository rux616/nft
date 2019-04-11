--************************
--name   : SINGLE_AS_PP_01.lua
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
			if (result==1) then -- Player is Man
				SAY("Your hope. Your strength. Your cure. ProtoPharm, can I be of assistance, sir?")
				SAY("Welcome to ProtoPharm. How may I be of assistance, sir?")
				SAY("Hey there. Looking for a contract, sir?")
				SAY("How can I help you, sir?")
				SAY("Hello, sir. Welcome to ProtoPharm. We have a job for you, if you are interested.")
				
				ANSWER("I am just looking around. Thanks.",1)
				ANSWER("What can you tell me about this place?",1)
				ANSWER("Hey. What is this place?",1)
				ANSWER("Oh sorry, I thought you were someone else.",1)
				ANSWER("I came about the job.",2)
				ANSWER("Yeah, I'm here about a termination contract.",2)
				ANSWER("Hi, I heard you were looking for competent trouble-shooters.",2)
				ANSWER("I'm here for an assignment I took on the ProtoPharm terminal.",2)

			else    -- Player is a Woman:
				SAY("Your hope. Your strength. Your cure. ProtoPharm, can I be of assistance, m'am?")
				SAY("Welcome to ProtoPharm. How may I be of assistance, madame?")
				SAY("Hey there. Looking for a contract, m'am?")
				SAY("How can I help you, madame?")
				SAY("Hello, m'am. Welcome to ProtoPharm. We have a job for you, if you are interested.")
				
				ANSWER("I am just looking around. Thanks.",1)
				ANSWER("What can you tell me about this place?",1)
				ANSWER("Nice place here. What do you do here?",1)
				ANSWER("Pardon me, I thought you were someone else.",1)
				ANSWER("I am here about a termination...",2)
				ANSWER("The ProtoPharm terminal referred me to you regarding a termination assignment.",2)
				ANSWER("Hi, I was told you needed assistance with a termination.",2)
				ANSWER("I'm here for an assignment I took on the Protopharm terminal.",2)
			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("This is ProtoPharm, where we work for a living. Get with the program or get out.")
				SAY("Listen pal, I don't have the energy for this. Get lost, sir.")
				SAY("Sir, I am a bit to busy for idle chit-chat. Have a nice day.")
				SAY("Thank you. Have a nice day.")
				ENDDIALOG()
			else
				SAY("This is ProtoPharm, where we work for a living. Get with the program or get out.")
				SAY("Listen, I am trying to work here. Please be on your way, madame.")
				SAY("Please madame, if you don't have any official business I suggest you leave.")
				SAY("Thank you, m'am. Have a nice day.")
				ENDDIALOG()
			end
	NODE(2) -- Giving Mission
			SAY("Welcome, Runner. Your target is %NPC_NAME(1), an employee who has been stealing drugs. The target is located at %NPC_WORLD(1). Please make an example of this piece of scum. Come back when you are done.")
			SAY("OK, this is the deal. One of our employees has been stealing drugs, a lot of drugs. %NPC_NAME(1) is located in %NPC_WORLD(1) and we want the piece of scum dead. Make sure it is messy, so people like him get the message.")
			SAY("Ah yes, Runner. I'm glad you came. The problem: a stealing employee named %NPC_NAME(1) is located at %NPC_WORLD(1). We want the leech taken out, good... Then return here for the reward.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
		
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- Mission is not accomplished
				SAY("Still staking %NPC_NAME(1) out, huh? That is OK, take your time. As long as he dies in the end.")
				SAY("Runner, I do not want to stress you out. But you have a target to take care of.")
				SAY("Look, I am a bit busy and I don't have more intel for you. Take %NPC_NAME(1) out at your discretion.")
				SAY("Kill %NPC_NAME(1) and make it look messy, like I said. Now go.")
				ENDDIALOG()
			else -- Mission was accomplished
				SAY("Perfect, you sure got the message across. Here are your %REWARD_MONEY() credits. Looking forward to working with you again.")
				SAY("Ah, you are back! I heard about it on the news. The %REWARD_MONEY() credits have been deposited into your acccount. ProtoPharm is grateful for your proffesionalism. Check our terminal for information on more jobs.")
				SAY("We have been informed that %NPC_NAME(1) has been terminated, well done. %REWARD_MONEY() credits have been transfered to the specified account.  We at ProtoPharm are grateful for your assistance. Good day.")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
						
		
			
