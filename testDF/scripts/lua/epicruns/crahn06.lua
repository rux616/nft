--new
function DIALOG()
--Trigger
--0, 2 Dialog
--6, 66 Kill Multiple
-----------------------------------------------------------------
--Resource officer
	NODE(0)
		SAY("Welcome oh father of the Black Circle. Father Agnus has informed me that you have five Tacholytium relics in your possession by now.")

		ANSWER("It was only possible through the help I received from father Manus and father Agnus.",1)
	NODE(1)
		SAY("Before I forget, father Agnus is certain that the old Kev Critter still possesses a construction plan which should allow you to assemble the PSI amplifier out of the fragments.")

		ANSWER("These are good news. Where can I find this Kev Critter?",2)
	NODE(2)
		SAY("Kev is running a second hand metal shop in the Wastelands at the Blakkmist Creek. Officially his business is a garbage dump. You can meet him at the Blakkmist garbage dump.")

		ANSWER("Is there anything else you can tell me about him?",3)
	NODE(3)
		SAY("Critter is a foolish old man who can turn into a clever fox if he smells a good deal.")

		ANSWER("He wouldn't be the first.",4)
	NODE(4)
		SAY("So be careful and don't let him see how much you want the construction plan. You will only unnecessarily raise the price for it. Father Agnus will certainly help you once you have the blueprint.")

		ANSWER("Thank you, I will heed your advice. May Crahn be with you.",5)
	NODE(5)
		SAY("Thank you father. Good luck with your mission.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(6)
		ENDDIALOG()	
		
	NODE(6)
		SAY("Didn't you want to visit Kev Critter at the Blakkist garbage dump? If  you have everything you need then you should go and ask Father Agnus to help you with the construction of the artifact.")

		ENDDIALOG()	

-----------------------------------------------------------------
--kEV cRITTER

	NODE(50)
		SAY("Oh, oh... a father of the Black Circle. That does not bode well.")

		ANSWER("Greetings, have no fear.",51)
	NODE(51)
		SAY("The last time when a group of high ranking brothers intruded here they vandalized everything.")

		ANSWER("Did they find anything?",52)
	NODE(52)
		SAY("The leader of that group, I believe his name was Harkon, turned really nasty when they did not find what they were looking for.")

		ANSWER("Brother Harkon was here? I assume he searched for an item made of Tacholytium?",53)
	NODE(53)
		SAY("Tacholytium... yes, exactly. It seems there is high demand for this substance. I heard that group lead by Harkon was attacked by a gang of Tsunamis.")

		ANSWER("Yes, you can find heretics in every corner of this world in these days.",54)
	NODE(54)
		SAY("It almost seems as if the Tsunamis are also looking for the stuff.")

		ANSWER("This affair with the Tsunami has already been taken care of.",55)
	NODE(55)
		SAY("Yes, I heard about that. And that is exactly what I do not understand. What kind of sacred order are you if you will use any method to achieve your goal?")

		ANSWER("Silence! Be careful not to insult the order. I did not come here to discuss the means the ordor utilizes.",56)
	NODE(56)
		SAY("I almost thought as much. But tell me, why did you come to me, father?")

		ANSWER("I require a blueprint from you. I was told that you have the blueprint of a Gaya PSI amplifier.",57)
	NODE(57)
		SAY("I have always been able to extract almost every blueprint from my old microdiscs. But I don't want money from you.")

		ANSWER("That is very nice of you. I will praise your generosity. Then give the blueprint to me already.",58)
	NODE(58)
		SAY("No, no, no... I only said, I don't want any money from you. Get me something else.")

		ANSWER("After all that I have heard about you I would have been surprised if you would just give me that blueprint. What shall I get for you then?",59)
	NODE(59)
		SAY("Well, it is very lonely out here in the Wastelands and the nights are long. From time to time I am mixing myself some drugs to make it more comfortable.")

		ANSWER("Talk! I haven't got all day.",60)
	NODE(60)
		SAY("Some of the most valued ingredients however are hard to get by. But it should be no problem for such a powerful Black Circle monk to bring something to me from the dangerous parts of the Wastelands.")

		ANSWER("Tell me what you want. I don't have time all day.",61)
	NODE(61)
		SAY("I need the blue poison gland of the PSI-Spider Latekulus. ")

		ANSWER("Tell me where I can find it and I will get it for you.",62)
	NODE(62)
		SAY("The PSI-Spider is seen often near Point Red. Usually only one of those")

		ANSWER("Good. You will wait right here.",63)
	NODE(63)
		SAY("Deliver that gland to me and I will give you the blueprint.")

		ANSWER("Say, you could not have thought up something more difficult now, could you?",64)
	NODE(64)
		SAY("This is a vital ingredient for a Tearson Booster. And you are an experienced father of the Black Circle. It should be easy for you to get those ingredients.")

		ANSWER("If it was that easy to get you would already have it.",65)
	NODE(65)
		SAY("I am not willing to discuss it. Either you get the three ingredients or I will not make the deal. Come back once you have all three of them.")
		SETNEXTDIALOGSTATE(66)
		ENDDIALOG()
--Spieler besorgt Drogen Zutaten
	NODE(66)

			TAKEITEM(9012)
			if(result==0)then
				SAY("You wanted to get me something, remember?")
				ENDDIALOG()
			else
				SETNEXTDIALOGSTATE(67)
				SAY("You have been gone for a long time, father. I was certain something nasty happened to you and that I would not see you again.")

				ANSWER("What does that mean? I have the ingredients for your drug,",67)

			end

	NODE(67)
		SAY("It's too late. I have sold the only Blueprint and the microdisc to somebody else. Maybe you should be a little bit faster next time?")

		ANSWER("You are joking old man. A shot from my gun will teach you to keep your promises.",68)
	NODE(68)
		SAY("Not so fast... maybe you can get a copy from the buyer of the microdisc?")

		ANSWER("Who bought the disc? Tell me!",69)
	NODE(69)
		SAY("First give me the ingredient... and promise by your honour to the Black Circle that you will not lay hands on me.")

		ANSWER("I will give the ingredient to you but if I should not succeed to get my hands on the blueprint I will visit you again... and then I will turn you and your damn garbage dump to dust.",70)
	NODE(70)
		SAY("It seems I have no choice. Well... the buyer was a certain Mark Cole.")

		ANSWER("Mark! This triple damned snake...",71)
	NODE(71)
		SAY("You know him?")

		ANSWER("Oh yes. He is well known to the order.",72)
	NODE(72)
		SAY("Then you already know where you can find him. Go now... and I hope we never see each other again.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(73)
		ENDDIALOG()
	NODE(73)
		SAY("I have already told you more than I wanted to. Mark Cole can usually be found around the DoY City Center.")
		ENDDIALOG()

-----------------------------------------------------------------
--Mark cOLE

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
		SAY("What a surprise. Quick, go away or somebody will see you talking to me.")
		ENDDIALOG()	
		else
		SAY("No, I don't believe this. We haven't seen each other in a long time, old friend.")

		ANSWER("We have never been friends, Mark. I think you are mistaking me for one of your snakes.",101)
		end
	NODE(101)
		SAY("As I see you have now been accepted into the Black Circle. Congratulations! That tattoo of the circle is quite impressive.")

		ANSWER("Let's come straight to the point. You have a Blueprint from Kev Critter and a microdisc. Give that blueprint to me and I will vanish. Don't give it to me ... and you will vanish. Forever.",102)
	NODE(102)
		SAY("You are threatening me? How unnecessary. Do you think I got that Blueprint to have it framed and hung on the wall above my bed? It was a paid mission from the Tsunami.")

		ANSWER("You had no idea that I was after this blueprint?",103)
	NODE(103)
		SAY("I don't know what's up with that item but judging by the price the syndicate paid me for it it seems to be something very valuable.")

		ANSWER("Mark, this was the last time that you will have encumbered my work. Prepare for your death.",104)
	NODE(104)
		SAY("If you attack me father Agnus will have that stiletto on his desk by tomorrow. The one that brother Gabriel was attacked with. I have taken special precautions.")

		ANSWER("Brother Agnus is in the Red Circle and I am in the Black Circle. They will not believe him, if he would accuse me. But since I don't need any inconveniences at the moment I will spare you if you tell me where I can find the Blueprint.",105)
	NODE(105)
		SAY("Hmmmm... you seem to be very determined. Very well. I have given it to Taylor Gomez. I don't know if he still has it but this is the only chance to recover it.")

		ANSWER("Where can I find this Taylor?",106)
	NODE(106)
		SAY("Taylor works in the secret Tsunami Faction Office. Your best chance to get him is when he is leaving the Faction Office through the Secret Passage-2. However you will need to get the Blueprint out of the lions den.")

		ANSWER("So be it. Mark, I hope that you stay clear of my assignments in the future. If our paths should cross again I will shoot first and then talk to you. Understood?",107)
	NODE(107)
		SAY("Yes. I have certainly no wish to end like Drakkhan Helios or Calvin Grimwood. But now hurry, I don't know how long Gomez will have that disc with him or how long he will still be in the secret Tsunami Faction Office.")
		SETNEXTDIALOGSTATE(108)
		ENDDIALOG()
	NODE(108)
		SAY("I thought I already told you that if you want that Tacholytium thing you have to kill Taylor Gomez in the secret Tsunami Faction Office.")
		ENDDIALOG()

--Spieler killt Taylor Gomez Trigger 66
-----------------------------------------------------------------
--Pater Agnus
	
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("I am sorry, father, I have no time at the moment.")
			ENDDIALOG()
		else
			SAY("I was already informed that you are on the trail of the PSI amplifier blueprint.")

			ANSWER("Yes and I already have it right here. Now I only need your help with the assembly.",151)
		end
	NODE(151)
		TAKEITEM(9010)
		if(result==0)then
			SAY("But what is this? You don't have the blueprint. Shame over you to play evil tricks with me.")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(152)
			SAY("Really?! You have the Blueprint, brother? That is an amazing deed.")

			ANSWER("Yes, here it is. Have a look.",152)
		end
	NODE(152)
		SAY("Then it will be easy to construct a PSI amplifier out of it.")

		ANSWER("Thank you for your help.",153)
	NODE(153)
		GIVEMONEY(50000)

		GIVEITEM(9014,255)
		SAY("It is a pleasure to help such a well known father like you. Here is the PSI amplifier! Take it and go with the blessing of Crahn.")
		EPICRUNFINISHED(10,5)
		ACTIVATEDIALOGTRIGGER(0)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()

--Taylor
	NODE(200)
		SAY("Piss of Runner! This is our territory!")
		ENDDIALOG()


end