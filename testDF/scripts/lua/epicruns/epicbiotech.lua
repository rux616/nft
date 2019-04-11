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
--EPICRUNFINISHED(factionid, epicmissionid)
--STARTMISSION( missionid aus missionbase def)

	CANDOEPICRUN(5,0)
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
			CANDOEPICRUN(5,0)
			if(result==-2)then
				SAY("I am sorry but you have already done everything for us that we can offer. You still could support us by founding a clan yourself.")
				ENDDIALOG()
			else
-- Abfrage ob Skillevel stimmt und dann ob die Mission schon erfüllt wurde
				CANDOEPICRUN(5,0)
				if(result==-5)then
					SAY("You are not yet experienced enough, come back after you have trained some more. (next mission at level 10)")
					ENDDIALOG()
				else
						CANDOEPICRUN(5,0)
				        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------2
						CANDOEPICRUN(5,1)
						if(result==-5)then
							SAY("You are not yet experienced enough, come back after you have trained some more. (next mission at level 20)")
							ENDDIALOG()
						else
								CANDOEPICRUN(5,1)
				        		if(result==-4)then
-------------------------------------------------------------------------------------------------------------------3
						CANDOEPICRUN(5,2)
						if(result==-5)then
							SAY("You are not yet experienced enough, come back after you have trained some more. (next mission at level 30)")
							ENDDIALOG()
						else
								CANDOEPICRUN(5,2)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------4
						CANDOEPICRUN(5,3)
						if(result==-5)then
							SAY("You are not yet experienced enough, come back after you have trained some more. (next mission at level 35)")
							ENDDIALOG()
						else
								CANDOEPICRUN(5,3)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------5
						CANDOEPICRUN(5,4)
						if(result==-5)then
							SAY("You are not yet experienced enough, come back after you have trained some more. (next mission at level 40)")
							ENDDIALOG()
						else
								CANDOEPICRUN(5,4)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------6
						CANDOEPICRUN(5,5)
				if(result==-5)then
					SAY("You are not yet experienced enough, come back after you have trained some more. (next mission at level 45)")
					ENDDIALOG()
				else
								CANDOEPICRUN(5,5)
				        if(result==-4)then
						SAY("I am sorry but you have already done everything for us that we can offer. You still could support us by founding a clan yourself.")
						ENDDIALOG()
					else
--Mission 6 wird hier gestartet
		SAY("Go and see McMillan. He sounded very excited when he asked for you.")
		STARTMISSION(3557)
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------6
					else
--Mission 5 wird hier gestartet
		SAY("It is not acceptable any longer. Every day there is a new flood of rumours reaching the net, trying to disrupt BioTech as a whole. But we can do nothing against so many individual hackers.")
		
		ANSWER("CONTINUE",201)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------5
					else
--Mission 4 wird hier gestartet
		SAY("There are bad news. The amount of compromising material has dramatically increased. To be honest, some employees have already been strongly affected. It is about high time that all this ends soon.")
		
		ANSWER("CONTINUE",151)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------4
					else
--Mission 3 wird hier gestartet
		SAY("BioTech would like to offer you a new task. It is related to the content of the datacube that you organised for us. It was quite revealing. It contained several code names of persons who apparently received information regarding BioTech directly from BioTech sources.")
		
		ANSWER("That means there is somebody who gives away all these secrets? I thought these rumours were only that, simple rumours. I would not have thought they were true.",101)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------3
							else
--Mission 2 wird hier gestartet
		SAY("I have already heard about your ambitious endeavours to get more renown within BioTech. Well, it seems to work for the moment. I was instructed to offer you another task. You might remember the rumours about BioTech that abounded in Neocron.")
		
		ANSWER("CONTINUE",51)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------2
					else
