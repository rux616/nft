--************************
--name   : SINGLE_R_ALL_DOME_01.lua
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
		--Der Auftrag wird erklärt, Blaupause muss Zielperson gebracht werden, verkauft research tool
		SAY("We got shitloads of work to do. We need some Runners to get down here and get us some Blueprints.")
		SAY("We've got way too much work on our hands, way too much. simply put, we need you to prduce us some Blueprints.")
		SAY("Since we cannot get our hands on enough Blueprints we need you to get some for us.")
		
		ANSWER("What kind of Blueprints do you require?",8)
		
	NODE(3)
		SAY("Deliver the finished Blueprints to %NPC_NAME(1).")
		SAY("Got problems with your work? Go on and quit if you want to. I won't be the one crying cause you left.")
		SAY("Runner, you got a real attitude problem there. More work, less wasting your time.")
		ENDDIALOG()
	NODE(4)
		--Zielperson, nimmt Blaupause
		GETTARGETVALUE(0,2)
		TAKESPECIALITEMCNT(1507,1,result,3)
		if(result==0)then
			SAY("Not too easy to get those Blueprints, ey? Just keep on trying.")
			SAY("Come up with enough Blueprints first before you bothe me.")
			ENDDIALOG()
		else
			SAY("Nice, now we can keep our promises with our friends. Here's your reward, %REWARD_MONEY() credits plus three datacubes.")
			SAY("Good Quality, I wouldn't have thought you capable enough. Here is your payment, %REWARD_MONEY() credits and because of the good quality three blank datacubes.")
			SAY("Not bad and just in time. %REWARD_MONEY() credits and three datacubes are your reward, right? Here you are, until the next time.")
			GIVEITEM(1501) -- Datacube
			GIVEITEM(1501)
			GIVEITEM(1501)
			ACTIVATEDIALOGTRIGGER(1)
			ENDDIALOG()
		end
	NODE(5)
		SAY("Very well.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(3)
		ENDDIALOG()
	NODE(6)
		SAY("Yes, I happen to have a Research tool on my hands. I'd consider to part with it for 2000 bucks.")
		
		ANSWER("Doesn't matter. I'll buy it.",7)
		ANSWER("I will just continue with the mission straightaway.",5)
	NODE(7)
		TAKEMONEY(2000)
		if(result==0)then
			SAY("You shitting me? Thats so not enough money.")
			
			ANSWER("Then I'll just continue with the job.",5)
		else
			GIVEITEM(1503)
			SAY("Make the best out of it.")
			
			ANSWER("Yes, thank you.",5)
		end
	NODE(8)
		SAY("We are in dire need of 3 %ITEMNAME(%TARGET_VALUE(0,2)) Blueprints. Get them and be quick about it. Give them to %NPC_NAME(1) in the %NPC_WORLD(1) section.")
		SAY("We need 3 %ITEMNAME(%TARGET_VALUE(0,2)) Blueprints in due time. Bring them to %NPC_NAME(1) in the %NPC_WORLD(1) section")
		
	
		ANSWER("Good, I'll start straightaway.",5)
		ANSWER("Hmm, I am still in need of some tools for this job. Do you have something like that?",6)
end