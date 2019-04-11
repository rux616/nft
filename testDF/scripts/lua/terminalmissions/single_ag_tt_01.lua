--************************
--name   : SINGLE_AG_TT_01.lua
--ver    : 0.1
--author : Kintama
--date   : 2004/09/08
--lang   : en
--desc   : terminal mission
--npc    : 
--************************
--changelog:
--2004/09/08(0.1): Added description and reformatted script
--************************

function DIALOG()

	NODE(0)
		GENDERCHECK()
			if (result==1) then
				SAY("Welcome Runner, need something?")
				SAY("I am at your command, Runner")
				SAY("Do you need help, Runner?")
				SAY("Yes sir, Do you have a problem?")
				SAY("Welcome sir, If you have a problem please ask.")
			else
				SAY("Yes, Runner?")
				SAY("Welcome Runner, how can I help you?")
				SAY("Yes Runner? How can I help you?")
				SAY("Ma'am, what do you need?")
				SAY("Yes ma'am? How can I help you?")
			end
			ANSWER("I was looking at a Tangent section of the Terms and it would seem you have a job for me to do.",1)
			ANSWER("I am here about the job I saw on the Tangent Term.",1)
			ANSWER("I am here to apply for the extermination job, I believe my skills will match the required need.",1)
			ANSWER("Sorry I took a wrong turn.",3)
			ANSWER("Never mind, I have other stuff I need to do, goodbye.",3)

	NODE(1)
		SAY("OK Runner, I have your registration screen up and it shows that you are qualified enough for this task.  Please eliminate at least %TARGET_VALUE(0,1) of %TARGET_NPCNAME(0).  Once you return to me here I will provide you with payment.")
		SAY("Welcome Runner. Please scan the area for  %TARGET_NPCNAME(0).  Find and destroy at least %TARGET_VALUE(0,1) and then return to me. I have been authorized to produce a payment for this service.")
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()

	NODE(2)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then -- Mission is NOT accomplished
				SAY("If you do not provide us with a service then we can not provide you with a reward!!")
				SAY("Leave now. I do not have time for simple chit-chat.")
				ENDDIALOG()
			else
				SAY("Excellent work Runner, please take and enjoy your %REWARD_MONEY() credits. Check the Terms soon as I'm sure Tangent Technology will be pleased to use your services again. Have a nice day Runner")
				SAY("Fantastic job, Runner. Please take your %REWARD_MONEY() credits and enjoy them. Please check the terms again the near future for further tasks.") 
				ACTIVATEDIALOGTRIGGER(1)
				ENDDIALOG()
			end
	NODE(3)
		SAY("Bye.")
		SAY("Come back when you know what you want. Bye")
		ENDDIALOG()
end
