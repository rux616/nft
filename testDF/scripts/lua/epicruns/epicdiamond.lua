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

	CANDOEPICRUN(2,0)
-- Fraktion wird überprüft
		if(result==-1)then 
			SAY("I am sorry but you don't belong to our faction. Please don't waste my time. Unless you plan to join our faction?!")
			
			ANSWER("That's why I am here. I would like to join your faction.",301)
			ANSWER("I'm not interested. Goodbye.",300)
		else
-- Alle Missionen erfüllt? wird geprüft
			CANDOEPICRUN(2,0)
			if(result==-2)then
				SAY("I am sorry but you have already done everything for us that we can offer. You still could support us by founding a clan yourself.")
				ENDDIALOG()
			else
-- Abfrage ob Skillevel stimmt und dann ob die Mission schon erfüllt wurde
				CANDOEPICRUN(2,0)
				if(result==-5)then
					SAY("You are not yet experienced enough, come back after you have trained some more. (next mission at level 10)")
					ENDDIALOG()
				else
						CANDOEPICRUN(2,0)
				        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------2
						CANDOEPICRUN(2,1)
						if(result==-5)then
							SAY("You are not yet experienced enough, come back after you have trained some more. (next mission at level 20)")
							ENDDIALOG()
						else
								CANDOEPICRUN(2,1)
				        		if(result==-4)then
-------------------------------------------------------------------------------------------------------------------3
						CANDOEPICRUN(2,2)
						if(result==-5)then
							SAY("You are not yet experienced enough, come back after you have trained some more. (next mission at level 30)")
							ENDDIALOG()
						else
								CANDOEPICRUN(2,2)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------4
						CANDOEPICRUN(2,3)
						if(result==-5)then
							SAY("You are not yet experienced enough, come back after you have trained some more. (next mission at level 35)")
							ENDDIALOG()
						else
								CANDOEPICRUN(2,3)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------5
						CANDOEPICRUN(2,4)
						if(result==-5)then
							SAY("You are not yet experienced enough, come back after you have trained some more. (next mission at level 40)")
							ENDDIALOG()
						else
								CANDOEPICRUN(2,4)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------6
						CANDOEPICRUN(2,5)
				if(result==-5)then
					SAY("You are not yet experienced enough, come back after you have trained some more. (next mission at level 45)")
					ENDDIALOG()
				else
								CANDOEPICRUN(2,5)
				        if(result==-4)then
						SAY("I am sorry but you have already done everything for us that we can offer. You still could support us by founding a clan yourself.")
						ENDDIALOG()
					else
--Mission 6 wird hier gestartet
		SAY("I now have a definitive response from Eric Danmund himself. He seems to have declared a state of emergency and is willing to cooperate with the Tsunami. This is all Top Secret and you are only hearing this since you have earned our trust. Are you ready to free Diamond from this plague that is Black Dragon?")

		ANSWER("You can bet on that.",251)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------6
					else
--Mission 5 wird hier gestartet
		SAY("Since you obviously seem to be a natural we would like to assign a new task to you. The losses we incur each day because of this Black Dragon scum do not allow us to loose any more clients. Many employees fear for their job and I am not an exception.")
		
		ANSWER("Is it really that bad? I have not experienced any of this in the last time.",201)
		ANSWER("I have urgent other matters to attend to.",207)			
					end
				end	
-------------------------------------------------------------------------------------------------------------------5
					else
--Mission 4 wird hier gestartet
		SAY("If you feel ready, now is the chance to give it another go. I would advise you to visit Simmons once more. Thanks to your efforts he decided to come to Diamond after all. He seemed very determined and knew what he wanted.")
		
		ANSWER("Did he get over the loss of his wife so fast?",151)
		ANSWER("I am sorry, but I don't yet feel ready for another assignment.",152)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------4
					else
--Mission 3 wird hier gestartet
		SAY("Welcome back. There have been some developments while you were away. The Black Dragon won't give us a break and until the contract with the CityMercs is beginning to take effect we are loosing more and more clients. New is that some people now believe they could take advantage of our current situation.")
		
		ANSWER("Can it be? They are just waiting like carrion birds it seems.",101)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------3
							else
