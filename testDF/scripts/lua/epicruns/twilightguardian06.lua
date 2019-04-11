--new
--Twilight Guardian
--
--Trigger
--Triggernumber,Type,Person
--0,D,50
--1,PVP VS CA, 150
--2,kill Blight
--3,D,DONNOVAN 200
--
--Startnode, Person
--0, Contact Person
--50, JADE
--100, BECKERT
--150, JADE
--200, JADE
--250, donnovan
--
--Items
--

function DIALOG()
--------------------------------------------------------------------
--Contact Person
--0
	
	NODE(0)
		SAY("I have heard that you are on the best way to show those Neokorpses the way. Is that true?")

		ANSWER("That's the plan.",1)
	NODE(1)
		SAY("You'll go with my blessing then. Jade already awaits you in the Outzone sector 4. Show em, and show em good.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)
		SAY("I know you can do it. All previous missions seemed to be a piece of cake for you. Outzone sector 4, right?")

		ENDDIALOG()

--------------------------------------------------------------------
--JADE
--50
	NODE(50)
		SAY("Welcome if everything proceeds as planned we can escape this shithole called Outzone very soon. I hope you have prepared yourself appropriately. This is not going to be a picnic.")

		ANSWER("I know, otherwise I wouldn't be here now, Jade.",51)
	NODE(51)
		SAY("Good, I have worked long and hard for this so don't screw it up, understood? There is a contact person located at the ancient Loba Village, he isn't the type of person you should trust but so far every information he has given me was true. I've got a deal with him. He gives us the how and where of the Neokorps commander and we give him a whole lot of credits.")

		ANSWER("No problem. Where is the money?",52)
	NODE(52)
		SAY("It's not that simple. You have to get the 10000 credits we need from someplace else. I don't have enough cash with me and it seems like a small enough price to pay. Think about it, we are going to cross the plans of Reza himself.")

		ANSWER("Hrmph, good, but only because I cannot stand Reza.",53)
	NODE(53)
		SAY("The contact person is in the Ancient Loba Village. We will define our final plan once we have sufficient information. The contacts name is Beckert.")
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()


--------------------------------------------------------------------
--BECKERT
--100
	NODE(100)
			SAY("Shht, I'm just trying to... damn, now I lost the frequency. The third time on this day alone. Oh alright, what do you want?")

			ANSWER("I believe you know Jade? There was a deal.",101)
	
	NODE(101)
		SAY("Oh, of course. I get some credits and you get a little something out of my personal collection. You got the money?")

		ANSWER("Here you are, count it, if you don't trust me. 10,000 credits as promised.",102)
	NODE(102)
		SAY("Beautiful but I warn you, the information is very dangerous. It could cost you your life.")

		ANSWER("Ha, good joke, it could have already cost my life just to come all the way out here. I haven't been that far in the Wastelands too often.",103)
	NODE(103)
		SAY("Maybe but this location has one unbeatable advantage. It is far from the claws of Neocron. Do you want to hear what I have to say, now?")

		ANSWER("Sure, fire away.",104)
	NODE(104)
		SAY("I have been eavesdropping on some conversations and I came across the location where the commander of Neokorps like to pass some time. And I know how keen you Twilight Guardian are on getting your hands on him.")

		ANSWER("Where is it? Tell me, where?",105)
	NODE(105)
		SAY("Alright, alright, you can find him directly outside the main city gate of Neocron. There are a few shops in there where he likes to buy the stuff he needs for daily life. His name is Blight, don't know more, though. I'm always pleased to have business with you guys. Now go back and tell Jade about it.")
		SETNEXTDIALOGSTATE(106)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
	NODE(106)
		SAY("Try the main city gate of Neocron. Right on the inside you will find some shops where the target person likes to pass some time. Jade is already waiting for the information.")

		ENDDIALOG()

--------------------------------------------------------------------
--JADE
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("There is somebody in the ancient Loba Village who will be able to help us.")
			ENDDIALOG()
		else
			SAY("Did he have our information?")

			ANSWER("Yes, we know now where the commander of the Neokorps likes to shop. Does that even help us? Can we trust this information at all?",151)
		end
	NODE(151)
		SAY("Nowadays you gotta risk something now and then. Apart from that it is our only lead. Are you alright? Ready to move?")

		ANSWER("Sure, just leave that pig to me. I'll take care of him.",152)
	NODE(152)
		SAY("No, sorry, but I am going to try it first. I still need you though to organise a distraction from me. It should be enough if you kill one CityAdmin Runner of about your strength. I will use the subsequent chaos to eliminate Blight.")

		ANSWER("If that is your wish you can find him on the outside of the Neocorn main city gates.",153)
	NODE(153)
		SAY("Thanks, I won't forget what you did for me. We'll meet here again once it is over and done, yes? Let's do this.")
		SETNEXTDIALOGSTATE(154)
		ENDDIALOG()

--SPIELER KILLT 1 CITYADMIN RUNNER

	NODE(154)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Take out one CityAdmin Runner. Make sure not to kill an employee, guard or civilian. They are not important enough. Hopefully that will be enough as a diversion.")
			ENDDIALOG()
		else
			SAY("I am sorry, I couldn't kill him. I didn't even manage it past the STORM-Bots.")

			ANSWER("Are you hurt?",155)
		end
	NODE(155)
		SAY("No, its only a flesh wound but I have been unsuccessful.")

		ANSWER("Then I will just have to try it myself.",156)
	NODE(156)
		SAY("That is insane, he is warned now. You will only run into your own doom.")

		ANSWER("Sometimes you gotta take a risk or two in this world. Don't worry, I'll come back.",157)
	NODE(157)
		SAY("If it really is your wish then at least be careful. It really is dangerous.")

		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()

--SPIELER KILLT NEOKORPS MANN
--------------------------------------------------------------------
--JADE
--200
	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("I thought you wanted to try and eliminate the commander of the neokorps right on the outside of the Neocron main city gates?")
			ENDDIALOG()
		else
			SAY("You really did it? You killed him?")

			ANSWER("It was a tough fight but in the end he made one mistake. He underestimated the power that our cause gives me.",201)
		end
	NODE(201)
		SAY("Incredible, you have just eliminated one of our main problems. Nobody will forget that easily. But we shouldn't rest for too long since I am certain that all hell will break loose here soon. We might see each other again. Donnovan can give you your reward.")
		SETNEXTDIALOGSTATE(202)
		ENDDIALOG()
	NODE(202)
		SAY("You can get your reward from Donnovan.")

		ENDDIALOG()
--------------------------------------------------------------------
--DONNOVAN
--250

	NODE(250)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Yes, there is a bounty on the head of the Neokorps leader. Take it seriously.")
			ENDDIALOG()
		else
			ISMISSIONTARGETACCOMPLISHED(1)
			if(result==0)then
				SAY("Jade in Outzone Sector 4 has all the necessary informations.")
				ENDDIALOG()
			else
				SAY("You are an exceptional role model for all of us. You started all the way at the beginning and you survived all that was thrown at you. Impressing. But all that has been topped by the death of Blight. I would say you are even ready to lead your own clan.")
	
				ANSWER("That would be an idea. But I heard that a reward was mentioned.",251)
			end
		end
	NODE(251)
		SAY("Indeed. Here are 80,000 credits. Now you see how much all this was worth. Feel free to take some time off and then you can think about founding your own clan to support the war against Reza. Unfortunately I cannot give you any further missions or advice. Good luck and feel free to become a living nightmare for Reza.")
	
		ANSWER("You can bet on that. Well, then I'll just continue my work.",252)
	NODE(252)
		GIVEMONEY(80000)
		SAY("Before you go, do you remember the mission with the Fallen Angels? They completed our assignment and the product is a highly explosive grenade called Freedom Strike. You can have as many of them as you want. Although the Angels deliver very slowly, you can come back any time and get more. Just talk to Heff, he is the one who will give out the grenades. ")
		ACTIVATEDIALOGTRIGGER(3)
		EPICRUNFINISHED(15,5)
		ENDDIALOG()
--------------------------------------------------------------------
--Blight
--300
	NODE(300)
		SAY("You're lucky that I am currently off duty. Otherwise I would have you executed for interrupting my every morning shopping tour.")
		ENDDIALOG()
end