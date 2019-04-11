--new
--CityMerc
--
--Trigger
--Triggernumber,Type,Person
--0,D,Grimm
--1
--2
--3
--
--Startnode, Person
--0, Soldat
--50, Frederick
--100, Claudia
--150, Erik
--200, Soldat
--250, Marcel
--
--Items
--Wein von Marcel ID:806

function DIALOG()
--------------------------------------------------------------------
--Soldat
--0
	
	NODE(0)
		SAY("This is no place for civilians.")

		ANSWER("I have decided to join the CityMercs. I have trained hard so that I can become a Rookie.",1)
	NODE(1)
		SAY("Really? Then I do hope that you know your way around weapons since there is no other way to become a Rookie than through weapons. I am sure you are already excited about this. Alright, I won't let you wait no longer.")

		ANSWER("Please carry on. I am ready.",2)
		ANSWER("I'd rather train a little more.",3)
	NODE(2)
		SAY("In order to become a Rookie you need to fight against three persons. It took some time but we have some suitable enemies for you. The first one is Frederick, another Rookie wannabe like you. Then there is Claudia and Erik, they already are with us. You just need to beat them in a fair fight and you will be a CityMerc Rookie. Come back to me once you have won the fight. They usually hang out in sector 1 of this base.")
		STARTMISSION()
		SETNEXTDIALOGSTATE()
		ENDDIALOG()
		
	NODE(3)
		SAY("You should really think about what you want first.")
		ENDDIALOG()

	NODE(4)
		SAY("You can find your opponents in a storage room in sector 2 of the Military Base. Come back to me after you have defeated them all.")
		ENDDIALOG()

--------------------------------------------------------------------
-- Frederick
--50
	NODE(50)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Hello. Are you here for the Rookie test? I already had to wait two days for a chance to fight and prove myself.")

			ANSWER("Why do you want to join the CityMercs?",51)
		else
			SAY("Not again. I lost again. Now I'll have to wait two more days before I can try again. This sucks.")
			ENDDIALOG()
		end
	NODE(51)
		SAY("Well, my father happens to be a Black Ribbon here with the Mercs and he wants me to achieve the same. I have already tried this test three times and always I failed. But enough of this, are you ready?")
		ENDDIALOG()
		SETNEXTDIALOGSTATE(52)
		
	NODE(52)
		SAY("If you are ready for the fight. I am right here. Just attack me.")
		ENDDIALOG()

--------------------------------------------------------------------
--Claudia
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Hey, Runner, good luck because against me you can use it. I can still recall my Rookie test and that one was not easy, I tell you.")

			ANSWER("Who are you?",101)
		else
			SAY("I can't believe you beat me. Still, good luck to you.")
			ENDDIALOG()
		end
	NODE(101)
		SAY("What a stupid question. I am Claudia and at least I am already a Rookie. Now, lets get this behind us, shall we?")
		SETNEXTDIALOGSTATE(102)
		ENDDIALOG()
		
	NODE(102)
		SAY("You should make a decision.")
		ENDDIALOG()
--------------------------------------------------------------------
--Erik
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("I'll give you some free advice. Claudia is a tough one. Not easy to beat. Yes, yes, I know she is just a woman but don't be fooled by appearances here. Tank women are equally strong as Tank men. Take care. I mean, not that I would make it easy on you.")
			SETNEXTDIALOGSTATE(151)
			ENDDIALOG()
		else
			SAY("Well, the fact that you won just shows that I need more training.")
			ENDDIALOG()
		end
	NODE(151)
		SAY("Choose one of us, either Claudia, Frederick or my humble self and start the fight.")
		ENDDIALOG()


--------------------------------------------------------------------
--Soldat
--200
	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("You have to pass the Rookie test in order to achieve anything with the Mercs. You can find your opponents in a storage room in sector 2 of the Military Base. Come back to me after you have defeated them.")
			ENDDIALOG()
		else
			ISMISSIONTARGETACCOMPLISHED(1)
			if(result==0)then
				SAY("You have to pass the Rookie test in order to achieve anything with the Mercs. You can find your opponents in a storage room in sector 2 of the Military Base. Come back to me after you have defeated them.")
				ENDDIALOG()
			else
				ISMISSIONTARGETACCOMPLISHED(2)
				if(result==0)then
					SAY("You have to pass the Rookie test in order to achieve anything with the Mercs. You can find your opponents in a storage room in sector 2 of the Military Base. Come back to me after you have defeated them.")
					ENDDIALOG()
				else
					SAY("You did it, eh? How do you feel? Your wounds will heal soon and then you can enjoy being one of us.")

					ANSWER("I feel honoured. What is my job then? Do I get to fight soon?",201)
				end
			end
		end
	NODE(201)
		SAY("Ha, you'll have to wait some time for that yet. We always take good care of our new entries and before you carry a White Ribbon you will at best observe some combat. For the moment you should celebrate. The platoon leader Marcel would also like to congratulate you personally. You can find him in sector 2 of the Military Base. Good luck for the future.")
		SETNEXTDIALOGSTATE(202)
		ENDDIALOG()
		
	NODE(202)
		SAY("Marcel in the Military Base sector 2 would like to congratulate you. He is a well known platoon leader and has got a lot of influence here with the Mercs.")
		ENDDIALOG()

--------------------------------------------------------------------
--Marcel
--250
		
	NODE(250)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("I am sure you will soon be a CityMerc judging from your looks. But you still have to pass the Rookie test.")
			ENDDIALOG()
		else
			ISMISSIONTARGETACCOMPLISHED(1)
			if(result==0)then
				SAY("I am sure you will soon be a CityMerc judging from your looks. But you still have to pass the Rookie test.")
				ENDDIALOG()
			else
				ISMISSIONTARGETACCOMPLISHED(2)
				if(result==0)then
					SAY("I am sure you will soon be a CityMerc judging from your looks. But you still have to pass the Rookie test.")
					ENDDIALOG()
				else
					SAY("Erik told me how you managed your fight. You did it and now you are one of us. But don't assume you can already take on the whole world now. There is still much to learn. Don't let yourself be discouraged, though, I would enjoy seeing you in my platoon once you are ready.")

					ANSWER("I was told I need to get a White Ribbon first.",251)
				end
			end
		end
	NODE(251)
		GIVEITEM(806)
		GIVEITEM(806)
		GIVEITEM(806)
		GIVEITEM(806)
		GIVEITEM(806)
		GIVEMONEY(4000)
		SAY("Yes, that is true. There, my platoon bought a few bottles of wine for you to celebrate. Take it as a gift. Now just take care not to dishonour us, train hard and I am sure there will be more to do for you very soon. Here is your first payment, use it as you see fit. 4000 credits. (next mission at level 30)")
		EPICRUNFINISHED(11,1)	
		ACTIVATEDIALOGTRIGGER(3)
		ENDDIALOG()

end