--new
--BlackDragon
--
--Trigger
--Triggernumber,Type,Person
--0,PvP, LUCKY 50 (2 Tsunamis)
--1,kill, MIETERVORSTAND PAIN
--2,D, Lucky 50
--3
--
--Startnode, Person
--0, WISEGUY
--50, LUCKY 1672
--100, PAIN
--150, 
--200,
--250,
--Mietervorstand Pain 1675

--Items
--
--Missionbase Eintrag
--NPC0	NPC1	NPC2	NPC3	TRG0	VAL01	VAL02	VAL03	TRG1	VAL01	VAL02	VAL03	TRG2	VAL01	VAL02	VAL03	TRG3	VAL01	VAL02	
--1672	1675			9	8	2	10	1	1	0	0	0	0	0	0	0	0	0	
--START	START	START	START
--50	100	
--

function DIALOG()
--------------------------------------------------------------------
--WISEGUY
--0
	
	NODE(0)
		SAY("Listen. Lucky knows that you cheated him. I'd say you are screwed which is why I don't understand why he wants a personal conversation with you. You just seem to be one lucky bastard. If it was up to me you'd be floating down the river face down.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()
	NODE(1)
		SAY("Lucky won't wait forever. But go on and try his patience.")

		ENDDIALOG()

--------------------------------------------------------------------
--LUCKY
--50
	NODE(50)
		SAY("Why do you do this to me, eh? I thought we were friends. You were supposed to flatline Leone and what are you doing? Nothing.")

		ANSWER("Something else came up.",51)
	NODE(51)
		SAY("That is no excuse. You should be grateful that I did not make up my mind yet. But there is something more important right now. Those damned Monsun Tsunamis have proven to be a lot of trouble. People don't want to clear their accomodations. It's all a bloody mess and I'm not sure if I could solve it all by myself.")

		ANSWER("Maybe I could help you there. Of course only for a fee...",52)
	NODE(52)
		SAY("Very well, we will talk about Leone later on. First you will proceed to work against the Tsunami. Kill two of their Runner since they are responsible for it all. But take care that you only get two Runner. No guards, no pimps or other stationary personnell. We don't want to give the Tsunamis any clue on why we did it. Now go.")

		SETNEXTDIALOGSTATE(53)
		ENDDIALOG()

--PvP ZWEI TSUNAMIS
	NODE(53)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("You can't possibly have killed a Tsunami. The time was much too short.")
			ENDDIALOG()
		else
			SAY("Well done. This will hopefully stop some Tsunami plans dead in the tracks. It's all about time and if we gain some time because of this it's worth it.")

			ANSWER("Those Tsunamis were no match for me, it was a walk in the park.",54)
		end
	NODE(54)
		SAY("Good, then you will have no problems with this assignment. Go and visit the representative of the housing association, and show him the real meaning of pain. I believe you know what to tell him. No, better yet kill him straightaway! Without a conversation. That never fails to impress.")

		ANSWER("You know exactly how to make my day Lucky, consider it done.",55)
	NODE(55)
		SAY("Go and make sure those people leave their accomodations. The representative should wait somewhere in sector 06.")
		SETNEXTDIALOGSTATE(56)
		ENDDIALOG()

--SPIELER KILL MIETERVORSTAND

	NODE(56)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("As long as the representative of the associations still breathes there is no way I can get my hands on those accomodations. And I really need them, do you understand? You know what you have to do.")
			ENDDIALOG()
		else
			SAY("You are already finished? What a nice coincidence. Do you know what I heard while you were away?")

			ANSWER("No, but I am sure you will tell me in a second.",57)
		end
	NODE(57)
		SAY("You have allied yourself with Leone and you blackmailed me. Now Gecko is mad at me and that is all your fault. You know that I have been very patient with you. But God knows this is too much.(next mission at level 40)")

		ANSWER("Is this supposed to be a threat?",58)
	NODE(58)
		SAY("...")

		ACTIVATEDIALOGTRIGGER(2)
		EPICRUNFINISHED(9,3)
		ENDDIALOG()

--------------------------------------------------------------------
--PAIN
--100
	NODE(100)
		SAY("Have you been sent by the Black Dragon in order to finally make the agreed payment?")

		ANSWER("Ahh, basically I was sent...",101)
	NODE(101)
		SAY("Very good, this entire dispute was going on for too long and we want to end it as soon as possible.")

		ANSWER("This is all very well and dandy but Lucky sent me to kill you.",102)
	NODE(102)
		SAY("You will regret this if you do, the association will fight on even if I'm killed.")
		ENDDIALOG()


end