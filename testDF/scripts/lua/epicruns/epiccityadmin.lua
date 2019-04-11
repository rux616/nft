--new
--CityAdmin

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

	CANDOEPICRUN(1,0)
-- Fraktion wird überprüft
		if(result==-1)then 
			SAY("I am sorry but you don't belong to our faction. Please don't waste my time. Unless you plan to join our faction?!")
			
			ANSWER("That's why I am here. I would like to join your faction.",301)
			ANSWER("I'm not interested. Goodbye.",300)
		else
-- Alle Missionen erfüllt? wird geprüft
			CANDOEPICRUN(1,0)
			if(result==-2)then
				SAY("You have already done more than enough for the CityAdmin. But you could still found a clan and support us with it.")
				ENDDIALOG()
			else
-- Abfrage ob Skillevel stimmt und dann ob die Mission schon erfüllt wurde
				CANDOEPICRUN(1,0)
				if(result==-5)then
					SAY("I fear you are not qualified enough, return once you have acquired more experience. (next mission at level 10)")
					ENDDIALOG()
				else
						CANDOEPICRUN(1,0)
				        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------2
						CANDOEPICRUN(1,1)
						if(result==-5)then
							SAY("I fear you are not qualified enough, return once you have acquired more experience. (next mission at level 20)")
							ENDDIALOG()
						else
								CANDOEPICRUN(1,1)
				        		if(result==-4)then
-------------------------------------------------------------------------------------------------------------------3
						CANDOEPICRUN(1,2)
						if(result==-5)then
							SAY("I fear you are not qualified enough, return once you have acquired more experience. (next mission at level 30)")
							ENDDIALOG()
						else
								CANDOEPICRUN(1,2)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------4
						CANDOEPICRUN(1,3)
						if(result==-5)then
							SAY("I fear you are not qualified enough, return once you have acquired more experience. (next mission at level 35)")
							ENDDIALOG()
						else
								CANDOEPICRUN(1,3)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------5
						CANDOEPICRUN(1,4)
						if(result==-5)then
							SAY("I fear you are not qualified enough, return once you have acquired more experience. (next mission at level 40)")
							ENDDIALOG()
						else
								CANDOEPICRUN(1,4)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------6
						CANDOEPICRUN(1,5)
				if(result==-5)then
					SAY("I fear you are not qualified enough, return once you have acquired more experience. (next mission at level 45)")
					ENDDIALOG()
				else
								CANDOEPICRUN(1,5)
				        if(result==-4)then
						SAY("You have already done more than enough for the CityAdmin. But you could still found a clan and support us with it.")
						ENDDIALOG()
					else
--Mission 6 wird hier gestartet
	SAY("Those investigations seem to take longer than you originally planned, don't they? At least there are no new murders to report at the moment. Keep on top of it, though.")
	
	ANSWER("Don't worry, I will determine the exact position of the stolen CopBot.",251)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------6
					else
--Mission 5 wird hier gestartet
	SAY("I have a confirmation from the NCPD now. There are only two possible target persons that could have been the mysterious hackers. They have been determined with the help of your list.")
	
	ANSWER("CONTINUE",201)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------5
					else
--Mission 4 wird hier gestartet
	SAY("A problem surfaced that is directly related to you, I fear. A datacube was found, a datacube with propagande material from the Twilight Guardian.")
	
	ANSWER("CONTINUE",151)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------4
					else
--Mission 3 wird hier gestartet
	SAY("The NCPD still has all hands full closely investigating these murders. But there is still the safetey of Neocron that cannot be neglected.")
	
	ANSWER("CONTINUE",101)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------3
							else
--Mission 2 wird hier gestartet
	SAY("Something came up again. Do you remember the murder of Defries? Well, its seems that this was not supposed to be the end. There was another murder of a CityAdmin employee of a similar rank to Defries.")
	
	ANSWER("CONTINUE",51)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------2
					else
--Mission 1 wird hier gestartet
	SAY("Welcome to the CityAdmin. To join us was possibly the best choice you ever did. CityAdmin is the biggest official institution for the safety of the citizens of Neocron. And everything thanks to Lioon Reza.")
	
	ANSWER("Since I now belong to the CityAdmin I thought I could get some sort of employment.",11)

						
					end
				end			
			end
		end

------------------------------------------------------------------------------
------------------------------------------------------------------------------

