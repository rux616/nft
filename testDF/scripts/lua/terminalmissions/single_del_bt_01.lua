--************************
--name   : SINGLE_DEL_BT_01.lua
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
			if (result==1) then -- Runner is male.
				SAY("Hello Runner, what can I do for you?")
				SAY("Greetings Runner, how can I help you?")
				SAY("Yes Runner? How can I help you?")
				SAY("Hello sir, what can I do for you?")
				SAY("Yes sir? How can I help you?")

				ANSWER("I am here for the package run. What do you have for me?",1)
				ANSWER("I applied for a delivery assignment. The BioTech terminal directed me to speak to you.",1)
				ANSWER("I applied for a package run on the BioTech terminal. I am here in reference to that assignment.",1)
				ANSWER("Sorry, I thought you were someone else.",4)
				ANSWER("Never mind. I thought you were someone else, goodbye.",4)
			else -- Runner is female.
				SAY("Hello Runner, what can I do for you?")
				SAY("Greetings Runner, how can I help you?")
				SAY("Yes Runner? How can I help you?")
				SAY("Hello ma'am, what can I do for you?")
				SAY("Yes ma'am? How can I help you?")             

				ANSWER("I am here for the package run. What do you have for me?",1)
				ANSWER("I applied for a delivery assignment. The BioTech terminal directed me to speak to you.",1)
				ANSWER("I applied for a package run on the BioTech terminal. I am here in reference to that assignment.",1)
				ANSWER("Sorry, I thought you were someone else.",4)
				ANSWER("Never mind. I thought you were someone else, goodbye.",4)
			end

	NODE(1)
		GIVEQUESTITEM(91)
		SAY("Ah yes.  I need you to deliver this cube to a technician named %NPC_NAME(1). They are working in %NPC_WORLD(1). Once you've delivered the cube, come back here for your reward.")
		SAY("All right, Runner. Please deliver this datacube to %NPC_NAME(1) in %NPC_WORLD(1). They need it to complete some work they are doing. Please return to me after you've made the delivery and you will recieve your payment.")
		SAY("Great! I have this datacube that needs to make its way to %NPC_NAME(1) in %NPC_WORLD(1). Bring it there then come back to me for your payment.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()



	NODE(2) 
		ISMISSIONTARGETACCOMPLISHED(1)
			if (result==0) then
				SAY("What are you still doing here? %NPC_NAME(1) needs to get this cube. Now get to it!")
				SAY("Runner, if you want your payment, you need to deliver that datacube. %NPC_NAME(1) is surely getting impatient.  Get moving!")
				ENDDIALOG()
			else
				SAY("Good work, Runner. Here are your %REWARD_MONEY() credits. Don't spend it all in one place, unless that place sells BioTech wares.")
				SAY("Thank you for your help. Here is your reward: %REWARD_MONEY() credits. Have a fine day.") 
				ACTIVATEDIALOGTRIGGER(2)
				ENDDIALOG()
			end
	NODE(3)
		TAKEQUESTITEM(91)
			if (result==0) then
				SAY("Where is that six-sider? I need that datacube to correct some program errors. You're costing me, and costing BioTech precious time. Now get that cube!")
				SAY("You don't have my cube? I need that cube to continue my work here. Please, go get it and bring it to me.")
				SAY("You don't have my six-sider? I need that cube to continue my work here. You're wasting my time here. Now go get the cube and bring it to me.")
				ENDDIALOG()
			else    
				SAY("Do you have the cube? Great! Now go back to %NPC_NAME(0) to recieve your payment.")
				SAY("Ah yes, the delivery. Thank you, now I can continue with this.. oh never mind. You just need to get back to %NPC_NAME(0) for your payment.")
				SAY("You're the Runner with my six-sider! Good job. Now, return to %NPC_NAME(0) for your payment.")
				ACTIVATEDIALOGTRIGGER(1) 
				SETNEXTDIALOGSTATE(5)       
				ENDDIALOG()
			end

	NODE(4)
		SAY("Please don't waste my time. Have a nice day.")
		SAY("I am very busy. Please, have a nice day.")
		SAY("I don't have time for chitchat. Please move on.")
		SAY("Do you think I have time for a small talk? Goodbye, now.")
		ENDDIALOG()
	NODE(5)
		SAY("What the hell do you want here? I got the packet, now go back to %NPC_NAME(0) to recieve your reward.")
		SAY("Thanks for delivering this package. Now go back to %NPC_NAME(0) to recieve your reward.") 
		ENDDIALOG()
end

