--new
function DIALOG()
--Trigger
--Triggernumber,Type,Person
--0,D,Next Direx
--1,D,Diamond Direx
--2,D,Figaro spielt die Drogen aus
--3,D,Mazzaro


--Startnode, Person
--0 Human Resource
--50 NEXT Director of Operations
--100 Diamond Director of Operations
--150 Figaro Black Dragon
--200 Mazzaro
--Items -> none

-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("Welcome Runner! We are always pleased to see a new face around here. Tangent has always been rather close to their people. Of course in a special way.")

		ANSWER("CONTINUE",1)
	NODE(1)
		SAY("We supply everybody with the means to create his own reality. As you might have noticed I am speaking about the weapons that Tangent produces. I mean you can imagine that they are very popular especially here within Neocron. Even I have a Tangent Assault Rifle stowed away in my appartement.")

		ANSWER("I am glad to finally belong to a faction which deals realistically with the people. No bullshit about peace and freedom.",2)
	NODE(2)
		SAY("Of course, that is one of our highest goals. Every client is very important and many campaigns are running which serve to raise consumer interest in our products.")

		ANSWER("CONTINUE",3)
	NODE(3)
		SAY("But Tangent is mainly concerned about the different aspects of weapon production. Maybe I should tell you something about the background of the company first? Just to give you a short overview.")

		ANSWER("I was just about to ask you about that.",4)
	NODE(4)
		SAY("Tangent Technologies was founded in the year 2748 as a stand alone company. We splitted from our mother company BioTech. Tangent had grown too much to still be a mere division of BioTech.")

		ANSWER("CONTINUE",5)
	NODE(5)
		SAY("Since then Tangent has constantly surpassed its mother company on many levels. The CityAdmin gave many lucrative commissions to Tangent because Tangent's focus was always the specialisation in weapon products.")

		ANSWER("CONTINUE",6)
	NODE(6)
		SAY("By selling weapons to the general public of Neocron a new and constant stream of income was secured as well. And even though BioTech uses every means at its disposal to force us from that leading position Tangent is still ever progressing and looking for higher goals.")

		ANSWER("BioTech is actively trying to encumber the efforts of Tangent?",7)
	NODE(7)
		SAY("Yes, in fact, they even resort to violence at times. Officially they will deny that of course. But they have contacts to the Tsunami and invest immense sums just so that they take actions against Tangent.")

		ANSWER("CONTINUE",8)
	NODE(8)
		SAY("But these foolish attempts cannot prevent Tangent from reaching its goals. Speaking of which, you are certainly ready to do a task for Tangent aren't you?")

		ANSWER("Yes, of course. And I almost thought I don't need to do anything for that apartement that you gave me.",9)
	NODE(9)
		SAY("Oh, rest assured, the apartement is totally yours now. Tangent is only considering this first assignment as a favor. You will be paid a small compensation for it.")

		ANSWER("It is always pleasant to work for payment. What is the assignment about?",10)
		ANSWER("I don't feel up to such a challenge at the moment.",23)
	NODE(10)
		SAY("It is rather easy. For such a big company like Tangent it is important of course to maintain important relations that keep the big projects running.")

		ANSWER("CONTINUE",11)
	NODE(11)
		SAY("The most important partners are NEXT and Diamond Real Estate. NEXT is cooperating because after all they want to equip their vehicles with our weapon systems.")

		ANSWER("CONTINUE",12)
	NODE(12)
		SAY("Of course, that this is in our interest is quite obvious. Diamond Real Estate on the other hand has certain contracts with us to provide their estates with security systems.")

		ANSWER("CONTINUE",13)
	NODE(13)
		SAY("The relation to Diamond has been long and enjoyable. It reaches back quite a while.")

		ANSWER("Yes, I have expected such kind of contracts to exist. Isn't it also true that Tangent is providing the weapons for the CopBots?",14)
	NODE(14)
		SAY("Indeed. Of course the CityAdmin has chosen Tangent to care about the equipment of the CopBots. After all Tangent is the biggest independent producer of weapons. This is not only rather lucrative but it is also a task that requires us to deal with it in a responsible way. A lot could go awry if Tangent made the wrong choices.")

		ANSWER("CONTINUE",15)
	NODE(15)
		SAY("Tangent is especially concerned about the efficiency of their weapons. The CopBots are supposed to accomplish their tasks as smooth as possible after all. So that the citizens of Neocron can sleep well and safe.")

		ANSWER("Very impressive. But you wanted to say something more about the assignment, didn't you?",16)
	NODE(16)
		SAY("Please wait until I am finished talking. The small task for you is to visit NEXT, Diamond Real Estate and the Pepper Park. Pepper Park is quite an infamous and dirty area. Take care in those districts.")

		ANSWER("CONTINUE",17)
	NODE(17)
		SAY("First of all you visit the NEXT director of operations and deliver these important documents. They closely analyse how effective Tangent weapon systems are used in conjunction with the hover technology.")

		ANSWER("CONTINUE",18)
	NODE(18)
		SAY("Afterwards please go to the Diamond HQ. You can hand over the other delivery there. But I have forgotten where the broker is who should receive the delivery. Either in the Diamond HQ, CityAdmin building or one of the Diamond stores.")

		ANSWER("CONTINUE",19)
	NODE(19)
		SAY("It contains an assortment of spirits. Remember that you always have to secure your relations through little gifts.")

		ANSWER("You have also mentioned the Pepper Park, what is the story behind that?",20)

