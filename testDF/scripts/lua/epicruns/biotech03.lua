--new
function DIALOG()
--Trigger
--Triggernumber,Type,Person
--0,D,Andressa
--6(1), PvNPC, Mutanten Beckert
--2, D, Beckert
--3,D, McMillan


--Startnode, Person
--0 Human Resource
--50 Andressa
--100 Beckert
--150 McMillan
--

-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("BioTech would like to offer you a new task. It is related to the content of the datacube that you organised for us. It was quite revealing. It contained several code names of persons who apparently received information regarding BioTech directly from BioTech sources.")
		
		ANSWER("That means there is somebody who gives away all these secrets? I thought these rumours were only that, simple rumours. I would not have thought they were true.",1)
	NODE(1)
		SAY("Those stories are not true! They have been strongly modified to inflict more damage to BioTech.")
		
		ANSWER("CONTINUE",2)
	NODE(2)
		SAY("But we still have not found a proper trail to track down a specific person. That means that we do not know who gives all these informations away. Especially since it probably is not only one person.")
		
		ANSWER("What can we do against that?",3)
		ANSWER("I cannot accept the task at the moment.",7)
	NODE(3)
		SAY("It is a very complex procedure but the plan is to closely follow every movement of the persons in question. That is were we need your help. BioTech would like you to meet a certain Andressa in the Chez Sypher restaurant where she can be found very often. She works in our research lab and some of her activities have been quite suspicious to say the least.")
		
		ANSWER("No problem but what am I supposed to do then? Should I just ask her if she is giving away compromising information about BioTech?",4)
	NODE(4)
		SAY("No, that would be foolish. You should try to convince her to give away  vital information to you. Just offer 50000 Credits as reward for example. I mean, you don't really have to pay it after all.")
		
		ANSWER("What happens to her if she gives away that information?",5)
	NODE(5)
		SAY("I believe with all the fuss that happened lately she will just be stripped of her ranks. To fire her would only cause unnecessary attention to these cases.")
		
		ANSWER("Alright, I'll do it.",6)
	NODE(6)
		SAY("She can be found in this district. She likes to spend her lunch break at Chez Sypher. Report everything to Mr McMillan back here. ")
		STARTMISSION()
		SETNEXTDIALOGSTATE(8)
		ENDDIALOG()
		
	NODE(7)
		SAY("That's a pity. Make sure to call us if you decide to do it after all.")
		ENDDIALOG()
		
	NODE(8)
		SAY("I thought you already have your assignment?!Visit Andressa right on the backside of the BioTech building.")
		ENDDIALOG()
		


-----------------------------------------------------
--Andressa

	NODE(50)
		SAY("Yes? I am really trying to enjoy my meal here. Make it short.")
		
		ANSWER("You work with BioTech, right?",51)

	NODE(51)
		SAY("Yes, that is true. Why do you want to know this?")
		
		ANSWER("How should I put it... I am very interested in BioTech and I was wondering if you would happen to know something about them? Something like rumours or dirty secrets...",52)
	NODE(52)
		SAY("Who do you think I am? I am not working there as a spy!")
		
		ANSWER("Are you sure? There could be a hefty sum in it for you. About 50000 Credits if the information is worth it.",53)

	NODE(53)
		SAY("50000? That is a pretty high sum. But how do I know if I can trust you? How can I be sure that you are not trying to fool me?")
		
		ANSWER("You cannot be sure. Will you accept the deal? Yes or no.",54)
	NODE(54)
		SAY("... I am not falling for this ancient trick. I don't believe that you are after informations about BioTech, am I right? I believe that you are after those who spread all these rumours over the network.")
		
		ANSWER("Not at all, not at all... or do you know anything about that? Do you know who is behind all this? And what do you know about it?",55)

	NODE(55)
		SAY("Well, I already assumed that BioTech would dig up the truth one day. I am sure I will not get away unscathed. I mean you have been sent by BioTech to question me, I assume.")
		
		ANSWER("That depends...",56)
	NODE(56)
		SAY("Ok, I'll tell you something. I know that my job at BioTech is in danger and thats why I will tell you all that I know about it. At least that might lessen my punishment for giving away all this information.")
		
		ANSWER("That sounds acceptable. Please continue...",57)

	NODE(57)
		SAY("It all began a few month ago. I was sitting here enjoying my lunch, as always and somebody started a conversation with me. He offered to give me a lot of money for vital information about BioTech. At first I was skeptical but then my greed for the money overwhelmed me. ")
		
		ANSWER("CONTINUE",58)
	NODE(58)
		SAY("I had serious doubts about it. Many colleagues at work are very nice and the atmosphere is good as well. But I really wanted that money and I could not resist the offer in the end. That is how I told them about the few secrets I knew about some BioTech members.")
		
		ANSWER("I could have deducted that much myself. Could you be a little bit more specific?",59)

	NODE(59)
		SAY("Well, there is not much I know about the people who spoke to me. I only know that they forwarded my information over a networking station in the Wastelands. It is situated somewhere near the old ruins.")
		
		ANSWER("Can you tell me where exactly that station was?",60)
	NODE(60)
		SAY("Yes, it is either the ancient Yucida village or the ancient Loba Village. I really do not know more about it. Even the person who spoke to me did notsay his name. He did not even register on any terminal. But maybe that network station is your best trail.")
		
		ANSWER("I will investigate into that ...",61)

	NODE(61)
		SAY("Good luck with your investigation.")
		SETNEXTDIALOGSTATE(62)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
		
	NODE(62)
		SAY("Have you already checked the ancient villages?")
		ENDDIALOG()
		



