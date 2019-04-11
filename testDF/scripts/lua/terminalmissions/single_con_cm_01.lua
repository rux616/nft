--************************
--name		: SINGLE_CON_CM_01.lua
--ver		: 0.1e
--author	: Lupus
--date		: 2004/09/30
--lang		: en
--desc		: terminal construction mission for first 5 City Merc Construction items TL10,20,30,40,50
--npc		: 190, 192
--************************
--changelog:
--2004/09/30(0.1): Created all new script for new missions using mission only items
--************************

function DIALOG()
	NODE(0)
		SAY("Hello, how can I help you?")
		SAY("Yes, Runner? Do you have a problem?")
		SAY("What? I am very busy.")
		SAY("What's the matter?") 
		SAY("Yes, I am all yours.")
		SAY("Whatever you want, be quick about it.")
		SAY("I don't believe that I know you.")
		SAY("You are here about the job, right?")
		SAY("A productive day, Runner.")
		SAY("If you have a problem, just ask.")
		
		ANSWER("Yes, I am here because of the job you have...",2)
		ANSWER("I believe you have a job for me.",2)
		ANSWER("Do you have work for me?",2)
		ANSWER("I am here for the job.",2)
		ANSWER("Forget it, Goodbye.",1)
		ANSWER("I didn't want to speak to you in the first place anyway.",1)
		ANSWER("I wanted to talk to somebody else.",1)
		ANSWER("I made up my mind, Bye.",1)
	NODE(1)
		SAY("Good luck for ... whatever you do.")
		SAY("Please visit us again.")
		SAY("Goodbye, I too have more pressing business to attend to.")
		SAY("Goodbye. Maybe next time you will be interested in a Job.")
		ENDDIALOG()
		
	NODE(2)
		SAY("We are in need of somebody who can construct some items for us. It would be best without registration numbers since it is for a top secret project.")
		SAY("Yes, we have some slight difficulties with the production of certain items. Because of that we are looking for some Runners who can provide replacement for the missing items.")
		SAY("Important clients are expecting a delivery of special items. The problem we have is that our production is down and we cannot construct the required items. That is why we need you.")
		
		ANSWER("What exactly should I construct for you?",6)
		
	NODE(3)
		SAY("I am sorry but you have to give the finished items to %NPC_NAME(1).")
		SAY("I hope you are not yet bored by the job?")
		SAY("I have no time to speak to you. Just continue with your assignment.")
		ENDDIALOG()
		
	NODE(4)
		GETTARGETVALUE(0,2)
		TAKEITEMCNT(result,1)
		if(result==0)then
			SAY("You didn't yet do anything! Return to me once the work is done.")
			SAY("What do you want? Is this kind of work too much for you?")
			ENDDIALOG()
		else
			SAY("Finally. That will help until our production is up and running again. Here are your %REWARD_MONEY() Credits payment.")
			SAY("Good. We will still check the items ourselves before we send them away again. Here is the promised payment of %REWARD_MONEY() credits.")
			SAY("Good Work. If you have enough time left, feel free to work for us again. Here are your %REWARD_MONEY() credits payment.")
			ACTIVATEDIALOGTRIGGER(1)
			ENDDIALOG()
		end
		
	NODE(5)
		if(node==state)then
		GETTARGETVALUE(0,2)
			if(result==4415)then -- Item 1
				GIVEITEM(4613)
				GIVEITEM(4614)
				GIVEITEM(4615)
				GIVESPECIALITEM(1507,1,4415)
				SAY("Very well, Here is the blueprint and the parts you will need to complete the job.\nGood luck!")
				ACTIVATEDIALOGTRIGGER(0)
				SETNEXTDIALOGSTATE(3)
				ENDDIALOG()
			elseif(result==4416)then --Item 2
				GIVEITEM(4613)
				GIVEITEM(4614)
				GIVEITEM(4616)
				GIVESPECIALITEM(1507,1,4416)
				SAY("Very well, Here is the blueprint and the parts you will need to complete the job.\nGood luck!")
				ACTIVATEDIALOGTRIGGER(0)
				SETNEXTDIALOGSTATE(3)
				ENDDIALOG()
			elseif(result==4417)then --Item 3
				GIVEITEM(4613)
				GIVEITEM(4614)
				GIVEITEM(4617)
				GIVESPECIALITEM(1507,1,4417)
				SAY("Very well, Here is the blueprint and the parts you will need to complete the job.\nGood luck!")
				ACTIVATEDIALOGTRIGGER(0)
				SETNEXTDIALOGSTATE(3)
				ENDDIALOG()
			elseif(result==4418)then --Item 4
				GIVEITEM(4613)
				GIVEITEM(4614)
				GIVEITEM(4618)
				GIVESPECIALITEM(1507,1,4418)
				SAY("Very well, Here is the blueprint and the parts you will need to complete the job.\nGood luck!")
				ACTIVATEDIALOGTRIGGER(0)
				SETNEXTDIALOGSTATE(3)
				ENDDIALOG()
			elseif(result==4419)then --Item 5
				GIVEITEM(4613)
				GIVEITEM(4614)
				GIVEITEM(4619)
				GIVESPECIALITEM(1507,1,4419)
				SAY("Very well, Here is the blueprint and the parts you will need to complete the job.\nGood luck!")
				ACTIVATEDIALOGTRIGGER(0)
				SETNEXTDIALOGSTATE(3)
				ENDDIALOG()
			else
				SAY("Mission Script Error.. Please Report")
				ENDDIALOG()
			end
		end
		
	NODE(6)
		SAY("We would like you to construct a %ITEMNAME(%TARGET_VALUE(0,2)) for us and deliver it to %NPC_NAME(1) in the %NPC_WORLD(1) section.")
		SAY("You need to construct a %ITEMNAME(%TARGET_VALUE(0,2)). Once you have the product go and give it to %NPC_NAME(1) in the %NPC_WORLD(1) section.")
		
		ANSWER("I will start straightaway.",5)
end