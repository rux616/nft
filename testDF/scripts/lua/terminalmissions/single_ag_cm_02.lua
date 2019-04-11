--************************
--name   : SINGLE_AG_CM_02.lua
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
		SAY("What is it, Runner? I don't have all day!")
		SAY("Yes Runner, what do you want?")
		SAY("Yes Runner, what would you like?")
		
		ANSWER("I have applied for the job I saw on the Terms about elimination.",1)
		ANSWER("I am here for the extermination task.",1)
		ANSWER("Hmmm. OK, I better go. Bye.",3)
	NODE(1)
		SAY("Okay, Runner leave after I finish speaking and start this mission. Eliminate at least %TARGET_VALUE(0,1) of %TARGET_NPCNAME(0). You have full privilege to use any means you deem 'necessary' in this mission. Do not fail. Once you have finished your mission, return to me for a debriefing. Now, leave Runner.")

		SAY("Runner, eradicate a group of %TARGET_VALUE(0,1) of %TARGET_NPCNAME(1). This is an extremely importance task and retuning successfully will result in much attention being shown in you. Once you have finished return here and I will make sure you're paid for your services.")
		SETNEXTDIALOGSTATE(2)

		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				SAY("Runner, leave now, or you will be forced to face the consequences.")
				SAY("Runner, leave now!!")
				ENDDIALOG()
			else
				SAY("interesting result Runner. We are pleased with your performance. Take your %REWARD_MONEY()credits. Look at Terms about future missons. We will require your skills again.")
				SAY("Speed is always good. Take your %REWARD_MONEY() credits. You have completed a valuable task for CityMercs. Thank you, Runner. Check the Terms for future tasks, as I'm sure we will require you again soon.") 
				ACTIVATEDIALOGTRIGGER(1)
				ENDDIALOG()
			end
	NODE(3)
		SAY("Bye.")
		SAY("Come back when you have a question, Runner. Goodbye")
		SAY("Leave I don't have time to speak to you, Runner.")
		ENDDIALOG()
	
end
