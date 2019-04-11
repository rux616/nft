--new
--BlackDragon
--
--Trigger
--Triggernumber,Type,Person
--0,D, LUCKY 50
--1,D, LEONE 100
--2,Loot, CARLOS
--3,D, LUCY 150,LEONE 200
--
--Startnode, Person
--0, WISEGUY
--50, LUCKY 1672
--100, LEONE 1671
--150, LUCY 1670
--200, LEONE
--250, CARLOS 1674
--
--Items
--belastendes Video (150,200) 9462
--Missionbase Eintrag
--NPC0	NPC1	NPC2	NPC3	TRG0	VAL01	VAL02	VAL03	TRG1	VAL01	VAL02	VAL03	TRG2	VAL01	VAL02	VAL03	TRG3	VAL01	VAL02	
--1672	1671	1670	1674	3	0	0	0	3	1	1	0	10	3	2	0	3	1	3
--START	START	START	START
--50	100	150	250
--

function DIALOG()
--------------------------------------------------------------------
--WISEGUY
--0
	
	NODE(0)
		SAY("Listen, this is the chance of your lifetime. You better take care and behave yourself. Talk to Lucky here at the HQ. He told me it's all about your friend Leone. Don't ask me what this is all about, I've got no idea.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()
	NODE(1)
		SAY("Lucky would like to talk to you. I would jump on this opportunity. Take advantage of it.")

		ENDDIALOG()

--------------------------------------------------------------------
--LUCKY
--50
	NODE(50)
		SAY("Welcome my very special friend. I hope you enjoyed your spare time since they are over now.")

		ANSWER("I would say that depends on my reward.",51)
	NODE(51)
		SAY("It's a very simple task. Probably you have already noticed that Leone is a pig, didn't you? He is devious and treacherous even to his own clan. It is about high time we did something against that. And that is why I need your help.")

		ANSWER("So, you don't want to dirty your own fingers, am I right?",52)
	NODE(52)
		SAY("Don't forget, doing me a favour would be beneficial for you. Things would be a lot easier when you have to deal with me. Never forget that I have a lot of influence here.")

		ANSWER("I always keep to my promises. What do I need to know now?",53)
	NODE(53)
		SAY("Good, very good. You know, he prepared a devious video that he wanted to show to Gecko in order to bring me in miscredit. Now I want you to put that fat pig on ice. Make sure you talk to him before you do it and forward a warm greeting from myself. I don't want you to return unless your work is finished.")
		SETNEXTDIALOGSTATE(54)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
	NODE(54)
		SAY("I hope you didn't forget that you will have to kill Leone. Be sure to tell him who wants him dead before you kill him.")
		ENDDIALOG()


--------------------------------------------------------------------
--LEONE
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("I don't want anything to do with such a run down Runner like you. Leave me alone.")
			ENDDIALOG()
		else
			SAY("You are annoying me, Runner. I don't have the slightest use for such an amateur like you. ")

			ANSWER("I know exactly how you think about me, but I was sent by Lucky.",101)
		end
	NODE(101)
		SAY("Lucky? What... what could he want from me?")

		ANSWER("He forwards a warm greeting to you and wants to see you cold. Cold, dead and in the gutter to be precise.",102)
	NODE(102)
		SAY("Me? Don't make me laugh, he would never do something like this. He's always talking but there's nothing behind it.")

		ANSWER("I would like to do Lucky a little favour...",103)
	NODE(103)
		SAY("Lucky didn't send you to me just to tell me that, didn't he? Is that supposed to mean...")

		ANSWER("Isn't it obvious you pig, I am here to kill you!",104)
	NODE(104)
		SAY("This can't be real, right? This is a bad joke, right?")

		ANSWER("Do I look like a joker to you?",105)
	NODE(105)
		SAY("No, by god this cannot be. Wait, wait, I don't want to die. Don't do it, please.")

		ANSWER("Pleading for his life rather then defend your honour. What kind of Black Dragon are you? Give me one reason not to waste you right here, right now.",106)
	NODE(106)
		SAY("Because, because... I could help you to get powerful with the Dragons. I can arrange for Gecko to be in dept to you. How about it? We work together and get rid of Lucky, eh? What do you think?")

		ANSWER("Tell me more, at the moment I don't see how this can work.",107)
	NODE(107)
		SAY("Simple, Lucy... she's got an affair with Lucky... and Gecko doesn't know about it. We could surely take advantage of that. We can get some evidence and give it to Gecko.")

		ANSWER("That sounds like a plan. I hope for your sake that you know where the evidence is.",108)
	NODE(108)
		SAY("Of course I do. I know a close friend of Lucky who is always hanging out somewhere in sector 04 here in Dome of York. His name is Carlos. I would only need somebody to rob him of his belongings and we would have our evidence. I am speaking of video records that show him and Lucy. That pig stole it from me before I was able to show it to Gecko.")

		ANSWER("And you think that I should do that? Hmmpf seems to me that you are just using me to save your ass. How are you going to get Gecko indebted to me?",109)
	NODE(109)
		SAY("First things first, you'll see. Listen, it would look too suspicious if I was to visit that guy. Obviously you will need to down him since I don't believe that he will part with his stuff voluntarily. Once you return with the stuff we got something we can present to Gecko...")
		SETNEXTDIALOGSTATE(200)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
--------------------------------------------------------------------
--LUCY
--150
	NODE(150)
		TAKEITEM(9462)
--BELASTENDES VIDEO
		if(result==0)then
			SAY("You are boring me, why don't you go and play with somebody else?")
			ENDDIALOG()
		else
			ISMISSIONTARGETACCOMPLISHED(1)
			if(result==0)then
				SAY("You are boring me, come back when you have something that might interrest me.")
				ENDDIALOG()
			else
				ISMISSIONTARGETACCOMPLISHED(2)
				if(result==0)then
					SAY("You are boring me, why don't you go to the pussy club and see whether I'm there.")
					ENDDIALOG()
				else
					SAY("If you have something that is of interest for me then tell me.")

					ANSWER("Oh, let me just say that Gecko would be disappointed if he knew about your affair with Lucky.",151)
				end
			end
		end
	NODE(151)
		SAY("You are trying to trick me, aren't you? I bet you cannot back up your outrageous claims, can you?")

		ANSWER("Oh, but I can. I've got some recent video clips and I believe that should be sufficient. Really hot footage, the lighting could be better tough.",152)
	NODE(152)
		SAY("I see, it can't be helped and it seems that you won your little game. How much?")

		ANSWER("That is better. I would ask a mere 10000 for them. A fair price, don't you think?",153)

	NODE(153)
		GIVEMONEY(10000)		
		SAY("Alright, but the video is mine. I see, this video is the real thing. I'm afraid to think what might have happened if Gecko would have gotten hold of it.")	
		ACTIVATEDIALOGTRIGGER(3)
		EPICRUNFINISHED(9,2)
---MISSING
		ENDDIALOG()


--------------------------------------------------------------------
--LEONE
--200

	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("You can find Carlos in sector 04. All you need to do is to get hold of his material. Look for possible video recordings.")
			ENDDIALOG()
		else
			TAKEITEM(9462)
--belastendes Video
			if(result==0)then
				SAY("You can find Carlos in sector 04. All you need to do is to get hold of his material. Look for possible video recordings.")
				ENDDIALOG()
			else
				GIVEITEM(9462)
				SAY("Very good, very good. Hand the video over to me. Now we have something real in our hands. I will forward it to Gecko and I am certain that it will not fail to impress. Just you wait and see.")


				ANSWER("I just changed my mind. I think I might find another person who is interested in this as well. Especially Lucy might be more interested in order to not let these records fall into the wrong hands.",202)
			end
		end

	NODE(202)
		SAY("You goddamn son of a bitch! You cheat me?! Well, you won't get any missions from me any longer.")
		SETNEXTDIALOGSTATE(202)		
		ENDDIALOG()

--------------------------------------------------------------------
--CARLOS
--250

	NODE(250)
		SAY("Yes, what do you want from me? Something important? Do you have something to say?")

		ANSWER("No, no, it's nothing.",251)
	NODE(251)
		SAY("So you are one of those pathetic people with no initiative whatsoever?")
		ENDDIALOG()
end