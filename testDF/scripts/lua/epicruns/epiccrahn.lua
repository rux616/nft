--new
--Crahn
function DIALOG()
NODE(0)
--CANDOEPICRUN(10, epicmissionid)
--EPICMISSIONERROR_WRONGFACTION		-1
--EPICMISSIONERROR_FULLYACCOMPLISHED	-2
--EPICMISSIONERROR_MISSIONMISSIONS		-3
--EPICMISSIONERROR_ALREADYFINISHED		-4
--EPICMISSIONERROR_WRONGSKILLLEVEL		-5
--EPICMISSIONERROR_MISSIONRUNNING		-6
--EPICRUNFINISHED(10, epicmissionid)
--STARTMISSION( missionid aus missionbase def)

	CANDOEPICRUN(10,0)
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
			CANDOEPICRUN(10,0)
			if(result==-2)then
				SAY("I am sorry but the only way you can help us now is to found a clan and supprt the brotherhood that way.")
				ENDDIALOG()
			else
-- Abfrage ob Skillevel stimmt und dann ob die Mission schon erfüllt wurde
				CANDOEPICRUN(10,0)
				if(result==-5)then
					SAY("You are not experienced enough, disciple.(next mission at level 10)")
					ENDDIALOG()
				else
						CANDOEPICRUN(10,0)
				        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------2
						CANDOEPICRUN(10,1)
						if(result==-5)then
							SAY("You are not experienced enough, disciple.(next mission at level 20)")
							ENDDIALOG()
						else
								CANDOEPICRUN(10,1)
				        		if(result==-4)then
-------------------------------------------------------------------------------------------------------------------3
						CANDOEPICRUN(10,2)
						if(result==-5)then
							SAY("You are not experienced enough, disciple.(next mission at level 30)")
							ENDDIALOG()
						else
								CANDOEPICRUN(10,2)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------4
						CANDOEPICRUN(10,3)
						if(result==-5)then
							SAY("You are not experienced enough, disciple.(next mission at level 35)")
							ENDDIALOG()
						else
								CANDOEPICRUN(10,3)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------5
						CANDOEPICRUN(10,4)
						if(result==-5)then
							SAY("You are not experienced enough, disciple.(next mission at level 40)")
							ENDDIALOG()
						else
								CANDOEPICRUN(10,4)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------6
						CANDOEPICRUN(10,5)
				if(result==-5)then
					SAY("You are not experienced enough, disciple.(next mission at level 45)")
					ENDDIALOG()
				else
								CANDOEPICRUN(10,5)
				        if(result==-4)then
						SAY("I am sorry but the only way you can help us now is to found a clan and supprt the brotherhood that way.")
						ENDDIALOG()
					else
--Mission 6 wird hier gestartet
		SAY("Welcome oh father of the Black Circle. Father Agnus has informed me that you have five Tacholytium relics in your possession by now.")

		ANSWER("It was only possible through the help I received from father Manus and father Agnus.",251)

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------6
					else
--Mission 5 wird hier gestartet
		SAY("Welcome, brother. The council contacted me and asked how I would evaluate you. I have heard that father Agnus has suggested you for the black circle. Judging from your heoric deeds I would not be surprised if you would be accepted into this circle soon.")

		ANSWER("Thank you for your praise, brother. It is true that the light of Crahn shone on me the past few months.",201)

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------5
					else
--Mission 4 wird hier gestartet
		SAY("Father Manus was not able to find out anything new about those relics of yours. Unfortunately we only have a limited library right here, that's why he decided to ask father Agnus's help. Agnus is one of the few loyal Crahn followers who decided to stay in the old monastery in the Outzone near Neocron. After he compared the relics with some of our oldest recorded inscriptions he was able to determine something new about it. He was very excited when he told me about it. But you better speak to him yourself. Go to the old abbey in the Outzone and meet him there.")

		ANSWER("Many thanks for this good message. I am already on my way.",151)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------4
					else
--Mission 3 wird hier gestartet
		SAY("You are slowly becoming one of the most indispensable members of our order, young monk. The council has decided to officially accept you into the blue circle of our brotherhood.")

		ANSWER("Thank you, sister. I will fulfill my duties with the help of Crahn.",101)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------3
							else
--Mission 2 wird hier gestartet
		SAY("May Crahn bless you, young monk. As I can see you have trained thoroughly... the order is ready to accept you into a higher circle. I believe the time has come to charge you with another new important task. Are you ready for this new challenge?")

		ANSWER("Yes sister. It is still my wish to serve Crahn as best as I can.",51)
		ANSWER("Please give me some more time, father.",60)

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------2
					else
