--************************
--name   : SINGLE_RC_ALL_NEOCRON_01.lua
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
		--Der Auftrag wird erklärt, fertiges Objekt muss zum Zielobjekt, verkauft recycling device 1500
		SAY("Certain valued materials are needed to realise the newest developments. And that is where we need you.")
		SAY("It might just be possible that recycling is the future for us. Even now ist is sometimes cheaper to recycle than to acquire pure substances. Because of that we need people like you.")
		SAY("The recycled materials are almost as good quality as those that are produced pure. And this is going to be your job.")
		
		ANSWER("What exactly do I have to do?",8)
	NODE(3)
		SAY("I am sorry but you will have to get the finished materials to %NPC_NAME(1).")
		SAY("I hope you experienced no problems with this job so far?")
		SAY("Please continue with your job and do not waste my valuable time.")
		ENDDIALOG()
	NODE(4)
		--Zielperson, nimmt recycletes Objekt
		GETTARGETVALUE(0,2)	
		TAKEITEMCNT(result,5)
		if(result==0)then
			SAY("Didn't %NPC_NAME(0) tell you that I really need those materials? Hurry and get them for me.")
			SAY("What? Don't you find enough material to recycle?")
			ENDDIALOG()
		else
			SAY("Thank you! And the quality isn't too bad either. Here is your reward, %REWARD_MONEY() credits. You might just have a future in recycling.")
			SAY("Well done. It wasn't too difficult with all that rubbish lying around, wasn't it? Here are your %REWARD_MONEY() credits payment.")
			SAY("You really earned the %REWARD_MONEY() credits. I am already looking forward to the next time you will be working for us.")
			ACTIVATEDIALOGTRIGGER(1)
			ENDDIALOG()
		end
	NODE(5)
		SAY("Good luck with your work.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(3)
		ENDDIALOG()
	NODE(6)
		SAY("Yes, I could provide you with a Recycling Device but it will cost you 700 credits. I don't have much of them left, I fear. ")
		
		ANSWER("That doesn't matter. I would still like to buy it.",7)
		ANSWER("No thanks, I'd rather continue with the job.",5)
	NODE(7)
		TAKEMONEY(700)
		if(result==0)then
			SAY("For that money I cannot provide you with a Recycling Device. I am sorry.")
			
			ANSWER("Very well, then I'll just continue with the job.",5)
		else
			GIVEITEM(1500)
			SAY("Here you are. I hope you will be content with it.")
			
			ANSWER("Yes, I am sure of that.",5)
		end
	NODE(8)
		SAY("Your mission is to recycle 5 %ITEMNAME(%TARGET_VALUE(0,2)) out of other materials and to hand them over to %NPC_NAME(1) in the %NPC_WORLD(1) section.")
		SAY("%NPC_NAME(1) in the %NPC_WORLD(1) district is already waiting for 5 %ITEMNAME(%TARGET_VALUE(0,2)). It would be best if you could recycle those materials as soon as possible and then bring them over to %NPC_NAME(1)")

		ANSWER("I will start straightaway.",5)
		ANSWER("I still need a recycling tool for this kind of work. Do you have something like that?",6)
end