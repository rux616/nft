--new
--Tsunami

function DIALOG()
NODE(0)
--CANDOEPICRUN(factionid, epicmissionid)
--EPICMISSIONERROR_WRONGFACTION		-1
--EPICMISSIONERROR_FULLYACCOMPLISHED	-2
--EPICMISSIONERROR_MISSIONMISSIONS		-3
--EPICMISSIONERROR_ALREADYFINISHED		-4
--EPICMISSIONERROR_WRONGSKILLLEVEL		-5
--EPICMISSIONERROR_MISSIONRUNNING		-6
--EPICRUNFINISHED(factionid, epicmissionid)
--STARTMISSION( missionid aus missionbase def)

	CANDOEPICRUN(14,0)
-- Prüfen ob bereits eine Mission läuft
		if (result==-6) then
			SAY("I am sorry but you need to finish your running mission before i can offer you a new.")
			ENDDIALOG()
			-- now prevent any other node to come through
			state = -1
		end
-- Fraktion wird überprüft
		if(result==-1)then 
			SAY("Unfortunately you don't belong to our faction. Please don't continue to waste my time. Unless you would like to join our faction?")
			
			ANSWER("That's exactly why I am here. I would like to join your faction.",301)
			ANSWER("No. I have no interest in that. Until later...",300)
		else
-- Alle Missionen erfüllt? wird geprüft
			CANDOEPICRUN(14,0)
			if(result==-2)then
				SAY("I am sorry but the only other way you could help us is to found a new clan and support us.")
				ENDDIALOG()
			else
-- Abfrage ob Skillevel stimmt und dann ob die Mission schon erfüllt wurde
				CANDOEPICRUN(14,0)
				if(result==-5)then
					SAY("You are not experienced enough. Come back once you have become better at what you do. (next mission at level 10)")
					ENDDIALOG()
				else
						CANDOEPICRUN(14,0)
				        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------2
						CANDOEPICRUN(14,1)
						if(result==-5)then
					SAY("You are not experienced enough. Come back once you have become better at what you do. (next mission at level 20)")
							ENDDIALOG()
						else
								CANDOEPICRUN(14,1)
				        		if(result==-4)then
-------------------------------------------------------------------------------------------------------------------3
						CANDOEPICRUN(14,2)
						if(result==-5)then
					SAY("You are not experienced enough. Come back once you have become better at what you do. (next mission at level 30)")
							ENDDIALOG()
						else
								CANDOEPICRUN(14,2)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------4
						CANDOEPICRUN(14,3)
						if(result==-5)then
					SAY("You are not experienced enough. Come back once you have become better at what you do. (next mission at level 35)")
							ENDDIALOG()
						else
								CANDOEPICRUN(14,3)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------5
						CANDOEPICRUN(14,4)
						if(result==-5)then
					SAY("You are not experienced enough. Come back once you have become better at what you do. (next mission at level 40)")
							ENDDIALOG()
						else
								CANDOEPICRUN(14,4)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------6
						CANDOEPICRUN(14,5)
				if(result==-5)then
					SAY("You are not experienced enough. Come back once you have become better at what you do. (next mission at level 45)")
					ENDDIALOG()
				else
								CANDOEPICRUN(14,5)
				        if(result==-4)then
				SAY("I am sorry but the only other way you could help us is to found a new clan and support us.")
						ENDDIALOG()
					else
--Mission 6 wird hier gestartet
		SAY("I think you should visit Constantine again. The final stage of your project seems to be well underway. After all you are directing this project. right?")

		ANSWER("I wish but Constantine really is doing much of the work. There's barely something left for me.",251)

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------6
					else
--Mission 5 wird hier gestartet
		SAY("There have been a few decisions on the treacherous information that you have handed in about Grimm. The council did thoroughly review the data and decided to put Grimm under 23 hour surveillance and strip him of his ranks.")

		ANSWER("This is not fair. Grimm should be banned. I almost got killed because of hihs scheming.",201)

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------5
					else
--Mission 4 wird hier gestartet
		SAY("Constantine informed me that she would like to speak to you. The topic she says is a person you only know too well.")

		ANSWER("I will visit her immediately.",151)
		ANSWER("It just isn't possible at the moment...",152)
					end
				end	
-------------------------------------------------------------------------------------------------------------------4
					else
--Mission 3 wird hier gestartet
		SAY("Grimm in the reactor area 1 would like to talk to you. He sounded rather excited and already looked for you all over the place. But he did not want to tell us what this is all about. Maybe you know what this is all about.")

		ANSWER("No. I have not the slightest idea.",101)
		ANSWER("I still have some urgent matters to attend to...",103)


						
					end
				end	
-------------------------------------------------------------------------------------------------------------------3
							else
--Mission 2 wird hier gestartet
		SAY("Your registration process is completed. Here is your ID Cube.")
		
		ANSWER("IC Cube? What is it good for?",51)


						
					end
				end	
-------------------------------------------------------------------------------------------------------------------2
					else
