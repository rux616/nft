--new
--Fallen Angel02
--
--Trigger
--Triggernumber,Type,Person
--0,D,Grimm (50)
--1,D,Constantine (100)
--2,D,Boujard (150)
--3,D, Constantine (200)
--
--Startnode, Person
--0, Personal Director 
--50, Grimm (Forschungstrakt) 
--100, Constantine (Forschungstrakt)
--150, Rick Boujard (El Farid Village)
--200, Constantine
--
--
--Items
----Chemikalienkonzentrat

function DIALOG()
--------------------------------------------------------------------
--Personal Director
--0

	NODE(0)
		SAY("Your registration process is completed. Here is your ID Cube.")
		
		ANSWER("ID Cube? What is it good for?",1)
	NODE(1)
		SAY("It contains all your personal information and confirms your official affiliation with the Fallen Angels. Of course there is also a second copy of your personal data. Let's talk about something of more important. Judging from the analysis of your personal data the Scientist Council decided to assign an independent research project to you.")
		
		ANSWER("A research project for me? Thank you, but what does that mean? And what do I have to do with it?",2)
		ANSWER("I don't think I am suited for that task. Not yet. I am sorry.",5)
	NODE(2)
		SAY("You will get a project that you will have to research on your own. The list of projects you can choose from is limited, though. After all the project should comply with the greater goals of the Fallen Angels. At least you will get the help of a personal assistant who will lend you a hand now and then.")
		
		ANSWER("That sounds very good. But where should I start?",3)
	NODE(3)
		SAY("Grimm from the Reactor Area 1 has been given the relevant information from the Scientist Council. He will inform you about who will be your personal assistant. Good luck. Your research results will decide over your future rank here with us.")
		SETNEXTDIALOGSTATE(4)
		STARTMISSION()
		ENDDIALOG()
		
	NODE(4)
		SAY("Grimm will be able to give you some more information. You can find him on the research level of the HQ.")
		
		ENDDIALOG()
	NODE(5)
		SAY("It's alright, if you don't feel up to this task.")
		
		ENDDIALOG()
--------------------------------------------------------------------
--Grimm
--50
	NODE(50)
		SAY("You again, I hope you have a valid reason for disturbing my work.")
		
		ANSWER("Of course. You are supposed to help me in order to start my own independent research project.",51)
	NODE(51)
		SAY("They have really given you an independent research project? It took me three long years to get my hands on one of these. Show me your ID Cube, I simply cannot believe this.")
		
		ANSWER("I don't mind. It has been approved by the Scientist Council.",52)
	NODE(52)
		SAY("This is outrageous, this must be a mistake. I will personally see to the culprit who did this.")
		
		ANSWER("Listen now, I have been given this task by a Personal Director and I Don't see any reason at all why I shouldn't start straightaway.",53)
	NODE(53)
		SAY("Alright, you want a project and that's what you are going to get. But don't presume that I will take any part in it. I am assigning Constantine as your personal assistant. Try to use this opportunity, although I believe you will fail miserably.")
		
		ANSWER("Believe whatever you want. Goodbye.",54)
	NODE(54)
		SAY("Just make one mistake, one little mistake and it is Game Over for you, understand?!")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(55)
		ENDDIALOG()
		
	NODE(55)
		SAY("Remember that I will keep an eye on you all the time.")
		
		ENDDIALOG()
--------------------------------------------------------------------
--Constantine
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Maybe we could arrange a meeting later on?")
		else
			SAY("I haven't seen you in a while. Have you already been assigned to a department?")
		
			ANSWER("Yes, I have gotten an independent research project.",101)
		end
	NODE(101)
		SAY("Really? It is rare that such a task is given to a newcomer. You must be pretty skilled then.")
		
		ANSWER("Nothing to brag about. I hoped, now that you have been assigned to me as technical assistant, you could help me out a little.",102)
	NODE(102)
		SAY("Does this mean that we work together on this science project? I have to admit I am a little jealous. I hope Grimm did not hear about this.")
		
		ANSWER("I fear that he was the one who assigned you as technical assistant for me.",103)
	NODE(103)
		SAY("That is no good. I bet he is now brooding of jealousy. I don't think I would like to face him now.")
		
		ANSWER("Yes, he does not seem to like me. But lets get back to where we left off.",104)
	NODE(104)
		SAY("Agreed. The autonomous science projects are always chosen from a Pool of certain projects. These projects will be needed on the long run and therefore they are researched first. Did you already choose one?")
		
		ANSWER("No, not yet at least.",105)
	NODE(105)
		SAY("That must mean that you can still choose one. which one do you choose? At the moment there are two possible projects. A radioactive field dampener and a DNA Resequencer which can correct mutated cells.")
		
		ANSWER("Not easy since they are both very intriguing projects. Maybe it would be easier for me if I knew how they will play together with the higher goal Tech Haven is aiming at.",106)
	NODE(106)
		SAY("I'll explain it to you. By now it is no longer a secret in any case. We will develop a terraformer. It will be able to make our dream of a blue planet true again. But it will still be many decades until it will be finished.")
		
		ANSWER("If that is the case I choose the DNA Resequencer.",107)
		ANSWER("I choose the Field Dampener as research project then.",108)
	NODE(107)
		SAY("Fine with me since the main workload is on your shoulders anyway. That reminds me of a way how the research process could be made easier. If you are interested to follow up a side project.")
		
		ANSWER("Tell me more about it.",109)
	NODE(108)
		SAY("Fine with me since the main workload is on your shoulders anyway. That reminds me of a way how the research process could be made easier. If you are interested to follow up a side project.")
		
		ANSWER("Tell me more about it.",109)
	NODE(109)
		SAY("We have the Blueprint of an implant which greatly increases your science skills and the ability to think more logical. With such an implant this should be a piece of cake, shouldn't it?")
		
		ANSWER("Yes, this sounds very promising. But where is the catch?",110)
	NODE(110)
		SAY("The catch is that the design is not yet finalised and that we would still need to invest some work into it. Different departments worked on and off that project in the past. I still believe it would be worthwhile to invest some more work into it.")
		
		ANSWER("I will follow your suggestion even if that means that work has to go into this project.",111)
	NODE(111)
		SAY("Thank you. If you feel up to it you could start doing something for that project straightaway. Another member has ordered a certain chemical from ProtoPharm especially for this project. Of course all of this is not official since many factions from Neocron are very suspicious of the Fallen Angels. Unfortunately that other member is ill, now we need a replacement. Maybe you could fetch the chemical from the a ProtoPharm employee?")
		
		ANSWER("Ahh, I bet you have planned this all along. First you convince me to work on that implant blueprint and then you get me to fetch this chemical that we need for it, right? But I will do it nontheless, would interest me anyway what ProtoPharm is working on.",112)
	NODE(112)
		SAY("Excellent. Just talk to Rick Boujard in the El Farid village. He should be able to hand you the chemical. I can then forward it for you if you want.")
		
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()

