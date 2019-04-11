--new
function DIALOG()
--Trigger
--100,150 Dialog
--
-----------------------------------------------------------------
--Resource officer

	NODE(0)
		SAY("Welcome, brother. The council contacted me and asked how I would evaluate you. I have heard that father Agnus has suggested you for the black circle. Judging from your heoric deeds I would not be surprised if you would be accepted into this circle soon.")

		ANSWER("Thank you for your praise, brother. It is true that the light of Crahn shone on me the past few months.",1)
	NODE(1)
		SAY("It is told like that in the whole order. Well... if you want to be accepted into the black circle then you have to complete a trial from a father of the black circle.")

		ANSWER("I am ready for this trial. Tell me more.",2)
		ANSWER("I don't feel that I am worthy enough.",4)
	NODE(2)
		SAY("The PSI monks of the black circle excell in their wisdom but also especially in their power and strength. A monk of the black circle must be able to survive even in the darkest and most dangerous areas in the Wastelands.")

		ANSWER("CONTINUE",3)
	NODE(3)
		SAY("Go to father Morpheus, you can find him in the abandoned ruins of Crest Village. He will give you your task and send you on your pilgrimage. May Crahn bless your trial.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(5)
		ENDDIALOG()
		
	NODE(4)
		SAY("Then you should better prepare yourself.")
		ENDDIALOG()
	NODE(5)
		SAY("You should talk to Father Morpheus in the Crest village.")
		ENDDIALOG()	

-----------------------------------------------------------------
--Pater Morpheus

	NODE(50)
		SAY("And you are the young monk from the red circle, the whole order is talking about?")

		ANSWER("Greetings, father Morpheus. These stories within the order are more than exaggerated.",51)
	NODE(51)
		SAY("Modesty, my son is an important prerequisite to be accepted into the black circle. At least I can already confirm that you have this one. But we still need to find out how your knowledge and courage is faring.")

		ANSWER("Please, father Morpheus... give me the honour of letting me face the trial.",52)
		ANSWER("I am sorry but I don't feel that I can face the challenge already.",60)
	NODE(52)
		SAY("And thus it shall be... The trial consists of several tasks. The goal of the task is to retrieve the two crystals of the fathers of Crahn and carry them to the place of their origin. The ancient Yucida Village in the north of the Wastelands.")

		ANSWER("Where can I find these crystals?",53)
	NODE(53)
		SAY("The first crystal is protected by a giant mutant named Veskulus in the so called Crystal Caves. The entrance to these caves can be found in the Wastelands.")

		ANSWER("CONTINUE",54)
	NODE(54)
		SAY("The second one is in the possession of a giant reaper named Galopticus. It lives near the Catlock bay with his pack. ")

		ANSWER("And once I have all crystals? I am supposed to bring them to the Ancient Yucida Village and give them to whom?",55)
	NODE(55)
		SAY("Yes... give the crystals to father Tesara. He already waits decades for the return of these crystals in these ancient ruins. He once was the guardian of the black crystals but they were stolen from him and he was exiled.")

		ANSWER("CONTINUE",56)
	NODE(56)
		SAY("Only if you succeed to bring those crystals back to him he will be rehabilitated and recognised as one of us again.")

		ANSWER("I will try my very best not to disappoint you.",57)
	NODE(57)
		SAY("On your way through the Wastelands you will encounter many dangers. Do not fear because only few creatures can be a danger to such a powerful monk like you are.")

		ANSWER("CONTINUE",58)
	NODE(58)
		SAY("If you succeed in this task then return to me so that I can give you the blessing of the black circle.")

		ANSWER("CONTINUE",59)
	NODE(59)
		SAY("Brother Agnus has reported to me that you are very interested in Gaya energy. I believe I have some interesting information for you... Walk forth and may the light of Crahn follow you wherever you go.")
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()
	NODE(60)
		SAY("Return once you believe you are ready.")
		ENDDIALOG()

-----------------------------------------------------------------
--Pater Tesara
		
	NODE(100)
		TAKEITEMCNT(9007,2)
		if(result==0)then
			SAY("Leave me be. I am searching the loneliness.")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(101)
			SAY("Greetings, mighty monk of the red circle. What business brings you here?")

			ANSWER("Greetings, father Tesara. I bring to you the two black crystals of the fathers of Crahn.",101)
		end
	NODE(101)
		SAY("No... can I really believe that? The crystals were lost many decades ago. How was it possible for you to find all of them?")

		ANSWER("Finding them was no problem since father Morpheus named the locations where they could be found. It was more difficult that the crystals were guarded by some mean contemporaries.",102)
	NODE(102)
		SAY("I knew that Morpheus would not let me down in these hard times. He must have looked for the hiding places of the crystals over many years before he sent a brave monk like you to recover them, How can I ever thank you?")

		ANSWER("Your rehabilitation into the Black Circle will be enough of a reward for me. But I have to leave you at once since father Morpheus is expecting me in the old Crest Village... and it's a long way. Farewell, father Tesara.",103)
	NODE(103)
		SAY("May Crahn bless your courage. My eternal thanks to you. Farewell my son.",104)
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(104)
		ENDDIALOG()
	NODE(104)
		SAY("Thank you again. May Crahn be with you. Father Morpheus in the Crest village is surely waiting already.")
		ENDDIALOG()

-----------------------------------------------------------------
--Pater Morpheus

	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("You should bring the two crystals to father Tesara. One can be found with the Giant Mutant Veskulus in the Crystal Caves, the other with the Giant Reaper Galopticus near the Catlock Bay.")
			ENDDIALOG()	
		else
			SAY("It seems that the stories about you were not exaggerated after all. You have completed the trial brilliantly, my young brother.")

			ANSWER("CONTINUE",151)
		end
	NODE(151)
		SAY("Hereby I bless your path and your spirit. From now on you are a member of the Black Circle. You have reached the highest decoration that can be reached within the brotherhood.")

		ANSWER("I feel honoured, brother Morpheus. I will prove that I am worthy of my rank... At the beginnning of the trial you said that you have information regarding the magical energy of the earth, Gaya. Can you tell me something about it?",152)
	NODE(152)
		SAY("Gaya is a power that flows through everybody and everything. It is the basis of the telekinesis, meaning the PSI powers. Monks with strong PSI powers are aware of Gaya and can even resurrect the dead.")

		ANSWER("CONTINUE",153)
	NODE(153)
		SAY("Whoever understands and controls Gaya will always be in balance with his fellow humans and the environment.")

		ANSWER("Why can only monks control this PSI energy so well?",154)
	NODE(154)
		SAY("It is a good question my young brother. Rarely are there any others who can control this power. But as you know, our ancestors lived below the earth after the great light. They lived there for centuries.")

		ANSWER("CONTINUE",155)
	NODE(155)
		SAY("In complete darkness and isolation they concentrated on their inner powers. Without the distraction of light and without optical impulses they had to rely on their other senses.")

		ANSWER("CONTINUE",156)
	NODE(156)
		SAY("At some point they will simply have felt the power of the earth and will have interacted with it.")

		ANSWER("Was that the time in which our ancestors have understood to use the compressed elements of the earth?",157)
	NODE(157)
		
		SAY("You mean the Tacholytium, right? Yes, I remember. Father Agnus asked me to tell you that he has the final relic. It seems to be the last missing fragment to your PSI amplifier.")

		ANSWER("CONTINUE",158)
	NODE(158)
		SAY("A powerful tool. You should always take care that it does not fall into false hands.")

		ANSWER("Many thanks, father. Finally I have all five fragments. If I just could already assemble it. It is imperative that I find an old construction blue print of the PSI amplifier. Or a blueprint.",159)
	NODE(159)
		SAY("I fear I cannot help you with that. But I am sure that the solution to your problem will not be far away. Walk in the light of Crahn my young brother.(next mission at level 45)")
		GIVEMONEY(20000)
                SETNEXTDIALOGSTATE(160)
                EPICRUNFINISHED(10,4)
                ACTIVATEDIALOGTRIGGER(1)
                ENDDIALOG()
                
        NODE(160)
                        SAY("Go Away")
                        ENDDIALOG()

end