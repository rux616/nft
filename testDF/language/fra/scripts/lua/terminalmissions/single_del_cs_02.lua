--************************
--name   : SINGLE_DEL_CS_02.lua
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
				SAY("Greetings Brother, how may I help you?")
				SAY("Praise be to Crahn, Brother. Now what do you seek?")
				SAY("You require my assistance Brother?")
				
				ANSWER("I understand you have a delivery job. I may be able to help?",1)
				ANSWER("I heard that you might have some courier work, if so I'm willing.",1)
				ANSWER("Sorry my mistake, goodbye.",4)
			else
				SAY("Greetings Sister, how may I help you?")
				SAY("Praise be to Crahn, Sister. Now what do you seek?")
				SAY("You require my assistance Sister?")
				
				ANSWER("I understand you have a delivery job. I may be able to help?",1)
				ANSWER("I heard that you might have some courier work, if so I'm willing.",1)
				ANSWER("Sorry my mistake, goodbye",4)
			end
	NODE(1)
		GIVEQUESTITEM(91)
			SAY("We often recieve generous donations from citizens outside the Brotherhood who support our efforts to delve deep into the ether in search of divine truth. Obviously we like to encourage such sponsorship so we make sure to reward our patrons with deluxe editions of the teachings of Crahn. %NPC_NAME(1) is one of our more recent patrons, you can find them in %NPC_WORLD(1). Please take this package to them, as a token of our appreciation of their continued support. Once you are done return here and you will receive your reward.")
			SAY("I urgently require these papers delivered to %NPC_NAME(1) in %NPC_WORLD(1). Once you have delivered them return here and you will be suitably rewarded. Hurry now, %NPC_NAME(1) requires these papers sooner rather than later.")
			ACTIVATEDIALOGTRIGGER(0)
			SETNEXTDIALOGSTATE(2)
			ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(1)
			if (result==0) then
				SAY("I thought your instructions were clear, disciple, do not return until you have delivered the package. Only then can you recieve your reward.")
				SAY("Why do you linger, disciple? Time is of the essence, now go and deliver the package. Only when the task is complete will you know the benevolence of Crahn.")
				ENDDIALOG()
			else
				GIVEMONEY()
				SAY("Excellent work, disciple, I will make sure to mention your good work to Golon Kalah himself. Please accept these %REWARD_MONEY() credits as your reward for your efforts. Perhaps the Brotherhood may have other work for you soon, but for now I must mediate.") 
				SAY("The Brotherhood is pleased with your commitment to the cause. A job well done, disciple, accept these %REWARD_MONEY() credits as a token of our appreciation of your efforts.") 
				ACTIVATEDIALOGTRIGGER(2)
				ENDDIALOG()
			end
	NODE(3)
		TAKEQUESTITEM(91)
			if (result==0) then
				SAY("What the hell's going on, where is my packet? %NPC_NAME(0) said that you were going to bring me it to me, please do not return until you have it!")
				SAY("Where is my package? Come back when you have it!")
				ENDDIALOG()
			else	
				SAY("Ahh my package at last, wonderful news. Return to %NPC_NAME(1) and you will be suitably rewarded.")
				SAY("My package. Good work, if you return to %NPC_NAME(1) they will reward you accordingly.")
				ACTIVATEDIALOGTRIGGER(1)
				SETNEXTDIALOGSTATE(5)	
				ENDDIALOG()
			end
	NODE(4)
		SAY("Good day, disciple.")
		SAY("Return when your thoughts are clearer, disciple.")
		ENDDIALOG()
	NODE(5)
		SAY("What the hell do you want here? I got the packet, now go back to %NPC_NAME(0) to recieve your reward.")
		SAY("Thanks for delivering this package. Now go back to %NPC_NAME(0) to recieve your reward.") 

		ENDDIALOG()
end
