--new
function DIALOG()
--Trigger
--Triggernumber,Type,Person
--6(0),PvP,Grand
--1,D,Grand
--2,D,McMillan



--Startnode, Person
--0 Human Resource
--50 Grand
--100 McMillan


-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("There are bad news. The amount of compromising material has dramatically increased. To be honest, some employees have already been strongly affected. It is about high time that all this ends soon.")
		
		ANSWER("CONTINUE",1)
	NODE(1)
		SAY("The owner of the networking station, a certain Beckert, did send us information. We now have a list of people who rented that station. That is why we need you for another assignment. If you are ready, that is.")
		
		ANSWER("Of course, after all I am a member of BioTech just as you are and it is just as well my business.",2)
		ANSWER("I don't think I can do this job.",6)

	NODE(2)
		SAY("I am glad to hear that. The list highlights one person who had access to the network station at that specific time. It is a certain Grand who can be found in Outzone 01.")
		
		ANSWER("CONTINUE",3)
	NODE(3)
		SAY("We have contacted CityAdmin and it appears that he is well known to the authorities as a prominent hacker. He doesn't belong to any faction and would do everything for money.")
		
		ANSWER("That does not sound very comforting. How does that help us?",4)

	NODE(4)
		SAY("You have to find a way to force him to reveal who is behind all this. And he can possibly undo what damage he already did.")
		
		ANSWER("I am already on the way. What methods should I use?",5)
		ANSWER("What should I do if I have to kill someone to complete the mission?",8)
	NODE(5)
		SAY("That is up to you. Use all methods that you have at your disposal. After that you can inform McMillan about the progress of the current situation.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(7)
		ENDDIALOG()
		

	NODE(6)
		SAY("Regrettable. Especially this job would have been of a special importance. But I don't want to force you.")
		ENDDIALOG()
		
	NODE(7)
		SAY("Good luck with your task. Did you already visit that Hacker in the Outzone 01?")
		ENDDIALOG()

	NODE(8)
		SAY("If you kill somebody take care that they should NOT be employees, guards or official representatives. Only Runner.")
		
		ANSWER("And I can really flatline any Runner I want to?",9)
	NODE(9)
		SAY("No, only if your target is about your level or higher. Otherwise the kill cannot be accepted. Good luck with your mission. Use whatever means you think are necessary.")
		SETNEXTDIALOGSTATE(7)
		STARTMISSION()
		ENDDIALOG()


-----------------------------------------------------
--Grand

	NODE(50)
		SAY("Yes? Who's there?")
		
		ANSWER("Are you Grand?",51)

	NODE(51)
		SAY("That depends...")
		
		ANSWER("Let's cut straight to the point. I know that you are Grand.",52)
	NODE(52)
		SAY("Very well. I am Grand. What about it?")
		
		ANSWER("I know that you rented the networking station in the desert near some ancient ruins. Whom did you rent that station for?",53)

	NODE(53)
		SAY("Hah! It should be obvious for such a clever guy like you, shouldn't it?")
		
		ANSWER("Come on. Tell me. It can't be that difficult.",54)
	NODE(54)
		SAY("You know something? I believe you are bluffing and that's why I will tell you something... Both Tangent and Twilight Guardian are involved. Even if both have different goals. Now don't bother me any longer, I still have to put a few files on the network. Hahaha.")
		
		ANSWER("You are obviously not taking me serious enough. I want to know precisely who is behind all this and you should not upload any more of this rubbish.",55)

	NODE(55)
		SAY("Who would prevent me from doing that? You?! Excuse me if I laugh. I have never before heard of you and then you come here and ask questions that I would not even tell a CopBot if he threatened me with his gun.")
		
		ANSWER("It seems that I have to resort to other methods. To show you how serious I am I will kill one of your Twilight Guardian friends. And after that... it will be your turn, understood?",56)
	NODE(56)
		SAY("Haha, good luck. I bet the first Twilight Guardian you encounter will flatline you within the blink of an eye. I suggest you only take out Runner of your own rank or higher or I won't accept it as a kill.")
		SETNEXTDIALOGSTATE(57)
		ENDDIALOG()

--Spieler killt einen Twilight Guardian trigger 6 bzw 0	
	

	NODE(57)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Did you give up already on your plan? Yes, killing a Twilight Guardian is no easy task to be sure. Make sure they are your combat rank or higher.")
			ENDDIALOG()
		else
			SAY("You again!? Oh man, I would not have thought you capable of something like that. Pretty harsh to kill somebody because of that.")
		
			ANSWER("I hope you got the message?",58)
		end
	NODE(58)
		SAY("Yeah, alright, alright... Twilight Guardian and Tangent are diefinitively into this. But still... I don't know who started it in the first place. I am sorry. You have to understand that I do this because of the money. At some point I must have lost the righteous way...")
		
		ANSWER("CONTINUE",59)

	NODE(59)
		SAY("After I had saved enough money for a flight to Irata III there were no new spaceships in construction, all of a sudden. And they lost the contact as well. I have lost all my dreams and ideals back then. Now I do what I do best and try to get along.")
		
		ANSWER("I am not interested in your whining. Oh yes, take these rumours out of the net.",60)
	NODE(60)
		SAY("Calm down, no need to get excited. I have to warn you that I can only take my own files off the net.")
		
		ANSWER("Does that mean, that there are other hackers with the same mission?",61)

	NODE(61)
		SAY("Yes, at least a dozen I assume... but I don't know a single one of them.")
		
		ANSWER("Then at least delete your own files. I don't mind if there are consequences involved for you.",62)
	NODE(62)
		SAY("I hope that was all you need...")
		SETNEXTDIALOGSTATE(63)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
		
	NODE(63)
		SAY("I am already deleting my data... don't push me. Go back to wherever you came from.")
		ENDDIALOG()
		

-----------------------------------------------------
--McMillan

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Did you already do something against these rumours? Weren't you supposed to visit that guy in the Ouzone 01?")
			ENDDIALOG()
		else
			SAY("This is a crying shame, these rumourmongers! This whole incident is slowly but surely robbing us of important employees. Those liars! But it seems to me that people like to believe in a lie rather than the truth.")
		
			ANSWER("Yes, but the first step to resolving this whole issue has already been done. I was able to track down a hacker who put some of the rumours on the net.",101)
		end
	NODE(101)
		SAY("Did you at least kill him for his evil deeds?")
		
		ANSWER("No, what are you thinking? He would never have been able to undo his work.",102)
	NODE(102)
		SAY("Well, you have done it again. You really are a worthy addition to BioTech. Could you find out who is hiding behind all this? Who is holding the strings?")
		
		ANSWER("I could only dicover that Tangent as well as the Twilight Guardian seem to be involved.",103)
	NODE(103)
		SAY("Tangent! It's so obvious! We were fools. It is so obvious that Damion Jordan, the CEO of Tangent, wants to damage BioTech as much as possible.You know that the father of Seymour and Damion is forcing the competition between the two through a sort of contest where the winner gets it all, right? Meaning that the winner gets both BioTech and Tangent.")
		
		ANSWER("In this case it looks more like a cruel joke to me.",104)
	NODE(104)
		SAY("Yes, Damion is using every dirty trick! He is not even refraining from such a malicious campaign of lies and rumours. But you, you have earned a break. A forced break but nonetheless time to relax and enjoy life. there are still a few things to sort out before BioTech is able to figure out the right tactic to use as a counter attack.")
		
		ANSWER("Very well, I will try to improve on my abilities in the meanwhile.",105)
	NODE(105)
		GIVEMONEY(20000)
		SAY("And because you did BioTech a big favor you have earned a little extra. 20000cr.")
		EPICRUNFINISHED(5,3)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
		


end