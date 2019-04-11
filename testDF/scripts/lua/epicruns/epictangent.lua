--new
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

	CANDOEPICRUN(4,0)
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
			CANDOEPICRUN(4,0)
			if(result==-2)then
				SAY("I am sorry but the only means of supporting us now  is to found a clan and support us with it.")
				ENDDIALOG()
			else
-- Abfrage ob Skillevel stimmt und dann ob die Mission schon erfüllt wurde
				CANDOEPICRUN(4,0)
				if(result==-5)then
					SAY("You are not experienced enough, return after you have trained some more. (next mission at level 10)")
					ENDDIALOG()
				else
						CANDOEPICRUN(4,0)
				        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------2
						CANDOEPICRUN(4,1)
						if(result==-5)then
							SAY("You are not experienced enough, return after you have trained some more. (next mission at level 20)")
							ENDDIALOG()
						else
								CANDOEPICRUN(4,1)
				        		if(result==-4)then
-------------------------------------------------------------------------------------------------------------------3
						CANDOEPICRUN(4,2)
						if(result==-5)then
							SAY("You are not experienced enough, return after you have trained some more. (next mission at level  30)")
							ENDDIALOG()
						else
								CANDOEPICRUN(4,2)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------4
						CANDOEPICRUN(4,3)
						if(result==-5)then
							SAY("You are not experienced enough, return after you have trained some more. (next mission at level  35)")
							ENDDIALOG()
						else
								CANDOEPICRUN(4,3)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------5
						CANDOEPICRUN(4,4)
						if(result==-5)then
							SAY("You are not experienced enough, return after you have trained some more. (next mission at level  40)")
							ENDDIALOG()
						else
								CANDOEPICRUN(4,4)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------6
						CANDOEPICRUN(4,5)
				if(result==-5)then
					SAY("You are not experienced enough, return after you have trained some more. (next mission at level  45)")
					ENDDIALOG()
				else
						CANDOEPICRUN(4,5)
				        if(result==-4)then
						SAY("I am sorry but the only means of supporting us now  is to found a clan and support us with it.")
						ENDDIALOG()
					else
--Mission 6 wird hier gestartet
		SAY("You are already near to famous here at Tangent. I even heard somebody talk about you out on the streets.")

		ANSWER("Thanks, but I am only doing my job.",250)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------6
					else
--Mission 5 wird hier gestartet
		SAY("Something unforeseen happened last night. Our laboratory was sabotaged and some sub systems of our network have been hacked. Luckily Chester Cohor was able to scan the ID of the hackers before everything went down.")

		ANSWER("CONTINUE",200)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------5
					else
--Mission 4 wird hier gestartet
		SAY("A message was sent to your contact person from BioTech in which we announced our interest in the blueprint of the prototype. We have of course tried to match his price but...")

		ANSWER("He rejected your offer? The blueprint is sold already?",150)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------4
					else
--Mission 3 wird hier gestartet
		SAY("What a strange coincidence that you would come right when we need you. The beam weapon project is progressing in big steps. A test run has already been made to see the effects it has on various materials. It is all very convincing. Only that alone is not sufficient for Tangent.")

		ANSWER("CONTINUE",100)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------3
							else
--Mission 2 wird hier gestartet
		SAY("There are good news. The CityAdmin decided to commission a new kind of beam weapon. Naturally Tangent is one of the main contenders for that assignment.")

		ANSWER("CONTINUE",50)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------2
					else
