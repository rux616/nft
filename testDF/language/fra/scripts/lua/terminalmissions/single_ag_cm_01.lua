--************************
--name   : SINGLE_AG_CM_01.lua
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
		SAY("Good day Runner. What can I help you with?")
		SAY("Yes Runner, what can I do for you?")
		SAY("Yes Runner, what would you like?")
		
		ANSWER("I have applied for the execution job.",1)
		ANSWER("I am here for the annihilation task.",1)
		ANSWER("Hmmm, I'd better go. Bye.",3)
	NODE(1)
		SAY("Runner, check the local area and destroy at least %TARGET_VALUE(0,1) of %TARGET_NPCNAME(0). It is imperative that this is done to a high standard Runner. There is no room for error. Once you have done this return to me here and I will make sure that you are paid for your services.")

		SAY("Check the local area and take out a group of %TARGET_VALUE(0,1) %TARGET_NPCNAME(0). Return to me for your payment once you have successfully completed your task. You will be debriefed once you return to me.")
		SETNEXTDIALOGSTATE(2)

		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				SAY("Runner, leave now, or you will be forced to face the consequences.")
				SAY("Runner, leave now!!")
				ENDDIALOG()
			else
				SAY("Thank you Runner, you have done a good task for CityMercs. We are highly satisfied with your performance. Take your %REWARD_MONEY(). Remember to check the Terms for more info on other jobs we need doing.")
				SAY("That was quick. Here are your %REWARD_MONEY() credits. If you see another terminal, log on for more missions and tasks.") 
				ACTIVATEDIALOGTRIGGER(1)
				ENDDIALOG()
			end
	NODE(3)
		SAY("Bye.")
		SAY("Come back when you have something to say, Runner. Goodbye.")
		SAY("Leave I don't have time to speak to you, Runner.")
		ENDDIALOG()
	
end