--Mission 1 wird hier gestartet
		SAY("Ahh, I was already informed that new runners would join BioTech. We always welcome worthy additions to our own ranks.")
		
		ANSWER("CONTINUE",11)
						
					end
				end			
			end
		end

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 1
	NODE(11)
		SAY("Normal procedures would demand that the Director of Operations welcomes you personally but he is currently engaged in an important meeting with Seymour Jordan. You will understand that he cannot just cancel that meeting.")
		
		ANSWER("That is a pity but I do understand it. What kind of tasks await me, now that I am working for BioTech?",12)
	NODE(12)
		SAY("That is the way we like it, concise and straight to the point. You will already have received your appartement key from BioTech. In exchange we are only expecting loyalty and that you take care of a select number of special assignments. But more about that later. You have certainly chosen the right faction with BioTech, congratulations.")
		
		ANSWER("CONTINUE",13)
	NODE(13)
		SAY("First I should maybe tell you something about the company background. BioTech was involved in many different projects since its founding in the year 2638. Currently the focus is almost exclusively on the development and production of various implants.")
		
		ANSWER("CONTINUE",14)
	NODE(14)
		SAY("This does not mean that BioTech is a stranger to spaceship construction, medicine or weapons. To be precise, the first interstellar spaceship named the Avenger was developed and built by BioTech.")
		
		ANSWER("Yes, I have heard about that.",15)
	NODE(15)
		SAY("Back to the present. We had a request from the CityAdmin for an interview with one of our latest additions to the crew. They are doing a survey and need to ask a few questions. This would probably not take very long and BioTech would even be prepared to give you a small compensation...")
		
		ANSWER("That sounds good, I believe I can do that.",16)
		ANSWER("I am sorry but that won't be possible for the moment.",17)
	NODE(16)
		SAY("Excellent. You can find the CityAdmin employee in the Plaza district 02. A meeting was arranged in one of the local restaurants. Please return here once you are finished to give me a small report.")
		STARTMISSION(3552)
		SETNEXTDIALOGSTATE(100)
		ENDDIALOG()
		
	NODE(17)
		SAY("You can always change your mind if you want to.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 2
	NODE(51)
		SAY("Well, this time they also appeared in the network and they raise heavy accusations against two BioTech directors. It is unknown, where these runours originate from and that is the reason why we need more information.")
		
		ANSWER("I understand. That is my task then, right?",52)
		ANSWER("If this is supposed to be a mission I will have to deny it, I am sorry.",55)
	NODE(52)
		SAY("Yes, not alone though. We already have sent out several Runners with the order to investigate into the rumours. And you will have exactly the same order. These informations are naturally not easy to acquire and that is why you need to utilize rather uncommon methods.")
		
		ANSWER("CONTINUE",53)
	NODE(53)
		SAY("There is a Tsunami contact person that agreed to give us some information. But it is not certain if the Tsunami know anything about it at all. If you get your hands on something interesting, best report it to McMillan. He is one of the directors of operation here at BioTech and was informed about everything.")
		
		ANSWER("Ok, I have understood everything so far. Where exactly can I find this Tsunami contact?",54)
	NODE(54)
		SAY("He is in the Industrial district 02. But be careful out there since it is pretty dangerous. The name of the contact is Hontoka.")
		STARTMISSION(3553)
		SETNEXTDIALOGSTATE(6)
		ENDDIALOG()		

	NODE(55)
		SAY("Rethink your decision. You can always come back for the mission.")
		ENDDIALOG()
		
	NODE(56)
		SAY("Meet up with Hontoka in the Industrial district 02.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 3
	NODE(101)
		SAY("Those stories are not true! They have been strongly modified to inflict more damage to BioTech.")
		
		ANSWER("CONTINUE",102)
	NODE(102)
		SAY("But we still have not found a proper trail to track down a specific person. That means that we do not know who gives all these informations away. Especially since it probably is not only one person.")
		
		ANSWER("What can we do against that?",103)
		ANSWER("I cannot accept the task at the moment.",107)
	NODE(103)
		SAY("It is a very complex procedure but the plan is to closely follow every movement of the persons in question. That is were we need your help. BioTech would like you to meet a certain Andressa in the Chez Sypher restaurant where she can be found very often. She works in our research lab and some of her activities have been quite suspicious to say the least.")
		
		ANSWER("No problem but what am I supposed to do then? Should I just ask her if she is giving away compromising information about BioTech?",104)
	NODE(104)
		SAY("No, that would be foolish. You should try to convince her to give away  vital information to you. Just offer 50000 Credits as reward for example. I mean, you don't really have to pay it after all.")
		
		ANSWER("What happens to her if she gives away that information?",105)
	NODE(105)
		SAY("I believe with all the fuss that happened lately she will just be stripped of her ranks. To fire her would only cause unnecessary attention to these cases.")
		
		ANSWER("Alright, I'll do it.",106)
	NODE(106)
		SAY("She can be found in this district. She likes to spend her lunch break at Chez Sypher. Report everything to Mr McMillan back here. ")
		STARTMISSION(3554)
		SETNEXTDIALOGSTATE(8)
		ENDDIALOG()
		
	NODE(107)
		SAY("That's a pity. Make sure to call us if you decide to do it after all.")
		ENDDIALOG()
		
	NODE(108)
		SAY("I thought you already have your assignment?!Visit Andressa right on the backside of the BioTech building.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 4
	NODE(151)
		SAY("The owner of the networking station, a certain Beckert, did send us information. We now have a list of people who rented that station. That is why we need you for another assignment. If you are ready, that is.")
		
		ANSWER("Of course, after all I am a member of BioTech just as you are and it is just as well my business.",152)
		ANSWER("I don't think I can do this job.",156)

	NODE(152)
		SAY("I am glad to hear that. The list highlights one person who had access to the network station at that specific time. It is a certain Grand who can be found in Outzone 01.")
		
		ANSWER("CONTINUE",153)
	NODE(153)
		SAY("We have contacted CityAdmin and it appears that he is well known to the authorities as a prominent hacker. He doesn't belong to any faction and would do everything for money.")
		
		ANSWER("That does not sound very comforting. How does that help us?",154)

	NODE(154)
		SAY("You have to find a way to force him to reveal who is behind all this. And he can possibly undo what damage he already did.")
		
		ANSWER("I am already on the way. What methods should I use?",155)
		ANSWER("What should I do if I have to kill someone to complete the mission?",158)
	NODE(155)
		SAY("That is up to you. Use all methods that you have at your disposal. After that you can inform McMillan about the progress of the current situation.")
		STARTMISSION(3555)
		SETNEXTDIALOGSTATE(7)
		ENDDIALOG()
		

	NODE(156)
		SAY("Regrettable. Especially this job would have been of a special importance. But I don't want to force you.")
		ENDDIALOG()
		
	NODE(157)
		SAY("Good luck with your task. Did you already visit that Hacker in the Outzone 01?")
		ENDDIALOG()

	NODE(158)
		SAY("If you kill somebody take care that they should NOT be employees, guards or official representatives. Only Runner.")
		
		ANSWER("And I can really flatline any Runner I want to?",159)
	NODE(159)
		SAY("No, only if your target is about your level or higher. Otherwise the kill cannot be accepted. Good luck with your mission. Use whatever means you think are necessary.")
		STARTMISSION(3555)
		SETNEXTDIALOGSTATE(7)
		
		ENDDIALOG()

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 5
	NODE(201)
		SAY("BioTech decided to determine who is pulling the strings in this. Once we found him these rumours will soon stop flooding the network. A creature without its head is a dead creature, it was always like that and it will always be like that.")
		
		ANSWER("I'll gladly try my best for BioTech. Where do I start?",202)
		ANSWER("If you think about me, I cannot do it at the moment...",205)
	NODE(202)
		SAY("It seems that this hacker, Grand is his name I think, is suited for what we have in mind. Visit him again. Motivate him to find out who started all this. Who has declared open war on us.")
		
		ANSWER("I believe that will be a piece of cake.",203)
	NODE(203)
		SAY("You can offer him a small sum of 10000 Credits as compensation. It could help to support his motivation. Of course this will be sponsored by the company. Good luck.")
		
		ANSWER("CONTINUE",204)
	NODE(204)
		SAY("If the hacker should be succesful be sure to meet McMillan as well. He will discuss the next steps with you.")
		STARTMISSION(3556)
		SETNEXTDIALOGSTATE(6)
		ENDDIALOG()
		
	NODE(205)
		SAY("But it would have been very important to Biotech. Well, whatever you mean. But you are letting BioTech down this time, really.")
		ENDDIALOG()
		
	NODE(206)
		SAY("Did you already visit Grand in the Outzone 01?")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 6


----------------------------------------------------
----------------------------------------------------
--FRAKTIONSWECHSEL
	NODE(300)
		SAY("I am rather busy. Please move on.")
		ENDDIALOG()

	NODE(301)
		GETFACTIONSYMPATHY(5)
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
			CHANGEFACTION(5)
			SAY("Welcome with BioTech.")
			ENDDIALOG()
		end
end