--------------------------------------------------------------------
--Rick Boujard
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("this is a security area, please leave immediately.")
			ENDDIALOG()
		else
			SAY("Hey, Runner! You can't just stroll in here!")
		
			ANSWER("I am supposed to meet a certain Mr Boujard in here. It's all about a certain deal.",151)
		end
	NODE(151)
		SAY("Why didn't you say so in the first place? I have already awaited your arrival. The meeting was supposed to be about three hours ago.")
		
		ANSWER("Unfortunately one of my colleagues suddenly got very ill. I am just a replacement.",152)
	NODE(152)
		SAY("This is very strange to be sure. Can you confirm your identity? I mean I already received the payment but it is a rare chemical after all.")
		
		ANSWER("I fear not, it all happened too fast. But if I wasn't who I claim to be, how could I know about that chemical?",153)
--Chemikalienkonzentrat
	NODE(153)
		GIVEITEM(9300)
		SETNEXTDIALOGSTATE(154)
		SAY("That is right. Well then, here you are. I hope it helps with your Fallen Angel project.")
		
		ANSWER("What do you mean by that?",154)
	NODE(154)
		SAY("You are not from the Fallen Angels? How very stupid of me. Just forget whatever I just said.")
		
		ANSWER("This is really smelling fishy now.",155)
	NODE(155)
		SAY("Don't worry. I have nothing against the people from the Fallen Angels. And you do have the chemical, right? Then just leave this place, alright?")
		SETNEXTDIALOGSTATE(156)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
		
	NODE(156)
		SAY("Go on, leave! I don't think everybody has to know that we have dealings with each other...")
		
		ENDDIALOG()
--------------------------------------------------------------------
--Constantine
--200
	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("You should ask Rick Boujard for the chemical. He can be found in the El Farid village.")
			ENDDIALOG()
		else
			TAKEITEM(9300)
			if(result==0)then
				SAY("Did you manage to get the chemical? It can be found with a certain Rick Boujard in the El Farid village.")
				ENDDIALOG()
			else
				SAY("Nice to see you again, I hope your journey was calm and safe. Do you have the chemical?")
			
				ANSWER("Of course that is the first thing you ask. Yes, I do have the chemical.",201)
			end
		end
	NODE(201)
		SAY("The Bio department will be overjoyed to finally have a sample of this chemical.")
		
		ANSWER("Why is that?",202)
	NODE(202)
		SAY("ProtoPharm is the only company that produces this chemical. Officially they did not want to sell it to us. They possibly have some prejudices against us like many other Neocron factions.")
		
		ANSWER("That reminds me, Mr Boujard knew that I was from the Fallen Angels.",203)
	NODE(203)
		SAY("That really is strange. But what could they do now? After all we have the chemical now. Don't worry too much about it. The Scientist Council did grant you the first research funds. 10000 credits. They can't offer more at the moment or so they say. I am sorry.")
		
		ANSWER("Then I'll have to make do with this. Thank you anyway. Can't we begin with research straightaway?",204)
	NODE(204)
		GIVEMONEY(4000)
		SAY("That would be nice but no. I still have to collect the various data from the different departments before we can start. Why don't you take some time off? You can research or increase your skills on your own for a while. Don't forget to visit a Personal Director now and then since i will inform them about my progress.(next mission at level 30)")
		EPICRUNFINISHED(14,1)
		ACTIVATEDIALOGTRIGGER(3)
		ENDDIALOG()

end