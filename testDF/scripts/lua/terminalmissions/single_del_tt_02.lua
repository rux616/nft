--************************
--name   : SINGLE_DEL_TT_02.lua
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
                        SAY("Runner, do you need something?")
                        SAY("How may I help you, Runner?")
                        SAY("Do you need help Runner?")
                        SAY("Yes sir, Do you have a dilemma?")
                        SAY("Welcome sir, please ask if you have any questions.")
                       else
                        SAY("Yes Runner, how can Tangent help you?")
                        SAY("Welcome Runner, how can I help you?")
                        SAY("Yes Runner? How can I be of assistance to you?")
                        SAY("Ma'am, do you require something?")
                        SAY("Yes ma'am? How can I help you in your endeavours?")
			end
                        ANSWER("I had a good look through the job Term and you have a delivery job to be done it seems.",1)
                        ANSWER("Your company has a delivery job that needs to be done, right? Then I am the right person for you.",1)
                        ANSWER("I am rather interested in your delivery job.",1)
                        ANSWER("Tangent? I am sorry but I am not into this.",3)
                        ANSWER("Oh, yes, and goodbye...",3)
	NODE(1)
		GIVEQUESTITEM(91)
		SAY("A research lab of ours has run short on vital weapon parts and is expecting the delivery today. Meet %NPC_NAME(1) at %NPC_WORLD(1) and return once you delivered the parts.")
		SAY("Our office at %NPC_WORLD(1) have some important reports to complete and need these specifications as fast as possible. You can meet Mr. %NPC_NAME(1) there, he will take it from there. Return afterwards.")
		SAY("These parts are for the failsafe devices in our newest developments. Recent lab damage due to the lack of any failsafes have urged %NPC_NAME(1) to install them quickly. You can meet him at %NPC_WORLD(1).")
		SAY("The communication to the Tangent outpost has been disrupted and we need somebody to deliver some vital circuits to %NPC_NAME(1) at %NPC_WORLD(1). That should fix the problem. After that, return to me for your reward.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(1)
			if (result==0) then
                        	SAY("Ahh, I am sorry, but we would be pleased if you would just complete your assignment.")
                        	SAY("Tangent Industries would appreciate it if you just completed the delivery.")
                        	SAY("Are you confused about your mission goals? If not, just continue with your delivery.")
                        	SAY("Please return once you completed your assignment.")
                                ENDDIALOG()
			else
                                SAY("Well done, Runner. As promised you shall be provided with %REWARD_MONEY() credits as payment for your services.")
                                SAY("The package has been delivered without any major delay. The promised %REWARD_MONEY() credits have been transferred to your account.")
                                SAY("We were anticipating your return. Congratulations, thanks to your help there is one less problem for us to deal with. Here is your payment of %REWARD_MONEY() credits.")
                                SAY("We are content with your services. We hope you will enjoy your reward. Oh, and here are your %REWARD_MONEY() credits payment.")
                                SAY("Tangent Industries is very pleased with your services. I was permitted to hand out %REWARD_MONEY() credits as a reward.")
                                SAY("Your delivery job has been completed successfully as I see from our company screens. Please feel free to visit us again, here are your %REWARD_MONEY() credits of payment.")                                ACTIVATEDIALOGTRIGGER(2)
                                ACTIVATEDIALOGTRIGGER(2)
				ENDDIALOG()
			end
	NODE(3)
		TAKEQUESTITEM(91)
			if (result==0) then
	                	SAY("What about our agreement? If you are still interested in the reward, I suggest you complete the assignment.")
	                	SAY("Tangent Industries is not pleased with how you are handling the delivery, please get the package for me immediately.")
	                	SAY("The package is of great interest to us. Come back when you have it.")
	                	SAY("Please do not come back unless you have the package.")
	                	ENDDIALOG()
			else
        			SAY("Tangent is in your debt. Please visit %NPC_NAME(0) and ask him about your reward. Your services have been greatly appreciated.")
        			SAY("Ahh, the package, finally. Thank you, I am sure you will be pleased with the reward that %NPC_NAME(0)will hand over to you.")
        			SAY("Please do the delivery a tad faster next time. Thank you, anyway. Please see %NPC_NAME(0) for your payment.")
        			SAY("Mr %NPC_NAME(0) will have your reward presently if you return to him. I am pleased with your service.")
        			SAY("Your services have been somewhat disappointing due to your lack of dedication but I am sure %NPC_NAME(0) will still want to pay you.")
        			ACTIVATEDIALOGTRIGGER(1)
        			SETNEXTDIALOGSTATE(5)
				ENDDIALOG()
			end
	NODE(4)
		SAY("Please feel free to visit Tangent again.")
		SAY("Do not forget to visit the job Term if you are interested.")
		SAY("Goodbye, citizen.")
		ENDDIALOG()
	NODE(5)
		SAY("What the hell do you want here? I got the packet, now go back to %NPC_NAME(0) to recieve your reward")
		SAY("Thanks for delivering this package. Go back to %NPC_NAME(0) to recieve your reward.") 
		ENDDIALOG()
end