--new
--Fallen Angel Muster
--
--Trigger
--Triggernumber,Type,Person
--0,D,Grimm(50)
--1,D,Max(150)
--2
--3
--
--Startnode, Person
--0, Personal Director
--50, Grimm
--100, Constantine
--150, Max Delavare
--200, Constantine
--250, Ethan Cole(Chemikalie)
--300, Grimm(nimmt Chemikalie)
--350, Constantine
--
--Items
--cHEMIKALIENkonzentrat
--Whiteflash720

function DIALOG()
--------------------------------------------------------------------
--
--0
	
	NODE(0)
		SAY("Grimm in the reactor area 1 would like to talk to you. He sounded rather excited and already looked for you all over the place. But he did not want to tell us what this is all about. Maybe you know what this is all about.")

		ANSWER("No, I have not the slightest idea.",1)
		ANSWER("I still have some urgent matters to attend to...",3)
	NODE(1)
		SAY("You better visit him soon. I hope it was nothing serious.")
		SETNEXTDIALOGSTATE(2)
		STARTMISSION()
		ENDDIALOG()		
	NODE(2)
		SAY("Did you already visit Grimm here in the HQ? It sounded pretty important.")
		ENDDIALOG()
		
	NODE(3)
		SAY("As you wish but I am sure that Grimm will not be pleased.")
		ENDDIALOG()
