--new
--Diamond Real Estate
--
--Trigger
--Triggernumber,Type,Person
--0,D,Foster, 50
--1,D, Foster, 200
--2,D, Hontoka, 250
--3,D, Human Resource, 300
--
--Startnode, Person
--0, Human Resource Director
--50, Foster
--100, Hontoka
--150, Pat, Tawkeen Village
--200, Foster
--250, Hontoka
--300, Human Resource Director
--
--Items
-- Schlüssel für Pepper Park apartement 1570
-- Bündnisvorschlag 9353

function DIALOG()
--------------------------------------------------------------------
--Human Resource Director
--0
	
	NODE(0)
		SAY("Since you obviously seem to be a natural we would like to assign a new task to you. The losses we incur each day because of this Black Dragon scum do not allow us to loose any more clients. Many employees fear for their job and I am not an exception.")

		ANSWER("Is it really that bad? I have not experienced any of this in the last time.",1)
		ANSWER("I have urgent other matters to attend to.",7)
	NODE(1)
		SAY("Then you are one of the few lucky guys that have not been affected by these incidents. The Black Dragon are trying to force our clients away. They are using a mixture of violence and threats. We now know their overall tactics.")

		ANSWER("Why then is it so difficult to prevent all this?",2)
	NODE(2)
		SAY("The Twilight Guardian are the ones who do the dirty work for the Dragons. This is also the reason why they never can be tracked to the Dragons. We have no hard evidence for this and the NCPD is doing the best they can in any case.")

		ANSWER("I hope we did not loose too many people.",3)
	NODE(3)
		SAY("That is our very real problem right now. To be honest, everything around here is on the verge of breaking down. Our clients are running away and nobody wants to buy Diamond estates any more. I don't want to alarm you but this is exactly the reason why we need every help we can get.")

		ANSWER("But what about the contract with the CityMercs?",4)
	NODE(4)
		SAY("If that contract would already be in effect the situation would be totally different. But because of a clause in the contract it cannot take effect yet. That's why we are mobilizing all forces at our disposal.")

		ANSWER("It seems I should really do my part in preserving Diamond as we know it. What will be my job then?",5)
	NODE(5)
		SAY("You should visit Foster in ViaRosso 03. I have a note here that you already dealt with that person once, right?")

		ANSWER("Yes, but he already quit his contract with Diamond. He had some really bad experiences.",6)
	NODE(6)
		SAY("Well, well... good that you already know him. We want you to give him an incentive to have a contract with us again. Do, whatever you deem necessary. Remember that Diamond really needs you.")
		SETNEXTDIALOGSTATE(300)
		STARTMISSION()
		ENDDIALOG()
	NODE(7)
		SAY("Return once you believe you can muster enough interest for Diamond again. I wonder where you have lost your dedication.")
		ENDDIALOG()
	
--------------------------------------------------------------------
-- Foster
--50
	NODE(50)
		SAY("Yes, I have decided to talk to you once more. Don't ask me why. Now that you are here you can explain to me why I should change my mind.")

		ANSWER("I can tell you that we are working hard on this problem.",51)
	NODE(51)
		SAY("Don't give me that kind of bullshit. I want to hear if anything changed at all. Don't give me this corporate propaganda.")

		ANSWER("So, you really want to know how the situation is? Diamond is on the defensive and trying to compensate for the losses that have been incurred.",52)
	NODE(52)
		SAY("Ha, I thought that not everything is as fine and dandy like you want to make me believe. What you really want to say is that you have no arguments to convince me?")

		ANSWER("Diamond has a contract with the CityMercs. Only this contract hasn't taken effect yet. But it surely can't be that long any more.",53)
	NODE(53)
		SAY("Your goal is to convince me to come back to Diamond, right? I have a proposition for you. I happen to have a few contacts with the Tsunami and as you might know, they are not close to the Black Dragon. If you help me I will come back to Diamond and buy another Diamond apartement.")

		ANSWER("Even though you did not specify your proposition yet it already sounds tempting.",54)
	NODE(54)
		SAY("I am preparing something special for Tsunami. Their task is to provide all parts that I need and in exchange I am using my inventive brain for their sake. But it seems that they could not provide me with all the parts that I need for this task. That's why I need you. Are you willing to organize something for me?")

		ANSWER("If you are going to renew your contract with Diamond, sure.",55)
	NODE(55)
		SAY("It is agreed then. Visit Hontoka in the Industrial Sector 02. He will give you an item that I need very much for what I do. Return it to me as fast as you can. Understood?")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()

