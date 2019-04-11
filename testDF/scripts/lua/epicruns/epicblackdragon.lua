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
--EPICMISSIONERROR_MISSIONRUNNING		-6
--EPICRUNFINISHED(8, epicmissionid)
--STARTMISSION( missionid aus missionbase def)

	CANDOEPICRUN(9,0)
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
			CANDOEPICRUN(9,0)
			if(result==-2)then
				SAY("Your only way to further support us is to found a clan of your own.")
				ENDDIALOG()
			else
-- Abfrage ob Skillevel stimmt und dann ob die Mission schon erfüllt wurde
				CANDOEPICRUN(9,0)
				if(result==-5)then
					SAY("Youre not good enough for this job, come back once you are better at what you do. (next mission at level 10)")
					ENDDIALOG()
				else
						CANDOEPICRUN(9,0)
				        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------2
						CANDOEPICRUN(9,1)
						if(result==-5)then
							SAY("Youre not good enough for this job, come back once you are better at what you do. (next mission at level 20)")
							ENDDIALOG()
						else
								CANDOEPICRUN(9,1)
				        		if(result==-4)then
-------------------------------------------------------------------------------------------------------------------3
						CANDOEPICRUN(9,2)
						if(result==-5)then
							SAY("Youre not good enough for this job, come back once you are better at what you do. (next mission at level 30)")
							ENDDIALOG()
						else
								CANDOEPICRUN(9,2)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------4
						CANDOEPICRUN(9,3)
						if(result==-5)then
							SAY("Youre not good enough for this job, come back once you are better at what you do. (next mission at level 35)")
							ENDDIALOG()
						else
								CANDOEPICRUN(9,3)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------5
						CANDOEPICRUN(9,4)
						if(result==-5)then
							SAY("Youre not good enough for this job, come back once you are better at what you do. (next mission at level 40)")
							ENDDIALOG()
						else
								CANDOEPICRUN(9,4)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------6
						CANDOEPICRUN(9,5)
				if(result==-5)then
					SAY("Youre not good enough for this job, come back once you are better at what you do. (next mission at level 45)")
					ENDDIALOG()
				else
								CANDOEPICRUN(11,5)
				        if(result==-4)then
						SAY("Your only way to further support us is to found a clan of your own.")
						ENDDIALOG()
					else
--Mission 6 wird hier gestartet
		SAY("It is time. Lucy asked me to tell you that she wants to speak to you. But be careful, Gecko doesn't like it if anybody is talking to his girlfriend.")
		STARTMISSION(3620)
		ENDDIALOG()

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------6
					else
--Mission 5 wird hier gestartet
		SAY("Lucky would like to speak to you. You are already rather famous but you better be careful, to be famous is not always preferable.")
		STARTMISSION(3619)
		SETNEXTDIALOGSTATE(0)
		ENDDIALOG()

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------5
					else
--Mission 4 wird hier gestartet
		SAY("Listen. Lucky knows that you cheated him. I'd say you are screwed which is why I don't understand why he wants a personal conversation with you. You just seem to be one lucky bastard. If it was up to me you'd be floating down the river face down.")
		STARTMISSION(3618)
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------4
					else
--Mission 3 wird hier gestartet
		SAY("Listen, this is the chance of your lifetime. You better take care and behave yourself. Talk to Lucky here at the HQ. He told me it's all about your friend Leone. Don't ask me what this is all about, I've got no idea.")
		STARTMISSION(3617)
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()


						
					end
				end	
-------------------------------------------------------------------------------------------------------------------3
							else
--Mission 2 wird hier gestartet
		SAY("Damn Tsunamis. I assume you already have made some experience with those bastards?")

		ANSWER("Some. They have never had friendly intentions, though.",51)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------2
					else
--Mission 1 wird hier gestartet
		SAY("If you think being with us is an easy way to money and power, forget it. You gotta work hard like every single one of us. Competition is tough to say the least.")

		ANSWER("Very well. Then tell me what exactly you guys do around here. I am not going to work for somebody I don't know.",11)
					
					end
				end			
			end
		end

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Black Dragon 1
	NODE(11)
		SAY("You will see, Runner. It would probably be best though if you learned a little more respect first. People would take you more seriously, you know? Why don't you frickin newcomers have any manners at all?!")

		ANSWER("No reason to insult me, I understand what you are saying.",12)
	NODE(12)
		SAY("Alright, alright. It's not that I am trying to get rid of you or something. But who am I to know whether you are a Tsunami infiltrator or not. That's the reason why you will have to prove yourself to us first. Even before I can answer those questions of yours.")

		ANSWER("Don't worry, I'm prepared for everything.",13)
	NODE(13)
		SAY("If that's really your attitude you have a bright future in front of you. However, you should always keep the first rule in your mind because if you don't, you will go down fast.")

		ANSWER("I am listening…",14)
	NODE(14)
		GIVEITEM(9460)
--DRUGPAKET
		SAY("No remorse and no mercy! That is bad for business, understand? Now that you know the most important rule you could make a delivery for us. Manuel is one of our street dealers and he ran low on drugs. You will get a fresh bundle to him in sector 08. He can be found in one of the back alleys. After that you get straight back to me. Unless of course you want to talk to some people here first. Maybe Leone or Lucky? They're both rather powerful. Make sure however that you keep your hands off Lucy, ok? You better talk to Leone or Lucky instead, would benefit you more I think.")
		STARTMISSION(3615)
		SETNEXTDIALOGSTATE(100)

		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Black Dragon 2
	NODE(51)
		SAY("Small surprise since after all they are our arch enemies. Only yesterday they roughed up some of our dealers. Bastards! Whatever, Leone's got something for you. You know the drill, he is already waiting for you in the HQ.")
		STARTMISSION(3616)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Black Dragon 3

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Black Dragon 4

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Black Dragon 5
	
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Black Dragon 6

----------------------------------------------------
----------------------------------------------------
--FRAKTIONSWECHSEL
	NODE(300)
		SAY("I am rather busy. Please move on.")
		ENDDIALOG()

	NODE(301)
		GETFACTIONSYMPATHY(9)
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
			CHANGEFACTION(9)
			SAY("Black Dragon welcomes you.")
			ENDDIALOG()
		end
end