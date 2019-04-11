--************************
--name   : SINGLE_AS_CM_02.lua
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
		SAY("Questions, Runner?")
		SAY("What, Runner?")
		SAY("Do you need something, Runner?")
		
		ANSWER("I saw a job on the Terms that interested me and I thought I would follow it up. I think this is the right place. Is it possible for me to apply for the execution task that you need somebody to fill?")
		ANSWER("I saw a job on the Terms that I thought my skills would help nicely. Let me perform the execution mission.",1)
		ANSWER("I don't think I should be here. Bye.",3)

	NODE(1)
		SAY("It is of high importance that no questions are asked about the following information that I am going to provide you, this includes before, during and after the completion of this task. Head to %NCP_WORLD(1). Once there, execute on site %NPC_NAME(1). I cannot provide any more information for you, Runner, I'm sure you understand that this is a sensitive matter. I will provide payment. You are dismissed.")
		SAY("Runner, do not ask questions about the information that I am going to tell you. Head to %NPC_WORLD(1). Locate and make sure that %NPC_NAME(1) does not survive your contact. Providing that you perform well, we will upgrade your security clearance. Head back to me for some credits once this task is complete.")
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				SAY("Runner, leave now, or you will be forced to face the consequences.")
				SAY("Runner, leave now!!")
				ENDDIALOG()
			else
				SAY("Take your %REWARD_MONEY() credits. You preformed well. It is important that you check the Terms soon for future tasks I will provide. You are dismissed. Good day.")
				SAY("Nice to see you again. I did have my doubts on your skills. Take your %REWARD_MONEY() credits. You ability to perform well under pressure is important. Check the Terms for future missions.") 
				ACTIVATEDIALOGTRIGGER(1)
				ENDDIALOG()
			end
	NODE(3)
		SAY("Bye.")
		SAY("Come back when you have a question, Runner. Bye")
		SAY("Leave. I don't have time to speak to you, Runner.")
		ENDDIALOG()
	
end



