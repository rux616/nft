--************************
--name   : SINGLE_AG_PP_02.lua
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
				SAY("Your hope. Your strength. Your cure. ProtoPharm, can I be of assistance, sir?")
				SAY("Welcome to ProtoPharm. How may I be of assistance, sir?")
				SAY("Hey there. Looking for a contract, sir?")
				SAY("How can I help you, sir?")
				SAY("Hello, sir. Welcome to ProtoPharm. We have a job for you, if you are interested.")
				
				ANSWER("I am just looking around. Thanks.",1)
				ANSWER("What can you tell me about this place?",1)
				ANSWER("Hey. What is this place?",1)
				ANSWER("Oh sorry, I thought you were someone else.",1)
				ANSWER("I have come about a job.",2)
				ANSWER("Yeah, I'm here about an extermination contract.",2)
				ANSWER("Hi, I heard you were looking for competent trouble-shooters.",2)
				ANSWER("I'm here for an assignment I took on the ProtoPharm terminal.",2)

			else    -- Player is a Woman:
				SAY("Your hope. Your strength. Your cure. ProtoPharm, can I be of assistance, ma'am?")
				SAY("Welcome to ProtoPharm. How may I be of assistance, madame?")
				SAY("Hey there. Looking for a contract, ma'am?")
				SAY("How can I help you, madame?")
				SAY("Hello, ma'am. Welcome to ProtoPharm. We have a job for you, if you are interested.")
				
				ANSWER("I am just looking around. Thanks.",1)
				ANSWER("What can you tell me about this place?",1)
				ANSWER("Nice place here. What do you do here?",1)
				ANSWER("Pardon me, I thought you were someone else.",1)
				ANSWER("I am here about an extermination...",2)
				ANSWER("The ProtoPharm terminal referred me to you regarding an extermination assignment.",2)
				ANSWER("Hi, I'm a competent exterminator looking work.",2)
				ANSWER("I'm here for an assignment I took on the Protopharm terminal.",2)
			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Look, ProtoPharm is a serious company. We actually work here. Please do not disturb us.")
				SAY("Listen pal, I don't have the energy for this. Get lost, sir.")
				SAY("Sir, please look at the terminals if you have any general questions. Good day.")
				SAY("Thank you. Now go away please.")
				ENDDIALOG()
			else
				SAY("Look, ProtoPharm is a serious company. We actually work here. Please do not disturb us.")
				SAY("Listen, I am trying to work here. Please be on your way, ma'am.")
				SAY("Madame, please look at the terminals if you have any general questions. Good day.")
				SAY("Thank you, ma'am. Have a nice day.")
				ENDDIALOG()
			end
	NODE(2) -- Giving Mission
			SAY("Right, mission specs as follows. A group of %TARGET_NPCNAME(0), %TARGET_VALUE(0,1) or so in number, are causing trouble in the faction area. We want you to exterminate them. Return to me when you are done.")
			SAY("A group of %TARGET_NPCNAME(0) have settled in the faction area. If you kill %TARGET_VALUE(0,1) or so of them we are sure the rest will flee or scatter. Return to me for your reward when you are done.")
			SAY("Ah yes, a competent Runner at last. A group of %TARGET_NPCNAME(0) have been reported causing trouble in the faction area. The Security Department has calculated that atleast %TARGET_VALUE(0,1) of them have to be killed. Return to me when you are done.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- Mission is not accomplished
				SAY("How about actually killing all of the %TARGET_NPCNAME(0), you know, like we agreed?")
				SAY("Runner, there are still a couple of the %TARGET_NPCNAME(0) left. Don't come back until they are all dead.")
				SAY("Back on a break, huh? Because there are still a couple %TARGET_NPCNAME(0) left, you are aware of this I hope?")
				SAY("I know I didn't tell you it was urgent. But still, it would be nice if you actually did it this century! Get to it, Runner!")
				ENDDIALOG()
			else -- Mission was accomplished
				SAY("Looks like you got all of the %TARGET_NPCNAME(0). ProtoPharm is in your debt and with this %REWARD_MONEY() credits that is taken care of. Have a nice day.")
				SAY("Well done! You got enough of the %TARGET_NPCNAME(0) and the rest have scattered. The reward, %REWARD_MONEY() credits, has been deposited into your acccount. Check our terminal for information on more jobs. Have a good one!")
				SAY("Nice one, friend. I thought we'd never get them all. Here are the %REWARD_MONEY() credits. ProtoPharm is very grateful for your assistance, please check our terminal for future assignments.")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
