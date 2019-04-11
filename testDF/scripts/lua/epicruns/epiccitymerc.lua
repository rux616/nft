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

	CANDOEPICRUN(11,0)
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
			CANDOEPICRUN(11,0)
			if(result==-2)then
				SAY("Your only way to further support us is to found a clan of your own.")
				ENDDIALOG()
			else
-- Abfrage ob Skillevel stimmt und dann ob die Mission schon erfüllt wurde
				CANDOEPICRUN(11,0)
				if(result==-5)then
					SAY("Youre not good enough for this job, come back once you are better at what you do. (next mission at level 10)")
					ENDDIALOG()
				else
						CANDOEPICRUN(11,0)
				        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------2
						CANDOEPICRUN(11,1)
						if(result==-5)then
							SAY("Youre not good enough for this job, come back once you are better at what you do. (next mission at level 20)")
							ENDDIALOG()
						else
								CANDOEPICRUN(11,1)
				        		if(result==-4)then
-------------------------------------------------------------------------------------------------------------------3
						CANDOEPICRUN(11,2)
						if(result==-5)then
							SAY("Youre not good enough for this job, come back once you are better at what you do. (next mission at level 30)")
							ENDDIALOG()
						else
								CANDOEPICRUN(11,2)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------4
						CANDOEPICRUN(11,3)
						if(result==-5)then
							SAY("Youre not good enough for this job, come back once you are better at what you do. (next mission at level 35)")
							ENDDIALOG()
						else
								CANDOEPICRUN(11,3)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------5
						CANDOEPICRUN(11,4)
						if(result==-5)then
							SAY("Youre not good enough for this job, come back once you are better at what you do. (next mission at level 40)")
							ENDDIALOG()
						else
								CANDOEPICRUN(11,4)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------6
						CANDOEPICRUN(11,5)
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
		SAY("Glad to have you back. Marcel seems out of his mind. He wants to revolt against the Eye only because the Eye decided not to attack the Fallen Angels. He wants to split up the Mercs but he doesn't see that this might well be then end for all of us.")

		ANSWER("Yes, I have heard about that.",251)

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------6
					else
--Mission 5 wird hier gestartet
		SAY("This time it is for real, soldier. It seems as if all our old enemies have left their hiding holes only to give us some trouble. Of course this is unacceptable, something needs to be done.")

		ANSWER("Whoever threatens us should better prepare for retaliation. You can count on me.",201)
		ANSWER("I have something important to do first.",204)

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------5
					else
--Mission 4 wird hier gestartet
		SAY("I see, you have already achieved the rank of a White Ribbon. But I have already heard voices that say Marcel just made it too easy for you. I will not judge on this, though.")

		ANSWER("I feel prepared for a little action. Is there something for me to do?",151)
		ANSWER("I am sorry but I still have important tasks to do.",153)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------4
					else
--Mission 3 wird hier gestartet
		SAY("Ahh, a brand new Rookie. There is a job for you and I don't accept no no as an answer. You know what comes now?")

		ANSWER("I assume I will get my White Ribbon now?",101)


						
					end
				end	
-------------------------------------------------------------------------------------------------------------------3
							else
--Mission 2 wird hier gestartet
		SAY("This is no place for civilians.")

		ANSWER("I have decided to join the CityMercs. I have trained hard so that I can become a Rookie.",51)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------2
					else
--Mission 1 wird hier gestartet
		SAY("Welcome here with the CityMercs. I hope you have thrown all your memories of your life over board because you start from scratch with us. You will only meet people here who would sell their soul for what they do here. Old Cajun would reinforce that if he had enough time to welcome every new recruit. He is the leader here but everybody just calls him the Eye.")
		
		ANSWER("Understood. When do I start?",11)
		ANSWER("I don't feel prepared for such a big decision yet.",15)						
					end
				end			
			end
		end

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--CityMerc 1
	NODE(11)
		SAY("Don't be so hasty. There will still be some time until you may wear a red ribbon. We will see if you are suitable at all for us. Nowadays we almost only ever get recruits from the city. Slackers mostly. Usually they quit already after the first week.")

		ANSWER("Is life with the Mercs really that hard?",12)
	NODE(12)
		SAY("Don't worry, once you passed the first few weeks it will get much easier for you. And who knows, maybe you might live to wear one of the Black Ribbons.")

		ANSWER("Sorry, but that does not sound very reassuring.",13)
	NODE(13)
		SAY("Alright. Lets take it one little baby step at a time. Have a look around and think aobut it. Think about yourself and whether or not you want to spend your future with us. Oh, before I forget. You could do me a favor and deliver this package of medicine to the platoon leader Marcel. His guys have been wounded in their last mission. You can find him in sector 2 of the Military Base. Try one of the various storage halls. Don't ask me why but he seems to like it down there.")

		ANSWER("Very well, if I have to. What if I made up my mind?",14)
	NODE(14)
