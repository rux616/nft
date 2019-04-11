--************************
--name   : SINGLE_AS_DRE_02.lua
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
			if (result==1) then 
				SAY("Good day, sir. Do you require assistance?")
				SAY("Hello, sir.  May I help you?")
				SAY("Greetings, sir.")
				SAY("Yes? How can I help you, sir?")
				SAY("Delivering or picking up? Oh, sorry. How may I be of assistance, sir?")
				
				ANSWER("I am just looking around. Thanks.",1)
				ANSWER("What can you tell me about this place?",1)
				ANSWER("Yeah... what is this place?",1)
				ANSWER("Sorry, I thought you were someone else.",1)
				ANSWER("I am here about... a job.",2)
				ANSWER("Yeah, I'm here about a flatline contract.",2)
				ANSWER("Hi, I heard you had a termination contract open.",2)
				ANSWER("I'm here for an assignment I took on the Diamond Real-Estate terminal.",2)

			else    
				SAY("Welcome, miss. What can I do for you?")
				SAY("Hello there, miss, how may I help you?")
				SAY("Greetings, miss. May I help you?")
				SAY("Well now, how can I help you?")
				SAY("Yes, yes. What can I do for you, miss?")
				
				ANSWER("I am just looking around. Thanks.",1)
				ANSWER("What can you tell me about this place?",1)
				ANSWER("Nice place. What can I do here?",1)
				ANSWER("Oh sorry, I thought you were someone else.",1)
				ANSWER("I am here about an assignment?",2)
				ANSWER("The Diamond Real-Estate terminal referred me to you regarding a termination assignment.",2)
				ANSWER("Hi, I'm here about the flatline contract.",2)
				ANSWER("I'm here for an assignment I took on the Diamond Real-Estate terminal.",2)
			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Please don´t waste my time. I am a busy and important person. Have a nice day.")
				SAY("Listen buddy, I don't have time for this. Get lost... sir.")
				SAY("Sir, for general information please consult the terminals. Good day.")
				SAY("Thank you. Have a nice day.")
				ENDDIALOG()
			else
				SAY("Don´t waste my time, lady. I am very busy. Have a nice day.")
				SAY("Listen, I am trying to work here. Please be on your way.")
				SAY("Please, for general information please consult the terminals. Good day to you.")
				SAY("Thank you, ma'am. Have a nice day.")
				ENDDIALOG()
			end
	NODE(2) -- Giving mission
			SAY("Good, we have an urgent job that needs your attention. Your mark is %NPC_NAME(1) and located in %NPC_WORLD(1). Terminate the target swiftly and without discretion, then return to me.")
			SAY("All right, we have an urgent problem that needs addressing. Our problem, a mark named %NPC_NAME(1) in %NPC_WORLD(1), needs to be flatlined. Get it done, and fast. The next time I talk to you the problem should be solved.")
			SAY("Ah yes, Runner. Our problem is named %NPC_NAME(1) and needs tending to urgently. We want him dead. Kill him, burn him, blow him away. You should be able to find them in %NPC_WORLD(1). Return here when upon completion. Now, hurry.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
		
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- mission is not accomplished
				SAY("What are you doing here? The target is still active. I told you this was urgent. We don't have time for this!")
				SAY("Runner, don't you have a problem to take care of? Intelligence indicates that %NPC_NAME(1) is still in %NPC_WORLD(1). Get to it, quickly!")
				SAY("Don't tell me you have not solved our little problem yet? Either you deal with %NPC_NAME(1) now or I will hire another Runner to take care of it.")
				SAY("Did I not make the urgent nature of this case clear enough? Urgent as in: flatline %NPC_NAME(1) now!")
				ENDDIALOG()
			else -- mission was accomplished
				SAY("Congratulations on a job well done, Runner. Glad to see you got it done so quickly. Here is the contracted fee of %REWARD_MONEY() credits. Have a nice day.")
				SAY("Ah, yes. Well done! Your sucessful flatlining of %NPC_NAME(1) has resulted %REWARD_MONEY() credits deposited into your acccount. Diamond Real-Estate is grateful for your profesionalism. Check our terminal for information on more jobs. Have a nice day.")
				SAY("Runner, congratulations. You solved the problem within the alloted time-frame. %REWARD_MONEY() credits have been transfered to your account. Diamond Real-Estate is grateful for your assistance, please check our terminal for future assignments. Good day.")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
						
		
			
