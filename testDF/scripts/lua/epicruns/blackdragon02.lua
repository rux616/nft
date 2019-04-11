--new
--BlackDragon
--
--Trigger
--Triggernumber,Type,Person
--0,D,LEONE 50
--1,D,MERCURUS 150
--2,D,LEONE 200
--3
--
--Startnode, Person
--0, WISEGUY
--50, LEONE 1671
--100, LUCKY 1672
--150, MERCURUS 1673
--200, LEONE 1671
--250,
--
--Items
--DESTROSOL FORTE 723
--
--Missionbase Eintrag
--NPC0	NPC1	NPC2	NPC3	TRG0	VAL01	VAL02	VAL03	TRG1	VAL01	VAL02	VAL03	TRG2	VAL01	VAL02	VAL03	TRG3	VAL01	VAL02	
--1671	1672	1673		3	0	0	0	3	2	1	0	3	0	2	0
--START	START	START	START
--50	100	150
--

function DIALOG()
--------------------------------------------------------------------
--WISEGUY
--0
	
	NODE(0)
		SAY("Damn Tsunamis. I assume you already have made some experience with those bastards?")

		ANSWER("Some. They have never had friendly intentions, though.",1)
	NODE(1)
		SAY("Small surprise. After all they are our arch enemies. Only yesterday they roughed up some of our dealers. Bastards! Whatever, Leone's got something for you. You know the drill, he is already waiting for you. He'll be waiting in the HQ.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)
		SAY("Leone is usually in the HQ, I'm sure you'll find him there.")	
		ENDDIALOG()
	

--------------------------------------------------------------------
--LEONE
--50
	NODE(50)
		SAY("It seems as if this is your lucky day. I'll give you a chance to prove your worthiness. Our dealers were roughed up by a very aggressive Tsunami Clan named Monsun. And all our dealers wanted was to sell a few drugs to the Tsunami girls. Is that too much to ask?")

		ANSWER("So what? Why should that interest me?",51)
	NODE(51)
		SAY("Don't you have a brain or something? If you want to be successful with us you should choose your word a little bit more careful. Now do what I'll tell you.")

		ANSWER("No reason to get excited, I'm all ears. What is my task?",52)
	NODE(52)
		SAY("Since we lost a considerable amount of drugs you have to find a way to keep our contract with the Crahn. They expect a delivery of a dozen Destrosol Forte. The contact person is a monk named Mercurus. Probably he'll be hanging out at the Crahn HQ. This is a one time chance so don't disappoint me.")

		ANSWER("No problem, just give me those drugs and I'm on my way.",53)
	NODE(53)
		SAY("Didn't I just say that we don't have them in stock?")

		ANSWER("Sure you did but normally...",54)
	NODE(54)
		SAY("Get back here once you delivered the drugs to Mercurus. I don't care where you get them from! I didn't say it was as easy as stealing candy from a child. I don't have more to say. Mercurus is expecting 12 Destrosol Forte and maybe you can get them from Lucky or some other dumb shit.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()


--------------------------------------------------------------------
--LUCKY
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("I don't have time now. Even I need to do something on occasion.")
			ENDDIALOG()
		else
			SAY("I've got something you might be interested in.")

			ANSWER("I can't really imagine what that might be.",101)
		end
	NODE(101)
		SAY("12 Destrosol Forte to be precise. All nicely wrapped up in a bundle. Interested?")

		ANSWER("How could you have known that? I need exactly this kind of drug for a small job.",102)
	NODE(102)
		SAY("I have my informations. But listen, I'll give these drugs to you for free and in return you owe me a favor for later. I won't wait forever for your decision. Well?")

		ANSWER("Very well, I accept.",103)
		ANSWER("No way, I know this is a trap.",105)
	NODE(103)
--DrugPaket 723
		GIVEITEM(9460)
		SAY("Great. I believe that both of us will benefit from this.")

		SETNEXTDIALOGSTATE(104)
		ENDDIALOG()
	NODE(104)
		SAY("I have already handed the drugs over to you. What do you want more?")
		ENDDIALOG()
	NODE(105)
		SAY("As you wish. Return if you have changed your mind. I am certain you will accept my offer.")
		ENDDIALOG()
		

--------------------------------------------------------------------
--MERCURUS
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("I thought we had a deal!? Keep to your word, you and your Black Dragon, or you will suffer the consequences.")
			ENDDIALOG()
		else
			TAKEITEM(9460)
			if(result==0)then
				SAY("I thought we had a deal!? Keep to your word, you and your Black Dragon, or you will suffer the consequences.")
				ENDDIALOG()
			else
				SAY("Tell me, friend or foe?")

				ANSWER("I have something for you from the Dragons. Drugs to be precise.",151)
			end
		end
	NODE(151)
		SAY("Very well! I already suspected you of using it for yourself. Now we can finally continue our experiments... but... but this is only 12 Destrosol Forte and we agreed on 16. Where did you leave the rest?")

		ANSWER("Nobody told me there would have to be 16. A dozen were stated in the agreement.",152)
	NODE(152)
		SAY("How nice. I bet you have taken the rest for yourself, junkie. You will get me the last four as well or this will have consequences.")
		SETNEXTDIALOGSTATE(153)
		ENDDIALOG()
	NODE(153)
		TAKEITEMCNT(723,4)
		if(result==0)then
			SAY("We agreed on another four Destrosol Forte, understood?")
			ENDDIALOG()
		else
			SAY("Very well, our relation to the Black Dragon will remain favorable after all. Thank you. Now you can return to your boss and tell him we received the delivery.")
			ACTIVATEDIALOGTRIGGER(1)
			SETNEXTDIALOGSTATE(154)
			ENDDIALOG()
		end

	NODE(154)
		SAY("If we need more we will contact you again. You can return to where you came from.")
		ENDDIALOG()
--------------------------------------------------------------------
--LEONE
--200
	
	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Get back here once you have delivered the drugs to Mercurus. And maybe you can trick Lucky into giving you something first.")
			ENDDIALOG()
		else
			SAY("It seems that you succeeded, eh? You have already improved your standing within the Black Dragon with this. I hope you are thankful that I offered this chance to you.")

			ANSWER("Of course but I'd be more interested in some credits if you know what I mean.",201)
		end
	NODE(201)
		GIVEMONEY(2000)
		SAY("You ungrateful bastard, my thanks don't seem to be enough for you, eh? Well then, here you have 2000 credits. Your work isn't worth a penny more. To be precise you are already overpaid as it is. If you want another job go to one of the Wiseguys.(next mission at level 30)")
		EPICRUNFINISHED(9,1)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()


end