--Mission 1 wird hier gestartet
						SAY("Welcome Runner! We are always pleased to see a new face around here. Tangent has always been rather close to their people. Of course in a special way.")

						ANSWER("CONTINUE",11)
						
					end
				end			
			end
		end

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 1

	NODE(11)
		SAY("We supply everybody with the means to create his own reality. As you might have noticed I am speaking about the weapons that Tangent produces. I mean you can imagine that they are very popular especially here within Neocron. Even I have a Tangent Assault Rifle stowed away in my appartement.")

		ANSWER("I am glad to finally belong to a faction which deals realistically with the people. No bullshit about peace and freedom.",12)
	NODE(12)
		SAY("Of course, that is one of our highest goals. Every client is very important and many campaigns are running which serve to raise consumer interest in our products.")

		ANSWER("CONTINUE",13)
	NODE(13)
		SAY("But Tangent is mainly concerned about the different aspects of weapon production. Maybe I should tell you something about the background of the company first? Just to give you a short overview.")

		ANSWER("I was just about to ask you about that.",14)
	NODE(14)
		SAY("Tangent Technologies came into existence in the year 2748. At that time it split from its mother company BioTech since Tangent has grown too much to still be only a part of BioTech.")

		ANSWER("CONTINUE",15)
	NODE(15)
		SAY("Since then Tangent has constantly surpassed its mother company on many levels. The CityAdmin gave many lucrative commissions to Tangent because Tangent's focus was always the specialisation in weapon products.")

		ANSWER("CONTINUE",16)
	NODE(16)
		SAY("By selling weapons to the general public of Neocron a new and constant stream of income was secured as well. And even though BioTech uses every means at its disposal to force us from that leading position Tangent is still ever progressing and looking for higher goals.")

		ANSWER("BioTech is actively trying to encumber the efforts of Tangent?",17)
	NODE(17)
		SAY("Yes, in fact, they even resort to violence at times. Officially they will deny that of course. But they have contacts to the Tsunami and invest immense sums just so that they take actions against Tangent.")

		ANSWER("CONTINUE",18)
	NODE(18)
		SAY("But these foolish attempts cannot prevent Tangent from reaching its goals. Speaking of which, you are certainly ready to do a task for Tangent aren't you?")

		ANSWER("Yes, of course. And I almost thought I don't need to do anything for that Appartement that you gave me.",19)
	NODE(19)
		SAY("Oh, rest assured, the Appartement is totally yours now. Tangent is only considering this first assignment as a favor. You will be paid a small compensation for it.")

		ANSWER("It is always pleasant to work for payment. What is the assignment about?",20)
		ANSWER("I don't feel up to such a challenge at the moment.",33)
	NODE(20)
		SAY("It is rather easy. For such a big company like Tangent it is important of course to maintain imprtant relations that keep the big projects running.")

		ANSWER("CONTINUE",21)
	NODE(21)
		SAY("The most important partners are NEXT and Diamond Real Estate. NEXT is cooperating because after all they want to equip their vehicles with our weapon systems.")

		ANSWER("CONTINUE",22)
	NODE(22)
		SAY("Of course, that this is in our interest is quite obvious. Diamond Real Estate on the other hand has certain contracts with us to provide their estates with security systems.")

		ANSWER("CONTINUE",23)
	NODE(23)
		SAY("The relation to Diamond has been long and enjoyable. It reaches back quite a while.")

		ANSWER("Yes, I have expected such kind of contracts to exist. Isn't it also true that Tangent is providing the weapons for the CopBots?",24)
	NODE(24)
		SAY("Indeed. Of course the CityAdmin has chosen Tangent to care about the equipment of the CopBots. After all Tangent is the biggest independent producer of weapons. This is not only rather lucrative but it is also a task that requires us to deal with it in a responsible way. A lot could go awry if Tangent made the wrong choices.")

		ANSWER("CONTINUE",25)
	NODE(25)
		SAY("Tangent is especially concerned about the efficiency of their weapons. The CopBots are supposed to accomplish their tasks as smooth as possible after all. So that the citizens of Neocron can sleep well and safe.")

		ANSWER("Very impressive. But you wanted to say something more about the assignment, didn't you?",26)
	NODE(26)
		SAY("Please wait until I am finished talking. The small task for you is to visit NEXT, Daimond Real Estate and the Pepper Park. Pepper Park is quite an infamous and dirty area. Take care in those districts.")

		ANSWER("CONTINUE",27)
	NODE(27)
		SAY("First of all you visit the NEXT director of operations and deliver these important documents. They closely analyze how effective Tangent weapon systems are used in conjunction with the hover technology.")

		ANSWER("CONTINUE",28)
	NODE(28)
		SAY("Afterwards please go to the Diamond HQ. You can hand over the other delivery there. But I have forgotten where the broker is who should receive the delivery. Either in the Diamond HQ, CityAdmin building or one of the Diamond stores.")

		ANSWER("CONTINUE",29)
	NODE(29)
		SAY("It contains an assortment of spirits. Remember that you always have to secure your relations through little gifts.")

		ANSWER("You have also mentioned the Pepper Park, what is the story behind that?",30)

