--new
--CityMerc

function DIALOG()
NODE(0)
--CANDOEPICRUN(8, epicmissionid)
--EPICMISSIONERROR_WRONGFACTION		-1
--EPICMISSIONERROR_FULLYACCOMPLISHED	-2
--EPICMISSIONERROR_MISSIONMISSIONS		-3
--EPICMISSIONERROR_ALREADYFINISHED		-4
--EPICMISSIONERROR_WRONGSKILLLEVEL		-5
--EPICRUNFINISHED(8, epicmissionid)
--STARTMISSION( missionid aus missionbase def)

	CANDOEPICRUN(15,0)
-- Prüfen ob bereits eine Mission läuft
		if (result==-6) then
			SAY("I am sorry but you need to finish your running mission before i can offer you a new.")
			ENDDIALOG()
			-- now prevent any other node to come through
			state = -1
		end
-- Fraktion wird überprüft
		if(result==-1)then 

			SAY("I am sorry but you don't belong to our faction. Please don't waste my time. Unless you plan to join our faction?!")
			
			ANSWER("That's why I am here. I would like to join your faction.",301)
			ANSWER("I'm not interested. Goodbye.",300)
		else
-- Alle Missionen erfüllt? wird geprüft
			CANDOEPICRUN(15,0)
			if(result==-2)then
				SAY("Your only way to further support us is to found a clan of your own.")
				ENDDIALOG()
			else
-- Abfrage ob Skillevel stimmt und dann ob die Mission schon erfüllt wurde
				CANDOEPICRUN(15,0)
				if(result==-5)then
					SAY("Youre not good enough for this job, come back once you are better at what you do. (next mission at level 10)")
					ENDDIALOG()
				else
						CANDOEPICRUN(15,0)
				        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------2
						CANDOEPICRUN(15,1)
						if(result==-5)then
							SAY("Youre not good enough for this job, come back once you are better at what you do. (next mission at level 20)")
							ENDDIALOG()
						else
								CANDOEPICRUN(15,1)
				        		if(result==-4)then
-------------------------------------------------------------------------------------------------------------------3
						CANDOEPICRUN(15,2)
						if(result==-5)then
							SAY("Youre not good enough for this job, come back once you are better at what you do. (next mission at level 30)")
							ENDDIALOG()
						else
								CANDOEPICRUN(15,2)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------4
						CANDOEPICRUN(15,3)
						if(result==-5)then
							SAY("Youre not good enough for this job, come back once you are better at what you do. (next mission at level 35)")
							ENDDIALOG()
						else
								CANDOEPICRUN(15,3)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------5
						CANDOEPICRUN(15,4)
						if(result==-5)then
							SAY("Youre not good enough for this job, come back once you are better at what you do. (next mission at level 40)")
							ENDDIALOG()
						else
								CANDOEPICRUN(15,4)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------6
						CANDOEPICRUN(15,5)
				if(result==-5)then
					SAY("Youre not good enough for this job, come back once you are better at what you do. (next mission at level 45)")
					ENDDIALOG()
				else
								CANDOEPICRUN(15,5)
				        if(result==-4)then
						SAY("Your only way to further support us is to found a clan of your own.")
						ENDDIALOG()
					else
--Mission 6 wird hier gestartet
		SAY("I have heard that you are on the best way to show those Neokorpses the way. Is that true?")

		ANSWER("That's the plan.",251)

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------6
					else
--Mission 5 wird hier gestartet
		SAY("Donnovan informed me about the whereabouts of the Neokorps meeting. It is somewhere in sector A06 at the coast. Sorry, I can't remember numbers very well. It is your job to walk the leader of the Neokorps to the afterlife. After you have been there you can get a small payment to the contact person. You know better where to find that guy. Apart from that Tovall wanted to speak to you alone after you have accomplished all this. Understood?")

		ANSWER("I think so...",201)

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------5
					else
--Mission 4 wird hier gestartet
		SAY("There are more and more rumours that tell us about the new secret police with Reza. They already seem to have killed many Twilight Guardian. And they sure seem to be a brutal and totally ruthless.")

		ANSWER("Do you know any facts?",151)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------4
					else
--Mission 3 wird hier gestartet
		SAY("The Anarchy Breed have got some trouble with the CityAdmin again. Reza seems to go pretty hard on them. They only were lucky that Reza didn't send all of his lapdog CopBots. Otherwise our allies would be in a rather dire situation.")

		ANSWER("The Anarchy Breed? Why are we allied with them at all?",101)


						
					end
				end	