--------------------------------------------------------------------
-- Grimm
--50
	NODE(50)
		SAY("Who?")

		ANSWER("You wanted to talk to me about something?",51)
	NODE(51)
		SAY("If this is not our grand scientist himself. Previously I have already thought bad of you but now its even worse than I thought.")

		ANSWER("What is this all about? I have no idea at all what you are talking about.",52)
	NODE(52)
		SAY("Don't pretend to be dumber than you are. The chemical that you acquired for my science department was contaminated! It is your fault that a loyal co-worker of mine died in a laboratory explosion! You, sir, are a moron!")

		ANSWER("But how can that be? I did not know, I brought the chemical directly to this place.",53)
	NODE(53)
		SAY("Spare me your whining, this is unforgiveable! But simply to expel you from the Fallen Angels wouldn't bring Paul back into the living world. That is why I am offering you not to tell the Scientist Council that it was you who brought the contaminated chemical into Tech Haven and you are going to acquire the same chemical again. We still need to make more research with the help of that chemical.")

		ANSWER("I feel sorry for Paul. Of course I will try to get a pure version of the chemical. Even if I don't know where to start. Maybe I should ask Constantine about it...",54)
	NODE(54)
		SAY("Don't look at me. How should I know where you originally organized this chemical? As far as I know only the ProtoPharm Labs offer this chemical. Maybe you should try your luck there. Once you have the chemical, bring it to me, understood? Otherwise the Scientist Council will know about the contaminated chemical in no time.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(300)
		ENDDIALOG()
		
--------------------------------------------------------------------
-- Constantine
--100

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("One moment, I am currently downloading something important...")
			ENDDIALOG()
		else
			SAY("Ahem... you are a little bit early. I still don't have all the information for the research. We cannot begin with it just yet.")

			ANSWER("No need to worry. I am not here because of the research. Do you remember the chemical that I organized?",101)
		end
	NODE(101)
		SAY("Sure, the Bio department was very thankful for it.")

		ANSWER("Thats the one. I need to know where else I could get this chemical from. I thought you might know a possibility?",102)
	NODE(102)
		SAY("Basically ProtoPharm is the only one distributing this chemical.")

		ANSWER("That is not an option. I don't trust them any longer.",103)
	NODE(103)
		SAY("Ahh... well, I could theoretically have a look around the black market. But you never know what you get.")

		ANSWER("The essential thing is to get my hands on the chemical.",104)
	NODE(104)
		SAY("I have an offer right here. This really is a coincidence. His name is Max and the location is the Outzone Sector 5. Well, this does not sound very promising. Very dangerous and hard to find. I would counsel against it but it seems to be the only option at the moment.")

		ANSWER("Then I will just have to be careful. Outzone you said? Wish me luck.",105)
	NODE(105)
		SAY("Take care. You should better take a few Medipacks with you. Maybe I will have more when you return. I'll keep looking... be sure to check back here afterwards, alright? Good luck.")
		SETNEXTDIALOGSTATE(200)
		
		ENDDIALOG()
--------------------------------------------------------------------
-- mAX Delavare
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Get lost Runner! This is not the right area for somebody like you.")
			ENDDIALOG()
		else
			SAY("Speak up, what is your business here? I dont't have time all day.")

			ANSWER("I am here because of your offer. You know, that special chemical.",151)
		end
	NODE(151)
		SAY("How do I know that you are the right Runner for such a deal? Show me your ID Cube.")

		ANSWER("What has that got to do with anything? I just want to buy something from you.",152)
	NODE(152)
		SAY("I need to know if you got enough credits for the shit, right? So I need your ID Cube, right? Hand it over.")

		ANSWER("Alright, here it is.",153)
	NODE(153)
		SAY("Nice. That explains a lot. I have already waited for you my friend. I have been paid, and paid well by the Crahn order to crush you. Don't move and I promise it won't hurt. Not much anyway.")
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(154)
		ATTACK()
		ENDDIALOG()
		
	NODE(154)
		SAY("Die!")
		ATTACK()
		ENDDIALOG()




--------------------------------------------------------------------
--Constantine
--200
	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Did you already meet Max in the Outzone Sec-5?")
			ENDDIALOG()
		else
			SAY("I am glad to see you back here in one piece. I would never visit such a dangerous area myself.")
	
			ANSWER("And you are doing the right thing. This Max guy wanted to kill me. As if he already knew that I would be coming there.",201)
		end
	NODE(201)
		SAY("Are you certain? I mean, how should he know about that?")

		ANSWER("I have no idea but he said something that Crahn is behind all this.",202)
	NODE(202)
--Chemiekonzentrat
		TAKEITEM(9300)
		if(result==0)then
			SAY("Crahn! Unbelievable! Wherever a Fallen Angel is in trouble it is surely because of Crahn. It doesn't seem to be enough for them that we spent decades working for them as slaves.")

			ANSWER("It was a close cut. I almost would've fallen victim to them. Isn't there anybody else who sells this chemical?",203)
		else
			GIVEITEM(9300)
			SAY("But since you already seem to have the chemical in your possession you should hand it over to Grimm.")
			SETNEXTDIALOGSTATE(350)
			ENDDIALOG()		
		end
	NODE(203)
		SAY("Damn! I almost forgot in all this uproar. Shortly after you went another offer came up through the black market.")

		ANSWER("Are you sure it is the chemical I am looking for?",204)
	NODE(204)
		SAY("Yes, Kaboxorid. It is offered by a certain Mark Cole.  Seems to be the last possibility although it is not the nearest location either. He can be found in sector 06, at least judging from the announcement.")

		ANSWER("Thank you Constantine, you are a great help.",205)
	NODE(205)
		SAY("Thanks, take care. Hopefully this is not another trap.")
		SETNEXTDIALOGSTATE(350)
		ENDDIALOG()


--------------------------------------------------------------------
--Cole
--250	
	NODE(250)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("I am not receiving anybody at the moment, get lost.")
			ENDDIALOG()
		else
			SAY("Ahh, I hope that you bring good news.")

			ANSWER("I am no messenger, I am more interested in the chemicals that you offer.",251)
		end
	NODE(251)
		SAY("Well, I would consider that good news. Then let's get down to business. You want Kaboxorid, I want to profit from that. Here is the deal. You get me something with which I can do proper business and I will give you this worthless fluid shit. If you don't like it, beat it.")

		ANSWER("No, no, that is perfect. What do you want?",252)
	NODE(252)
		SAY("Give me something valuable. Drugs would be good but not the cheap stuff. It took me more time than I care to admit to get this chemical from ProtoPharm. The drug Whiteflash would be just fine I think. I would already have a customer for that as well. Three packages of Whiteflash and you get the chemical, is that a deal? Now go and get it for me.")
		SETNEXTDIALOGSTATE(253)
		ENDDIALOG()

--Spieler besorgt Whiteflash720

	NODE(253)
		TAKEITEMCNT(720,3)
		if(result==0)then
			SAY("Is this really so difficult? I only need a little bit of this Whiteflash drug.")
			ENDDIALOG()
		else
			GIVEITEM(9300)
			SAY("Well done. You seem to be worth something after all. Not like those crazy Fallen Angels scum. I was lucky to leave them when there was still time. You'd mean they would fall over their own feet cause they have their noses up in the clouds. Here is your chemical. Good luck with this junk.")
			SETNEXTDIALOGSTATE(254)
			ENDDIALOG()
		end
	NODE(254)
		SAY("I don't feel like doing more business with you today. Just go back wherever you came from.")
		ENDDIALOG()

--------------------------------------------------------------------
--gRIMM
--300
--Chemikalie
	NODE(300)
		TAKEITEM(9300)
		if(result==0)then
			SAY("Don't turn up here without this chemical. A pure sample, mind!")
			ENDDIALOG()
		else
			SAY("You!? But how can that be? I thought I took every precaution...")

			ANSWER("What? What are you talking about?",301)	
		end
	NODE(301)
		SAY("Alright, then I have to change my plan. If you did not get the chemical because of your unbelievable incompetence I will have to inform the Council of the contamination. ")

		ANSWER("Save your speech for somebody else. I got almost killed but I do have your chemical.",302)
	NODE(302)
		SAY("Really?! Surely there is a trick behind this. Give it to me.")

		ANSWER("I have done my part of the agreement. Now it is your turn.",303)
	NODE(303)
		SAY("Alright! You are lucky that I am such an honest guy. I will keep the agreement. But now get lost from here. Run to your Constantine. I think she wanted to talk to you.")
		ACTIVATEDIALOGTRIGGER(2)
		SETNEXTDIALOGSTATE(304)
		ENDDIALOG()
		
	NODE(304)
		SAY("Only because you managed to get this chemical you should not think you are something special.")

		ENDDIALOG()

--------------------------------------------------------------------
--Constantine
--350

	NODE(350)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("You did something wrong. Call on me later again.")
			ENDDIALOG()
		else
		
			ISMISSIONTARGETACCOMPLISHED(1)
			if(result==0)then
				SAY("You did something wrong. Call on me later again.")
				ENDDIALOG()
			else
			
				ISMISSIONTARGETACCOMPLISHED(2)
				if(result==0)then
					SAY("You still have to hand over the chemical to Grimm.")
					ENDDIALOG()
				else
					SAY("I am just busy to sort the last bits of information and only have to analyse them. If you give me a little bit more time we can start with the project. But you can train for yourself again and improve your skills. It can only help with the research.(next mission at level 35)")
				EPICRUNFINISHED(14,2)
				GIVEMONEY(10000)
				ACTIVATEDIALOGTRIGGER(3)
				ENDDIALOG()
				end
			end
		end

end