--------------------------------------------------------------------
-- Hontoka
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("You have no business here, get lost.")
			ENDDIALOG()
		else
			SAY("This is a dangerous area, Runner. Why don't you return to the safety of Neocron? Get lost.")

			ANSWER("You can't tell me what to do. Foster is sending you greetings. I suppose you know who I am talking about.",101)
		end
	NODE(101)
		SAY("Foster? Yes, I have heard of that name, why?")

		ANSWER("I am supposed to get something from you and deliver it back to him. Simple. He did not want to meet you personally.",102)
	NODE(102)
		SAY("And he thought he can just send an errand boy? Unfortunately its not as easy as our mutual friend imagined. I am sure he did not tell you that I was only supposed to tell him where he could get the item?")

		ANSWER("Of course not. This means I am supposed to organize whatever it is? ",103)
	NODE(103)
		SAY("You seem to be a really smart person. From me you will only get the whereabouts of the item. There is a certain merchant in Tawkeen Village. Her name is Pat. There you will get what you need. It may not come cheap however.")

		ANSWER("Sure, now I only need to know what exactly I am looking for.",104)
	NODE(104)
		SAY("It is an apartment key of a Pepper Park accomodation. Now, get the key to Foster and stop annnoying me.")
		SETNEXTDIALOGSTATE(250)
		ENDDIALOG()		

	
--------------------------------------------------------------------
-- Pat
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Ahh, I am awfully sorry but I am out of goods at the moment. Though the next delivery should be confirmed in a second.")
			ENDDIALOG()
		else
			SAY("A new customer, what can I do for you? You know, I dont often get customers out here. But when somebody decides to buy here he usually buys a lot.")

			ANSWER("Must be the Wastelands. I am looking for a Pepper Park apartement.",151)
		end
	NODE(151)
		SAY("Today must be your lucky day. I only have one apartement in stock and it does seem to be a Pepper Park apartement. Out here, something like this can get pretty expensive, though. It is very rare, to say the least. I have heard that it once belonged to the Black Dragon but of course this is only a rumour.")

		ANSWER("Do you know more about it? And what is the price?",152)
	NODE(152)
		SAY("The rumour says that the Black Dragon produced some of their drugs in there until there was a massacre. The rooms are supposedly still full of drug dust and abandoned pills. That might be the reason why it is so sought after. The entrance is still closed because an attack from the Tsunami severely damaged the building but apart from that everything is still fine.")

		ANSWER("Can you use it at all? I mean, it does sound as if it is pretty wrecked.",153)
	NODE(153)
		SAY("Of course. The apartement is still very much intact. That is why I only want 30000 for it.")

		ANSWER("30 000 ?! Are you crazy? That is way too much for a run down Pepper Park apartement.",154)
		ANSWER("Alright, I will take it even if it is much too expensive.",156)
	NODE(154)
		SAY("My prices don't change. Not even if you scream and shout at me. Either you buy it or not.")
		SETNEXTDIALOGSTATE(155)
		ENDDIALOG()

-- Spieler killt oder bezahlt Pat
		
	NODE(155)
		SAY("Go away! Or are you interested in buying this apartment?")

		ANSWER("Yes, even if it is much too expensive.",156)
		ANSWER("No way, too expensive. This is daylight robbery!",154)
	NODE(156)
		TAKEMONEY(30000)
		if(result==0)then
			SAY("Without credits you don't get anything.")
			ENDDIALOG()
		else
--Schlüssel
			GIVEITEM(9356)
			SAY("Well, this is the key. Enjoy it.")
			SETNEXTDIALOGSTATE(157)
			ENDDIALOG()
		end
	NODE(157)
		SAY("I have already given everything to you that I have in stock.")

		ENDDIALOG()


--------------------------------------------------------------------
-- Foster
--200
	NODE(200)
--Schlüssel
		TAKEITEM(9356)
		if(result==0)then
			SAY("You are supposed to visit Hontoka in Industrial 02 and get the key for me. Otherwise our agreement ends here.")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(201)
			SAY("Ahh, I did not think you could do it. After all you have been gone for quite a while now.")

			ANSWER("Yes, it has taken some time. Now I would really like to know what this apartement is all about.",201)
		end
	NODE(201)
		SAY("I am sorry but the only person who could tell you about it is Hontoka. But I will certainly buy a Diamond apartement as agreed. If you want I can arrange a meeting with Hontoka. I believe he will be surprised that you were able to acquire the key.")
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(202)
		ENDDIALOG()
	NODE(202)
		SAY("Thank you for your help. You can tell Diamond that they have regained one customer. Hontoka is also waiting for you to speak with him.")

		ENDDIALOG()

