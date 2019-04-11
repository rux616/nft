--************************
--name   : SINGLE_AS_TT_01.lua
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
                        SAY("Welcome, Runner, need something?")
                        SAY("I am at your command, Runner")
                        SAY("Do you need help, Runner?")
                        SAY("Yes, sir, do you have a problem?")
                        SAY("Welcome sir, if you have a problem please ask")
                        else
                        SAY("Yes, Runner?")
                        SAY("Welcome, Runner, how can I help you?")
                        SAY("Yes, Runner? How can I help you?")
                        SAY("Ma'am, what do you need?")
                        SAY("Yes, ma'am? How can I help you?")
		end
                        ANSWER("I was looking at a Tangent section of the Terms and it would seem you have a job for me to do.",1)
                        ANSWER("I am here about the job I saw on the Tangent Term.",1)
                        ANSWER("I am here to apply for the execution job, I believe my skills will match the required needed.",1)
                        ANSWER("Sorry I took a wrong turn.",3)
                        ANSWER("Never mind, I have other stuff I need to do, goodbye.",3)

        NODE(1)
                SAY("OK, Runner, Your registration screen shows that you are qualified for this task which is currently rated 'high'.  Please head to %NPC_WORLD(1) and execute of %NPC_NAME(1) on site. Do not worry about the life you will exterminate as they have been classed as 'criminal' by CityAdmin, and you know there is only one punishment in Neocron: death.  Once you return to me here I will provide you with payment.")
                SAY("OK, Runner. Registration shows that your skills are compatible with the requirements of this mission. CityAdmin have asked Tangent Technology to dispose of a criminal. This is extremely useful as it allows Tangent Technology to proceed with weapon tests at the same time. Please head towards %NPC_WORLD(1) and execute %NPC_NAME()and then return to me. I have been authorized to produce a payment for this service.")
                SETNEXTDIALOGSTATE(2)
                ENDDIALOG()

        NODE(2) 
                ISMISSIONTARGETACCOMPLISHED(0)
                        if (result==0) then -- Mission is NOT accomplished
                                SAY("If you do not provide us with a service then we can not provide you with a reward!!")
                                SAY("Leave now. I do not have time for simple chit-chat.")
                                ENDDIALOG()
                        else
                                SAY("Excellent work, Runner, please take and enjoy your %REWARD_MONEY() credits. Check the Terms soon as I'm sure Tangent Technology will be pleased to use your services again. Have a nice day, Runner")
                                SAY("Fantastic job, Runner. Please take your %REWARD_MONEY() credits and enjoy them. Please check the terms again the near future for further tasks.") 
                                ACTIVATEDIALOGTRIGGER(1)
                                ENDDIALOG()
                        end
       NODE(3)
		SAY("Good bye")
		ENDDIALOG()
end

        