--Spieler bekommt zwei Pakete
	NODE(20)
		GIVEITEM(9150)
		GIVEITEM(9151)
		SETNEXTDIALOGSTATE(21)
		SAY("It is not that important. Visit a person named Figaro there. He will provide you with a package that you should bring back here. Is that clear so far?")

		ANSWER("But of course, I am just the curious kind of guy.",21)
	NODE(21)
		SAY("Curiosity is a blessing if it isn't overused. But too much of it can inflict great damage. Go now and don't forget to return the package that you will get to Mazzaro here in the HQ.")

		ANSWER("CONTINUE",22)
	NODE(22)
		SAY("Otherwise he will be in a rather bad mood and we really don't want that to happen...")
		STARTMISSION()
		SETNEXTDIALOGSTATE(24)
		ENDDIALOG()


	NODE(23)
		SAY("Then take your time. Prepare yourself and come back once you are ready.")
		ENDDIALOG()

	NODE(24)
		SAY("You should really take this assignment a little bit more serious if you want to become a somebody within Tangent. If you cant find the Diamond broker, he might be somwhere else in the city. Diamond is spread far throughout Neocron. Go to Mazzaro once you finished all the tasks.")
		ENDDIALOG()
		

-----------------------------------------------------
--NEXT Director of Operations
	NODE(50)
		TAKEITEM(9150)
		if(result==0)then
			SAY("Yes? There is much to do and I have no time for idle talk.")
			ENDDIALOG()
		else
			SAY("Yes? Be quick about it, I am very busy.")

			ANSWER("I am supposed to deliver this package to you. I am coming from Tangent.",51)
		end
	NODE(51)
		SAY("Very well. They informed me alright. The confirmation is out and should reach Tangent now. You are just starting off with Tangent?")

		ANSWER("Yes, I hope to get far in my career.",52)
	NODE(52)
		SAY("Good Runner. Tangent is a good choice. Excellent weapons. We always maintained a very comfortable relationship with them. A good day to you, Runner.")
		SETNEXTDIALOGSTATE(53)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
		
	NODE(53)
		SAY("Haven't you got anything else to do Runner?.")
		ENDDIALOG()
		

-----------------------------------------------------
--Diamond Director of Operations
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("You don't belong here. Better be on your way again.")
			ENDDIALOG()
		else
			TAKEITEM(9151)
			if(result==0)then
				SAY("You don't belong here. Better be on your way again.")
				ENDDIALOG()
			else
				SAY("Yes? I assume this is a delivery for Diamond Real Estate?")

				ANSWER("It is a small gift from Tangent that I am supposed to deliver to you...",101)
			end
		end
	NODE(101)
		SAY("Really? That is very nice of Tangent to be sure. The maintenance service from Tangent is excellent as I recall. Very professional. But what is this? I don't believe it...")

		ANSWER("Is something wrong?",102)
	NODE(102)
		SAY("No, not really. Or rather not at all. Within the package I found a special kind of wine. Very special. This wine, Runner, is the finest you can imagine.")

		ANSWER("CONTINUE",103)
	NODE(103)
		SAY("For a change this wine has not been synthesized. It is worth a fortune. Please inform Tangent about my gratitude.")
		SETNEXTDIALOGSTATE(104)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
	
	NODE(104)
		SAY("Ask one of our employees. I have more pressing business to attend to.")
		ENDDIALOG()		

