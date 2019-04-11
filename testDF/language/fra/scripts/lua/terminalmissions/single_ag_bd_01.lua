--************************
--name   : SINGLE_AG_BD_01.lua
--ver    : 0.1
--author : Kintama
--date   : 2004/09/08
--lang   : en
--desc   : Single Assassination Group for Blackdragon
--npc    : 
--************************
--changelog:
--2004/09/08(0.1): Added description
--************************

function DIALOG()

	NODE(0)
		GENDERCHECK()
			if (result==1) then
				SAY("Welcome to Black Dragon. Can I help you?")
				SAY("Good day and welcome to Black Dragon. Can I be of service?")
				SAY("Black Dragon bids you welcome. Are you here about the job?")
				SAY("Greetings, sir. What is your business with the Clan?")
				SAY("You have entered Clan territory, sir. What or who are you looking for?")
				
				ANSWER("Oh, I am just looking around. Thanks.",1)
				ANSWER("What can you tell me about this place?",1)
				ANSWER("Hey. What is this place?",1)
				ANSWER("Oh sorry, I thought you were someone else.",1)
				ANSWER("Yes, came regarding the contract.",2)
				ANSWER("OK, I heard you required a competent shark.",2)
				ANSWER("All right, I'm here for an assignment I took on the Black Dragon terminal.",2)

			else    
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
				SAY("If you don't have any business with Black Dragon I suggest you leave, before we remove you.")
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
			SAY("People under our protection have complained about aggressive %TARGET_NPCNAME(0) in the area. It would please us greatly if you killed %TARGET_VALUE(0,1) of them. Swing by here ones you are done.")
			SAY("Some of our... clients... have been having problems with %TARGET_VALUE(0,1) %TARGET_NPCNAME(0) in the faction area. Kill them and get back to me so we can talk about compensation.")
			SAY("Well then, to the business at hand. We have had reports of troublesome %TARGET_NPCNAME(0) in this area. Kill atleast %TARGET_VALUE(0,1) of them and then get back to me for compensation.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- Mission is not accomplished
				SAY("You haven't done your job yet. There are more %TARGET_NPCNAME(0) left. Failure is not acceptable...")
				SAY("Shark, you haven't done as you were instructed. Destroy the %TARGET_NPCNAME(0) or pay the price of failure.")
				SAY("Shark, I hired you to do a job. Failure is not acceptable. Neither is laziness. Do the job or prepare to run. Far.")
				SAY("You have your assignment, Shark. See to it.")
				ENDDIALOG()
			else -- Mission was accomplished
				SAY("My soldiers tell me you have succeeded. Good. A reward of %REWARD_MONEY() credits will be transfered to your account. I hope the offer is acceptable?")
				SAY("Nicely done, shark. Very nicely done. All %TARGET_NPCNAME(0) have been killed. %REWARD_MONEY() credits have been moved to your acccount. Check the terminals for more assignments.")
				SAY("You are crude but efficient, young shark. The %REWARD_MONEY() credits have been moved to your account. The Black Dragons always have need for people like yourself.")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
