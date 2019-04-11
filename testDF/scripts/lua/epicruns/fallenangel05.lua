--new
--Fallen Angel 05
--
--Trigger
--Triggernumber,Type,Person
--0,D,Constantine(50)
--1,D,Feng(100)
--2,D,Constantine(150)
--3
--
--Startnode, Person
--0, Personal Director
--50, Constantine
--100, Feng
--150, Constantine
--200,
--250,
--
--Items
-- BioTech Hacking Cpu 3 2235 Blueprint
-- Element T (Node 106)
-- special alloy ( Node 151)
-- Forschungsimplantat (Node 153)

function DIALOG()
--------------------------------------------------------------------
--Personal Director
--0
	
	NODE(0)
		SAY("There have been a few decisions on the treacherous information that you have handed in about Grimm. The council did thoroughly review the data and decided to put Grimm under 23 hour surveillance and strip him of his ranks.")

		ANSWER("This is not fair, Grimm should be banned. I almost got killed because of his scheming.",1)
	NODE(1)
		SAY("Yes, almost. But since there was no greater damage and the information that he passed along was only of a very general nature it was decided to give him another chance.")

		ANSWER("It seems I have no choice but to accept this ruling.",2)
	NODE(2)
		SAY("But there are also good news. 35,000 Credits have been approved for your research project. Your assistant also asked me to inform you that the necessary preparations are all set up and ready. You can start your research right away.")

		ANSWER("Alright, I will see to it.",3)
		ANSWER("Hmmm, I will only be able to do that later on.",4)
	NODE(3)
		SAY("Good luck.")
		SETNEXTDIALOGSTATE(5)
		STARTMISSION()
		ENDDIALOG()
		
	NODE(4)
		SAY("That is your decision.")
		ENDDIALOG()

	NODE(5)
		SAY("Didn't you want to talk to the assisstant Constantine?")
		ENDDIALOG()

	
--------------------------------------------------------------------
-- Constantine
--50
	NODE(50)
		SAY("A productive day to you. Haven't seen you in a while. You have received my message? We now have all relevant data that we need for the project.")

		ANSWER("Yes, I was informed. After all I am already waiting long enough for the research to finally begin.",51)
	NODE(51)
		SAY("Very good. I have all data that the Biological department collected about this project but we still need one or two things.")

		ANSWER("I thought something like that would happen. There is no reason to wait any longer. Please continue.",52)
	NODE(52)
		SAY("We still need a Blueprint of a BioTech Hacking CPU 2. It has a very sensible internal structure that would be excellent for our purposes. The advantage is that this kind of CPU already exists.")

		ANSWER("Hmm, very well. What if I wasn't that good in doing research?",53)
	NODE(53)
		SAY("Then you could simply talk to another Runner who is better in doing research. There are enough of them here at the Fallen Angels. But I wasn't finished yet.")

		ANSWER("There is even more?",54)
	NODE(54)
		SAY("Unfortunately. We still need some mineral that only the Twilight Guardian possess. After all they keep some pretty important mines occupied and have much of the minerals mined there in stock. ")

		ANSWER("Is it something special that we require?",55)
	NODE(55)
		SAY("Well, we need a certain metal alloy that can act as semi conductor. At the moment we can only produce this alloy through recycling it from other elements. For this you need the Element T that you can get from the Twilight Guardian. They only sell it in small quantities, though. Then you will also need Trisol which should be commonly available.")

		ANSWER("That is clear so far. Maybe I should get the Blueprint first.",56)
	NODE(56)
		SAY("That would be prudent. Once you have it I can forward it for you to the Bio department. I can clue you in again on the ingredients for the semi conductor, afterwards.")
		SETNEXTDIALOGSTATE(57)
		ENDDIALOG()


