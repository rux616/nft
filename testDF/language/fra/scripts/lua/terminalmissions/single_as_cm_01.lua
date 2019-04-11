--************************
--name   : SINGLE_AS_CM_01.lua
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
		SAY("What, Runner?")
		SAY("Yes, Runner, what do you require?")
		SAY("Yes Runner, speak quickly I am in a hurry. What do you need?")
		
		ANSWER("I have applied for the job I saw on the Terms about execution.",1)
		ANSWER("I am here for the 'judge-jury-executioner' task.",1)
		ANSWER("Hmmm. I'd better go. Bye.",3)
	NODE(1)
		SAY("Runner, speed is of the essence. It is of high importance that you proceed to %NPC_WORLD(1). Once there execute on site %NPC_NAME(1). Nothing more can be said on this matter. You are dismissed")
		SAY("Runner, head quickly to %NPC_WORLD(1) Locate and remove %NPC_NAME(1). Your mission is of high importance high classification. Once you have completed this task, proceed back here and I will provide a reward. You are now dismissed. Good Luck.")
		SETNEXTDIALOGSTATE(2)

		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				SAY("Runner leave now, or you will be forced to face the consequences.")
				SAY("Runner, leave now!!")
				ENDDIALOG()
			else
				SAY("Take your %REWARD_MONEY() credits. You execution skills and lack of questions is highly valuable to us. Please check the terms for future jobs. Dismissed, Runner, and thank you.")
				SAY("Ahhh. You have returned. Take your %REWARD_MONEY() credits. Thank you, Runner. Check the Terms for future tasks, CityMercs is very pleased with your performance in this delicate matter.") 
				ACTIVATEDIALOGTRIGGER(1)
				ENDDIALOG()
			end
	NODE(3)
		SAY("Bye.")
		SAY("Come back when you have a question, Runner. Bye.")
		SAY("Leave. I don't have time to speak to you, Runner.")
		ENDDIALOG()
	
end
