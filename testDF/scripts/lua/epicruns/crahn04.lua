--new
function DIALOG()
--Trigger
--50 Dialog
--6, 66 Kill Multiple
-----------------------------------------------------------------
--Resource officer

	NODE(0)
		SAY("Father Manus was not able to find out anything new about those relics of yours. Unfortunately we only have a limited library right here, that's why he decided to ask father Agnus's help. Agnus is one of the few loyal Crahn followers who decided to stay in the old monastery in the Outzone near Neocron. After he compared the relics with some of our oldest recorded inscriptions he was able to determine something new about it. He was very excited when he told me about it. But you better speak to him yourself. Go to the old abbey in the Outzone and meet him there.")

		ANSWER("Many thanks for this good message. I am already on my way.",1)
	NODE(1)
		SAY("May Crahn bless you.")
		ENDDIALOG()		

-----------------------------------------------------------------
--Pater Agnus

	NODE(50)
		SAY("Ah, finally you arrive. I have already awaited you.")

		ANSWER("I was informed that you have news about the Tacholytium fragments?",51)
	NODE(51)
		SAY("Yes, that is true. As I suspected earlier their origin reaches back to the time when our ancestors still lived below the earth and concentrated their efforts exclusively on improving their telekinetic powers.")

		ANSWER("And? What were you able to determine?",52)
	NODE(52)
		SAY("Show some patience. The power of the Tacholytium is derived directly from the earth, the so called Gaya. Gaya is the sum of all powers that toil on our earth.")

		ANSWER("Then it contains that very same energy?",53)
	NODE(53)
		SAY("Every material that was compressed with the enormous energy of the great light with other elements is carrying Gaya. Exactly this is the case for Tacholytium as well.")

		ANSWER("Does that mean that items made of Tacholytium can transfer the power of Gaya on a human being?",54)
	NODE(54)
		SAY("Not directly. But every PSI talented being can empower his telekinetic powers with the help of Tacholytium. Used in the right way it works like a PSI amplifier.")

		ANSWER("Holy Crahn, then my three artefacts are even more powerful and valuable than I dared to dream.",55)
	NODE(55)
		SAY("Yes, but in their current form they are useless. They need to be assembled first. But my studies indicate that you lack at least two other fragments before you can assemble a Gaya PSI amplifier.")

		ANSWER("Where could I find the missing fragments? Please, father Agnus, help me in my search.",56)
	NODE(56)
		SAY("I have already done that. I have sent a group of five monks under the leadership of brother Harkon into the Wastelands to a place where I suspect another fragment. The group, however, was attacked by a gang of Tsunami. They were robbed and then killed.")

		ANSWER("Holy Crahn... that is terrible. We should revenge this crime.",57)
	NODE(57)
		SAY("I had hoped that you would suggest that. As you know, we strictly return the same in revenge. But since Crahn has unlimited patience to wait for the right moment it would be sufficient to only eliminate one of them. And when more and more of them die doubt and fear will eat away on them.")

		ANSWER("So be it. I will kill one Runner from the Tsunami syndicate.",58)
		ANSWER("I do not feel up to such a challenge, Father.",62)
	NODE(58)
		SAY("It is important that you exclusively kill Runners that are of your rank. Don't kill children or unimportant members of the syndicate. Choose Runner who are as important for the syndicate as you are for us.")

		ANSWER("Anything else I need to be aware of?",59)
	NODE(59)
		SAY("Take care that the Tsunami member that you kill may not be more than ten ranks lower than you. Keep in mind to target only Runners, no employees, no guards. Only Runners.")

		ANSWER("So be it. May the will of Crahn be executed.",60)
	NODE(60)
		SAY("You can also have comrades that support you in this mission. But take care that you inflict the most damage against the respective Runner. Once you killed 1 syndicate Runner come back here so that we can talk some more about the relics. May Crahn bless your weapons.")
		SETNEXTDIALOGSTATE(61)
		ENDDIALOG()

--Spieler killt Tsunami Spieler Trigger 6 kill multiple

	NODE(61)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("It was your idea to revenge our brothers in the first place and thus you should be the one to carry it out. One Tsunami heretic shall be killed by your hands.")
			ENDDIALOG()
		else
			SAY("Good work my young brother. The order has accepted your entry into the red circle of the monks. That also means that you can speak to me from now on as brother.")

			ANSWER("Thank you brother Agnus. I will prove to be worthy of my rank and not to bring disgrace to it.",63)
		end
	NODE(62)
		SAY("Then you have to continue your training first. But come back as soon as possible.")
		ENDDIALOG()


	NODE(63)
		SAY("I am certain of that, brother. Let us talk about the relics once more. In the north west of the Wastelands there is the Gaya Mine. I also sent the brothers led by brother Harkon into that direction.")

		ANSWER("Then that is the place where another relic can be found?",64)
	NODE(64)
		SAY("Somewhere in the mazelike mine an old Titan Warbot can be found. Still from the old war at the time of Neopha Kansil. Legends say that the Warbot is invincible and the inhabitants of the old Yucida village called him Guardian of Gaya in awe")

		ANSWER("What shall I do? Do I have to fight against the Warbot?",65)
	NODE(65)
		SAY("I am quoting the Legends of the ancient Yucida people: The iron guardian of the mine possesses a heart of glowing metal which gives him the temperament and the strength of a wild dragon.")

		ANSWER("Is there more?",66)
	NODE(66)
		SAY("And despite its metallic appearance it seems to be warm as if it is connected to the earth itself. ... If my theory is correct this heart is one of the missing fragments that you are still missing.")

		ANSWER("But how can I fell a supposedly invincible Warbot?",67)
	NODE(67)
		SAY("You probably cannot. But certainly you can disable him for a while. And then you can take his heart.")

		ANSWER("But what if I can't defeat him on my own?",68)
	NODE(68)
		SAY("You can also take some comrades with you to help you along. But you have to do most damage to the Warbot because he won't yield his Tacholytium heart otherwise.")

		ANSWER("I understand, brother.",69)
	NODE(69)
		SAY("Then visit the Gaya mine to fulfill your destiny. Come back to me once you have the heart of the Warbot.May Crahn bless your mission.")
		SETNEXTDIALOGSTATE(70)
		ENDDIALOG()

--Spieler killt Warbot Titan Trigger 66
		
	NODE(70)
		TAKEITEM(9001)
		if(result==0)then
			SAY("Where have you left the heart of the guardian, brother? Is it still in the Gaya mines?")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(71)
			SAY("Welcome, brother. I see that you carry with you the heart of the guardian of Gaya. It seems that there is not one foe left that could withstand your immense power. I will gladly keep the heart safe until you need it.")

			ANSWER("It was a hard and exhausting fight. But Crahn gave me strength.",71)
		end
	NODE(71)
		SAY("You are not only becoming one of our most valued members but also one of our strongest weapons. I have suggested to the council to raise you into the Black Circle.")

		ANSWER("You honour me.",72)
	NODE(72)
		SAY("But until I can expect an answer the coast of the Midworld Ocean will still see a few dozen low tides and high tides.")

		ANSWER("Thank you brother Agnus. I value your respect.",73)
	NODE(73)
		GIVEMONEY(10000)
		SAY("For the succesful completion of the revenge of the brothers under the leadership of brother Harkon the order has awarded you these 10,000 credits. Take the fruits of your work and complete your gear and your skills. Go in the light of Crahn.(next mission at level 40)")
		EPICRUNFINISHED(10,3)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()

--Warbot
	NODE(100)
		SAY("zzzzt...")
		ATTACK()
		ENDDIALOG()


end