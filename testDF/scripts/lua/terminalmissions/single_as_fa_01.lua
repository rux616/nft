--************************
--name   : SINGLE_AS_FA_01.lua
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
				SAY("Greetings sir, what can I do for you?")
				SAY("Hello sir, is there anything I can help you with?")
				SAY("Greetings sir. Can I be of assistance?")
				SAY("Do you require any help with anything?")
				SAY("Hello sir, are there any questions you need answered?")
				
				ANSWER("I am just looking around. Thanks",1)
				ANSWER("What can you tell me about this place?",1)
				ANSWER("I'm looking for further information regarding a mission.",2)
				ANSWER("Hey, I'm interested in a mission I contracted from a terminal.",2)
				ANSWER("I was told to report to you for more details about a mission I accepted.",2)
				ANSWER("Nice place here. What can I do here?",1)
			else
				SAY("Greetings madame, what can I do for you?")
				SAY("Hello madame, is there anything I can help you with?")
				SAY("Greetings madame. Can I be of assistance?")
				SAY("Do you require any help with anything?")
				SAY("Hello madame, are there any questions you need answered?")
				
				ANSWER("I am just looking around. Thanks",1)
				ANSWER("What can you tell me about this place?",1)
				ANSWER("I'm looking for further information regarding a mission.",2)
				ANSWER("Hey, I'm interested in a mission I contracted from a terminal.",2)
				ANSWER("I was told to report to you for more details about a mission I accepted.",2)
				ANSWER("Nice place here. What can I do here?",1)
			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Sir, if you're looking for general information, you might want to try asking someone else.")
				SAY("I don't have time for this, sir. If you're looking for a job, talk to me again, otherwise, please talk to someone else.")
				SAY("Sir, I have a job to do. I only have time to talk to people who are looking to do some work for us.")
				ENDDIALOG()
			else
				SAY("Madame, if you're looking for general information, you might want to try asking someone else.")
				SAY("I don't have time for this, madame. If you're looking for a job, talk to me again, otherwise, please talk to someone else.")
				SAY("Madame, I have a job to do. I only have time to talk to people who are looking to do some work for us.")
				ENDDIALOG()
			end
	NODE(2)
				SAY("We have recently discovered that %NPC_NAME(1) has been stealing sensitive research data and selling it on the black market. It is crucial that the target be eliminated before any more data is misused. The last time they downloaded information we were able to install a tracer program and track them to %NPC_WORLD(1). The only thing we need now is for you to finish the job. It is critical that you succeed as soon as possible, as he still possesses sensitive data and could sell it at any time.")
				SAY("During an internal investigation, we uncovered a smuggling operation being run by %NPC_NAME(1). They have been stealing confidential research data and selling it to whoever is willing to pay the highest price. We have traced their operations to %NPC_WORLD(1). Take out the target and return here.")
				SAY("Informants of ours in the Neocron black market have revealed a smuggling operation under the operation of %NPC_NAME(1). The target can be found in %NPC_WORLD(1). Eliminate the target as soon as possible. We need to make sure that our research doesn't fall into the wrong hands. When the job is done, report to me.")
				SETNEXTDIALOGSTATE(3)
				ENDDIALOG()
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				SAY("I have told you everything you need to know. Return here for payment.")
				SAY("You are not cleared for further information regarding this mission. I have a job, now you do to. Go out and get it done.")
				SAY("Our informants have not reported the target's death. You must complete your mission before any further research is sold.")
				SAY("You have all the information you need in order to complete this mission. Get what you need, and come back when the job is successful.")
				ENDDIALOG()
			else
				SAY("Good work. The target's death has been confirmed through independent sources. Payment of %REWARD_MONEY() credits have been deposited in your account. We are always protecting our scientific pursuits from the outside world. Any help you could provide would always be welcomed, just consult one of the terminals.")
				SAY("Nice job. Thieves stealing our research know that there is a price for their actions. %REWARD_MONEY() creditshave been transferred to your account. Further missions can be contracted through one of the terminals.")
				SAY("With your work, that criminal will never bother us again. Your contributation to our success will not go unrewarded. You will find the appropriate amount of %REWARD_MONEY() credits in your account. If you ever need another job, please consult one of the terminals.")
				ACTIVATEDIALOGTRIGGER(1)
				ENDDIALOG()
			end
end
						
		
			