--------------------------------------------------------------------
-- Hontoka
--250
	NODE(250)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("What about the apartement key for Foster? Go and ask Pat in the Tawkeen Village.")
			ENDDIALOG()
		else
			SAY("Foster informed me about you. You are woking for Diamond for quite some time, don't you?")

			ANSWER("Yes, now tell me about this apartement. Pat did mention something but it was not very clear.",251)
		end
	NODE(251)
		SAY("Alright. I will tell you. The apartement in question was a production facility for some special drugs of the Black Dragon. These drugs are very addictive and at the same time they contain a kind of poison. They tried to hand it out to many Tsunami dancers. Once you are addicted to that stuff the poison will kill you surely.")

		ANSWER("The Black Dragon seem to be involved everywhere.",252)
	NODE(252)
		SAY("Yes, indeed. We could only solve the problem by initiating an attack against the building with the drugs inside. There were many losses on both sides but when the smoke was gone Tsunami was victorious. The key was lost, though. You only just found it again.")

		ANSWER("How is Foster involved in all this?",253)
	NODE(253)
		SAY("He will analyse the drug traces left in that apartement. Hopefully he will be able to tell us the ingredients. I cannot say more about it. I already said too much.")

		ANSWER("Very well but you mentioned something about a proposition?",254)
	NODE(254)
		SAY("The Black Dragon were very active recently and I dont believe they have already exhausted their ressources. They are trying to wear us down through their constant attacks. I wager it is the same with Diamond. I don't know about your situation but I hear that Diamond is being pushed into the defensive every day.")

		ANSWER("How do you know that? Is it really already common knowledge?",255)
	NODE(255)
		SAY("The truth is, it is even worse. More importantly Tsunami and Diamond now have a common enemy. That would make us ... allies, at least for the time beeing. I have spoken to Veronique and other Tsunamis. Tsunami is proposing a temporary alliance with Diamond until the time the Black Dragon don't pose a serious threat any longer.")

		ANSWER("An alliance with the Tsunami?! Unthinkable! You are something like criminals after all...",256)
	NODE(256)
--Bündnisvorschlag
		GIVEITEM(9353)
		SAY("Think about it and you will come to the conclusion that it will be the best for both our factions. Get this package to your superior at Diamond. It contains the proposals that I just told you about. I think that should be sufficient. Good luck.")
		ACTIVATEDIALOGTRIGGER(2)
		SETNEXTDIALOGSTATE(257)
		ENDDIALOG()
		
	NODE(257)
		SAY("Get this package to Diamond now!")

		ENDDIALOG()

--------------------------------------------------------------------
-- Human Resource Director
--300
	NODE(300)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("You are supposed to try and convince Foster in ViaRosso 03 to sign a contract with Diamond again.")
			ENDDIALOG()
		else
--Bündnisvorschlag
			TAKEITEM(9353)
			if(result==0)then
				SAY("I am sorry but in order to assess the proposed alliance between Diamond and Tsunami we really need the proposal.")
				ENDDIALOG()
			else
				SETNEXTDIALOGSTATE(301)
				SAY("You have taken your time I have to say. Did it pay off at least?")

				ANSWER("I was able to convince Foster to choose a Diamond apartement again. But there is more. Here are some documents from the Tsunami. They are interested in a temporary alliance.",301)
			end
		end
	NODE(301)
		SAY("A temporary alliance with the Tsunami? Very funny. We are a renowned company and not some run down criminals.")

		ANSWER("Wouldn't it be better if criminals kill criminals? I mean, it's none of my business but the situation is really looking bad for us.",302)
	NODE(302)
		GIVEMONEY(50000)
		SETNEXTDIALOGSTATE(303)
		SAY("What has it come to? Can it be that the Tsunami are our last chance? I don't know what I should believe. I will hand this proposal on to the people in charge. It will certainly take some time until an answer can be expected, though. But once we have an answer I want you as a messenger. Keep in shape. A reward of 20000 should make it easier on you. (next mission at level 45)")
		EPICRUNFINISHED(2,4)
		ACTIVATEDIALOGTRIGGER(3)
		ENDDIALOG()

	NODE(303)
		SAY("Go Away")
		ENDDIALOG()

end