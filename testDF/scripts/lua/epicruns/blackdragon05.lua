--new
--BlackDragon
--
--Trigger
--Triggernumber,Type,Person
--0,D, LUCKY 100
--1,LOOT, HUNG 200
--2,D, LUCY 250
--3
--
--Startnode, Person
--0, WISEGUY
--50, LEONE
--100, LUCKY 1672
--150, REGY 1676
--200, HUNG 1677
--250, LUCY 1670
--
--Items
--DROGENPAKET HUNG 9461
--Missionbase Eintrag
--NPC0	NPC1	NPC2	NPC3	TRG0	VAL01	VAL02	VAL03	TRG1	VAL01	VAL02	VAL03	TRG2	VAL01	VAL02	VAL03	TRG3	VAL01	VAL02	
--1672	1676	1677	1670	3	0	0	0	10	2	?	0	3	3	2	0	
--START	START	START	START
--100	150	200	250
--

function DIALOG()

--------------------------------------------------------------------
--WISEGUY
--0
	NODE(0)
		SAY("Leone would like to speak to you. You are already rather famous but you better be careful, to be famous is not always preferable. Watch your tongue, Lucky can be angered real quick as drugged as he is.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()
		
	NODE(1)
		SAY("Why don't you just finish the job Leone gave you?")
		ENDDIALOG()

--------------------------------------------------------------------
--LEONE
--50
	NODE(50)
		SAY("I don't like, didn't like you the first time you put a foot in my office. But I can still appreciate the value of a useful tool. In short Gecko would like you to do him a favour. As you know Lucky had an affaire with Lucy and Gecko doesn't seem to be too thrilled about this. Since he is a man of the old school he wants to give Lucky a warning before there are any consequences.")

		ANSWER("Yes, damn this honour amongst thieves, eh?",51)
	NODE(51)
		SAY("You will visit Lucky and you will make it very clear to him that Lucy is Gecko's girl, understood? You can rough him up a little after you have delivered the message. After all he should understand the message. After that you get the reward from me so you better be a little bit more grateful than the last time. I told you I would fix you a favour with Gecko.")
		SETNEXTDIALOGSTATE(52)
		ENDDIALOG()
	NODE(52)
		SAY("Did you forward the message to Lucky?")
		ENDDIALOG()


--------------------------------------------------------------------
--LUCKY
--100
	NODE(100)
		SAY("Wait, who are you? Never seen you before. Wait, yes, I... no, lost it. My head feels as if its stuffed with cotton. What's happening?")

		ANSWER("Didn't you learn not to take too many drugs?",101)
	NODE(101)
		SAY("What? The drug delivery has arrived already? Naw, Regie would've informed me. Right? Directly from Neocron, yes. Hell of a lot of raw material. That'll help me.")

		ANSWER("Lucky, do you listen to what I say at all?",102)
	NODE(102)
		SAY("Sorry, did you say something? I think I swallowed too many drugs. I don't feel my legs anymore. What do you...")

		ANSWER("Maybe I should pay a visit to this Regie guy and get me a little of the drugs Lucky was talking about.",103)
	NODE(103)
		SAY("Regie? He's usually somewhere in sector 08. My head hurts, ohhh. I am sure he can help you. I need to rest for now, sorry.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(104)
		ENDDIALOG()

--MISSING

	NODE(104)
		SAY("Regie can be found in sector 08 near the main entrance. Are you an angel?")
		ENDDIALOG()

--------------------------------------------------------------------
--REGY
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("I'm not here for my personal enjoyment, you know. I have an important job to do that benefits all of us. I am responsible to keep the drugs flowing.")
			ENDDIALOG()
		else
			SAY("Hey, what's up, Runner? Did you get lost?")

			ANSWER("Very funny. I am coming from Lucky. He is filled to bursting with drugs again.",151)
		end
	NODE(151)
		SAY("That sounds like Lucky alright. But I can't do anything against that. Is that all or did you actually want to tell me something important.")

		ANSWER("I am supposed to get the newest delivery of drugs straight to Lucky.",152)
	NODE(152)
		SAY("Oh, you're here for the drugs, are you? No, I don't have them any longer, you're too late.")

		ANSWER("What is that supposed to mean?! Drugs don't just vanish into thin air. Talk to me!",153)
	NODE(153)
		SAY("You think I am stupid or something? Of course they didn't just vanish, I just said that the drugs are gone. Only... the drugs or rather the raw material comes all the way from Neocron. Usually something gets already lost on the transport. Mutant raids, lost cargo and the like. But that's not nearly all.")

		ANSWER("The drugs come all the way from Neocron?",154)
	NODE(154)
		SAY("Partially yes. And once the material gets near to the Dome it happens sometimes that the Tsunamis start a little raid.")

		ANSWER("Tsunamis again? How do you get rid of those at all? Where did they go?",155)
	NODE(155)
		SAY("I have no idea. After all I wasn't there when it happened. One of our guys told me that it was Myaki Hung. He is a well known pimp and also a Monsun clan member. Whay do you ask?")

		ANSWER("I will get those drugs back. Isn't it obvious?",156)
	NODE(156)
		SAY("Those drugs belong to Lucky. Think about that before you steal them back from those extremist Monsun Tsunami.")

		ANSWER("Lucky is full of crack at the moment, he won't say anything anytime soon. I will bring the drugs to Lucy anyway, not Lucky.",157)
	NODE(157)
		SAY("Then give it a try, but I for one think they're gonna kill you. If you want my advice... Kill Hung first and then take his stuff. You can find him in sector 07. Be careful though, that's Tsunami turf.")
		SETNEXTDIALOGSTATE(158)
		ENDDIALOG()

	NODE(158)
		SAY("Forgot where to find Hung? You can usually find him in sector 07.")
		SETNEXTDIALOGSTATE(159)
		ENDDIALOG()
	
	NODE(159)
		SAY("Hey stupid, can you try to remember? You can find Hung in sector 07, now beat it!")
		ENDDIALOG()
		
--------------------------------------------------------------------
--HUNG
--200
--SPIELER LOOTED HUNG
	NODE(200)
		SAY("Leave Tsunami territory at once or you'll suffer a lot of pain. Is that clear?")

		ENDDIALOG()
--------------------------------------------------------------------
--LUCY
--250

	NODE(250)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then

			SAY("Ahh, you have already acquired a questionable reputation. You better keep your distance, understood?")
			ENDDIALOG()

		else
			SAY("What do you want here? I have heard a lot about your accomplishments recently.")

			ANSWER("And what have you heard for example?",251)
		end
	NODE(251)
		SAY("For example that your next move is totally incalculable. I like that kind of a person. Tell me what you want with me.")

		ANSWER("I have an offer. I would suggest that I hand over this package of drugs to you and you pay me a certain sum in return. Interested?",252)
	NODE(252)
		SAY("That sounds intriguing but where did you get these drugs from? Usually they don't lie around on the streets you know. And ... what kind of sum are you talking about?")

		ANSWER("I am a reasonable person, we can talk about that. But it should be at least 50000.",253)
	NODE(253)
		SAY("The drugs seem to be alright. I'll take it and if you ever find more drugs you can come back to me. I'll certainly take them.")

		ANSWER("Excellent, I had hoped for something like this.",254)
	NODE(254)
		TAKEITEM(9461)
--DROGENPAKET
		if(result==0)then
			SAY("Sorry, but without the drugs there is no deal.")
			ENDDIALOG()
		else
			GIVEMONEY(50000)
			SAY("I will also inform you about a way how you could get your hands on even more credits. But it's not yet time. I will tell the Wiseguys once it is time. (next mission at level 45)")
			ACTIVATEDIALOGTRIGGER(2)
			EPICRUNFINISHED(9,4)
			ENDDIALOG()
		end

end