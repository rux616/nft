--************************
--name   : SINGLE_AG_TT_02.lua
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
		SAY("Hello, citizen, what can I do for you?")
		SAY("Greetings, citizen, how can I help you?")
		SAY("Yes, citizen? How can I help you?")
		
		ANSWER("I have applied for the vermin extermination job.",1)
		ANSWER("I am here for the vermin extermination job.",1)
		ANSWER("Never mind. Bye.",3)
	NODE(1)
		SAY("We have a problem locally with %TARGET_NPCNAME(0). The little bastards get everywhere. Get yourself down the nearest sewer and bag about %TARGET_VALUE(0,1) of them. Once you're done, come back and see me and we will figure out a suitable reward.") 
		SAY("Tangent Technologies isn't just about production and profits. We try and put back into the community of Neocron. Presently there's a real problem with a %TARGET_NPCNAME(0) infestation locally. We want to be seen to help encourage the clean up of this city. So head down the nearest sewer and if you manage to bag %TARGET_VALUE(0,1) of them,  you'll qualify for a Tangent Technologies city clean up payment, which I am authorized to distribute.")    
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				SAY("What are you doing here? Go and finish your job!! I have no time for small talk.")
				SAY("What do you think you are doing here? I ordered you to finish this job and not to chitchat with me! Now go on!!")
				ENDDIALOG()
			else
				SAY("Good work. Here are your %REWARD_MONEY() credits. Check the terminals for further jobs. We need qualified personnel like you. Have a nice and productive day. Bye.")
				SAY("Very good Runner. Here are your %REWARD_MONEY() credits. If you look for another job, have a look at the Terminals. Thanks and bye!") 
				ACTIVATEDIALOGTRIGGER(1)
				ENDDIALOG()
			end
	NODE(3)
		SAY("Bye.")
		SAY("Come back when you know what you want. Bye")
		ENDDIALOG()
	
end