NODE(11)
	SAY("I was just about to get there. As a loyal member of the CityAdmin it is expected of you that you accept certain paid assignments. You are free to accept these assignments but who would reject a request of the one institution that is responsible for the wellfare of every person in Neocron?")
	
	ANSWER("CONTINUE",12)
NODE(12)
	SAY("After all the CityAdmin is working for the citizens unlike the previous dictatorship of the psi monks. At that time every thought was controlled by them and the people lived in virtual slavery. Many people forget who freed them from all that.")
	
	ANSWER("But is it that different today? I mean, you can be executed for uttering the wrong word.",13)

NODE(13)
	SAY("Don't continue. I'll give you a good advice since you are new here. There are no rumours about the CityAdmin, you either accept it or you don't. This is especially true about Reza. If you don't heed my warning you might be punished with death rather sooner than later. And all that just because you could not keep your mouth shut.")
	
	ANSWER("I understand. I will consider your advice. Then tell me what is important about the CityAdmin?",14)
NODE(14)
	SAY("Well. As I have stated earlier, Reza has freed the people from the cruel dictatorship of the psi monks after more than one hundred years of rulership. That happened in the year 2724 as far as I recall. That was also the begin of a new era of freedom.")
	
	ANSWER("CONTINUE",15)
NODE(15)
	SAY("The psi monks owe it to the generosity of Lion Reza that they are still allowed to live in the city. Apart from that many new improvements were made so that the citizens would have an easier time. For example the law was simplified.")
	
	ANSWER("CONTINUE",16)
NODE(16)
	SAY("Nowadays everybody knows what he may or may not do. The success can be seen in Plaza or ViaRosso, there the criminality equals zero. ")
	
	ANSWER("CONTINUE",17)
NODE(17)
	SAY("And all of this despite the great difficulties after so many people left with the great trek in the search for Irata III. At that time criminality increased dramatically. It is only thanks to the CopBots  that there is still order within the city.")
	
	ANSWER("Do you know what happened to the people who joined the great trek? I mean after the contact to Irata III broke off?",18)
NODE(18)
	SAY("That is easy to answer. The great trek is a long way from reaching Irata II. The efforts of the CityAdmin is concentrated on the safety and wellfare of the citizens of Neocron.")
	
	ANSWER("CONTINUE",19)
NODE(19)
	SAY("But enough of those old stories. There is a delivery to be made to the NCPD. And once you are already there you might also be able to help the NCPD a little. Neocron is big and there is always plenty to do.")
	
	ANSWER("Good, I will deliver this package. What does it contain?",20)
	ANSWER("I don't think I am ready for that yet.",21)
NODE(20)
	GIVEITEM(9052)
	SAY("It contains some evidence in the form of drugs that are registered in connection with a crime. If you want to know more, I am sure you can get more information at the NCPD. Good luck with your first assignment for the CityAdmin.")
	STARTMISSION(3564)
	SETNEXTDIALOGSTATE(200)
	ENDDIALOG()
	
NODE(21)
	SAY("If you think so. Please return if you are ready.")
	ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
NODE(51)
	SAY("I hope this will not spread even further. In any case, the NCPD has allocated all available forces to the investigation of this case.")
	
	ANSWER("CONTINUE",52)
NODE(52)
	SAY("It does not seem that easy any longer to solve this mstery since all investigations usually stop in a dead end. Come on, it cannot be possible that there are so many enemies of the CityAdmin to justify such a lengthy investigation...")
	
	ANSWER("I believe you underestimate that.",53)
NODE(53)
	SAY("The main enemy is the Twilight Guardian. They constantly try to disrupt the authority of the CityAdmin, but that is nothing new. Apart from the Twilight Guardian there is only Crahn, Tsunami and the Black Dragon left.")
	
	ANSWER("CONTINUE",54)
NODE(54)
	SAY("But Tsunami and Black Dragon are too occupied with their own business and their rivalry. And Crahn is only a remnant of their broken government. They still mourn after their lost power.")
	
	ANSWER("But you underestimate the personal motivations that could lead people to despise the CityAdmin.",55)
NODE(55)
	SAY("I believe you are wrong there, the CityAdmin is fully supported by its citizens. Some citizens even control Neocron together with Reza. But that is not why I wanted to speak with you. The NCPD is very taxed at the moment.")
	
	ANSWER("CONTINUE",56)