--Spieler bekommt zwei Pakete
	NODE(30)
		GIVEITEM(9150)
		GIVEITEM(9151)
		SAY("It is not that important . Visit a person named Figaro there. He will provide you with a package that you should bring back here. Is that clear so far?")

		ANSWER("But of course, I am just the curious kind of guy.",31)
	NODE(31)
		SAY("Curiosity is a blessing if it is not overused. But too much of it can inflict great damage. Go now and don't forget to return the package that you will get to Mazzaro here in the HQ.")

		ANSWER("CONTINUE",32)
	NODE(32)
		SAY("Otherwise he will be in a rather bad mood and we really don't want that to happen...")
		STARTMISSION(3558)
		SETNEXTDIALOGSTATE(24)
		ENDDIALOG()


	NODE(33)
		SAY("Then take your time. Prepare yourself and come back once you are ready.")
		ENDDIALOG()

	NODE(34)
		SAY("You should really take this assignment a little bit more serious if you want to become a somebody within Tangent. If you cant find the Diamond broker, he might be somwhere else in the city. Diamond is spread far throughout Neocron.")
		ENDDIALOG()
		
	
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 2

	NODE(50)
		SAY("Albeit we cannot understand why both BioTech and Tangent have been chosen for the final consideration. It is quite obvious that Tangent has all the necessary knowledge right here.")

		ANSWER("CONTINUE",51)
	NODE(51)
		SAY("I mean, Tangent's only purpose is after all the production and invention of weapons. However the CityAdmin decided to take BioTech into consideration for this project.")

		ANSWER("But BioTech should pose no problem for Tangent. Tangent has the advantage in this game.",52)
	NODE(52)
		SAY("Very true. Everybody knows that. BioTech must have used dirty tricks to be offered this kind of deal in the first place.")

		ANSWER("When will it be decided who gets the commission?",53)
	NODE(53)
		SAY("Within a limited time frame both companies are to come up with a prototype of the planned beam weapon. The better prototype gets the deal. But I would not count on a fair competition.")

		ANSWER("CONTINUE",54)
	NODE(54)
		SAY("If all this is arranged by BioTech I am certain they already have prepared a sneaky plan.")

		ANSWER("Doesn't Tangent have effective mechanisms to deal with such an event?",55)
	NODE(55)
		SAY("BioTech is welcome to try it. They will get what they deserve. For this project Damion Jordan himself expressed a wish that a retired beam expert should join the development team.")

		ANSWER("CONTINUE",56)
	NODE(56)
		SAY("The problem is that the expert already retired about half a year ago. Since you have already completed your first run and showed us that you are loyal to Tangent I thought you could try to convince that expert to come back and work for us again.")

		ANSWER("CONTINUE",57)
	NODE(57)
		SAY("You are supposed to present him an offer he cannot refuse. The offer to be part of the team again. You might have to use your negotiation skills for this one.")

		ANSWER("I could at least try it. Where can I find that expert?",58)
		ANSWER("I cannot take this assignment, I fear.",60)
	NODE(58)
		SAY("Matt Tronstett is his name. According to our latest information he lives at Point Red in the Wastelands. You know, sector B07.")

		ANSWER("CONTINUE",59)
	NODE(59)
		SAY("If you were able to convince him you can see Mazzaro and report to him.")
		STARTMISSION(3559)
		SETNEXTDIALOGSTATE(12)
		ENDDIALOG()
		
	NODE(60)
		SAY("It would be an important task but you do not have to do it.")
		ENDDIALOG()
	NODE(62)
		SAY("Have you convinced Tronstett already? He lives in Point Red in the Wastelands.")
		ENDDIALOG()
		

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 3

	NODE(100)
		SAY("Knowledge is required. Information on the progress of BioTech developments. For this purpose we need a reliable Runner like you to conduct some investigation into that direction.")

		ANSWER("Investigation? What kind of investigation?",101)
	NODE(101)
		SAY("Tangent has various methods to get required information. There are many contact persons who would sell their own mother for money. Enough of them to directly play into our hands.")

		ANSWER("Isn't spying illegal?",102)
	NODE(102)
		SAY("Spying? You obviously still haven't learnt that Tangent only does what every other company does as well. Which is exactly the reason why Tangent is still in business.")

		ANSWER("CONTINUE",103)
	NODE(103)
		SAY("You can't really be so innocent to believe that other companies don't use the same methods, right? This task is important for the company. And as far as I am concerned you are either for or against Tangent. I would not advise you to be against Tangent.")

		ANSWER("I did not want to seem insulting, sorry. It's just...",104)
	NODE(104)
		SAY("Look around and you'll see two possibilities. Either you belong to a powerful faction or... you should decrease your life expectancy accordingly. The contact person for this task can be found at the Catlock Bay.")

		ANSWER("CONTINUE",105)
	NODE(105)
		SAY("You can offer him up to 10000 credits if you think the information is worth it. He is a Tsunami with the name of Gruber. Be on your guard.")

		ANSWER("CONTINUE",106)
	NODE(106)
		SAY("There is no law in the Wastelands so be careful. Don't stay too long out there or you might catch a nasty mutation. If you find out anything interesting just come back here and report to me.")
		STARTMISSION(3560)
		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()
	NODE(107)
		SAY("It is your choice. If you change your mind just come back here.")
		ENDDIALOG()

	

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 4

	NODE(150)
		SAY("Not that, no. I believe he knows that this is a big and powerful company. Tangent would have been able to match any price he could want. No, he expressed that he wanted a different method of payment.")

		ANSWER("CONTINUE",151)
	NODE(151)
		SAY("He said that he still has some unfinished business with the Fallen Angels. It would seem that they refused to hire him on grounds that he is not qualified enough.")

		ANSWER("That is not too uncommon. Even Tangent has a bad relationship with the Angels.",152)
	NODE(152)
		SAY("Indeed. But the Fallen Angels were not forced to hack the Tangent system in the first place. That caused quite a chaos and now they are only getting their just reward. I'll come straight to the point. We want you to match the price of the contact person.")

		ANSWER("What exactly do I have to do then?",153)
		ANSWER("I cannot do that at the moment. I am sorry.",158)
	NODE(153)
		SAY("It is very simple. Even if we normally do not resort to such actions. You meet up with Max whom you can find in the old Outzone prison. He is very experienced when it comes to things like this.")

		ANSWER("CONTINUE",154)
	NODE(154)
		SAY("You tell him that he is supposed to kill 10 Fallen Angels members. That was easy, wasn't it? But tell him not to kill the small ones, only a little bit more experienced ones.")

		ANSWER("If it serves Tangent, I will do it. After all the Fallen Angels attacked in the first place. But I have my doubts.",155)
	NODE(155)
		SAY("You won't get far with that attitude. You have to be willing to walk over some dead bodies for Tangent, now and then. Come on. What do you expect? Tangent produces weapons.")

		ANSWER("CONTINUE",156)
	NODE(156)
		SAY("And for what? Certainly not to blow holes into the sky. The company is worth more than a pesky few mutated Fallen Angels.")

		ANSWER("Alright. I already said I'd do it. But I don't believe that a blueprint is ever worth a human life.",157)
	NODE(157)
		SAY("Don't worry about that and leave the moral issues for Tangent. Meet with Max in the old prison in the Outzone. He is Black Dragon. After you have picked up the blueprint Mazzaro wants to talk to you.")
		STARTMISSION(3561)
		SETNEXTDIALOGSTATE(10)
		ENDDIALOG()
		
	NODE(158)
		SAY("As you wish. but don't count on Tangent always having an assignment for you.")
		ENDDIALOG()
		
	NODE(159)
		SAY("You have your mission. Go to Max in the Outzone prison and tell him to kill those Fallen Angel guys. Then you can get that Blueprint from Benjamin in Industrial 02.")

		ENDDIALOG()
		


