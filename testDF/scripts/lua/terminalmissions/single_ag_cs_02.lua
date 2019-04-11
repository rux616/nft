--************************
--name   : SINGLE_AG_CS_02.lua
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
			SAY("Greetings Brother, how may I help you?")
			SAY("Praise be to Crahn, Brother. Now what do you seek?")
			SAY("You require my assistance, Brother?")
				
			ANSWER("I am here for the vermin extermination. So what do i have to do?",1)
			ANSWER("About that vermin extermination job.",1)
			ANSWER("Never mind. Bye",4)

		else
			SAY("Greetings Sister,how may I help you?")
			SAY("Praise be to Crahn, Sister. Now what do you seek?")
			SAY("You require my assistance, Sister?")
				
			ANSWER("I am here for the vermin extermination. So what do i have to do?",1)
			ANSWER("About that vermin extermination job.",1)
			ANSWER("Never mind. Bye",4)
		end

	NODE(1)
		SAY("Ahh yes, disciple, the presence of %TARGET_NPCNAME(0) disturbs the psychic aura locally, making it hard to focus our powers, which is inconvenient as we wish to perform certain rituals later on today. Go forth into the local area and seek out and destroy %TARGET_VALUE(0,1) of them, that should be enough to restore the required psychic field. Once you have completed the mission return to me and you will be suitably rewarded.")
		SAY("Ahh yes, disciple, the presence of %TARGET_NPCNAME(0) disturbs the psychic aura locally, making it hard to focus our powers, which is inconvenient as we wish to perform certain rituals later on today. Go forth into the local area and seek out and destroy %TARGET_VALUE(0,1) of them, that should be enough to restore the required psychic field. Once you have completed the mission return to me and you will be suitably rewarded.")
		SAY("We have a pest contol problem at the moment locally with %TARGET_NPCNAME(0). Ordinarily we would resolve the matter ourselves, however many of the Brotherhood are busy at mass at present. Do the Brotherhood a service disciple and put an end to say, %TARGET_VALUE(0,1) of the %TARGET_NPCNAME(0), that should keep them away for a while until we can take the situation in hand.")
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				SAY("Disciple, do you you question the instructions of the the Brotherhood? Please return only when your task is complete.")
				SAY("Return only when the streets have been cleansed of the unholy.")
				ENDDIALOG()
			else
				SAY("Good work disciple, accept these %REWARD_MONEY() credits as a sign of the Brotherhood's appreciation.")
				SAY("Praise be to Crahn, your efforts are to the benefit of us all, accept these %REWARD_MONEY() credits as as sign of the Brotherhood's appreciation.") 
				ACTIVATEDIALOGTRIGGER(1)
				ENDDIALOG()
			end
	NODE(4)
		SAY("Good day, disciple.")
		SAY("Return when your thoughts are clearer, disciple.")
		ENDDIALOG()
end