NODE(56)
	SAY("That is why the CityAdmin decided to allow Runners to investigate into that as well and thus help the NCPD. Informations about various contacts have been forwarded to me and I have subsequently assigned the appropriate resulting missions to several Runners.")
	
	ANSWER("CONTINUE",57)
NODE(57)
	SAY("Unfortunately those Runners who volunteer for such a task or who are qualified enough are a rare breed. That is why I thought about you.")
	
	ANSWER("You are telling me that I am not qualified enough?! And now you are asking me because you have no other Runners left?!!",58)
NODE(58)
	SAY("My reasoning is not subject to a debate. Even if you do not seem to accept it, there are Runners that are better suited for such a job than you are. I did not want to express it in such a harsh manner, however.")
	
	ANSWER("CONTINUE",59)
NODE(59)
	SAY("If you decide not to follow up this assignment I will of course have to make a note in your file. You should have learned to control your temperament by now.")
	
	ANSWER("Alright, I am cool. What is the assignment all about?",60)
	ANSWER("I am not yet in the mood for another task.",63)
NODE(60)
	SAY("NCPD has informed us that a certain contact person of the Tsunamis with the name of Hontoka is interested in selling information to us. It could be important for the murder case but since the information is offered by a Tsunami I do not know how reliable it will be. I doubt it to be honest.")
	
	ANSWER("CONTINUE",61)
NODE(61)
	SAY("But the CityAdmin would not be where it is today if it did not take all possibilities into consideration. You can find him in the Industrial district 02. If you get enough information talk to officer Jenna afterwards. You have already met her, I assume?")
	STARTMISSION(3565)
	SETNEXTDIALOGSTATE(62)
	ENDDIALOG()	

NODE(62)
	SAY("Focus on the assignment. Hontoka is still waiting in Industrial 02 for you. If you have enough information go and visit the NCPD.")
	ENDDIALOG()

NODE(63)
	SAY("Why don't you rest a little and come back when you feel that you are ready for a new assignment.")
	ENDDIALOG()		
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 3
NODE(101)
	SAY("We decided to give an ambitious Runner a task that would suit him. I believe you already had the opportunity to have a closer look at the CopBots on the streets?")
	
	ANSWER("Yes, they are very impressive.",102)
NODE(102)
	SAY("Yes, but there is also something that many people do not know. There is a certain number of CopBots that vanish from the streets of Neocron each year. There are even reports about Amok CopBots in the Wastelands. CopBots that run crazy.")
	
	ANSWER("Unthinkable! What ever would happen if a CopBot freaked out on the streets of Neocron?",103)
NODE(103)
	SAY("Do not worry. The CopCot system is very effective in dealing with these issues. But there is also a different situation. Some CopBots are stolen before they are activated. That happens very rarely and usually it only takes hours to solve these crimes.")
	
	ANSWER("CONTINUE",104)
NODE(104)
	SAY("But... in this case it was only discovered that a CopBot was missing when it was supposed to be switched on. That happened about two month ago and there is not a single clue to its whereabouts.")
	
	ANSWER("How do you normally deal with these situations?",105)
NODE(105)
	SAY("There is a small radio probe that is hidden inside the CopBot. It sends out a signal to the HQ as soon as the CopBot is activated. But this time it has not been activated or the radio probe was removed.")
	
	ANSWER("CONTINUE",106)
NODE(106)
	SAY("If that is the case it must have been executed by some kind of hacking genius. Even our hackers can only do it with some special equipment.")
	
	ANSWER("Well, but where can you find such a hacker? ...maybe ...the Fallen Angels!!",107)
NODE(107)
	SAY("Yes, exactly, you have a keen mind. That is exactly what we need. Your assignment is to see a certain Elias in Tech Haven and to ask him about possible connections between the Fallen Agnels and the stolen CopBot.")
	
	ANSWER("Tell me more.",108)
	ANSWER("I am not yet ready for another task.",109)
NODE(108)
	SAY("Once you are done give officer Jenna a report of the situation. Thank you in advance from the CityAdmin. The Fallen Angels are neutral to us which means that they should cooperate.")
	STARTMISSION(3566)
	SETNEXTDIALOGSTATE(10)
	ENDDIALOG()	


NODE(109)
	SAY("Come back when you have prepared yourself.")
	ENDDIALOG()
	