--Mission 1 wird hier gestartet
		SAY("As I can see you have worked hard to prove your loyalty to our order. In the name of the holy Crahn I hereby thank you for your dedication. If you want to further serve the order we would now be ready to assign more complex missions to you. Are you ready for this challenge?")

		ANSWER("Yes, sister. I wholly submit my body and my soul to the wellfare of Crahn.",11)
		ANSWER("I am sorry but I am not yet ready for such an assignment.",19)

						
					end
				end			
			end
		end

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Crahn 1
	NODE(11)
		SAY("Then let us proceed... Mark Cole, an ex member of the Fallen Angels has informed us that he is reputedly having a very valuable object in his possession. He did not say what kind of object he was referring to. The order is not sure whether or not Cole is trustworthy and we do not want that Cole develops an aloofness.")

		ANSWER("He is not even one of us, why would any father stoop as low as to visit him?",12)
	NODE(12)		
		SAY("But since we still need to find out about this object I ask you to get it from Cole and deliver it to Father Manus right here in the cathedral of Crahn. So that Father Manus will be able to examine it more closely.")

		ANSWER("Who exactly is Mark Cole and who are the Fallen Angels?",13)
	NODE(13)
		SAY("Cole did work for the Fallen Angels a long time. The Fallen Angels are an association of scientists who used to live exiled in the Wastelands. Their base of operations, a Mekka of sin, was Tech Haven. Of course, now they chose to get their share of what remains of the Dome of York. The relationship between the brotherhood and the Fallen Angels is stained because of some unfortunate events and we are very interested in cooperation with former Tech Haven scientists now.")

		ANSWER("Doesn't Cole work for them any longer? What happened?",14) 
	NODE(14)
		SAY("In contrary to what he said, Cole was banished from the ranks of the Fallen Angels after he tried to sell secret science projects of the Angels.")

		ANSWER("Where can I find Cole exactly?",15)
	NODE(15)
		SAY("Cole waits in Dome of York for you. There is an area for trade with all kinds of weaponry within the dome. Nobody laid claim to it so far because it is beneficial for everyone. You will find that sly Cole there. Sector 06.")

		ANSWER("CONTINUE",16)
	NODE(16) 
		SAY("Afterwards, give Father Manus my best regards. His work is an inspiration for all of us. Would you like to accept this assignment?")

		ANSWER("Yes, ... I will not disappoint Crahn.",17)
	NODE(17)
		SAY("May your mission be guarded by the holy Crahn.")
		STARTMISSION(3540)
		SETNEXTDIALOGSTATE(150)

		ENDDIALOG()


	NODE(18)
		SAY("May I point you to your assignment? The mission is not yet accomplished. Mark can be found in sector 06. And don't forget that Father Manus is waiting for you as well.")
		ENDDIALOG()
	NODE(19)
		SAY("Return here once you feel that you could stand up to the challenge.")
		ENDDIALOG()

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Crahn 2
	NODE(51)
		SAY("Ok then... in the old days when Shirkan and Neopha Kansil still preached the word of Crahn in the streets of Neocron and the city was under the control of our fathers a small upstart group of scientists  managed to escape our grasp.")

		ANSWER("I think I read about this somewhere.",52)
	NODE(52)
		SAY("As you know, I am speaking about the Fallen Angels. The very group that journeyed into the Wastelands in the year of 2633 in order to errect the Tech Haven laboratory there.")

		ANSWER("Yes father, I have thoroughly studied the history of Neocron and of our order.",53)
	NODE(53)
		SAY("The history books do not tell the whole truth, young monk. In the eyes of a Neocron citizen the Fallen Angels are a harmless group of scientists... but we PSI Monks know the truth.")

		ANSWER("CONTINUE",54)
	NODE(54)
		SAY("The Fallen Angels are child murderers and thieves. Within the confines of secret laboratories they conduct abhorrent experiments on humans, the details of which I will spare you.")

		ANSWER("But I thought the Fallen Angels are solely for the good of humanity...",55)
	NODE(55)
		SAY("Quiet! ... Never believe the lying propaganda of the Angels. Only the Brotherhood of Crahn knows the way of the light... It is evil enough that the Fallen Angels conduct their dark experiments before the very eyes of the public.")

		ANSWER("So they are only pretending?",56)
	NODE(56)
		SAY("... but the worst for our order is that their work is based on our research. The Fallen Angels would never have developed the NeuroLink System if their leader Thomas Cooper would not have taken a generous helping of our research documents.")

		ANSWER("Oh sister, tell me how I can help the order in this.",57)

	NODE(57)
		SAY("Well, we will have an eye for an eye. Our high brother Gabriel succeeded to infiltrate the Fallen Angels and to be recognized as one of them after years of meticulous planning. He worked for them the last two years in Tech Haven and has become a trusted right hand of Sylvia Bennet.")

		ANSWER("I understand that I am supposed to go and meet him. Where can I find them?",58)
	NODE(58)
		SAY("He should already have returned from the Angels, meet him at the Guardian Gate entrance to Dome of York. He will hand a holodisc over to you which contains important research data about the Fallen Angels. Father Manus will be waiting for you to deliver the holodisc to him. He should be in the Crahn Cathedral.")

		ANSWER("Thus it shall be.",59)
	NODE(59)
		SAY("Take care not to draw any attention. There could be Fallen Angels in the vicinity. They must not see that brother Gabriel has contact to us. Walk in the light of Crahn.")
		STARTMISSION(3541)
		SETNEXTDIALOGSTATE(11)

		ENDDIALOG()

	NODE(60)
		SAY("You should better prepare yourself and come back later.")
		ENDDIALOG()

	NODE(61)
		SAY("This task is not solving itself, you know? You were supposed to meet Gabriel in Sector 01 and get the item you get to father Manus at our cathedral.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Crahn 3
	NODE(101)
		SAY("This means that you will be charged with missions now that are regarding internal affairs of the order. You have to treat those missions with confidentiality.")

		ANSWER("I feel honoured, sister. How can I serve the order this time?",102)
		ANSWER("I don't yet feel that I am enlightened enough, father.",106)
	NODE(102)
		SAY("Our friend, Mark Cole, has informed the council that he supposedly has information about a secret meeting between the Fallen Angels and the representatives of the Anarchy Breed.")

		ANSWER("A secret meaning? What can this mean?",103)
	NODE(103)
		SAY("There have been rumours about an alliance between those two factions for a long time, but until now we could not get any details about the state of their negotiations. Meet Cole and listen to what he has to say.")

		ANSWER("Where do I meet Cole?",104)
	NODE(104)
		SAY("Where should this good-for-nothing person be? He is still in the vicinity of the weapon market in sector 06 right here in the Dome and tries to sell his supposedly important information to the highest bidder.")

		ANSWER("Very well.",105)
	NODE(105)
		SAY("But be careful... you know, that he is an unpleasent fellow. May Crahn bless your mission.")
		STARTMISSION(3542)

		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()
		
	NODE(106)
		SAY("Then go forth and work with that goal in mind. If you feel prepared we will offer you the same mission once more.")

		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Crahn 4
	NODE(151)
		SAY("May Crahn bless you.")
		STARTMISSION(3543)
		ENDDIALOG()		
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Crahn 5
	NODE(201)
		SAY("It is told like that in the whole order. Well... if you want to be accepted into the black circle then you have to complete a trial from a father of the black circle.")

		ANSWER("I am ready for this trial. Tell me more.",202)
		ANSWER("I don't feel that I am worthy enough.",204)
	NODE(202)
		SAY("The PSI monks of the black circle excell in their wisdom but also especially in their power and strength. A monk of the black circle must be able to survive even in the darkest and most dangerous areas in the Wastelands.")

		ANSWER("CONTINUE",203)
	NODE(203)
		SAY("Go to father Morpheus, you can find him in the abandoned ruins of Crest Village. He will give you your task and send you on your pilgrimage. May Crahn bless your trial.")
		STARTMISSION(3544)
		SETNEXTDIALOGSTATE(5)
		ENDDIALOG()
		
	NODE(204)
		SAY("Then you should better prepare yourself.")
		ENDDIALOG()
	NODE(205)
		SAY("You should talk to father Morpheus in the Crest village.")
		ENDDIALOG()	
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Crahn 6
	NODE(251)
		SAY("He is certain that the old Kev Critter still possesses a construction plan which should allow you to assemble the PSI amplifier out of the fragments.")

		ANSWER("These are good news. Where can I find this Kev Critter?",252)
	NODE(252)
		SAY("Kev is running a second hand metal shop in the Wastelands at the Blakkmist Creek. Officially his business is a garbage dump. You can meet him at the Blakkmist garbage dump.")

		ANSWER("Is there anything else you can tell me about him?",253)
	NODE(253)
		SAY("Critter is a foolish old man who can turn into a clever fox if he smells a good deal.")

		ANSWER("He wouldn't be the first.",254)
	NODE(254)
		SAY("So be careful and don't let him see how much you want the construction plan. You will only unnecessarily raise the price for it. Father Agnus will certainly help you once you have the blueprint.")

		ANSWER("Thank you, I will heed your advice. May Crahn be with you.",255)
	NODE(255)
		SAY("Thank you father. Good luck with your mission.")
		STARTMISSION(3545)
		SETNEXTDIALOGSTATE(6)
		ENDDIALOG()	
		
	NODE(256)
		SAY("Didn't you want to visit Kev Critter at the Blakkmist garbage dump?")

		ENDDIALOG()	



----------------------------------------------------
----------------------------------------------------
--FRAKTIONSWECHSEL
	NODE(300)
		SAY("I am rather busy. Please move on.")
		ENDDIALOG()

	NODE(301)
		GETFACTIONSYMPATHY(10)
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
			CHANGEFACTION(10)
			SAY("Welcome in the ranks of the Brotherhood.")
			ENDDIALOG()
		end

end