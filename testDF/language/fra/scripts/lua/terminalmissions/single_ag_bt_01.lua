--************************
--name   : SINGLE_AG_BT_01
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
                        if (result==1) then 
                        	SAY("Hello Runner, what can I do for you?")
                        	SAY("Greetings Runner, how can I help you?")
                        	SAY("Yes Runner? How can I help you?")
                        	SAY("Hello sir, what can I do for you?")
                        	SAY("Yes sir? How can I help you?")
                        else
                        	SAY("Hello Runner, what can I do for you?")
                        	SAY("Greetings Runner, how can I help you?")
                        	SAY("Yes Runner? How can I help you?")
                        	SAY("Hello ma'am, what can I do for you?")
                        	SAY("Yes ma'am? How can I help you?")
			end
                        ANSWER("I was directed here by the BioTech terminal. I am here for the extermination job.",1)
                        ANSWER("I am here for the extermination job. The BioTech terminal directed me to you.",1)
                        ANSWER("I applied for an extermination job on the BioTech terminal. It directed me to speak to you.",1)
                        ANSWER("Sorry, I thought you were someone else.",3)
                        ANSWER("Never mind. I thought you were someone else, goodbye.",3)

        NODE(1)
                SAY("Ah yes, let me pull up your registration... here we have it. OK, as you may know, CityAdmin pays Runners to aid in the maintenance of a clean, safe city.  As an extension of that, BioTech has a contract with CityAdmin to further reward such maintenance activities. To that end, your job is a simple sweep of the local area, removing at least %TARGET_VALUE(0,1) %TARGET_NPCNAME(0). Come back here afterwards to secure your reward from BioTech.")
                SAY("Indeed, Runner. We have a contract with CityAdmin to aid in the maintenance of a clean, safe city. To that end, your job is to, exterminate some %TARGET_NPCNAME(0). After you removed at least %TARGET_VALUE(0,1) of them, come back here to secure your reward from BioTech.")
                SAY("One of Seymour Jordan's acquaintances had a nasty run in with some city vermin. As a personal favor, Jordan raised the priority of the extermination assignments that BioTech runs for our contract with CityAdmin. Your assignment is to clean the city up a little bit. Make a sweep of the local area looking for populations of %TARGET_NPCNAME(0). Exterminate at least %TARGET_VALUE(0,1) of them and come back here and I will give your reward from BioTech.")
                SETNEXTDIALOGSTATE(2)
                ENDDIALOG()

        NODE(2) 
                ISMISSIONTARGETACCOMPLISHED(0)
                        if (result==0) then -- Mission is NOT accomplished
                                SAY("What are you doing here? Go, finish your job!!")
                                SAY("What do you think you are doing here? You need to remove at least %TARGET_VALUE(0,1) before you will recieve your reward. Now go.")
                                ENDDIALOG()
                        else
                                SAY("Good work, Runner. Here are your %REWARD_MONEY() credits. Keep checking the BioTech terminal for further jobs. We need qualified personnel like you. I hope to see you again. Have a nice day.")
                                SAY("Excellent to see you again. I hope you didn't have any problems with the assignment. If you would like more, similiar assignments, just take another look at the BioTech terminal. Here, take your credits, you've earned them. Maybe I will talk to you again. Goodbye, Runner.") 
                                ACTIVATEDIALOGTRIGGER(1)
                                ENDDIALOG()
                        end

        NODE(3)
                GENDERCHECK()
                        if (result==1) then -- Runner is male.
                                SAY("Sir, please don't waste my time. Have a nice day.")
                                SAY("Sir, I am very busy. Please, have a nice day.")
                                SAY("I don't have time for chitchat. Please move on.")
                                SAY("Sir, do you think I have time for small talk?  Goodbye, now.")
                                ENDDIALOG()
                        else
                                SAY("Ma'am, please don't waste my time. Have a nice day.")
                                SAY("Miss, I am very busy. Please, have a nice day.")
                                SAY("I don't have time for chitchat. Please move on.")
                                SAY("Ma'am, do you think I have time for small talk? Goodbye, now.")
                                ENDDIALOG()
                        end

end 
