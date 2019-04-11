--new
function DIALOG()
--Trigger
--Triggernumber,Type,Person
--6(0),kill Director of Operations BioTech,Andressa
--1,D,Mazzaro

--Startnode, Person
--0
--50, Andressa
--100, Mazzaro
--Items -> none

-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("You are already near to famous here at Tangent. I even heard somebody talk about you out on the streets.")

		ANSWER("Thanks, but I am only doing my job.",1)
	NODE(1)
		SAY("Modesty doesn't suit you at all. You can be proud about what you achieved. But of course that is not the reason why we need you here at the moment.")

		ANSWER("I expected as much, is there an emergency?",2)
	NODE(2)
		SAY("Not exactly. It's all about the final test run of the beam weapon. Everything is sorted out and the last readings will soon be done. But despite all our efforts BioTech somehow managed to get their weapon to a similar state in production.")

		ANSWER("CONTINUE",3)
	NODE(3)
		SAY("Tangent cannot afford to loose in a direct competition. Especially with BioTech as competitor. That's why we will actively try to do something against them. As small as the chance is for them to rival our weapon.")

		ANSWER("And you assumed that I would do it? Alright, what does Tangent have in mind?",4)
	NODE(4)
		SAY("The final testrun must be disrupted at all costs. Didn't you receive some compromising material from your contact last time? If that is the case you should use it now. There is no better time.")

		ANSWER("Yes, I have certain compromising material about a scientist named Andressa. I believe she will be somewhere in the vicinity of the BioTech headquarters.",5)
	NODE(5)
		SAY("Then use that knowledge, everything that damages BioTech is good for Tangent.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(6)
		ENDDIALOG()
		
	NODE(6)
		SAY("Hurry, the time is running away.")
		ENDDIALOG()


-----------------------------------------------------
--Andressa

	NODE(50)
		SAY("Hello. Please leave me alone. I have worked through the night and I am currently having a brake. These damned headaches are killing me.")

		ANSWER("Don't worry, Andressa, this won't take long.",51)
	NODE(51)
		SAY("Where do you know my name from? Do I know you?")

		ANSWER("That is unlikely. But I know you or at least I know what you want to hide.",52)
	NODE(52)
		SAY("What do you mean by that? I don't have anything to...")

		ANSWER("Please, you can really drop that charade. I' ve got it all on this datacube. I will tell you that the content has got something to do with mutants...",53)
	NODE(53)
		SAY("What?! I, no... that's not me... I, ahh what the heck. If you already know it anyway. Why should I deny it? What is your purpose with this? If you want money I have to disappoint you, I am not very rich.")

		ANSWER("No, no, what do you think I am? I am not your usual kind of racketeer.",54)
	NODE(54)
		SAY("But I don't understand... What do you want from me then?")

		ANSWER("Oh, I just want a small favor from you. And then all this ugly information would never find its way into the Neocron City Network.",55)
	NODE(55)
		SAY("If I can do it easily, no problem. But I can't do everything...")

		ANSWER("You can certainly do this favor... delay the final testrun of the newly developed beam weapon. Just one or two days, not more...",56)
	NODE(56)
		SAY("How do you know about the weapon? This is  still top secret...")

		ANSWER("That is not an issue right now...",57)
	NODE(57)
		SAY("And what will happen to me? I can't...")

		ANSWER("It's your decision. Either you delay the testrun or you find your secrets all over the network.",58)
	NODE(58)
		SAY("You don't understand! I can't! The testrun will commence without my support! Only the director of operations could stop the test now.")

		ANSWER("Regrettable. And here I thought that I wouldn't need to publish these documents...",59)
	NODE(59)
		SAY("No! Please! I... there must be a different way.")

		ANSWER("I am listening. You better think about something...",60)
	NODE(60)
		SAY("I know! You could kill the Director of Operations! He still has a Generep but it would surely stop the testrun.")

		ANSWER("Me? Listen, it's your secrets that are at stake here.",61)
	NODE(61)
		SAY("Me?! No, I can't do this. I have known him for years... No, I would do much to keep these secrets of mine a secret but I can't do this. You will have to ruin my life then if that is what you want...")

		ANSWER("CONTINUE",62)
	NODE(62)
		SAY("But please think about it again. ... Heavens, now I recognize you! You have murdered those one BioTech Security Guard recently, didn't you? I already thought I have seen you on a surveillance monitor...")

		ANSWER("My fame is reaching far ahead of me it seems...",63)
	NODE(63)
		TAKEITEM(9155)
		if(result==0)then
			SAY("I still can't! Please, you have killed before, why then can't you also kill the director yourself?")
			ENDDIALOG()		
		else
		SAY("I still can't! Please, you have killed before, why then can't you also kill the director yourself?")

		ANSWER("If this is necessary! It seems I will have to take it into my own hands again. I don't yet know what will happen with your secrets. What the heck, I'll give them back to you. Then they will remain your secrets.",64)
		end
	NODE(64)
		SAY("Many, many thanks... thank you so much... You can find the director in Via Rosso Sec-3")
		SETNEXTDIALOGSTATE(65)
		ENDDIALOG()
		
	NODE(65)
		SAY("Hurry and kill the director of operations before it is too late. He should be in Via Rosso Sec-3 at this moment")

		ENDDIALOG()

--Spieler tötet BioTech Director of Operations 6

-----------------------------------------------------
--Mazzaro

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("This is a critical situation, we are counting on you.")
			ENDDIALOG()
		else
			SAY("Our testrun was a mind blowing success!! I am certain that CityAdmin will now choose Tangent. How is BioTech faring then?")

			ANSWER("Their testrun was interrupted all of a sudden. I had to kill their director of operations first, though.",101)
		end
	NODE(101)
--NEW	
		SAY("Runner, you are as cold as ice! You walk straight into a public restaurant and simply shoot the director of operations. I like that. I like that very much. Tangent is indebted to you. I have played with the idea of giving you one of the test versions of the new weapon. What kind of weapon would you prefer?")

		ANSWER("I'd prefer a cannon like weapon. Something really big, you know?",102)
		ANSWER("I'd prefer something not that obvious, how about a pistol?",104)
		ANSWER("I'm a fan of rifles, really. You got some of these?",106)
--getcannon	
	NODE(102)
		SAY("I believe that you will like this cannon a lot. Additionally Tangent offers a bonus of 100,000 credits to you. After everything you have done so far it seemed only appropriate.")

		ANSWER("Thanks.",103)
	NODE(103)
		GIVEITEMWITHSLOTS(9156,255,1)
		GIVEMONEY(100000)
		SAY("We will not have any more assignments for you that would be appropriate to your experience. But we would suggest that you open a clan and support Tangent with that Clan. Thank you for all you have done.")
		EPICRUNFINISHED(4,5)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()		
--getpistol
	NODE(104)
		SAY("I believe that you will like this pistol a lot. Additionally Tangent offers a bonus of 100,000 credits to you. After everything you have done so far it seemed only appropriate.")

		ANSWER("Thanks.",105)
	NODE(105)
		GIVEITEMWITHSLOTS(9157,255,1)
		GIVEMONEY(100000)
		SAY("We will not have any more assignments for you that would be appropriate to your experience. But we would suggest that you open a clan and support Tangent with that Clan. Thank you for all you have done.")
		EPICRUNFINISHED(4,5)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()	
--getrifle
	NODE(106)
		SAY("I believe that you will like this rifle a lot. Additionally Tangent offers a bonus of 100,000 credits to you. After everything you have done so far it seemed only appropriate.")

		ANSWER("Thanks.",107)
	NODE(107)
		GIVEITEMWITHSLOTS(9158,255,1)
		GIVEMONEY(100000)
		SAY("We will not have any more assignments for you that would be appropriate to your experience. But we would suggest that you open a clan and support Tangent with that Clan. Thank you for all you have done.")
		EPICRUNFINISHED(4,5)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()	
--NEWEND
end