--Mission 2 wird hier gestartet
		SAY("A productive day to you. I believe you might be interested in doing something for Diamond again, yes?")
		
		ANSWER("You have guessed right. I think I have prepared myself well.",51)
		ANSWER("To be honest, I believe I am not ready yet.",54)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------2
					else
--Mission 1 wird hier gestartet
		SAY("Ahh, welcome at Diamond. We have closely followed your progress so far and some people here were very impressed. To say the least. It was decided to give you an assignment that requires a certain skill.")
		
		ANSWER("I am pleased to hear that.",11)
		ANSWER("Before I accept such an assignment I believe I should prepare myself better.",16)
						
					end
				end			
			end
		end

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 1
	NODE(11)
		SAY("As you might already know we face certain difficulties because of these unpredictable Black Dragons. They are ruthless criminals who would refrain from nothing to reach their goals. Ever since Diamond was privatised in 2046 the Black Dragons were the most serious threat we had to deal with.")
		
		ANSWER("Why? What do they want? Diamond only trades in real estate.",12)
	NODE(12)
		SAY("Yes, exactly. The Black Dragon aim to dominate the real estate market and the only way to achieve that is to disable Diamond. We already had to decrease our efforts in the Pepper Park Area since the Black Dragon threaten our clients. Even Eric Danmund himself, the head of Diamond has declared a state of emergency.")
		
		ANSWER("This is bad, but I thought you wanted to tell me about my assignment.",13)
	NODE(13)
		SAY("Of course but I thought you should have some background knowledge. Too many people don't know that almost all appartements and shops are property of Diamond. Except for the problems with the Black Dragons. It has become even worse recently. They already have forced some of our clients away from us. Diamond would like you to visit two persons who want to cancel their contracts with us. You should try and convince them to rethink their decision. Obviously the Black Dragon have something to do with this. After you convinced them you could go to the NCPD and make sure that they are aware of the problem with the Black Dragon.")
		
		ANSWER("Where can I find those two persons? I will give it my best shot.",14)
	NODE(14)
		SAY("The first client can be found in Plaza 02, he agreed to a meeting in Gariots Diner. The other one can be found in ViaRosso 03. If you still have time after that you should really visit the NCPD and report back to me with the results of your work.")
		STARTMISSION(3582)
		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()

	NODE(15)
		SAY("Don't forget to be friendly. You can find the clients in Plaza 02 and ViaRosso 03. They will probably wait in one of the Restaurants there.")
		ENDDIALOG()
	NODE(16)
		SAY("Please do so. Always be prepared. Come back once you think you have sufficiently prepared yourself.")
		ENDDIALOG()
		
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 2
	NODE(51)
		SAY("That is good. The threat posed by these gangs of criminals is growing and growing. Of course every single one of them was sent by the Black Dragon, there is no doubt about it. Mr. Danmund has therefore prepared a contract between us and the CityMercs for the protection of our appartements. A meeting was arranged near an abandoned broadcasting station in the Wastelands.")
		
		ANSWER("That was direly needed. It can't go on like this.",52)

	NODE(52)
		SAY("Precisely... we still need some documents for this meeting, though. There are two copies to be collected from the CityAdmin. They have been checking them for loopholes in the contract.")
		
		ANSWER("I am on my way.",53)
	NODE(53)
		SAY("Very well, don't forget to return these documents to me. The CityAdmin employee should have prepared everything for you.")
		STARTMISSION(3583)
		SETNEXTDIALOGSTATE(100)
		ENDDIALOG()
	NODE(54)
		SAY("Don't waste any time.")
		ENDDIALOG()		


