function DIALOG()

--Sand Viper Gland 8151
--kann gegen 
--Rüstung getauscht werden
--"Tangent Anti-Radiationsuit v Prototype 1X-D" 1911



	NODE(0)
		DOYALIGNMENT()
			if( result==-1 ) then
			-- Fall 1: Reza Anhänger
				SAY("Runner?")
				ANSWER("I would like to offer my services for the war against Dome of York.",3)
				ANSWER("I heard that I could help out a little. To help work against Dome of York.",3)
			else		
			-- Fall 2: Reza Feind		
				SAY("What do you want?")
				ANSWER("I want to get my hands on this new kind suit of yours.",1)
				ANSWER("I have heard that you developed a new kind of armor. What do I have to do to get one?",1)
			end
	
	NODE(1)

		SAY("You better forget about it real fast. These suits are only for loyal citizens of Neocron. It's people like you who are threatening the public peace. Now get out!")
		SAY("You will never get one of those suits because they are for loyal followers of Reza only. You probably wouldn't even be able to pass the required test. Go now and don't waste my time.")
		
		ANSWER("Arrogant little f**k. Just watch me, I'll get me one of those suits.",2)
		ANSWER("Oh, yes. Continue to grovel for that arrogant Reza dude and you will get what's coming to you!",2)
		

		
	NODE(2)

		SAY("I won't waste any more time on this. Please leave immediately because I will not suffer any more insults.")
				
		ENDDIALOG()


	NODE(3)

		SAY("I am pleased to hear that. Are you a good fighter?")

		ANSWER("I don't like to brag but I am specializing in combat.",6)
		ANSWER("Well, I'm not too bad I guess. But I'm not an experienced veteran.",5)
		ANSWER("I'm sorry but I can't serve you with any combat skills.",4)

	NODE(4)

		SAY("Then I cannot give you any tasks at the moment. That's the way it is.")

		ENDDIALOG()
		
	NODE(5)	
		SAY("The task we have in mind will require exceptional combat skills. That's why you will need to pass a test first. Do you feel comfortable with that?")
		
		ANSWER("I changed my mind. Isn't there any non violent way I can serve Neocron?",4)
		ANSWER("Sure I am. Tell me more.",6)

	NODE(6)

		SAY("Good, as you probably know Dome of York has unleashed a flood of new war machines into the northern regions of the Wastelands. They are using a new kind of Neutron technology and at the moment we can't protect ourselves properly against that. That's why we are working on a prototype of a protective suit.")
				
		ANSWER("And what can I do about it? What will be my task?",7)
		ANSWER("Yes, I already heard all that. I am here because I organised those two Sand Viper Glands as agreed. Now I want to exchange them against the armor.",12)
		ANSWER("I know. I am here because I want to return the armor.",15)


---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------
--Aufnahmetest				
	NODE(7)

		SAY("This new suit has to be tested. We don't have enough data yet how the suit works against those robots. We will give you one of these suits and you can test them on the war machines.")
				
		ANSWER("Alright, finally some action. Those machines won't know what hit em.",8)
		ANSWER("I am honoured to be charged with such an important task. I will do my best to provide these test results.",9)
		
	NODE(8)

		SAY("Just a moment! I don't believe you understand the importance. This suit is the latest in high tech development and equipped with extremely expensive technology!")
				
		ANSWER("No problem, what is the plan then?",9)

	NODE(9)
		SAY("Good. Since we only want to give this mission to experienced fighters we need to  make sure that you are suited for the task. Listen...")

		ANSWER("yes, please go on.",10)
	NODE(10)
		SAY("Far in the north of the Wastelands there is an old ruin with the name of ancient Loba village. That place is crawling with snakes. If you manage to get me two Sand Viper Glands we will know that you are suited for this task. This is for your own good. If you cannot take on these snakes then you will surely die once you encounter those war machines.")
		
		ANSWER("Is there anything else I need to know to finally test this new armor?",11)

	NODE(11)
		SAY("Yes, since the armor is a valuable prototype you will need to make a security deposit. But we will talk about that later once you acquired those Sand Viper Glands.")

		ENDDIALOG()


---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------
--Rüstungstausch
	NODE(12)
--Sand Viper Glands
		TAKEITEMCNT(8151,2)
		if(result==0)then
			SAY("First you need to acquire those Sand Viper Glands from ancient Loba village.")
			ENDDIALOG()
		else
			SAY("Well done. You seem to be an experienced fighter for our cause. Now you only need to make this security deposit and the suit is yours. The deposit is 60000 credits.")

			ANSWER("Understood, of course I will do that. But I can return the suit, can't I?",13)
			ANSWER("Sorry but I cannot afford that.",14)
		end
	NODE(13)
		TAKEMONEY(60000)
		if(result==0)then
			SAY("This prototype is too valuable, we can only give it to you if you give us the security deposit.")
			ENDDIALOG()
		else
--Rüstung wird ausgegeben
			GIVEITEM(1911)		
			SAY("Thank you. I hope you will have success with this armor. One word of caution, though. Since it is still experimental, there might be some detrimental effects on your brain. Only temporary, though.")
			ENDDIALOG()
		end
	NODE(14)
		GIVEITEM(8151)
		GIVEITEM(8151)
		SAY("Sorry, but this won't cut the deal. But at least I know that we have another experienced fighter on our side.If you manage to get the money for the deposit you can return, of course. Good luck.")

---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------
--Rüstungsabgabe

	NODE(15)
		TAKEITEM(1911)
		if(result==0)then
			SAY("Hmm, did you by any chance forget your armor in your appartement?")	
			ENDDIALOG()
		else
			SAY("As you wish. The data collected by the suit will help us to further develop and improve the prototype.")

			ANSWER("Can I get my deposit money back?",16)
		end
	NODE(16)
			GIVEMONEY(40000)
			SAY("Of course, let's just have a look at your armor. Well, apart from some occasional scratches it looks fine. Here are 40000. A productive day to you.")
			
			ENDDIALOG()

end