-----------------------------------------------------
--Beckert

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Get lost! Don't you see that I am busy?")
			ENDDIALOG()
		else	
			SAY("You want to talk to me?")
		
			ANSWER("Yes, that's right. this is a networking station, right?",101)
		end
	NODE(101)
		SAY("A small one but after all it is mine. I am earning my money lending it to clients. Most of the time these clients need channels which are not covered by any law. Maybe you are interested in renting my rig?")
		
		ANSWER("Not really, no. I am much more interested in getting a list of people who used your rig lately...",102)
	NODE(102)
		SAY("You will understand that I cannot do that. My clients are relying on me to keep their secrets secrets.")
		
		ANSWER("It would be very important for me, you know.",103)
	NODE(103)
		SAY("Let me think. There might be something you can do. Out here there are a lot of mean and ugly creatures and mutants. I have not slept well in days because of them. If you can get rid of them I might tell you what you want to know.")
		
		ANSWER("If you insist we do it that way.",104)
	NODE(104)
		SAY("very good. Just kill five of those mutant corporals. Maybe then I will be able to sleep well again.")
		
		ANSWER("CONTINUE",105)
	NODE(105)
		SAY("Strangely enough these mutants out here are all equipped with implants of some kind. I believe that's what makes them so aggressive. I have a whole pile of those chips but I have no use for them.")
		SETNEXTDIALOGSTATE(106)
		ENDDIALOG()
		
--Spieler tötet 5 Mutanten trigger 6

	NODE(106)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("I have watched you closely... you have not yet killed five mutants.")
			ENDDIALOG()
		else
			SAY("Very nice, do you hear that? No crying or roaring any more... I'll give you one of these implants first. BioTech is written on it. But I don't know what that means exactly. I have also had a look at my files in the meanwhile but I could not find the information. Well, I guess my hard drives are just a big mess... tehehe.")
		
			ANSWER("CONTINUE",107)
		end

--Spieler bekommt Mutanten Implantat
	NODE(107)
		GIVEITEM(9202)
		SAY("But I could just send them out to you. Where should I send it to?")
		
		ANSWER("Send it simply to BioTech. It will reach me sooner or later.",108)
	NODE(108)
		SAY("BioTech, huh? I don't mind. I'll send you the information on who used this station as soon as I can.")
		SETNEXTDIALOGSTATE(109)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()		


	NODE(109)
		SAY("I am not that fast. Calm down. You have to give me a little bit more time. Why don't you already go back to your company and wait there?")
		ENDDIALOG()


-----------------------------------------------------
--McMillan

	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(2)
		if (result==0)then
			SAY("Would you please be patient? I do not have time at the moment. Thank you.")
			ENDDIALOG()
		else
			SAY("I am sorry, but I am very busy at the moment. Let's make this short. You might recall those rumours that appeared all over the net? They have lessened considerably, they seem to be getting less and less.")
		
			ANSWER("I have done an investigation for BioTech. I found out that a certain Andressa sold compromising information about BioTech.",151)
		end
	NODE(151)
		SAY("That is at least some kind of improvement. The less people give away vital information, the less negative publicity there will be.")
		
		ANSWER("I also visited a networking station that was used for the transfer of these BioTech rumours. The owner has assured me to send a list of persons to BioTech. The list contains details about persons who recently used the station.",152)
	NODE(152)
		SAY("Excellent, good work.")
		
		ANSWER("There is something else. I have been given this microchip. It is implanted in many mutants in the vicinity of that networking station. It seemed to make the mutants more aggressive. Could it be that BioTech experiments on these mutants?",153)
	NODE(153)
		SAY("But of course. After the law every mutant is of less worth than an animal. You can do with them whatever you want.")
		
		ANSWER("But they have been humans once, too... !!",154)
	NODE(154)
		TAKEITEM(9202)
		if(result==0)then
			SAY("Where did you leave that implant? you will have to give it to me if you want me to do something about it.")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(155)
			SAY("Yes, I hear that far too often, Runner, but I don't make the rules. I am just trying to not to break them. Just give me that microchip and I will have the information in there analyzed. ")
		
			ANSWER("Good, I will make myself available as soon as the list arrives from the network station.",155)
		end
	NODE(155)
		GIVEMONEY(10000)
		SAY("Of course, here is a reward of 10000 credits. Keep yourself in good shape.")
			EPICRUNFINISHED(5,2)
		ACTIVATEDIALOGTRIGGER(3)		
		ENDDIALOG()
		

end