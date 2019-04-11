--************************
--name   : SINGLE_RC_ALL_DOME_01.lua
--ver    : 0.1
--author : Kintama
--date   : 2004/09/09
--lang   : en
--desc   : Recycling Mission for Dome of York
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
		--Der Auftrag wird erklärt, fertiges Objekt muss zum Zielobjekt, verkauft recycling device 1500
		SAY("We need more stuff to put together some of our masterpieces. That's why we need your skills.")
		SAY("I tell you, recycling is the grand new future for us. Its much cheaper than buying all that shit. That's were we need Runners to support that.")
		SAY("The recycled materials are almost as nice compared to the real stuff. That'll be your job then to get some recycled stuff, got it?")
		
		ANSWER("What exactly do I have to do?",8)
	NODE(3)
		SAY("Get the materials to %NPC_NAME(1).")
		SAY("Got problems? Hey, this kind of job is not for everybody.")
		SAY("Yeah, if you continue talking to me you'll end up with no reward at all.")
		ENDDIALOG()
	NODE(4)
		--Zielperson, nimmt recycletes Objekt
		GETTARGETVALUE(0,2)	
		TAKEITEMCNT(result,5)
		if(result==0)then
			SAY("Don't you have brains in your head? Don't forget to bring me the materials next time.")
			SAY("What? Don't you find enough material to recycle?")
			ENDDIALOG()
		else
			SAY("Thanks! And the quality isn't too shabby either. Here is your reward, %REWARD_MONEY() credits. You might just have a future in recycling.")
			SAY("Well done. It wasn't too difficult with all that rubbish lying around, wasn't it? Here are your %REWARD_MONEY() credits payment.")
			SAY("You really earned that cash, %REWARD_MONEY() credits. Looking forward to see you working for us again.")
			ACTIVATEDIALOGTRIGGER(1)
			ENDDIALOG()
		end
	NODE(5)
		SAY("Keep on working.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(3)
		ENDDIALOG()
	NODE(6)
		SAY("Yes, I could provide you with a Recycling Device but it will cost you 700 credits. I don't have much of that shit left, I think. ")
		
		ANSWER("Doesn't matter. I would still like to buy it.",7)
		ANSWER("No thanks, I'd rather continue with the job.",5)
	NODE(7)
		TAKEMONEY(700)
		if(result==0)then
			SAY("Are you kidding me? You can't buy squat with that money.")
			
			ANSWER("Very well, then I'll just continue with the job.",5)
		else
			GIVEITEM(1500)
			SAY("Here you go, be content with it.")
			
			ANSWER("Yes, I am sure of that.",5)
		end
	NODE(8)
		SAY("Your mission is to recycle 5 %ITEMNAME(%TARGET_VALUE(0,2)) out of other materials and to hand them over to %NPC_NAME(1) in the %NPC_WORLD(1) section.")
		SAY("%NPC_NAME(1) in the %NPC_WORLD(1) district is already waiting for 5 %ITEMNAME(%TARGET_VALUE(0,2)). Best to get the job done sooner than later.")

		ANSWER("I will start straightaway.",5)
		ANSWER("What about some tools or am I supposed to dig through that trash with my teeth?",6)
end