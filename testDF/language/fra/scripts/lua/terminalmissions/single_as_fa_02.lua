--************************
--name   : SINGLE_AS_FA_02.lua
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
				SAY("Greetings madamee, what can I do for you?")
				SAY("Hello madame, is there anything I can help you with?")
				SAY("Greetings madame. Can I be of assistance?")
				SAY("Do you require any help with anything?")
				SAY("Hello madame, are there any questions you need answered?")
				
				ANSWER("I am just looking around. Thanks",1)
				ANSWER("What can you tell me about this place?",1)
				ANSWER("I'm looking for further information regarding a mission.",2)
				ANSWER("Hey, I'm interested in a mission I contracted from a terminal.",2)
				ANSWER("I was told to report to you for more details about a mission I accepted.",2)
				ANSWER("Nice place. What can I do here?",1)
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
				SAY("Recently a hacker by the name of %NPC_NAME(1) caused a power outage in one of our medical research facilities. As a result, many of the volunteer patients there were unable to receive proper treatment for that time and some of them died. Research projects were also delayed. The medical research there will be used to benefit everyone, the attack will prolong the suffering of many. We will not tolerate such an attack, the perpetrator must be eliminated to ensure the stability of our networks. They have been pinpointed to %NPC_WORLD(1). This mission must be completed quickly. We do not know when or where they could strike next.")
				SAY("A hacker named %NPC_NAME(1) has caused a power failure at one of our regulator stations. Our research was delayed, and several of our outposts defenses were offline for some time. We must ensure the safety of our people, and our projects. Needless to say, the person responsible must be dealt with. That is where you come in. When the target has been removed, return here. Their location was traced to %NPC_WORLD(1).")
				SAY("Due to a power outage caused by %NPC_NAME(1), one of our facilities' radiation shield was deactivated for some time while the personnel were unable to escape. Several of them have begun to mutate and will require weeks of medical treatment. You have been contracted to terminate the individual whose location was logged to %NPC_WORLD(1).")
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
				SAY("Nice job. Hackers targetting our networks will know their place in the future of society. %REWARD_MONEY() credits have been transferred to your account. Further missions can be contracted through one of the terminals.")
				SAY("With your work, that criminal will never bother us again. You're contributation to our success will not go unrewarded. You will find the appropriate amount of %REWARD_MONEY() credits in your account. If you ever need another job, please consult one of the terminals.")
				ACTIVATEDIALOGTRIGGER(1)
				ENDDIALOG()
			end
end
						
		
			