-----------------------------------------------------
--Figaro Black Dragon
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("I don't have anything for you.")
			ENDDIALOG()
		else
			SAY("Hey, Runner! It's a nice day, isn't it? But I have something here that could make it even nicer...")

			ANSWER("What a run down area this is...",151)
		end
	NODE(151)
		SAY("Yeah, but some people would still call it paradise on earth. I am one of them. Ok then, what kind of drug do you want?")

		ANSWER("Drug? I am here for a delivery that I am supposed to get from you...",152)
	NODE(152)
		SAY("That means you are the Runner who is supposed to take over the package? Hehee. Those are pretty strong drugs in that package if you ask me. But if somebody needs it we are happy to supply it.")

		ANSWER("CONTINUE",153)
	NODE(153)
		SAY("Especially if you are are already addicted to that kind of stuff your whole life. But I admit that Damion Jordan has a good taste.")

		ANSWER("I don't believe it. Drugs that are supposed to be for Mr. Jordan? Are we speaking about the same person here? The CEO of Tangent?",154)
	NODE(154)
		SAY("Yes, yes, exactly! You have not heard it yet? Damion has been a good client of ours for a long time.")

		ANSWER("CONTINUE",155)
	NODE(155)
		SAY("We could almost survive easily from the money he pays us for those drugs. It's incredible how many drugs he consumes.")

		ANSWER("How did that happen? There must be a good reason for it.",156)
	NODE(156)
		SAY("I don't know. That guy has always been keen on drugs and the Black Dragon have quite a good connection to him because of that. We even give him a special price.")

		ANSWER("CONTINUE",157)
	NODE(157)
		SAY("He really started with it the moment when his father gave BioTech to his younger brother Seymour. Maybe he did hope to get everything.")

		ANSWER("CONTINUE",158)
	NODE(158)
		SAY("Who knows? But I am talking too much. The slick Runner certainly wants to get back into the safe inner city, doesn't he?")

		ANSWER("I am just here because of an assignment. Not because I choose to be here.",159)

--Spieler bekommt massig Drogen

	NODE(159)
		GIVEITEM(9152)
		SAY("If you ever feel you need some drugs, you can get almost everything here in Pepper Park...")
		SETNEXTDIALOGSTATE(160)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
		
	NODE(160)
		SAY("Hey, I have already given you all the drugs that I had with me. You still want more? Not today I fear.")
		ENDDIALOG()
		
-----------------------------------------------------
--Mazzaro
	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Come back once you finished the task.")
			ENDDIALOG()
		else
			SAY("Come and have a seat if you want. You are one of our new Runners and have just completed the first special run, am I right?")

			ANSWER("Yes, here is the package with the... ahem... drugs.",201)
		end
	NODE(201)
		TAKEITEM(9152)
		if(result==0)then
			SAY("Where did you loose your package?")
			ENDDIALOG()
		else
			SAY("What a pity. You must be getting the wrong impression about Tangent here. Normally the person who delivers it should not be informed about the content of the package. Usually discretion alone suggests not to enquire about the content of a package.")

			ANSWER("It certainly got me thinking. What is the purpose of these drugs?",202)
		end
	NODE(202)
		SAY("I think I'll clue you in. Damion Jordan, the chief of Tangent, has a small drug problem. So far it is known everywhere really. At least it is rumoured in every corner of Neocron. A sad fact is that you get addicted to drugs pretty fast.")

		ANSWER("CONTINUE",203)
	NODE(203)
		SAY("Understand? It's just that a leader of such a big company cannot afford to be seen out on the street with drugs in his hands. What would you do in such a situation? Right. You send a runner to go and get them for you. That is all there is to say about it.")

		ANSWER("Why are so many people fascinated by drugs anyway.",204)
	NODE(204)
		SAY("In any case you have done good work. The delivery is safe and sound at its destination. I asked that you be sent to me because I wanted to personally accept this package in order to create as little rumours on the way as possible. I hope I can count on you to do the same.")

		ANSWER("Sure, I know how to keep a secret.",205)
	NODE(205)
		GIVEMONEY(1000)
		SETNEXTDIALOGSTATE(206)
		SAY("Very good. As a small reward I have 1000 Credits for you here. You have done the first step into a great future here at Tangent.")

		ANSWER("CONTINUE",206)
	NODE(206)
		SAY("But don't rest yet. The more people know you and the more sympathy we can extend to you the more important will be the next missions for you. Take care until the next time.")
		EPICRUNFINISHED(4,0)
		ACTIVATEDIALOGTRIGGER(3)
		ENDDIALOG()

end