--Mission 1 wird hier gestartet
		SAY("Welcome to the Fallen Angels. there are only a few formalities left. Please be patient you will receive your ID cube later on. Officially you now belong to us. the Fallen Angels. In addition to the membership you receive some new duties since we are not out here to just daydream our life away. If you already feel comfortable you could already accept a task.")
		
		ANSWER("Of course. After all that is exactly why I joined the Fallen Angels in the first place.",11)

						
					end
				end			
			end
		end

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--FA 1
	NODE(11)
		SAY("I am pleased to hear that. As you probably know. every member of the Fallen Angels is a scientist to a certain degree. But because we did not yet fully analyse your qualities we cannot give you a suitable assignment just yet. It would be best if you would be willing to accept a small delivery job in the meanwhile. Sylvia Bennet released the latest test results on the various projects of our research. There wasn't time yet to hand them all out. however. Would you be willing to deliver one set of documents for us?")
		
		ANSWER("Alright. even if I am not usually keen on these kind of jobs. Where should I bring it to?",12)
		ANSWER("I don't believe I am ready for something like that just now.",14)
	NODE(12)
		SAY("There is a special Science Laboratory section here in the HQ. There much of the research is focused into discovering a way to return radioactivity and the environment back to a healthy level. Basically anything you can think of is being researched down there. You can have a good look around on your way there. Fallen Angel installations are always worth a look. ")
		
		ANSWER("Don't worry. I will make sure that this is delivered safely.",13)
	NODE(13)
		GIVEITEM(9307)
		SAY("View this as an opportunity for quick money. Deliver the package to Grimm in the reactor area 1 and extend my greetings to him.")
		STARTMISSION(3576)
		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()
	NODE(14)
		SAY("Then just return once you feel more comfortable here.")
		ENDDIALOG()

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--FA 2
	NODE(51)
		SAY("It contains all your personal information and confirms your official affiliation with the Fallen Angels. Of course there is also a second copy of your personal data. Let's talk about something of more important. Judging from the analysis of your personal data the Scientist Council decided to assign an independent research project to you.")
		
		ANSWER("A research project for me? Thank you. but what does that mean? And what do I have to do with it?",52)
		ANSWER("I don't think I am suited for that task. Not yet. I am sorry.",55)
	NODE(52)
		SAY("You will get a project that you will have to research on your own. The list of projects you can choose from is limited. though. After all the project should comply with the greater goals of the Fallen Angels. At least you will get the help of a personal assistant who will lend you a hand now and then.")
		
		ANSWER("That sounds very good. But where should I start?",53)
	NODE(53)
		SAY("Grimm from the has been given the relevant information from the Scientist Council. He will inform you about who will be your personal assistant. Good luck. Your research results will decide over your future rank here with us.")
		STARTMISSION(3577)
		SETNEXTDIALOGSTATE(4)
		ENDDIALOG()
	NODE(55)
		SAY("It's alright. if you don't feel up to this task.")
		
		ENDDIALOG()

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--FA 3
	NODE(101)
		SAY("You better visit him soon. I hope it was nothing serious.")
		STARTMISSION(3578)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()		
	NODE(102)
		SAY("Did you already visit Grimm in the reactor area 1? It sounded pretty important.")
		ENDDIALOG()
		
	NODE(103)
		SAY("As you wish but I am sure that Grimm will not be pleased.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--FA 4
	NODE(151)
		SAY("Apart from that there are no real news.")
		STARTMISSION(3579)
		SETNEXTDIALOGSTATE(3)
		ENDDIALOG()
	
	NODE(152)
		SAY("Hmm. all right but just don't let her wait too long...")
		ENDDIALOG()
	NODE(153)
		SAY("Didn't you want to speak to Constantine in the Reactor Area 1?")

		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--FA 5
	NODE(201)
		SAY("Yes. almost. But since there was no greater damage and the information that he passed along was only of a very general nature it was decided to give him another chance.")

		ANSWER("It seems I have no choice but to accept this ruling.",202)
	NODE(202)
		SAY("But there are also good news. 35 000 Credits have been approved for your research project. Your assistant also asked me to inform you that the necessary preparations are all set up and ready. You could possibly start with the research in earnest.")

		ANSWER("Alright. I will see to it.",203)
		ANSWER("Hmmm. I will only be able to do that later on.",204)
	NODE(203)
		SAY("Good luck.")
		STARTMISSION(3580)
		SETNEXTDIALOGSTATE(5)
		ENDDIALOG()
		
	NODE(204)
		SAY("That is your decision.")
		ENDDIALOG()

	NODE(205)
		SAY("Didn't you want to talk to the assisstant Constantine?")
		ENDDIALOG()		
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--FA 6
	NODE(251)
		SAY("For only once in my life I want to have such a job. Good luck anyway. Maybe you should also know that the Scientist Council will award you a bonus if you manage to finish your project.")
		STARTMISSION(3581)
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()
	NODE(252)
		SAY("You should reall brief Constantine on the final stage of your research project.")
		ENDDIALOG()
----------------------------------------------------
----------------------------------------------------
--FRAKTIONSWECHSEL
	NODE(300)
		SAY("Don't waste my time then.")
		ENDDIALOG()

	NODE(301)
		GETFACTIONSYMPATHY(14)
		if(result>49)then
			SAY("We are pleased to hear that. According to our data you seem to be clean. Very well. the entrance fee is 300 000 Credits.")
	
			ANSWER("That is a rather hefty sum. don't you think?",302)
		else
			SAY("Get lost. we won't accomodate scum like you.")
			ENDDIALOG()
		end
	NODE(302)
		SAY("If you are not prepared to spend the money we at least know that you didn't really want to join us.")

		ANSWER("Very well. I will pay.",303)
		ANSWER("Forget about it. I would never pay that much money.",300)
	NODE(303)
		TAKEMONEY(300000)
		if(result==0)then
			SAY("You better make sure that you have enough money next time.")
			ENDDIALOG()
		else
			CHANGEFACTION(14)
			SAY("Welcome with the Fallen Angels.")
			ENDDIALOG()
		end
end