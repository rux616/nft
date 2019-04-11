--************************
--name   : SINGLE_AG_BD_02.lua
--ver    : 0.1
--author : Kintama
--date   : 2004/09/08
--lang   : en
--desc   : Single Assassination Group for Blackdragon #2
--npc    : 
--************************
--changelog:
--2004/09/08(0.1): Added description
--************************

function DIALOG()

	NODE(0)
		GENDERCHECK()
			if (result==1) then -- Player is Man:
				SAY("Welcome to Black Dragon. Can I help you?")
				SAY("Good day and welcome to Black Dragon. Can I be of service?")
				SAY("Black Dragon bids you welcome. Are you here about the job?")
				SAY("Greetings, sir. What is your business with the Clan?")
				SAY("You have entered Clan territory, Sir. What or who are you looking for?")
				
				ANSWER("Oh, I am just looking around. Thanks.",1)
				ANSWER("What can you tell me about this place?",1)
				ANSWER("Hey. What is this place?",1)
				ANSWER("Oh sorry, I thought you were someone else.",1)
				ANSWER("Yes, came regarding the contract.",2)
				ANSWER("OK, I heard you required a competent shark.",2)
				ANSWER("All right, I'm here for an assignment I took on the Black Dragon terminal.",2)

			else    -- Player is a Woman:
				SAY("Welcome to Black Dragon, miss...")
				SAY("Good day, miss. Black Dragon welcomes you. Can I be of assistance?")
				SAY("Have you come about the job, miss?")
				SAY("You are on Clan territory, miss. What is you want with Black Dragon?")
				SAY("The Clan welcomes you. What, or who, are you looking for?")
				
				ANSWER("I am just looking around. Thanks.",1)
				ANSWER("What can you tell me about this place?",1)
				ANSWER("Nice place. What do you do here?",1)
				ANSWER("Pardon me, I thought you were someone else.",1)
				ANSWER("Yes, I cae about the job.",2)
				ANSWER("Greetings, the Black Dragon terminal referred me to you regarding an assignment.",2)

			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("If you don't have any business with Black Dragon, I suggest you leave, before we remove you.")
				SAY("If you have no real business here I suggest you leave, sir. Preferably before you overstay your welcome.")
				SAY("For general information about the Clan please consult the terminals.")
				SAY("Thank you for the visit, sir. Now leave.")
				ENDDIALOG()
			else
				SAY("If you don't have any business with Black Dragon I suggest you leave, before we remove you.")
				SAY("If you have no real business here I suggest you leave, miss. Preferably before you overstay your welcome.")
				SAY("For general information about the Clan please consult the terminals.")
				SAY("Thank you for the visit, miss. Now leave.")
				ENDDIALOG()
			end
	NODE(2) -- Giving Mission
			SAY("We need to make a show of force, to demonstrate our strength. There are some %TARGET_NPCNAME(0) in the area. It would please us if you killed %TARGET_VALUE(0,1) of them. Come back here when you are done.")
			SAY("The Clan needs to send a message out, a message of power. We want you to kill %TARGET_VALUE(0,1) of the %TARGET_NPCNAME(0) in the faction area. Get back to me afterwards so we can talk about compensation.")
			SAY("For reasons you do not need to know, it has become necessary for the Clan to make a show of force. Kill at least %TARGET_VALUE(0,1) of the %TARGET_NPCNAME(0) in this area. Then get back to me for compensation.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- Mission is not accomplished
				SAY("Shark, there are more %TARGET_NPCNAME(0) left. Failure is not acceptable...")
				SAY("Shark, you haven't done as you were told. Destroy the %TARGET_NPCNAME(0) or prepare to face the music...")
				SAY("Shark, I hired you to do a job. Kill the %TARGET_NPCNAME(0) or you might find yourself on the recieving end.")
				SAY("You have your assignment, shark. Make it happen.")
				ENDDIALOG()
			else -- Mission was accomplished
				SAY("My soldiers inform me that you have succeeded. A reward of %REWARD_MONEY() credits has been transfered to your account. I take it this offer is acceptable?")
				SAY("Well done, shark. All %TARGET_NPCNAME(0) are dead. %REWARD_MONEY() credits have been moved to your acccount. Check the terminals for more assignments.")
				SAY("Impressive work, young shark. The %REWARD_MONEY() credits have been moved to your account. Black Dragon appretiates your dedication.")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