-------------------------------------------------------------------------------------------------------------------3
							else
--Mission 2 wird hier gestartet
		SAY("Did you hear about our latest victory? We destroyed another weapon factory. The battle took longer than we thought. But Reza doesn't have the support of the people. He won't stand a chance in the long run.")

		ANSWER("Are there news from Donnovan? I trained and I believe I am ready for anything life can throw at  me.",51)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------2
					else
--Mission 1 wird hier gestartet
		SAY("Welcome. Welcome here with the Twilight Guardian. I assure you that you are not the only one who tasted enough lies and violence from that Lion Reza bastard. Since you haven't been here for long you are not yet part of a cell, are you?")

		ANSWER("No, I only just arrived. I heard I would get a chance to pay back my dept to Reza.",11)
					
					end
				end			
			end
		end

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Twilight Guardian 1
	NODE(11)
		SAY("Very well, you will get your chance to do just that. We need people like you. I believe Donnovan will be able to give you directions, he is a formidable warrior and survived many skirmishes. Are you content with that?")

		ANSWER("More than content. I'll be on my way immediately.",12)
	NODE(12)
		SAY("You can't miss him, he is always guarding the entrance to our HQ in Dome of York. He always keeps an eye on the entrance so that we'll have no nasty surprises from Rezas plotting and scheming.")

		STARTMISSION(3621)
		SETNEXTDIALOGSTATE(3)
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Twilight Guardian 2
	NODE(51)
		SAY("Yes, I remember. He said that you should prove yourself against Heff and Tovall. A little training against real enemies can't hurt. You can find Heff somewhere around here. He worked in Neocron until recently. He had to flee from the CopBots and the NCPD. Donnovan awaits you after that. He is rather certain that you will succeed.")
		
		STARTMISSION(3622)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Twilight Guardian 3

	NODE(101)
		SAY("Simple, basically Reza is their enemy as well. Maybe they have different plans for after the time of the dictator but that is something different. It is the same with our alliance with Crahn. An alliance of convenience.")

		ANSWER("Very well, basically I wanted to know whether or not Donnovan has got a new job for me.",102)
	NODE(102)
		SAY("Better you ask Donnovan yourself. You know where you can usually find him, right?")
		STARTMISSION(3623)
		SETNEXTDIALOGSTATE(3)
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Twilight Guardian 4
	NODE(151)
		SAY("Why do you suppose am I telling you this? I hoped that you would know a little bit more but I see that you are poking in the dark as well. Oh yes, Donnovan has got something special for you.")

		ANSWER("Good, I will visit him at once.",152)
	NODE(152)
		SAY("Do that. Maybe you will know more later. God, I am on the brink of paying anybody who can bring me some little bits and pieces  of news about this a generous sum.")
		STARTMISSION(3624)
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Twilight Guardian 5
	NODE(201)
		GIVEITEM(9483)
--CASHCUBE
		SAY("Very well, take a good shot at that Neokorps commander. Give em hell.Try one of the few broadcasting stations in that area. Maybe there is somebody who can tell you more.")
		STARTMISSION(3625)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()	
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Twilight Guardian 6
	NODE(251)
		SAY("You'll go with my blessing then. Jade already awaits you in the Outzone. Show em, and show em good.")
		STARTMISSION(3626)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
----------------------------------------------------
----------------------------------------------------
--FRAKTIONSWECHSEL
	NODE(300)
		SAY("I am rather busy. Please move on.")
		ENDDIALOG()

	NODE(301)
		GETFACTIONSYMPATHY(15)
		if(result>49)then
			SAY("I am pleased to hear that. According to this data you are on a respectable status. Very well, the faction fee will be 300 000 credits.")
	
			ANSWER("That's a pretty hefty sum.",302)
		else
			SAY("You better go now, we don't want scum like you in our faction.")
			ENDDIALOG()
		end
	NODE(302)
		SAY("If you don't want to spend the money we will know for certain how serious you were with your plans. If you pay you will also show your dedication towards our faction.")

		ANSWER("Very well, I will pay.",303)
		ANSWER("Forget it, I am not going to spend that much money for this kind of crap.",300)
	NODE(303)
		TAKEMONEY(300000)
		if(result==0)then
			SAY("It's a shame that you don't have enough money to pay for your entry, don't you think?")
			ENDDIALOG()
		else
			CHANGEFACTION(15)
			SAY("Twilight Guardian welcomes you.")
			ENDDIALOG()
		end
end