--Spieler besorgt Blueprint von Biotec Hacking CPU 2 (2234)
	NODE(57)
		TAKESPECIALITEMCNT(1507,1,2234,1)
		if(result==0)then
			SAY("didn't you want to get the Blueprint of a BioTech Hacking CPU 2 first?")
			ENDDIALOG()
		else
			SAY("Good work! the only thing that is left now is the semi conductor alloy. It can be recycled from Trisol and the Element T. This element can only be acquired from the Twilight Guardian. Feng Kennet is responsible for the sales of the Element T. He might seem a little bit fanatic at times but at heart he is a good and reliable fellow.")

			ANSWER("Good, I will get it and after this the research Implant can finally be completed.",58)
		end
	NODE(58)
		SAY("I will prepare everything back here. The Constructors in the Bio department are already waiting impatiently. However you should be careful since the way to the Twilight Guardian Canyon is very dangerous.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()


--------------------------------------------------------------------
-- feng
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Hey, soldier, you should make yourself useful. Don't just stare at me!")
			ENDDIALOG()
		else
			SAY("Hey, you, soldier!")

			ANSWER("Me? I am just here to talk to you about...",101)
		end
	NODE(101)
		SAY("In this time deeds count more than words and every second that we hesitate means a victory for this dictator Reeza. We need to act immediately!")

		ANSWER("But I only need the Element T from you.",102)
	NODE(102)
		SAY("If that is the case tell me, are you against or for Reeza?! Where are your loyalties?")

		ANSWER("Luckily I don't have much to do with him since I am a Fallen Angel. Of course I don't like what he does to Neocron.",104)
		ANSWER("I think, Reeza does a pretty good job...",103)
	NODE(103)
		SAY("Whaat?! You dare to utter this here, in the HQ of the Twilight Guardian!! Get lost or I will strangle you personally.")
		SETNEXTDIALOGSTATE(102)
		ENDDIALOG()
	NODE(104)
		SAY("You have a weak attitude, soldier. Just wait until CopBots run down the doors of Tech Haven. Then you will see that we cannot let Reezasdictatorship continue to fester like a cancer. We need to crush it now and build a glorious new foundation for a bright future.")

		ANSWER("Well, about that Element T again...",105)
	NODE(105)
		SAY("You are lucky that you are Fallen Angel, otherwise I wouldn't give you any Element T in a thousand years. But since our mutual relationship was always very successful I will give you some for the special price of 10,000 per sample. Deal?")

		ANSWER("This is alot, really. But if there is no other way.",106)
	NODE(106)
		TAKEMONEY(10000)
		if(result==0)then
			SAY("Even if we are allied that doesn't mean that we will just get you Fallen Angels everything you want. Come back once you have enough money.")
			SETNEXTDIALOGSTATE(105)
			ENDDIALOG()
		else
			GIVEITEM(9302)
			SAY("That's good. With that money you make sure that both our goals for a better Neocron becomes reality one little step after the other.")
			ACTIVATEDIALOGTRIGGER(1)
			SETNEXTDIALOGSTATE(107)
			ENDDIALOG()
		end
	NODE(107)
		SAY("You can always enlist with us and join the fight against the cruel schemes from Reeza.")
	
		ENDDIALOG()

--------------------------------------------------------------------
-- Constantine
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if (result==0)then
			SAY("Do you have the Element T already? You can get it from Feng in the Twilight Guardian canyon in E 13. You need to recycle it with Trisol to get the special alloy we need.")
			ENDDIALOG()
		else
			SAY("The construction team is just waiting for the parts. Are you ready?")

			ANSWER("Yes, I've got everything. The semi conductor wasn't too easy to get but I have it.",151)
		end
	NODE(151)
		TAKEITEM(9306)
		if(result==0)then
			SAY("Do you have the Element T already? You can get it from Feng in the Twilight Guardian canyon in E 13. You need to recycle it with Trisol to get the special alloy we need.")
			ENDDIALOG()	
		else
			SAY("Excellent! This might take a while. Come back in about an hour. Maybe they are finished until then.")
			SETNEXTDIALOGSTATE(152)
			ENDDIALOG()
		end
	NODE(152)
		SAY("I am sorry but they still did not confirm the completion of the construction process. It seems to take some more time than estimated. Check back later.")
		SETNEXTDIALOGSTATE(153)
		ENDDIALOG()
	NODE(153)
		GIVEMONEY(50000)
		GIVEITEM(9305)
		SAY("Finally it is done. Here is your implant and in addition some more approved money for the research. 50,000 credits. Come back once you are ready for the final stage, alright? (next mission at level 45)")
		EPICRUNFINISHED(14,4)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
	

end