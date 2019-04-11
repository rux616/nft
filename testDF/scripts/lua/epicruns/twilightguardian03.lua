--new
--Twilight Guardian
--
--Trigger
--Triggernumber,Type,Person
--0,D,SIMMONS
--1,D,FIGARO 150
--2,D,DONNOVAN 200
--3
--
--Startnode, Person
--0, Contact Person
--50, DONNOVAN
--100, SIMMONS
--150, FIGARO
--200, DONNOVAN
--250,
--
--Items
--PROPAGANDA CUBE 50

function DIALOG()
--------------------------------------------------------------------
--Contact Person
--0
	
	NODE(0)
		SAY("The Anarchy Breed have got some trouble with the CityAdmin again. Reza seems to go pretty hard on them. They only were lucky that Reza didn't send all of his lapdog CopBots. Otherwise our friends would be in a rather dire situation.")

		ANSWER("The Anarchy Breed? Why are we friends with them at all?",1)
	NODE(1)
		SAY("Simple, basically Reza is their enemy as well. Maybe they have different plans for after the time of the dictator but that is something different.")

		ANSWER("Very well, basically I wanted to know whether or not Donnovan has got a new job for me.",2)
	NODE(2)
		SAY("Better you ask Donnovan yourself. You know where you can usually find him, right?")
		STARTMISSION()
		SETNEXTDIALOGSTATE(3)
		ENDDIALOG()
	
	NODE(3)
		SAY("Donnovan should be around here somewhere. You will find him, I am sure about it. Our HQ is not as big as we might want it.")
		ENDDIALOG()

--------------------------------------------------------------------
--DONNOVAN
--50
	NODE(50)
		SAY("This has to stop. I have seen some of the reports and the situation is depressing. Twilight Guardian are vanishing again and again. They are trying to persuade the people of Neocron to work against Reza. It is a pity but if we want to win against this pig named Reza we need to convince the people of Rezas dark secrets.")

		ANSWER("I thought we only need our combined strength to defeat Reza.",51)
	NODE(51)
		SAY("Well, that would be nice. But we need the population to do something against Reza. That is also the reason for all those Propaganda Cubes that we produce. You still know the content of them, do you?")

		ANSWER("Sure, everything about Rezas crimes.",52)
	NODE(52)
		SAY("True, I believe a man should pay for his crimes. Reza is not only a dictator and criminal but also a coward. Think about it, who profits from Neocron? The only person that benefits from Neocron is Reza.")

		ANSWER("I am surprised that the populations just seems to accept it.",53)
	NODE(53)
		SAY("Do they have a choice? Their only chance is to confront him all at once. To revolt against him. And that is only possible if everybody knows the truth. That's why we give Neocron the truth. This time you will bring them some cubes.")

		ANSWER("Me? What is my task with this?",54)
	NODE(54)
		SAY("You have to go to Neocron and spread the cubes, two were requested and you can give the other one to somebody of your own choice. You will look for one of the secret entrances to Neocron and find your way into the Pepper Park. Look out for CopBots, those cubes would mean the death penalty if they are found in your possession.")

		ANSWER("Where are those entrances?",55)
	NODE(55)
		SAY("There is one in the sector of the main entrance. Then there are others as well. One leads to the Outzone and is not guarded. Another one leads to the church of Crahn and I cannot imagine that they would oppose anyone of us using that entrance now and again. Take care nonetheless, the Outzone is no friendly place.")

		ANSWER("Good, I will try this.",56)
	NODE(56)
		GIVEITEM(9482)
		GIVEITEM(9482)
		GIVEITEM(9482)
--PROPAGANDACUBES
		SAY("Here are your three datacubes with the information. Take one to Simmons and one to Figaro. You can find both in Pepper Park. The third datacube should be given to a runner. You should try to convince him of our cause. Look for somebody on the streets. Careful, to get back in one piece is paramount.")
		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()
	

