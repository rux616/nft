--************************
--name   : Research_Template
--ver    : 0.1
--author : Lupus
--date   : 2004/09/30
--lang   : en
--desc   : terminal research mission template
--npc    : 
--************************
--changelog:
--2004/09/30(0.1): Created new Template for research missions based on new mission only items.
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
		SAY("We have a lot of work on our hands, that's why we need Runners like you who can create some Blueprints for us.")
		SAY("It's simply too much work that we have to do. We simply need the support of some Runners who can produce some Blueprints for us.")
		SAY("We are in need of certain Blueprints because we are drowning in work and cannot create them ourselves.")
		
		ANSWER("What kind of Blueprints do you require?",6)
		
	NODE(3)
		SAY("I am sorry but you need to deliver the finished Blueprints to %NPC_NAME(1).")
		SAY("I hope you don't have problems with the Job?")
		SAY("Continue with your work instead of bothering me.")
		ENDDIALOG()
	NODE(4)
		--Zielperson, nimmt Blaupause
		if(node==state)then
			GETTARGETVALUE(0,2)
			TVal = result
			TAKESPECIALITEMCNT(1507,1,TVal,3) -- Take 3 Blueprints of the item
				if(result==0)then
					SAY("Those Blueprints are not too easy to produce, ey? Just keep on trying.")
					SAY("First you should produce enough Blueprints, before your come to me.")
					ENDDIALOG()
				else
					TAKEITEM(TVal) -- Take Original Item
						if(result==0)then
							GIVESPECIALITEM(1507,1,TVal) -- Give Back blueprints of item due to no original given
							GIVESPECIALITEM(1507,1,TVal)
							GIVESPECIALITEM(1507,1,TVal)
							SAY("I'll need the original item back as well before I can accept these blueprints.")
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
				end
		end
	NODE(5)
		if(node==state)then
			GETTARGETVALUE(0,2)
			GIVEITEM(result)
			SAY("Heres a copy of the original item to create your blueprints from.\nGood luck.")
			ACTIVATEDIALOGTRIGGER(0)
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
		end
	NODE(6)
		SAY("We are in dire need of 3 %ITEMNAME(%TARGET_VALUE(0,2)) Blueprints. It would be fortunate if those Blueprints were available soon. Give them to %NPC_NAME(1) in the %NPC_WORLD(1) section.")
		SAY("We need 3 %ITEMNAME(%TARGET_VALUE(0,2)) Blueprints as fast as possible. Bring them to %NPC_NAME(1) in the %NPC_WORLD(1) section")
		
		ANSWER("Good, I'll start straightaway.",5)
end