------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 3
	NODE(101)
		SAY("Some independent real estate merchants are taking advantage of the opening we provide to sell their appartements at a higher price. That is of course an unbearable situation.")
		
		ANSWER("I can easily imagine that this is damaging for the business. But what can be done against it?",102)
	NODE(102)
		SAY("Diamond wants to interest those real estate dealers in Diamond. By doing so we would not only have more vendors and appartements but also get rid of some unwanted competition.")
		
		ANSWER("That sounds logical, though it might cost a lot. Is there a job for me related to this?",103)
		ANSWER("If this is supposed to be a mission for me, then I have to turn it down for the moment.",105)
	NODE(103)
		SAY("I was just about to offer you to try and convince one of those freelance vendors to join our ranks. The payment is subject to discussion.")
		
		ANSWER("I can give it a try at least. Usually those kind of freelancers are not easily convinced.",104)
	NODE(104)
		SAY("In case you should succeed Diamond will offer a bonus to you. Good luck. His name is Simmons and he can be found in Pepper Park 02. A meeting was arranged in one of the restaurants there. There are not too many of them, I am sure you will find your way.")
		STARTMISSION(3584)
		SETNEXTDIALOGSTATE(300)
		ENDDIALOG()
	NODE(105)
		SAY("It is your decision but these assignments won't be available forever.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 4
	NODE(151)

		SAY("He didn't say anything about that. But he specifically asked for you and was convinced that he could do something against the Black Dragon. And those bastards are giving us a lot of trouble recently. He needs your help, though. Seeing that he joined us because of your influence you did earn the bonus for convincing him. It is 8000 Credits, you'll get it once you completed this assignment. But don't waste your time, you can find him in the Pepper Park 02 area again.")
		STARTMISSION(3585)
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()

	NODE(152)
		SAY("It is your decision. Be sure to check back once you changed your mind.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 5
NODE(201)
		SAY("Then you are one of the few lucky guys that have not been affected by these incidents. The Black Dragon are trying to force our clients away. They are using a mixture of Violence and Threats. And we now know their overall tactics.")
		
		ANSWER("Why then is it so difficult to prevent all this?",202)

	NODE(202)
		SAY("The Twilight Guardian are the ones who do the dirty work for the Dragons. This is also the reason why they never can be tracked to the Dragons. We have no hard evidence for this and the NCPD is doing the best they can in any case.")
		
		ANSWER("I hope we did not loose too many people.",203)
	NODE(203)
		SAY("That is our very real problem right now. To be honest, everything around here is on the verge of breaking down. Our clients are running away and nobody wants to buy Diamond estates any more. I don't want to alarm you but this is exactly the reason why we need every help we can get.")
		
		ANSWER("But what about the contract with the CityMercs?",204)
	NODE(204)
		SAY("If that contract would already be in effect the situation would be totally different. But because of a clause in the contract it cannot take effect yet. That's why we are mobilizing all forces at our disposal.")

		ANSWER("It seems I should really do my part in preserving Diamond as we know it. What will be my job then?",205)
		
	NODE(205)
		SAY("You should visit Foster in ViaRosso 03. I have a note here that you already dealt with that person once, right?")

		ANSWER("Yes, but he already quit his contract with Diamond. He had some really bad experiences.",206)
		
	NODE(206)
		SAY("Well, well... good that you already know him. We want you to give him an incentive to have a contract with us again. Do, whatever you deem necessary. Remember that Diamond really needs you.")

		STARTMISSION(3586)
		SETNEXTDIALOGSTATE(300)
		ENDDIALOG()
	NODE(207)
		SAY("Return once you believe you can muster enough interest for Diamond again. I wonder where you have lost your dedication.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 6
	NODE(251)
		SAY("I didn't expect anything less of you. First you should bring these documents to your Tsunami contact person. I hope you still know who he is?")

		ANSWER("Certainly, I met him in the Industrial sector 02. I am on my way.",252)
	NODE(252)
		GIVEITEM(9353)
--Dokumente
		SAY("Then keep in mind that your task will not only be the delivery. You will be directly involved as our inside person on the job. You are to help until the CityMercs contract kicks in. Diamond hopes you will succeed.")

		STARTMISSION(3587)
		SETNEXTDIALOGSTATE(300)
		ENDDIALOG()

----------------------------------------------------
----------------------------------------------------
--FRAKTIONSWECHSEL
	NODE(300)
		SAY("I am rather busy. Please move on.")
		ENDDIALOG()

	NODE(301)
		GETFACTIONSYMPATHY(2)
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
			CHANGEFACTION(2)
			SAY("Welcome with Diamond")
			ENDDIALOG()
		end

end