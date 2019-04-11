
--new
function DIALOG()
-----------------------------------------------------------------
--resources officer
	NODE(0)
		SAY("May Crahn bless you, young monk. As I can see you have trained thoroughly... the order is ready to accept you into a higher circle. I believe the time has come to charge you with another new important task. Are you ready for this new challenge?")

		ANSWER("Yes sister. It is still my wish to serve Crahn as best as I can.",1)
		ANSWER("Please give me some more time, father.",10)
	NODE(1)
		SAY("Ok then... in the old days when Shirkan and Neopha Kansil still preached the word of Crahn in the streets of Neocron and the city was under the control of our fathers a small upstart group of scientists  managed to escape our grasp.")

		ANSWER("I think I read about this somewhere.",2)
	NODE(2)
		SAY("As you know, I am speaking about the Fallen Angels. The very group that journeyed into the Wastelands in the year of 2633 in order to errect the Tech Haven laboratory there.")

		ANSWER("Yes sister, I have thoroughly studied the history of Neocron and of our order.",3)
	NODE(3)
		SAY("The history books do not tell the whole truth, young monk. In the eyes of a Neocron citizen the Fallen Angels are a harmless group of scientists... but we PSI Monks know the truth.")

		ANSWER("CONTINUE",4)
	NODE(4)
		SAY("The Fallen Angels are child murderers and thieves. Within the confines of secret laboratories they conduct abhorrent experiments on humans, the details of which I will spare you.")

		ANSWER("But I thought the Fallen Angels are solely for the good of humanity...",5)
	NODE(5)
		SAY("Quiet! ... Never believe the lying propaganda of the Angels. Only the Brotherhood of Crahn knows the way of the light... It is evil enough that the Fallen Angels conduct their dark experiments before the very eyes of the public.")

		ANSWER("So they are only pretending?",6)
	NODE(6)
		SAY("... but the worst for our order is that their work is based on our research. The Fallen Angels would never have developed the NeuroLink System if their leader Thomas Cooper would not have taken a generous helping of our research documents.")

		ANSWER("Oh sister, tell me how I can help the order in this.",7)
	NODE(7)
		SAY("Well, we will have an eye for an eye. Our high brother Gabriel succeeded to infiltrate the Fallen Angels and to be recognized as one of them after years of meticulous planning. He worked for them the last two years in Tech Haven and has become a trusted right hand of Sylvia Bennet.")

		ANSWER("I understand that I am supposed to go and meet him. Where can I find them?",8)
	NODE(8)
		SAY("He should already have returned from the Angels, meet him at the Guardian Gate entrance to Dome of York. He will hand a holodisc over to you which contains important research data about the Fallen Angels. Father Manus will be waiting for you to deliver the holodisc to him. He should be in the Crahn Cathedral.")

		ANSWER("Thus it shall be.",9)
	NODE(9)
		SAY("Take care not to draw any attention. There could be Fallen Angels in the vicinity. They must not see that brother Gabriel has contact to us. Walk in the light of Crahn.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(11)
		ENDDIALOG()

	NODE(10)
		SAY("You should better prepare yourself and come back later.")
		ENDDIALOG()

	NODE(11)
		SAY("This task is not solving itself, you know? You were supposed to meet Gabriel in Sector 01 and get the item you get to father Manus at our cathedral.")
		ENDDIALOG()
-----------------------------------------------------------------
--Bruder Gabriel
	NODE(50)
		ACTIVATEDIALOGTRIGGER(0)
		SAY("*ARGH* Finally you come ... brother...")

		ANSWER("What happened to you, brother Gabriel?",51)
	NODE(51)
		--Spieler organisiert ein Medpack
		TAKEITEM(35)
		if(result==0)then
			SAY("The Angels... *ARGH* I am injured... quick... I need a Med Pack fast.")
			SETNEXTDIALOGSTATE(51)
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(52)
			SAY("*ARGH*")	

			ANSWER("Here, take this MedPack and tell me what happened.",52)
		end
	NODE(52)
		
		SAY("Thank you... ahhh. That is better.")

		ANSWER("Come on... do you have the holodisc that I am supposed to bring to Father Manus?",53)
	NODE(53)
		SAY("No... I have only managed it to the meeting place under great pain. It seems, as if Sylvia Bennet has discovered that I am no Fallen Angel but a disciple of Crahn.")

		ANSWER("Why do you think that?",54)
	NODE(54)
		SAY("A masked Runner from the Fallen Angels has ambushed me. He stabbed at me several times with a stiletto and then stole the holodisc and vanished. I have failed. The wrath of Crahn is certain to fall on me.")

		ANSWER("Don't worry, brother. I will tell nobody about your failure... But it certainly is troublesome. The data from the holodisc was very important for the brotherhood.",55)
	NODE(55)
		SAY("I know, I know... but wait... the robber thought I was dead and said something about bringing it to Neocron, to ProtoPharm ... something about El Farid ... and that the people there would be delighted to get their hands on that disc. After that he kicked me in the face and I went unconscious.")

		ANSWER("Hmmm... But it does not make sense. If it was a member of the Fallen Angels why would he bring the disc to ProtoPharm?",56)
	NODE(56)
		SAY("Maybe there is a secret alliance between ProtoPharm and the Angels... An alliance we did not know of? If you are quick you might still catch the holodisc before it is beyond our grasp.")

		ANSWER("But how? Where can I get it back?",57)
	NODE(57)
		SAY("He will most likely give it to a contact. Try your luck in DoY City Center. I know only of one person who does dealings with Neocron over there. He is called something like Ray... I don' know... it might be a long shot but its worth a try.")

		ANSWER("It seems that I will have to make a visit to that busy place.",58)
	NODE(58)
		SAY("Look for Raymon and disable him since he will not part with the disc voluntarily. After that you can search him for the disc. But be careful, he might be armed.")

		ANSWER("You should rest now brother... I will take care of this now.",59)
	NODE(59)
		SAY("May Crahn show you the way.")
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(60)
		ENDDIALOG()
	NODE(60)
		SAY("Did you manage to find Raymon in DoY City Center? If you already have the disc, deliver it to father Manus in our cathedral.")
		ENDDIALOG()


--Spieler killt Wissenschaftler Trigger 6
-----------------------------------------------------------------
--Pater Manus
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Where is the Holodisc from brother Gabriel? Did you meet him at the Guardian Gate in Sector 01?")
			ENDDIALOG()
		else
			ISMISSIONTARGETACCOMPLISHED(1)
			if(result==0)then
				SAY("Where is the Holodisc from brother Gabriel? Did you meet him at the Guardian Gate in Sector 01?")
				ENDDIALOG()
			else
				SAY("Ahhh... my young friend. Welcome. Did you receive the holodisc from brother Gabriel?")

				ANSWER("Not from brother Gabriel... but yes, I have it. It is yours now, father.",101)
			end
		end
	NODE(101)
		TAKEITEM(9005)
		if(result==0)then
			SAY("Where is the holodisc?")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(102)
			SAY("Thank you. The brotherhood has learned to rely on you and your dedication. If I can do something for you one day, don't hesitate to let me know about it.")

			ANSWER("Thank you father, I will do that. Did you come across any news about the object made out of Tacholytium?",102)
		end
	NODE(102)
		SAY("Yes, I almost forgot about it. Within our archive there was another item made from the same material. I found it in a rather dusty old crate. Its size is almost identical to your fragment but the design is different.")

		ANSWER("What could that mean?",103)
	NODE(103)
		SAY("It is almost as if those two fragments are connected in some way. I still do not know what  is behind these items but every knowledge I could gather so far points out that these fragments are very valuable.")

		ANSWER("Thank you for your time, father.",104)
	NODE(104)
		SAY("The order has authorized me to award you 4000 credits for completing the task. Invest the money wisely and perfect your skills.")

		ANSWER("I will, with the help of Crahn.",105)
	NODE(105)
		SAY("The next assignment is sure not to get any easier than the previous ones... Go in peace and may Crahn bless you.(next mission at level 30)")
		GIVEMONEY(4000)
		EPICRUNFINISHED(10,1)
		ACTIVATEDIALOGTRIGGER(3)
		ENDDIALOG()

--Raymon

	NODE(150)
		SAY("If you don't have any deals for me then beat it, freak.")
		ENDDIALOG()

end
