--new
--Twilight Guardian
--
--Trigger
--Triggernumber,Type,Person
--0,D,Heff
--1,D,Tovall
--2,D,Elias
--3,D,Donnovan
--
--Startnode, Person
--0, Contact Person
--50, Heff
--100, TOVALL
--150, DONNOVAN
--200, ELIAS
--250, DONNOVAN
--
--Items
--PAKET FÜR ELIAS 150

function DIALOG()
--------------------------------------------------------------------
--Contact Person
--0
	
	NODE(0)
		SAY("Did you hear about our latest victory? We destroyed another weapon factory. The battle took longer than we thought. But Reza doesn't have the support of the people. He won't stand a chance in the long run.")

		ANSWER("Are there news from Donnovan? I trained and I believe I am ready for anything life can throw at  me.",1)
	NODE(1)
		SAY("Yes, I remember. He said that you should prove yourself against Heff and Tovall. A little training against real enemies can't hurt. You can find Heff somewhere around here. You can find both near the HQ entrance. He worked in Neocron until recently. He had to flee from the CopBots and the NCPD. Donnovan awaits you after that. He is rather certain that you will succeed.")
		
		STARTMISSION()
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
		
	NODE(2)
		SAY("You should decide whom to fight first. I would recommend Heff.")
		ENDDIALOG()
--------------------------------------------------------------------
--Heff
--50
	NODE(50)
		SAY("Hey, calm down. I am supposed to fight you, then? And you are certain that you can take it? By the way, my name is Heff, I am just coming from Neocron. Worked there together with the lady Jade. But once that secret agency had our trail I lost her on the retreat. If I could get my hands on Reza then I could...")

		ANSWER("I am sure Tovall will be interested in that. But aren't we supposed to fight?",51)
	NODE(51)
		SAY("Sure, whatever you want. Let's start.")
		SETNEXTDIALOGSTATE(52)
		ATTACK()
		ENDDIALOG()
	NODE(52)
		SAY("Do you want to fight again? Very well. Keep in mind that this is no training any longer.")
		ATTACK()
		ENDDIALOG()

--------------------------------------------------------------------
--TOVALL
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("I was already informed that I can beat up a recruit today. Alright, let's go.")
			ENDDIALOG()
		else
			SAY("Any news? I hear rumours from every side but nobody tells me anything.")

			ANSWER("Hmm, Heff did say that he lost sight of Jade when he had to retreat from Neocron.",101)
		end
	NODE(101)
		SAY("That would mean that there is at least some hope. I was already about to assume the worst. But you are certainly not here to talk about Jade, right?")

		ANSWER("No, really. Donnovan told me to get some training with you. I won't take it easy on you.",102)
	NODE(102)
		SAY("Har, ha. Very well, then I won't have to take it easy on you either.")
		SETNEXTDIALOGSTATE(103)
		ATTACK()
		ENDDIALOG()
		
	NODE(103)
		SAY("Haven't you had enough? This time it'll be for real.")
		ATTACK()
		ENDDIALOG()

--------------------------------------------------------------------
--DONNOVAN
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Did you fight against Heff?")
			ENDDIALOG()
		else
		
			ISMISSIONTARGETACCOMPLISHED(1)
			if(result==0)then
				SAY("Did you fight against Tovall?")
				ENDDIALOG()
			else
		
				SAY("Hrmph, I had no doubt that you would succeed. After all you seem to be well prepared. But enough of that. Do you know the Fallen Angels?")

				ANSWER("Sure, a stereotypical group of scientists. They own Tech Haven and can be found around here in the Dome as well.",151)
			end

		end
	NODE(151)
		SAY("Exactly. Once in a while we contact them because they are scientists who know what they are doing. I know, except for the Dome of York alliance, the Fallen Angels and Anarchy Breed no other faction is on our side. That is no surprise since all other factions depend on Reza. It is only understandable that they cannot turn against him since they depend so much on him.")

		ANSWER("I always thought the Fallen Angels were against violence.",152)
	NODE(152)
		GIVEITEM(9481)
--PAKET FÜR ELIAS
		SAY("Of course they are and now take this package to our contact person Elias. He is waiting near the entrance to Tech Haven. But take care since it can be very dangerous out there in the Wastelands.")
		SETNEXTDIALOGSTATE(250)
		ENDDIALOG()

--------------------------------------------------------------------
--ELIAS
--200
	NODE(200)
		TAKEITEM(9481)
		if(result==0)then
			SAY("Where did you leave that urgent delivery from the Guardians? We really need it for our research.")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(201)
			SAY("It does not happen often that we see a Twilight Guardian around here. I assume you have business here?")

			ANSWER("There is a package from Donnovan. I hope you know what it means.",201)
		end
	NODE(201)
		SAY("Could it be the material that we were expecting? This is very important. Show it to me.")

		ANSWER("Here, but I don't understand what this is all about.",202)
	NODE(202)
		SAY("Some rare metals that can only be found in a few mines. Luckily the Twilight Guardian possess those few mines.We need this delivery to be able to continue certain... ahhh... experiments. You can report to Donnovan that we will honour our part of the agreements. Thank you that you took this long journey upon you.")
		SETNEXTDIALOGSTATE(203)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
		
	NODE(203)
		SAY("I will make sure that the project that the Twilight Guardian commissioned will be ready in time.")

		ENDDIALOG()
--------------------------------------------------------------------
--DONNOVAN
--250
	NODE(250)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Did you already visit Elias at the entrance to Tech Haven?")
			ENDDIALOG()
		else
			SAY("You are back already? I assumed that you wanted to have a closer look at Tech Haven. After all it is a very mighty structure that they managed to build out there.")

			ANSWER("Yes, of course. Elias seemed to be very eager to get his hands on that package.",251)
		end
	NODE(251)
		GIVEMONEY(8000)
		SAY("Ha, yes, those scientists. A light shines in their eyes once they talk about their science. Thank you that you made this delivery. You earned a little extra. Use it for your equipment or drink it away, whatever way you want. If you are ready for more you can see a contact person. (next mission at level 30)")
		ACTIVATEDIALOGTRIGGER(3)
		EPICRUNFINISHED(15,1)
		ENDDIALOG()


end