--------------------------------------------------------------------
-- SIMMONS
--100
	NODE(100)
		TAKEITEM(9482)
		if(result==0)then
			SAY("Get lost, I don't want to be seen with a Twilight Guardian.")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(101)
			SAY("Yes? What? Why don't you talk?")

			ANSWER("I've got a datacube filled to the top with the truth about Rezas government. Interested?",101)
		end
	NODE(101)
		SAY("Of course I am. I would have already done far more for the Twilight Guardian but I value my life too much. I know somebody, however, who could do more for you.")

		ANSWER("Yes? Then tell me about it.",102)
	NODE(102)
		SAY("I know this former CityAdmin employee. He seems to be fed up with them and looks as if he would sell his own mother for his cause. If you want to I will arrange a meeting.")

		ANSWER("If all this is true it would be ideal for our cause. Make sure that he means it, though.",103)
	NODE(103)
		SAY("Good, but only if you see to it that Reza will find a soon end. I'll send the meeting coordinates directly to your HQ.")
		SETNEXTDIALOGSTATE(104)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
		
	NODE(104)
		SAY("It would be better if we were not seen together. As soon as I know the meeting place, I will immediately send the coordinates to you.")
		ENDDIALOG()

--------------------------------------------------------------------
--FIGARO
--150
	NODE(150)
		TAKEITEM(9482)
		if(result==0)then
			SAY("I have an assortment of special drugs right here. But there are already many people waiting for them. That means you have to try again later.")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(151)
			SAY("Ahh, you surely want to have a look at my wares, right?")

			ANSWER("Not really but I do have a datacube with your name on it.",151)
		end
	NODE(151)
		SAY("Finally. Do you have any idea how long I have waited for it? Now I will hopefully learn more about what the CityAdmin really does.")

		ANSWER("How come that you need information from us, after all you are sitting right at the source?",152)
	NODE(152)
		SAY("Yes, yes, but that is only partially true. The CityAdmin is good at hiding what it wants to keep hidden. I only learn about something interesting once in a while.")

		ANSWER("For example?",153)
	NODE(153)
		SAY("The NCPD raided the areas now and then. A few days ago they burned some apartements. After that they lined up six Twilight Guardian and executed them. They don't know mercy it seems.")

		ANSWER("They simply executed them? These bastards...",154)
	NODE(154)
		SAY("Don't take it too hard, there is not a single day a Neocron citizen is not executed right there on the street. Now be gone before somebody sees us together.")
		SETNEXTDIALOGSTATE(155)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
	NODE(155)
		SAY("Did I already mention that I was almost executed once?")
		ENDDIALOG()


--------------------------------------------------------------------
-- DONNOVAN
--200
	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Just bring this information to Simmons in Pepper Park.")
			ENDDIALOG()
		else
			ISMISSIONTARGETACCOMPLISHED(1)
			if(result==0)then
				SAY("Just bring this information to Figaro in Pepper Park.")
				ENDDIALOG()
			else
				TAKEITEM(9482)
				if(result==0)then
					SETNEXTDIALOGSTATE(201)
					SAY("Are you ready? Well done, I hope there were no problems. I am always happy when I can get back to the HQ. That city carries the stench of corrupted Reza slaves. Unlike Neocron the Dome is a symbol for us that even the most powerful city can be toppled.")

					ANSWER("I have given all the Propaganda Cubes away. Simmons seems to be a secret supporter of our case. He even wanted to organise a meeting with a former CityAdmin who wants to get back at Reza.",201)
				else
					GIVEITEM(9482)
					SAY("Try to convince somebody to join our side with help of the datacube. After that you can return.")
					ENDDIALOG()
				end
			end
		end
	NODE(201)
		SAY("Simmons? It seems the only thing that he needs is a little courage. When is this meeting supposed to be?")

		ANSWER("He wanted to let us know about it.",202)
	NODE(202)
		GIVEMONEY(10000)
		SAY("Good work, Hagen would be proud of you. Here is your reward but do not waste it all. Rather train a little and then speak to a contact person. (next mission at level 35)")
		EPICRUNFINISHED(15,2)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()


end