--************************
--name   : SINGLE_CON_ALL_DOME_01.lua
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
		SAY("Hello, whats up?")
		SAY("Yes, Runner? I think you got a problem there.")
		SAY("What? I am very busy. Got it?")
		SAY("What's the matter?") 
		SAY("Yes, I am all yours.")
		SAY("Whatever you want, be quick about it. No foolin around.")
		SAY("I've never seen you before.")
		SAY("You are here cause you want a job, right?")
		SAY("Take it easy, let it flow, Runner.")
		SAY("What'cha want?")
		
		ANSWER("You got a job I am interested in.",2)
		ANSWER("I think you got a job for me.",2)
		ANSWER("Need some work done?",2)
		ANSWER("I am here for the job.",2)
		ANSWER("Forget it, Goodbye.",1)
		ANSWER("I didn't want to speak to you in the first place anyway.",1)
		ANSWER("I wanted to talk to somebody else.",1)
		ANSWER("I made up my mind, Bye.",1)
	NODE(1)
		SAY("Hey, stay out of trouble, right?")
		SAY("Laterz, Runner.")
		SAY("You'd think Ive got something else to do instead of wasting time talking to you. Well, truth is that I ain't.")
		SAY("Might be I've got something for you next time.")
		ENDDIALOG()
	NODE(2)
		--Der Auftrag wird erklärt, fertiges Objekt muss zum Zielobjekt, verkauft construction device 1505
		SAY("We need some Runners to construct a little something for us. To be quiet about the job is essential.")
		SAY("We are behind our schedule big time. T'is the reason why we need you to support us with some constructed items.")
		SAY("Good friends of ours want some items and unfortunately we promised to provide em. But, since our production is down we cannot do them ourselves. That is why we need you...")
		
		ANSWER("What exactly should I construct for you?",8)
	NODE(3)
		SAY("Give the finished stuff to %NPC_NAME(1).")
		SAY("Already enough of that job?")
		SAY("No time, no talk.")
		ENDDIALOG()
	NODE(4)
		--Zielperson, nimmt Objekt
		GETTARGETVALUE(0,2)
		TAKEITEMCNT(result,1)
		if(result==0)then
			SAY("Visit me again once you got what I need.")
			SAY("What do you want? Is this kind of work too much for you?")
			ENDDIALOG()
		else
			SAY("Finally. That'll help us out until we are in business again. Here's your %REWARD_MONEY() credits.")
			SAY("Nice, we'll check the items and send em off again. Promised is promised, here are your %REWARD_MONEY() credits.")
			SAY("Good Work. Feel free to join us again. Here are your %REWARD_MONEY() credits payment.")
			ACTIVATEDIALOGTRIGGER(1)
			ENDDIALOG()
		end
	NODE(5)
		
		SAY("Very well.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(3)
		ENDDIALOG()
	NODE(6)
		SAY("You are lucky, I own a Construction Device. Bought it a while ago. You can have it for 4000 credits. Deal?")
		
		ANSWER("I want to buy it. I have no more time to waste.",7)
		ANSWER("Sorry, not interested. I'll just continue with the job.",5)
	NODE(7)
		TAKEMONEY(4000)
		if(result==0)then
			SAY("You've got no money for that kind of deal.")
			
			ANSWER("Then I'll just have to go back to my work.",5)
		else
			GIVEITEM(1505)
			SAY("Here you are. I hope you won't regret the deal.")
			
			ANSWER("Thank you.",5)
		end
	NODE(8)
		SAY("Construct a %ITEMNAME(%TARGET_VALUE(0,2)) for us and get it to %NPC_NAME(1) in the %NPC_WORLD(1) district.")
		SAY("We need you to get us one of those %ITEMNAME(%TARGET_VALUE(0,2)). Once you got it, get it to %NPC_NAME(1) in the %NPC_WORLD(1) district.")
		
		
		ANSWER("I will start straightaway.",5)
		ANSWER("I might be in need of a Construction Device. Got one for me?",6)
end