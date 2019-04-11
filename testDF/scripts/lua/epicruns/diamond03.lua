--new
--Diamond Real Estate
--
--Trigger
--Triggernumber,Type,Person
--0,D, Simmons 50
--1,D, Simmons 150
--2,D, Simmons 250
--3,D, Human Resource Director 300
--
--Startnode, Person
--0, Human Resource Director
--50, Simmons
--100, Crazy Dillan
--150, Simmons
--200, Max Delavare
--250, Simmons
--300, Human resource Director
--
--Items
--Paket mit Wohnungsschlüsseln. 100 Crazy 9351
--CATHRINE ID CUBE 9355

function DIALOG()
--------------------------------------------------------------------
--Human Resource Director
--0
	
	NODE(0)
		SAY("Welcome back. There have been some developments while you were away. The Black Dragon won't give us a break and until the contract with the CityMercs is beginning to take effect we are loosing more and more clients. New is that some people now believe they could take advantage of our current situation.")

		ANSWER("Can it be? They are just waiting like carrion birds it seems.",1)
	NODE(1)
		SAY("Some independent real estate merchants are taking advantage of the opening we provide to sell their apartements at a higher price. That is of course an unbearable situation.")

		ANSWER("I can easily imagine that this is damaging for the business. But what can be done against it?",2)
	NODE(2)
		SAY("Diamond wants to interest those real estate dealers in Diamond. By doing so we would not only have more vendors and apartements but also get rid of some unwanted competition.")

		ANSWER("That sounds logical, though it might cost a lot. Is there a job for me related to this?",3)
		ANSWER("If this is supposed to be a mission for me, then I have to turn it down for the moment.",5)
	NODE(3)
		SAY("I was just about to offer you to try and convince one of those freelance vendors to join our ranks. The payment is subject to discussion.")

		ANSWER("I can give it a try at least. Usually those kind of freelancers are not easily convinced.",4)
	NODE(4)
		SAY("In case you should succeed Diamond will offer a bonus to you. Good luck. His name is Simmons and he can be found in Pepper Park 02. A meeting was arranged in one of the restaurants there. There are not too many of them, I am sure you will find your way.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(300)
		ENDDIALOG()
	NODE(5)
		SAY("It is your decision but these assignments won't be available forever.")
		ENDDIALOG()
--------------------------------------------------------------------
-- Simmons
--50
	NODE(50)
		SAY("Are you from Diamond?")

		ANSWER("If you are Simmons, yes. I am supposed to have a meeting with you. I hope you can spare a little time.",51)
	NODE(51)
		SAY("Are you sure that you are from Diamond?")

		ANSWER("You seem to be very sceptical. I assure you that I am the one you are expecting.",52)
	NODE(52)
		SAY("Very well, I always have the feeling as if somebody is following me. Every night you can hear the Plasma rifle blasts and the screams here in Pepper Park. I am telling you if you are not constantly on the watch you might just as well commit suicide.")

		ANSWER("Don't forget there are still the Genreps.",53)
	NODE(53)
		SAY("You mean I should have myself cloned after my death ? Think again. Imagine you are dying in a small side alley, lying in a pile of rubbish. And now your genetical information is cloned. Now I ask you, did your very self transfer itself to your clone? I ask you, are you the clone or isn't it more true that the real you died in that smal side alley and that the clone is just a mirror image taking your place?")

		ANSWER("It would be worth to think about it.",54)
	NODE(54)
		SAY("That's why I tried to take a harmless job. Real Estate. But real estate only sounds harmless, yet nowadays it is a war I say. I am seeing Black Dragons everywhere, ready to kill me. Tsunami are just as bad, only that they don't deal in real estate.")

		ANSWER("That's exactly why I am here. Diamond wants to propose a deal.",55)
	NODE(55)
		SAY("A deal? For me? Is this some kind of trap?")

		ANSWER("No, not at all. Diamond is very interested in hiring you.",56)
	NODE(56)
		SAY("Me? I am supposed to work for Diamond? That is impossible at the moment, really.")

		ANSWER("That's a shame but if you should change your mind...",57)
	NODE(57)
		SAY("Wait! I have changed my mind! I will accept your offer... under one condition!")

		ANSWER("That sounds promising. Tell me about your condition.",58)
	NODE(58)
		SAY("Well, there is... a small problem with certain people. I am in trouble at the moment.")

		ANSWER("Do you need money? I am sure that Diamond...",59)
	NODE(59)
		SAY("No, no, it's not the money. Or yes, it is the money but I am in dire need of help. If you help me, I will join Diamond, alright? I am desperate!")

		ANSWER("Why? What do you need my help for?",60)
	NODE(60)
		SAY("It is... it is my wife. She was kidnapped by some mean looking guys. Black Dragon to be sure. Their leader was a certain Max, I don't know any more about it. They threatened to kill her if I did not hand over all the apartement keys I have. It is horrible, I feel paralyzed, I can't eat. I wouldn't know what to do if something would really happen to her.")

		ANSWER("Unbelievable. Of course I will do my very best to support you. Just tell me what I can do.",61)
	NODE(61)
		SAY("I have a friend who keeps some keys safe for me. But since the kidnappers have given me an ultimatum I cannot get to all keys in time. Would you collect the keys from my friend? I will tell him that he should give the keys to you.")

		ANSWER("Where exactly can I find him?",62)
	NODE(62)
		SAY("Don't be alarmed, I know he is a little strange. He is Anarchy Breed and waits in front of the Neocron city gates. His name is Crazy Dillan. I will wait here for your return, please hurry.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()	

--------------------------------------------------------------------
-- Crazy Dillan
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Give me all your money. No, wait, I will get it myself.")
			ATTACK()
			ENDDIALOG()
		else
			SAY("Jo, Runner! What a suprise, got any money to spare or should I take it myself? I am warning you, I have genrepped myself already about 10 times or more... I have no fear of death.")

			ANSWER("Easy. Simmons sent me.",101)
		end
	NODE(101)
		SAY("Why didn't you say so in the first place? Its a shame what happened to his girl. If those bastards ever turn up in my territory I would give em hell, right here and now.")

		ANSWER("Whoever it may be, they certainly are totally ruthless.",102)
	NODE(102)
--Packet mit Schlüsseln
		GIVEITEM(9351)
		SAY("Then what are you waiting for? Take these keys and make your way back to Simmons. This is not one of those crazy games, Runner, this is the real thing.")
		
		SETNEXTDIALOGSTATE(103)
		ENDDIALOG()
		
		
	NODE(103)
		SAY("Hurry, Runner! This is important, Simmons already waits for you.")
		ENDDIALOG()

	
--------------------------------------------------------------------
--Simmons
--150
	NODE(150)
--Schlüssel
		TAKEITEM(9351)
		if(result==0)then
			SAY("Please, I really need those keys. Crazy Dillan already waits in front of the main Neocron city gates.")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(151)
			SAY("Good, good, you have the keys? Then I suggest you visit this Max guy at the Outzone Sector 5 buildings. A terrible place, very dangerous but I don't make the rules here. Would you do that for me?")

			ANSWER("Just a moment, why don't you go yourself? After all it is your wife.",151)
		end
	NODE(151)
		SAY("I... let me put it this way... I have had some bad experiences in the Outzone.")

		ANSWER("Bad experiences?! Pull yourself together, this is your wife!",152)
	NODE(152)
		SAY("ALLRIGHT!! I AM SCARED LIKE SHIT!! Are you content now? Did you have enough? Then please go to Max and free my Cathrine from these bastards.")

		ANSWER("Very well, I will do it. But don't forget our agreement.",153)
	NODE(153)
		SAY("Thank you, thank you very much. You are a big help here. I will stay here and wait for the return of both of you.")
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(250)
		ENDDIALOG()

		
	

--------------------------------------------------------------------
-- Max Delavare
--200
	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Leave me alone, scum! Get lost!")
			ENDDIALOG()
		else
			SAY("What do you want, Runner? Did you get lost or are you the messenger?")

			ANSWER("I am supposed to hand over the keys to you and lead Cathrine away from here.",201)
		end
	NODE(201)
		SAY("Ahh, he finally decided to pay us, eh? He, I bet he is already wetting himself. But I do have to admit, she was rather cute... Now hand over the keys or otherwise I will have to kill you.")

		ANSWER("Just a moment, what do you mean by *was*? What did you do to her?",202)
	NODE(202)
		GIVEITEM(9355)
		SETNEXTDIALOGSTATE(203)

		SAY("Now, don't get all prissy about it, you can find her somewhere in the Industrial Sector 1. Here is an ID cube we found with her. Now hand over the keys!")

		ANSWER("No, as long as I don't have a proof of Cathrine being alive you won't get anything.",203)
	NODE(203)
		SAY("Get the hell out of my face.")
		SETNEXTDIALOGSTATE(204)
		ENDDIALOG()

	NODE(204)
		SAY("Fuck off")
		ENDDIALOG()

--------------------------------------------------------------------
-- Simmons
--250
	NODE(250)
		TAKEITEM(9355)
--CATHRINE ID CUBE
		if(result==0)then
			SAY("Please meet up with Max and bring back my Cathrine. At least find out about her whereabouts. A sign, an item, no matter what...")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(251)
			SAY("Don't frighten me. Where is Cathrine?")
		
			ANSWER("I cannot fully understand it myself. I could only find this datacube with some kind of notes from her.",251)
		end
	NODE(251)
		SAY("Dear god! No, no, no ... how can this happen?")
		
		ANSWER("I am sorry. I believe I best leave you alone for now...",252)
	NODE(252)
		TAKEITEM(9351)
		if(result==0)then
			SAY("My poor Cathrine... what can I do now?... What?...")
			ACTIVATEDIALOGTRIGGER(2)
			SETNEXTDIALOGSTATE(253)
			ENDDIALOG()
		else
			SAY("My poor Cathrine... what can I do now?... What?...")
			ACTIVATEDIALOGTRIGGER(2)
			SETNEXTDIALOGSTATE(253)
			ENDDIALOG()
		end
	NODE(253)
		SAY("Leave me alone. I can't speak to you at the moment... not to anybody. Go back to your company.")
		ENDDIALOG()
--------------------------------------------------------------------
-- Human Resource Director
--300

	NODE(300)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Try to convince Simmons to join the ranks of Diamond. You can find him in Pepper Park 02.")
			ENDDIALOG()
		else
			SAY("Ah, there you are again. Have you been able to convince him?")
		
			ANSWER("I don't want to talk about this. That man has endured too much already.",301)
		end
	NODE(301)
		SAY("It seems to be a tough time for all of us. Very well, maybe we can try it later again. Diamond will then give you another chance. Maybe you should train your persuasion skills some more. (next mission at level 35)")
		EPICRUNFINISHED(2,2)
		ACTIVATEDIALOGTRIGGER(3)
		ENDDIALOG()


end