--PAKET MIT MEDIZIN
		GIVEITEM(9452)
		SAY("You can tell me about your decision once you finished the delivery. You can also ask any Recruitment Officer for news and missions. News cannot be kept secret here anyway, if you know what I mean.")

		STARTMISSION(3608)
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()
	NODE(15)

		SAY("It's your decision. Come back once you really mean it.")
		
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--CityMerc 2
	NODE(51)
		SAY("Really? Then I do hope that you know your way around weapons since there is no other way to become a Rookie than through weapons. I am sure you are already excited about this. Alright, I won't let you wait no longer.")
		
		ANSWER("Please carry on. I am ready.",52)
		ANSWER("I'd rather train a little more.",53)
	NODE(52)
		SAY("In order to become a Rookie you need to fight against three persons of our choosing. It took some time but we have some suitable enemies for you. The first one is Frederick, another Rookie wannabe like you. Then there is Claudia and Erik, they already are with us. You just need to beat one of them in a fair fight and you will be a CityMerc Rookie. Come back to me once you have won the fight.")
		STARTMISSION(3609)
		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()
	NODE(53)
		SAY("You should really think about what you want first.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--CityMerc 3
	NODE(101)
		SAY("You really think it's that easy? Let me tell you something. To receive a White Ribbon is an honour. As Rookie you do already belong to the CityMercs but with a White Ribbon you will truly belong to the family. It should really be worth something for you.")
		
		ANSWER("I will see what I can do. Where can I start?",102)
		ANSWER("I'd rather train some more. I don't feel properly prepared for the next step.",105)
	NODE(102)
		SAY("Very good. You better look for Mitchell first, he can be found just outside the Military Base in the Wastelands. His job is to observe the movements of Warbots and their likes and to warn us if there is any danger. Basically he is already a Black Ribbon but he seems to be more comfortable out there in the Wastelands.")

		ANSWER("I thought there were three missions where I am supposed to observe. What about the other ones?",103)
		
	NODE(103)
		SAY("I am sorry but i only have this one. But I can ask Marcel to organise something. It seems to me as if he really keeps an eye on you. He surely knows some other possibilities. Still, visit Mitchell first since I have already informed him about your visit.")
		STARTMISSION(3610)
		SETNEXTDIALOGSTATE(4)
		ENDDIALOG()
	NODE(104)
		SAY("You can find Mitchell outside the Military Base. Afterwards Marcel in sector 2 of the Military Base might have more for you.")
		ENDDIALOG()
	NODE(105)
		SAY("Nice, I assume you'll get back to me once you feel up to the challenge.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--CityMerc 4
	NODE(151)
		SAY("I think there is. Marcel has organised something. Tangent is the client I am lead to believe. You should find Gerome at the entrance to the Fallen Angel Tech Haven. He should be able to tell you more about it. I will contact the Black Ribbons and tell them that you are on that case.")

		STARTMISSION(3611)		
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(152)
		SAY("If you want this assignment then you better take care of it. Gerome can be found in front of one of the entrances to Tech Haven.")
		ENDDIALOG()
	NODE(153)
		SAY("It is your decision but since you are a CityMerc you also have a certain responsibility.")

		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--CityMerc 5
	NODE(201)
		SAY("Very good, good to hear. The problem is that they utilize some kind of Guerrilla tactics. Every time we concentrate our forces to give them a devastating blow their troops just melt away. That is why we will beat them with their own tactics, even if they might expect that.")

		ANSWER("That means small platoons attack their sensitive spots.",202)
		
	NODE(202)
		SAY("It seems you have made your homework. Basically yes, but we will only send one single soldier each and hit them where it hurts. Your task will be to kill two Runners each from the Twilight Guardian and the Black Dragon. That would give us enough time to plan a proper counter attack. Remember, you are not the only one that we will send out.")

		ANSWER("Consider it done. Something else I should keep in mind?",203)
	NODE(203)
		SAY("Yes, take care to only kill Runners of your strength. Ignore stronger ones and weaker enemies are not worthy of your attention. Once you have done that Marcel wanted to see you personally. Good luck, we count on you.")
		
		STARTMISSION(3612)
		SETNEXTDIALOGSTATE(5)
		ENDDIALOG()
	NODE(204)
		SAY("If it is really necessary. But be quick about it, our enemies will not rest just because of us.")
		ENDDIALOG()
	NODE(205)
		SAY("Don't forget, two Runners from Twilight Guardian and Black Dragon each. After that you should speak with Marcel.")

		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--CityMercs 6
	NODE(251)
		SAY("You could help us. We are supporting Cajun. Help us to clear up this mess. It is widely known that Marcel has closely followed your career. He trusts you to a certain degree but nobody else would even get close to him.")

		ANSWER("What do you expect from me?",252)
		ANSWER("I cannot change it now, sorry.",253)
	NODE(252)
		SAY("It sounds tough but you are supposed to challenge him to a duel. It is a tradition that he cannot possibly refuse. The winner can take over as the leader of the platoon after that. Eljena, a Red Ribbon of Marcels platoon agreed to help us. She has some important additional information for you. If you succeed come back here and I tell you how it continues. Good luck, if you should fail it could have tragical consequences.")
		STARTMISSION(3613)
		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()
	NODE(253)
		SAY("This is not the right time to turn your back on us. Think again.")
		ENDDIALOG()
----------------------------------------------------
----------------------------------------------------
--FRAKTIONSWECHSEL
	NODE(300)
		SAY("I am rather busy. Please move on.")
		ENDDIALOG()

	NODE(301)
		GETFACTIONSYMPATHY(11)
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
			CHANGEFACTION(11)
			SAY("The CityMercs welcome you.")
			ENDDIALOG()
		end
end