------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 5

	NODE(200)
		SAY("It doesn't come as a surprise that the hackers turn out to be BioTech employees. The problem is that we do not have any evidence for this due to the fact that the relevant data blocks have been damaged by the sabotage. Our research and development was set back a couple of days as well.")

		ANSWER("That BioTech uses such methods could have been anticipated.",201)
	NODE(201)
		SAY("That may very well be but you underestimate the complexity and fragility of such systems and test rigs. Even the slightest distortion can cause maximum damage. In addition the network was still being reconfigured after the Fallen Angels hack attack. Because of that it was more vulnerable than usual.")

		ANSWER("What consequences will this have? Did Tangent already decide on a proper response? I mean, some kind of response must follow.",202)
	NODE(202)
		SAY("Yes, you are right and the consequence has already been decided. BioTech will be attacked directly by us. As a warning of course. Since you have proven your competence with these kind of missions Tangent has chosen you for this task.")

		ANSWER("It's not as if I chose to do these kind of assignments. But I will do it.",204)
		ANSWER("I do not believe I can do this.",207)
	NODE(204)
		SAY("Something else I just remembered. The Tsunami seem to have been involved as well. You should speak to Figaro again since we will also untilize our connections to the Black Dragon in this case. If BioTech uses the help of the Tsunami we will certainly not go into this without the Black Dragon. You should decide the course of action that the Black Dragon should take against BioTech. Listen to what they can do and choose the appropriate response.")

		ANSWER("CONTINUE",205)
	NODE(205)
		SAY("There is more. Your contact person, Benjamin, insisted on talking only to you. He said that he prefers the devil that he already knows. It seems that he was able to nick one part of the prototype beam weapon and now he is willing to sell it to us.")

		ANSWER("Can you be a little bit more precise and tell me whom I should kill?",209)
	NODE(206)
		SAY("The word of your accomplishments spread fast. There is much to do so don't waste any time. First you should visit Figaro and after you have flatlined one BioTech member Benjamin is already waiting for you.")
		STARTMISSION(3562)
		SETNEXTDIALOGSTATE(8)
		ENDDIALOG()


	NODE(207)
		SAY("If you change your mind, don't hesitate to contact us.")
		ENDDIALOG()
		
	NODE(208)
		SAY("You already have the assignment specs.Give instructions to Figaro, kill two BioTech guys and then visit Benjamin in the Industrial district 02.")
		ENDDIALOG()

	NODE(209)
		SAY("It is your task to kill 2 Runner from BioTech. They should NOT be employees, guards or official representatives. Only Runner.")
		
		ANSWER("And I can really flatline any Runner I want to?",210)
	NODE(210)
		SAY("No, only if your target is about your level or higher. Otherwise the kill cannot be accepted.")

		ANSWER("CONTINUE",206)

		
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 6

	NODE(250)
		SAY("Modesty doesn't suit you at all. You can be proud about what you achieved. But of course that is not the reason why we need you here at the moment.")

		ANSWER("I expected as much, is there an emergency?",252)
	NODE(252)
		SAY("Not exactly. It's all about the final test run of the beam weapon. Everything is sorted out and the last readings will soon be done. But despite all our efforts BioTech somehow managed to get their weapon to a similar state in production.")

		ANSWER("CONTINUE",253)
	NODE(253)
		SAY("Tangent cannot afford to loose in a direct competition. Especially with BioTech as competitor. That's why we will actively try to do something against them. As small as the chance is for them to rival our weapon.")

		ANSWER("And you assumed that I would do it? Alright, what does Tangent have in mind?",254)
	NODE(254)
		SAY("The final testrun must be disrupted at all costs. Didn't you receive some compromising material from your contact last time? If that is the case you should use it now. There is no better time.")

		ANSWER("Yes, I have certain compromising material about a scientist named Andressa. I believe she will be somewhere in the vicinity of the BioTech headquarters.",255)
	NODE(255)
		SAY("Then use that knowledge, everything that damages BioTech is good for Tangent.")
		STARTMISSION(3563)
		SETNEXTDIALOGSTATE(6)
		ENDDIALOG()
		
	NODE(256)
		SAY("Hurry, the time is running away.")
		ENDDIALOG()


----------------------------------------------------
----------------------------------------------------
--FRAKTIONSWECHSEL
	NODE(300)
		SAY("I am rather busy. Please move on.")
		ENDDIALOG()

	NODE(301)
		GETFACTIONSYMPATHY(4)
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
			CHANGEFACTION(4)
			SAY("Welcome at Tangent. I am certain you will never want to leave again.")
			ENDDIALOG()
		end

end