NODE(110)
	SAY("I thought you wanted to investigate the case about the lost CopBot? You should visit Elias in Tech Haven and report any news to the NCPD.")
	
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 4
NODE(151)
	SAY("That fact alone would not be very exceptional. But this datacube has been tracked back to you. You know what that means.")
	
	ANSWER("But that cannot be! I would never...",152)
NODE(152)
	SAY("Calm down. I have not notified a CopBot yet, did I? But you will surely understand that something like that would result in the execution of the owner of that datacube?")
	
	ANSWER("CONTINUE",153)
NODE(153)
	SAY("Propaganda like that is prohibited within Neocron.")
	
	ANSWER("Yes but somebody must have set me up! I have only given one person a datacube recently. He must be the one who did it!!",154)
NODE(154)
	SAY("CityAdmin is fully aware of the fact that somebody could try and trick one of our employees. Standard procedur is to give the person in question a time limit to prove his innocence.")
	
	ANSWER("CONTINUE",155)
NODE(155)
	SAY("I know that you have really had some accomplishments recently and that's why I am willing to give you some extra time. You should start to collect evidence right now because you don't have an eternity left.")
	
	ANSWER("But how? I don't even know where I could start!",156)
NODE(156)
	SAY("You should start where you have lost that datacube or where you have given it away. Here is the datacube with the propaganda material.")
	
	ANSWER("It must have been that Hontoka guy in the Industrial district 02. I have given him a datacube.",157)
NODE(157)
	SAY("It's up to you now. CityAdmin can't afford to follow up every case like this one. If you cannot prove your innocence you are guilty.")
	
	ANSWER("CONTINUE",158)

--Spieler bekommt Datacube 9054
NODE(158)
	GIVEITEM(9054)
	SAY("Go and get some hard evidence or suffer the consequences.")
	STARTMISSION(3567)
	SETNEXTDIALOGSTATE(150)
	ENDDIALOG()
	
NODE(159)
	SAY("I fear you don't have enough time left for a break. But that is your choice.")
	ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 5
NODE(201)
	SAY("I suggest, since you have organised the list in the first place that you will also help to track down the hacker.")
	
	ANSWER("Very well, what I started I am going to finish.",202)
	ANSWER("I fear I am not ready yet for such an endeavour.",207)
NODE(202)
	SAY("Glad to hear that. CityAdmin depends on Runners with willpower like yours. You should talk with the contact person who gave you the list in the first place first. He might know even more about the individual persons since he compiled that list.")
	
	ANSWER("You mean this annoying Ethan Cole, am I right?",203)
NODE(203)
	SAY("Possible. Remember that this hacker will most likely not have worked alone. And I also have some bad news, I fear.")
	
	ANSWER("CONTINUE",204)
NODE(204)
	SAY("Another murder was committed since the last time. The investigations are thoroughly stuck even though every new trail is closely examined.")
	
	ANSWER("CONTINUE",205)
NODE(205)
	SAY("Maybe you should concentrate on finding this hacker and the stolen CopBot first. So, do not worry too much about the murders at the moment.")
	
	ANSWER("That's fine with me. Consider it done.",206)
NODE(206)
	SAY("Good luck.")
	STARTMISSION(3568)
	SETNEXTDIALOGSTATE(8)
	ENDDIALOG()
	
NODE(207)
	SAY("Don't rest too long, though, unless another murder happens.")
	
	ENDDIALOG()
NODE(208)
	SAY("Are you already following the hackers trail? You might want to visit that Cole in Outzone sector 01 again.")
	
	ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 6
NODE(251)
	SAY("Does that mean you have a clue?")
	
	ANSWER("I think I have. I still need to visit a ... ahem ... contact person who will reveal the exact location to me.",252)
NODE(252)
	SAY("Good luck.")
	STARTMISSION(3569)
	SETNEXTDIALOGSTATE(3)	
	ENDDIALOG()
NODE(253)
	SAY("I thought you have a clue that you can follow up. You should visit Jenna at the NCPD once you have more information.")
	
	ENDDIALOG()

----------------------------------------------------
----------------------------------------------------
--FRAKTIONSWECHSEL
	NODE(300)
		SAY("I am rather busy. Please move on.")
		ENDDIALOG()

	NODE(301)
		GETFACTIONSYMPATHY(1)
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
			CHANGEFACTION(1)
			SAY("Welcome at the CityAdmin.")
			ENDDIALOG()
		end

end