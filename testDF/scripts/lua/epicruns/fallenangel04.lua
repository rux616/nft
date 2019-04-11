--new
--Fallen Angel Muster
--
--Trigger
--Triggernumber,Type,Person
--0,D,cONSTANTINE
--1,D,Gregory
--2,D,Figaro
--3,D,Constantine(200)
--
--Startnode, Person
--0, Personal Director
--50, Constantine
--100, Rick Boujard	
--150, Figaro
--200, Constantine
--250,
--
--Items
----703-Destrosol, 720-Whiteflash, 721-Destrosol
--Grimm Id Cube

function DIALOG()
--------------------------------------------------------------------
-- Personal Director
--0
	
	NODE(0)
		SAY("Constantine informed me that she would like to speak to you. The topic she says is a person you only know too well.")

		ANSWER("I will visit her immediately.",1)
		ANSWER("It just isn't possible at the moment...",2)
	NODE(1)
		SAY("Apart from that there are no real news.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(3)
		ENDDIALOG()
	
	NODE(2)
		SAY("Hmm, all right but just don't let her wait too long...")
		ENDDIALOG()
	NODE(3)
		SAY("Didn't you want to speak to Constantine in the Reactor Area 1 in Tech Haven?")

		ENDDIALOG()
--------------------------------------------------------------------
-- Constantine
--50
	NODE(50)
		SAY("Finally. I urgently wanted to speak to you about Grimm. All this bad luck recently can't just be pure coincidence.")

		ANSWER("You're damn right it can't. You can be sure that something is wrong here.",51)
	NODE(51)
		SAY("What does this mean? Tell me about it.")

		ANSWER("Well, when I met the ProtoPharm employee he accidentally said that I am coming from the Fallen Angels.  But where should he know that from? Later on the chemical I got from him turned out to be contaminated. And there is more.",52)
	NODE(52)
		SAY("I am beginning to understand what you mean.")

		ANSWER("Before this Max brute almost killed me he told me that he was paid by Crahn to do so. But the question is, why did he have a good look at my ID Cube first, before attacking me?",53)
	NODE(53)
		SAY("So it was a trap after all. He had to make sure that it is really you. He wanted to make sure that you are the right person.")

		ANSWER("Right! And the only other person, apart from you, that knew about me looking for this chemical was Grimm.",54)
	NODE(54)
		SAY("This sounds all too convincing but just because Grimm is being unfriendly to you it doesn't condemn him. He is unfriendly to almost anybody. But if it really was him he must have left some kind of traces.")

		ANSWER("True, but I'll be damned if I knew where to start looking. ",55)
	NODE(55)
		SAY("Maybe you could get some additional information from Rick Boujard. You might just have to be very convincing.")

		ANSWER("It's at least worth a try. If this helps to prevent further interruptions it'll definitely be worth it.",56)
	NODE(56)
		SAY("In the meanwhile I will try to gather some information from the net, ok? Be sure to return later and tell me what you found out.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()
		
	

--------------------------------------------------------------------
-- Rick Boujard
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("This is as far as you get! What are you thinking? This is a restricted area.")
			ENDDIALOG()
		else
			SAY("I don't have time just now. How did you get in here? Wait... somehow you look familiar.")

			ANSWER("Yes, I certainly do. Remember? I am the one who got that chemical from you.",101)
		end
	NODE(101)
		SAY("It's you! What do you want from me? I thought you already had the chemical. End of story.")

		ANSWER("Did you know that the chemical I got from you was contaminated?",102)
	NODE(102)
		SAY("I don't have a clue what you are talking about. I'm sorry. I have given a perfectly pure chemical to your hands. It's non of my business what you did to it afterwards.")

		ANSWER("Who contaminated the chemical? Who ordered you to turn my life into a mess?",103)
	NODE(103)
		SAY("What do you think I am doing here all day? Do you really think it is my job to cheat people like you?")

		ANSWER("I only know that the chemical was contaminated. And I finally want to know who is behind all this.",104)
	NODE(104)
		SAY("Alright, let me tell you something. I would be willing to tell you from whom I got that chemical in the first place against a small fee. Lets say about 5000 credits? Acceptable enough?")

		ANSWER("Alright, that's all I want to know, anyway.",105)
	NODE(105)
		TAKEMONEY(5000)
		if(result==0)then
			SAY("First, I want my money.")
			ENDDIALOG()
		else
			SAY("It was a certain Black Dragon Dealer. His name was Figaro. Rather suspicious kind of guy. He gave me that chemical and some instructions but I believe the chemical was still pure at that point. I can't be sure of course.")

			ANSWER("I don't understand how a ProtoPharm employee has to buy chemicals from a Black Dragon.",106)
		end
	NODE(106)
		SAY("I don't have to, it was part of a deal and it got me some money. That's all I am prepared to tell you.")
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(107)
		ENDDIALOG()
		
	NODE(107)
		SAY("Look for Figaro in the Pepper Park area. He can possibly tell you more about it.")

		ENDDIALOG()

--------------------------------------------------------------------
-- Figaro
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Hey Runner, I would really like to help you out on this one. But I haven't got that many drugs left.")
			ENDDIALOG()
		else
			SAY("Hey, Runner! You really look as if you need some drugs. How 'bout it?")

			ANSWER("Right you are. What can you offer today?",152)
			ANSWER("No, I'm not here to get myself drugged.",151)
		end
	NODE(151)
		SAY("That is a shame. I was just beginning to like you. Now get lost, somebody who doesn't want to buy my drugs is suspicious to me.")
		ENDDIALOG()

	NODE(152)
		SAY("I've only got the best of the best. X-Strong in case you ever wanted to pay back your arch enemy in style. Or maybe you want to be real fast, then your choice would be Whiteflash. If however you are one of those brainiacs and have trouble with your concentration you should really try Destrosol. True, that stuff is usually best for PSI Monks but I guarantee that you will feel as fresh as never before.")

		ANSWER("I'll take Whiteflash.",153)
		ANSWER("I'll take X-Strong.",154)
		ANSWER("I'll take Destrosol.",155)
--703-Destrosol, 720-Whiteflash, 721-Destrosol
	NODE(153)
		TAKEMONEY(500)
		if(result==0)then
			SAY("No money, no pleasure.")
			ENDDIALOG()
		else
			GIVEITEM(720)
			SAY("Excellent choice. I'll give it to you for a special price since we just met. And if you ever need some more of it I think you know where to find me.")

			ANSWER("Since we are friends now, you might be able to answer a small question for me, eh?",156)
		end
	NODE(154)
		TAKEMONEY(500)
		if(result==0)then
			SAY("No money, no pleasure.")
			ENDDIALOG()
		else
			GIVEITEM(721)
			SAY("Excellent choice. I'll give it to you for a special price since we just met. And if you ever need some more of it I think you know where to find me.")

			ANSWER("Since we are friends now, you might be able to answer a small question for me, eh?",156)
		end
	NODE(155)
		TAKEMONEY(500)
		if(result==0)then
			SAY("No money, no pleasure.")
			ENDDIALOG()
		else
			GIVEITEM(703)
			SAY("Excellent choice. I'll give it to you for a special price since we just met. And if you ever need some more of it I think you know where to find me.")

			ANSWER("Since we are friends now, you might be able to answer a small question for me, eh?",156)
		end
	NODE(156)
		SAY("But of course, I am always trying to help my friends. What do you want to know?")

		ANSWER("How should I put it... I've got a friend at ProtoPharm. You might know him actually, Rick Boujard is his name.",157)
	NODE(157)
		SAY("Yes, that does ring a bell. What is it with him?")

		ANSWER("He got a very special delivery from you and now he needs more of that stuff. He already gave everything away he got in the first place.",158)
	NODE(158)
		SAY("Sorry, Runner, no can do. That was a once in a lifetime delivery from Tangent. Some kind of guy named Miles got it for me. Don't ask why they gave it to me with the instruction to hand it over to Rick. They did pay well, however. But I could get you some other drugs if you want to.")

		ANSWER("Thanks, I'd rather try out the ones I just got. See you around.",159)
	NODE(159)
		SAY("Ok, if you ever need some drugs again...")
		ACTIVATEDIALOGTRIGGER(2)
		SETNEXTDIALOGSTATE(160)
		ENDDIALOG()
		
	NODE(160)
		SAY("I'm sorry friend, I don't have any drugs left.")

		ENDDIALOG()


--------------------------------------------------------------------
--Constantine
--200
	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Did you already follow the trace from Rick Boujard in the El Farid village?")
			ENDDIALOG()	
		else
			SAY("I already wondered if something happened to you. Did you find out anything?")

			ANSWER("Well, at least I know now that the chemical originates from Tangent.",201)
		end
	NODE(201)
		SAY("Do you have proof for this or is it just idle speculation? ")

		ANSWER("No, I only know the name of the messenger. It is a certain Fargo Miles.",202)
	NODE(202)
		SAY("Well, at least something. Maybe this plays together with what I found out. According to the schedule Grimm has recently left Tech Haven several times.")

		ANSWER("I fail to see how this would help us. ",203)
	NODE(203)
		SAY("I am coming to that. I caught two emails that were sent to Tangent and Crahn. Luckily Grimm seemed to have totally forgotten to delete the system history log. The emails give away a location where Grimm deposited some compromising Data.")

		ANSWER("This means that Grimm forwarded information to Crahn and Tangent? Then it is true after all. That is why I encountered resistance at every other step I made.",204)
	NODE(204)
		SAY("Yes, this must be how it happened. But we base it all on assumptions only. The emails are not very forthcoming as evidence either. We don't even know where this mysterious deposite location might be.")

		ANSWER("That means this is a dead end...",205)
		ANSWER("What about surveillance videos that could help us?",206)
		ANSWER("What about the data that Grimm took with him when he left Tech Haven?",208)
	NODE(205)
		SAY("This means we will have to give up. It's a shame.")

		ENDDIALOG()
	NODE(206)
		SAY("What do you mean?")

		ANSWER("Well, the CityAdmin or NCPD in Neocron must have some kind of surveillance videos for Fargo Miles. If we are lucky they will show him picking up the deposited information. Then we would know where that location is.",207)
	NODE(207)
		SAY("Will be done in a second. You can come back in a few minutes. Until then I will hopefully have something.")
		SETNEXTDIALOGSTATE(209)
		ENDDIALOG()
		
	NODE(208)
		SAY("No way, the logs have all been deleted by now.")

		ANSWER("He must have planned this through very thoroughly.",204)


	NODE(209)
		SAY("This really already took long enough. And I failed to directly access the NCPD data files but I was lucky and found a video from the Sherman Bay sector. According to the ID Fargo Miles is on that video, although I can't be one hundred percent sure.")

		ANSWER("Does it show the locaction we are looking for? Anything that would help us?",210)
	NODE(210)
		SAY("Hmm, I thought I recognized some satellite dishes. Fargo did enter a building and took something from a security box which he opened with a code. But the video clip ends there. There certainly is something in that box.")

		ANSWER("Sherman Bay you are saying? I think I have to go there personally.",211)
	NODE(211)
		SAY("Good luck. I think I have reached the limit for what I can do with the help of the net. I have already tried everything. But be sure to tell me what you found out, ok?")
		SETNEXTDIALOGSTATE(212)
		ENDDIALOG()
--Spieler besucht Sherman Bay und findet dort im Dungeon eine Hack Box, in dem er einen
--Datacube mit belastendem Material findet.
-- Grimm ID Cube

	NODE(212)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("We need more information. Have you already visited Rick Boujard?")
			ENDDIALOG()
		else
			TAKEITEM(9301)
			if(result==0)then
				SAY("Did you already look at Sherman Bay?")
				ENDDIALOG()
			else	
				SAY("Already back? Have you been successful?")

				ANSWER("Indeed, we have been right all the time. Grimm sold me to Crahn and Tangent. It's all on this Datacube.",213)
			end
		end
	NODE(213)
		SAY("Then we finally have the evidence that we need to stop his evil doings. I'll forward the cube for you to the council.")

		ANSWER("Here you are. I hope now this whole chapter will be closed.",214)
	NODE(214)
		SAY("I believe the council will still need some time to evaluate our information and reach a decision. We nee to wait and since I am not willing to start the research program until all this is settled you should take some time out and study on your own. (next mission at level 40)")
		EPICRUNFINISHED(14,3)
		ACTIVATEDIALOGTRIGGER(3)
		ENDDIALOG()
	

end