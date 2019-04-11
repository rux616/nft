--************************
--name   : SINGLE_AS_CS_01.lua
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
		if (result==1) then
			SAY("Greetings, Brother, how may I help you?")
			SAY("Praise be to Crahn, Brother. Now what do you seek?")
			SAY("You require my assistance, Brother?")
				
			ANSWER("Nice place, do you have anything to do around here?",1)
			ANSWER("Do you have a dispatch job?",2)
			ANSWER("Never mind. Bye",4)

		else
			SAY("Greetings, Sister, how may I help you?")
			SAY("Praise be to Crahn, Sister. Now what do you seek?")
			SAY("You require my assistance, Sister?")
				
			ANSWER("Nice place, do you have anything to do around here?",1)
			ANSWER("Do you have a dispatch job?",2)
			ANSWER("Never mind. Bye",4)
		end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Begone, Brother, your presence upsets my inner balance!")
				SAY("Now is a time for innner reflection, Brother, disturb me not.")
				ENDDIALOG()
			else
				SAY("Begone, Sister, your presence upsets my inner balance!")
				SAY("Now is a time for innner reflection, Sister, disturb me not.")
				ENDDIALOG()
			end
	NODE(2)
		
				SAY("%NPC_NAME(1), used to be one of our order, but were banished in disgrace due to financial irregularities. Now we understand that they have been approached by Neocronicle to write an article about life in the Brotherhood. We fear that they may betray the solemn oath of silence that binds us. Go to %NPC_WORLD(1) find %NPC_NAME(1), and close their lips... permanently, as an example to all who would think to betray the Brotherhood. Once the task is complete return here to receive your reward.")
				SAY("Our sources on the streets tell us that %NPC_NAME(1) is the leader of a minor cult, that actively preaches against the teachings of Crahn. Locate %NPC_NAME(1) in %NPC_WORLD(1), and make history of the heretic. Once you have completed the task, return here and you will be rewarded.")       
				SAY("%NPC_NAME(1) has been attempting to gain information regarding the Brotherhood's inner circle. We do not tolerate spies. Go to %NPC_WORLD(1), and put and end to their investigation. Once you have completed the task, return to me for your reward.")
				SETNEXTDIALOGSTATE(3)
				ENDDIALOG()

	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				SAY("I thought your instructions were clear, disciple, do not return until you have eliminated the target. Only then can you recieve your reward.")
				SAY("Why do you linger, disciple, time is of the essence! Eliminate the unholy before it is too late. Only when the task is complete will you know the benevolence of Crahn.")
				ENDDIALOG()
			else
				GENDERCHECK()
					if (result==1) then
						SAY("Excellent work, Brother, here, accept these %REWARD_MONEY() credits, as a token of the Brotherhood's continued faith in your abilities. Now begone and speak to no one of what has occurred.")
						SAY("Your efforts please Golon Kalah greatly, he has asked me personally to give you these %REWARD_MONEY() credits, as a gesture of his appreciation, Brother. Now begone and speak to no one of what has occurred.")
						SAY("Your efforts are not in vain Brother, accept these %REWARD_MONEY() credits, as a token of the Brotherhood's appreciation. Now begone and speak to no one of what has occurred.")  
						ACTIVATEDIALOGTRIGGER(1)
						ENDDIALOG()
					else
						SAY("Excellent work, Sister, here, accept these %REWARD_MONEY() credits, as a token of the Brotherhood's continued faith in your abilities. Now begone and speak to no one of what has occurred.")
						SAY("Your efforts please Golon Kalah greatly, he has asked me personally to give you these %REWARD_MONEY() credits, as a gesture of his appreciation, Sister. Now begone and speak to no one of what has occurred.")
						SAY("Your efforts are not in vain Sister, accept these %REWARD_MONEY() credits, as a token of the Brotherhood's appreciation. Now begone and speak to no one of what has occurred.") 
						ACTIVATEDIALOGTRIGGER(1)
						ENDDIALOG()
					end
			end
	NODE(4)
		SAY("Good bye.")
		ENDDIALOG()
end
						
		
			