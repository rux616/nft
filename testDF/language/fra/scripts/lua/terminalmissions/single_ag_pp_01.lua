--************************
--name   : SINGLE_AG_PP_01.lua
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
				SAY("sir, please look at the terminals if you have any general questions. Good day.")
				SAY("Thank you. Now go away please.")
				ENDDIALOG()
			else
				SAY("Look, ProtoPharm is a serious company. We actually work here. Please do not disturb us.")
				SAY("Listen, I am trying to work here. Please be on your way, ma'am.")
				SAY("madame, please look at the terminals if you have any general questions. Good day.")
				SAY("Thank you, ma'am. Have a nice day.")
				ENDDIALOG()
			end
	NODE(2) -- Giving Mission
			SAY("Right. We need you to take out %TARGET_VALUE(0,1) of %TARGET_NPCNAME(0) in faction area. Destroy them and return here for your reward. Remember, we'll be watching you.")
			SAY("A small experiment has gone awry and some test subjects have escaped. The contaminated %TARGET_NPCNAME(0) are all located in the immidiate faction area. Exterminate all %TARGET_VALUE(0,1) of them and return to me for your reward.")
			SAY("Ah yes, a willing Runner. A sudden increase of %TARGET_NPCNAME(0) have been reported in the surrounding area after a lab accident. To protect our sensitive equipment and facilities it is imperative that atleast %TARGET_VALUE(0,1) of them are killed. Return to me when you are done.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- Mission is not accomplished
				SAY("Nice try. There are still some %TARGET_NPCNAME(0) left though. Take them out.")
				SAY("Runner, the area is still contaminated with %TARGET_NPCNAME(0). Get back there and clear it out.")
				SAY("Back on a break, huh? Because there are still a couple left, you are aware of this I hope?")
				SAY("Yes, by all means. Take your time. It is not like we are in any kind of hurry. %TARGET_NPCNAME(0) escape every day...")
				ENDDIALOG()
			else -- Mission was accomplished
				SAY("Our reports show that the %TARGET_NPCNAME() are terminated. Well done. Here are the %REWARD_MONEY() credits we agreed upon.")
				SAY("Well done! The area is cleared of %TARGET_NPCNAME(0). A reward of %REWARD_MONEY() credits has been deposited into your acccount. Check our terminal for information on more jobs. Have a good one!")
				SAY("Runner, congratulations. I thought we'd never get them all. %REWARD_MONEY() credits have been transfered to the specified account.  We at ProtoPharm are grateful for your assistance, please check our terminal for more assignments. Good day.")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
						
		
			

