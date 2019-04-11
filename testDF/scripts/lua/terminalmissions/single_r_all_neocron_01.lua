--************************
--name   : SINGLE_R_ALL_NEOCRON_01.lua
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
		--Der Auftrag wird erklärt, Blaupause muss Zielperson gebracht werden, verkauft research tool
		SAY("We have a lot of work on our hands, that's why we need Runners like you who can create some Blueprints for us.")
		SAY("It's simply too much work that we have to do. We simply need the support of some Runners who can produce some Blueprints for us.")
		SAY("We are in need of certain Blueprints because we are drowning in work and cannot create them ourselves.")
		
		ANSWER("What kind of Blueprints do you require?",8)
		
	NODE(3)
		SAY("I am sorry but you need to deliver the finished Blueprints to %NPC_NAME(1).")
		SAY("I hope you don't have problems with the Job?")
		SAY("Continue with your work instead of bothering me.")
		ENDDIALOG()
	NODE(4)
		--Zielperson, nimmt Blaupause
		GETTARGETVALUE(0,2)
		TAKESPECIALITEMCNT(1507,1,result,3)
		if(result==0)then
			SAY("Those Blueprints are not too easy to produce, ey? Just keep on trying.")
			SAY("First you should produce enough Blueprints, before your come to me.")
			ENDDIALOG()
		else
			SAY("Nice, now we can keep our contracts and supply our clients in time. Here are your %REWARD_MONEY() credits reward plus three datacubes.")
			SAY("Good Quality, I wouldn't have thought you capable enough. Here is your payment, %REWARD_MONEY() credits and because of the good quality three blank datacubes.")
			SAY("Not bad and just in time. %REWARD_MONEY() credits and three datacubes are your reward, right? Here you are, it was a pleasure to work with you.")
			GIVEITEM(1501) -- Datacube
			GIVEITEM(1501)
			GIVEITEM(1501)
			ACTIVATEDIALOGTRIGGER(1)
			ENDDIALOG()
		end
	NODE(5)
		SAY("Good luck.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(3)
		ENDDIALOG()
	NODE(6)
		SAY("Yes, I can supply a Research Tool but it costs 2000 credits. I'm sorry but I am not a convenient store.")
		
		ANSWER("Doesn't matter. I'll buy it.",7)
		ANSWER("I will just continue with the mission straightaway.",5)
	NODE(7)
		TAKEMONEY(2000)
		if(result==0)then
			SAY("I am sorry but you haven't got enough money.")
			
			ANSWER("Then I'll just continue with the job.",5)
		else
			GIVEITEM(1503)
			SAY("Here you are. I hope you will be content.")
			
			ANSWER("Yes, thank you.",5)
		end
	NODE(8)
		SAY("We are in dire need of 3 %ITEMNAME(%TARGET_VALUE(0,2)) Blueprints. It would be fortunate if those Blueprints were available soon. Give them to %NPC_NAME(1) in the %NPC_WORLD(1) section.")
		SAY("We need 3 %ITEMNAME(%TARGET_VALUE(0,2)) Blueprints as fast as possible. Bring them to %NPC_NAME(1) in the %NPC_WORLD(1) section")
		
	
		ANSWER("Good, I'll start straightaway.",5)
		ANSWER("Hmm, I am still in need of some tools for this job. Do you have something like that?",6)
end