--new
--BioTech

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

	CANDOEPICRUN(6,0)
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
			CANDOEPICRUN(6,0)
			if(result==-2)then
				SAY("I am sorry but you have already done everything for us that we can offer. You still could support us by founding a clan yourself.")
				ENDDIALOG()
			else
-- Abfrage ob Skillevel stimmt und dann ob die Mission schon erfüllt wurde
				CANDOEPICRUN(6,0)
				if(result==-5)then
					SAY("You are not yet experienced enough, come back after you have trained some more. (next mission at level 10)")
					ENDDIALOG()
				else
						CANDOEPICRUN(6,0)
				        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------2
						CANDOEPICRUN(6,1)
						if(result==-5)then
							SAY("You are not yet experienced enough, come back after you have trained some more. (next mission at level 20)")
							ENDDIALOG()
						else
								CANDOEPICRUN(6,1)
				        		if(result==-4)then
-------------------------------------------------------------------------------------------------------------------3
						CANDOEPICRUN(6,2)
						if(result==-5)then
							SAY("You are not yet experienced enough, come back after you have trained some more. (next mission at level 30)")
							ENDDIALOG()
						else
								CANDOEPICRUN(6,2)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------4
						CANDOEPICRUN(6,3)
						if(result==-5)then
							SAY("You are not yet experienced enough, come back after you have trained some more. (next mission at level 35)")
							ENDDIALOG()
						else
								CANDOEPICRUN(6,3)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------5
						CANDOEPICRUN(6,4)
						if(result==-5)then
							SAY("You are not yet experienced enough, come back after you have trained some more. (next mission at level 40)")
							ENDDIALOG()
						else
								CANDOEPICRUN(6,4)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------6
						CANDOEPICRUN(6,5)
				if(result==-5)then
					SAY("You are not yet experienced enough, come back after you have trained some more. (next mission at level 45)")
					ENDDIALOG()
				else
								CANDOEPICRUN(6,5)
				        if(result==-4)then
						SAY("I am sorry but you have already done everything for us that we can offer. You still could support us by founding a clan yourself.")
						ENDDIALOG()
					else
--Mission 6 wird hier gestartet
		SAY("Mr George appeared to be rather nervous when he contacted me. He says it is urgent that the two of you meet soon. Don't ask me what this is all about, though.")
		STARTMISSION(3614)
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------6
					else
--Mission 5 wird hier gestartet
		SAY("I have a message for you. It was submitted by Michail from sector 13. He expressed a wish to personally speak to you. You probably know where to find him, yes?")
		STARTMISSION(3592)
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()		
					end
				end	
-------------------------------------------------------------------------------------------------------------------5
					else
--Mission 4 wird hier gestartet
		SAY("Brandon George has asked me to tell you that he needs your assistance. You should be on your way soon. I have heard that he received full power warrants directly from Sandra Frasier. It might be a pretty important task that you are required for. Good luck whatever it'll be.")

		STARTMISSION(3591)
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------4
					else
--Mission 3 wird hier gestartet
		SAY("What can I do for you?")
		
		ANSWER("Did George leave a message for me?",101)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------3
							else
--Mission 2 wird hier gestartet
		SAY("You have been involved in the investigation of this mysterious email, right? The one where they demanded to hand over ProtoPharm.")
		
		ANSWER("I would even go as far to say that I brought light into the mystery.",51)

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------2
					else
--Mission 1 wird hier gestartet
		SAY("Welcome at ProtoPharm, how can I help you?")
		
		ANSWER("Since I now belong to ProtoPharm, I thought I could support you a little bit.",11)

						
					end
				end			
			end
		end

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 1
	NODE(11)
		SAY("To be precise, you have run out of money, right? Doesn't matter. But since I have no background information about you I will only be able to offer you a simple task. Michail, one of our employees has lost his assistant because of an unfortunate lab accident. Luckily his assistant was only injured. Your task could be to lend him a hand and replace his assistant. Are you interested?")
		
		ANSWER("Of course, that is exactly what I had in mind. Where can I find Michail? And most importantly, what do I get out of this?",12)
	NODE(12)
		SAY("You can find him right here in the HQ. And you will only get 1000 credits for the beginning. But if you stay with your tasks your payments will increase.")
		
		ANSWER("Very well, I am already on my way... Where do I have to go again?",13)
	NODE(13)
		SAY("It's very simple, just go to the labs adjacent to the ProtoPharm building. But take care not to touch anything, the machines are very sensitive.")
		


		STARTMISSION(3588)		
		SETNEXTDIALOGSTATE(4)
		ENDDIALOG()
	NODE(14)
		SAY("If you want to take the job as Michails assistant you have to go to the lab. I am sure you will find him there.")
		ENDDIALOG()

		
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 2
	NODE(51)
		SAY("Then you are the right person for Mr George. Hurry, he already waits impatiently for you. We would have contacted you earlier but you are changing your locations too often to keep track. You can find him somewhere here in the main building.")

		STARTMISSION(3589)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()

	NODE(52)
		SAY("Brandon George already awaits you. He is part of an investigation squad from ProtoPharm.")

		ENDDIALOG()	


------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 3
	NODE(101)
		SAY("Let me have a quick look. Yes, he says that he decoded the data now and expects you at the usual location.")

		STARTMISSION(3590)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(102)
		SAY("George is waiting at the usual meeting location for you.")
		ENDDIALOG()

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 4
	NODE(151)
		SAY("George has been looking for you all over this place. Be sure to meet him soon.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 5
	NODE(201)
		SAY("Michail from sector 13 wanted to speak to you, you can meet him in the lab")
		ENDDIALOG()

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 6
	NODE(251)
		SAY("George is looking for you, you should go see what he wants.")
		ENDDIALOG()

----------------------------------------------------
----------------------------------------------------
--FRAKTIONSWECHSEL
	NODE(300)
		SAY("I am rather busy. Please move on.")
		ENDDIALOG()

	NODE(301)
		GETFACTIONSYMPATHY(6)
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
			CHANGEFACTION(6)
			SAY("Welcome here with ProtoPharm.")
			ENDDIALOG()
		end
end