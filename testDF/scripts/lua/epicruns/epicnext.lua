--new
--NEXT
function DIALOG()
NODE(0)
--CANDOEPICRUN(3, epicmissionid)
--EPICMISSIONERROR_WRONGFACTION		-1
--EPICMISSIONERROR_FULLYACCOMPLISHED	-2
--EPICMISSIONERROR_MISSIONMISSIONS		-3
--EPICMISSIONERROR_ALREADYFINISHED		-4
--EPICMISSIONERROR_WRONGSKILLLEVEL		-5
--EPICRUNFINISHED(3, epicmissionid)
--STARTMISSION( missionid aus missionbase def)

	CANDOEPICRUN(3,0)
-- Fraktion wird überprüft
		if(result==-1)then 
			SAY("I am sorry but you don't belong to our faction. Please don't waste my time. Unless you plan to join our faction?!")
			
			ANSWER("That's why I am here. I would like to join your faction.",301)
			ANSWER("I'm not interested. Goodbye.",300)
		else
-- Alle Missionen erfüllt? wird geprüft
			CANDOEPICRUN(3,0)
			if(result==-2)then
				SAY("Now that you have achieved everything the only way you ccan support us is to found a clan yourself.")
				ENDDIALOG()
			else
-- Abfrage ob Skillevel stimmt und dann ob die Mission schon erfüllt wurde
				CANDOEPICRUN(3,0)
				if(result==-5)then
					SAY("You do not have enough expertise for the upcoming task, retur after you have more to show.(next mission at level 10)")
					ENDDIALOG()
				else
						CANDOEPICRUN(3,0)
				        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------2
						CANDOEPICRUN(3,1)
						if(result==-5)then
							SAY("You do not have enough expertise for the upcoming task, return after you have more to show.(next mission at level 20)")
							ENDDIALOG()
						else
								CANDOEPICRUN(3,1)
				        		if(result==-4)then
-------------------------------------------------------------------------------------------------------------------3
						CANDOEPICRUN(3,2)
						if(result==-5)then
							SAY("You do not have enough expertise for the upcoming task, return after you have more to show.(next mission at level 30)")
							ENDDIALOG()
						else
								CANDOEPICRUN(3,2)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------4
						CANDOEPICRUN(3,3)
						if(result==-5)then
							SAY("You do not have enough expertise for the upcoming task, return after you have more to show.(next mission at level 35)")
							ENDDIALOG()
						else
								CANDOEPICRUN(3,3)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------5
						CANDOEPICRUN(3,4)
						if(result==-5)then
							SAY("You do not have enough expertise for the upcoming task, return after you have more to show.(next mission at level 40)")
							ENDDIALOG()
						else
								CANDOEPICRUN(3,4)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------6
						CANDOEPICRUN(3,5)
				if(result==-5)then
					SAY("You do not have enough expertise for the upcoming task, return after you have more to show.(next mission at level  45)")
					ENDDIALOG()
				else
						CANDOEPICRUN(3,5)
				        if(result==-4)then
						SAY("Now that you have achieved everything the only way you ccan support us is to found a clan yourself.")
						ENDDIALOG()
					else
--Mission 6 wird hier gestartet
		SAY("I am glad to see you back again. Mason instructed me to tell you his plans concerning the unbelievable actions from ProtoPharm. It seems now everybody knows about them. There is a way to return everything back to normal, however.")

		ANSWER("That sounds promising but is it true?",251)

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------6
					else
--Mission 5 wird hier gestartet
		SAY("NEXT would like to offer you to test drive one of our experimental vehicle. Mason might have already mentioned it to you. You can fetch the keys for the vehicle from the technician Benji at the desert race track in sector G 11. Your task is to do extensive tests of the vehicle in the surrounding desert.")
		STARTMISSION(3550)
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------5
					else
--Mission 4 wird hier gestartet
		SAY("Good that you arrived just now, hurry and see Mason. Something terrible happened.")
		STARTMISSION(3549)
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------4
					else
--Mission 3 wird hier gestartet
		SAY("Ahh, you are back. I fear we do not have another official assignment for you. But I wanted to ask you if you could go and check on old Torben in the Pepper Park subway station. He didn't want to talk to me but I know he has a problem if he doesn't pick up his work again soon.")
		
		ANSWER("CONTINUE",101)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------3
							else
--Mission 2 wird hier gestartet
		SAY("There is another opportunity to do something for NEXT. It is not easy to explain because opinions vary greatly amongst the citizens of Neocron. Many opinions regarding the Fallen Angels are based on lies and prejudices which rarely are based on facts that really speak against them.")
		
		ANSWER("CONTINUE",51)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------2
					else
--Mission 1 wird hier gestartet
		SAY("Welcome at NEXT, we are always excited about new members. I hope your appertement is acceptable? As you probably already know NEXT is concerned with every means of transportation there is. Almost all kind of vehicles you can see in and around Neocron were assembled in the assembly halls of NEXT.")
		
		ANSWER("CONTINUE",11)
						
					end
				end			
			end
		end

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--NEXT 1
	NODE(11)
		SAY("From Hoverbikes over subways to  spaceships even, all are produced by NEXT. But in order to remain at the top of this market we are obliged to have good business connections to every other company. Would you want to help us with that or do you still need time to make yourself feel at home?")
		
		ANSWER("I believe I am ready to help NEXT in their endeavours.",12)
		ANSWER("At the moment I would say I need more time to have a look around.",19)
	NODE(12)
		SAY("Excellent. We need people like you. At the moment your assignment is related to a grand project between us and BioTech. Of course BioTech is not the only company we have ralations to. Right at the front there is also Tangent and the CityAdmin. ")
		
		ANSWER("CONTINUE",13)
	NODE(13)
		SAY("You could probably argue that the CityAdmin is indeed more a company than anything else. Well, anyway, the long term goal of the project I was talking about is to open up a gate to the stars again, Irata III to be precise. The head of NEXT, Craig Diggers, is determined to reanimate the spaceship projects.")
		
		ANSWER("Does he have a special reason to be so determined?",14)
	NODE(14)
		SAY("Mr Diggers suffered a terrible accident back then. It was his dream to accompany the great Trek to Irata III. But instead he lost his legs because of an accident on his way to the spaceships. He missed the chance to join the Trek. After that accident he was not able to shake off the longing for Irata III.")
		
		ANSWER("CONTINUE",15)
	NODE(15)
		SAY("His legs were replaced by artificial ones and you might already have guessed by whom. Yes, BioTech! That might also be the reason why a new spaceship program is developed in cooperation with them. Mr Diggers is possibly still feeling obliged to BioTech.")
		
		ANSWER("A spaceship program with BioTech? I thought BioTech was only developing implants and organic mechanisms.",16)
	NODE(16)
		SAY("Yes, that is the general assumption nowadays but the truth is that BioTech deals with many different science projects. The best example is Tangent. Tangent was the former weapon department of BioTech. Only later on it got big enough to split from BioTech and become independent. But now back to business.")
		
		ANSWER("CONTINUE",17)
	NODE(17)
		GIVEITEM(9100)
		SAY("These documents are copies of already signed contracts for BioTech. They are probably already waiting for them. By delivering these contracts you will not only do us a favor but you will also demonstrate to us your determinations to get something done from start till end. This could mean the beginning of a wonderful career. Don't forsake yourself now.")
		
		ANSWER("Good, i will take this assignment. Where do I have to go?",18)
	NODE(18)
		SAY("You will directly adress the director of operations in the BioTech HQ. You should find him without trouble. Oh, and yes, before I forget, meet Mr Mason after you have delivered the documents. He is vice director of NEXT and can be found here in the building. Good luck.")
		STARTMISSION(3546)
		SETNEXTDIALOGSTATE(10)
		ENDDIALOG()
		
	NODE(19)
		SAY("Then take some time and come back once you are ready.")
		ENDDIALOG()
		
	NODE(20)
		SAY("Have you already delivered that package to the BioTech HQ?")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--NEXT 2
	NODE(51)
		SAY("The Fallen Angels have a rather strained relationship to the CityAdmin. It is a shame that they have such an immense Know-How that many could profit from but in reality few people actually do. But NEXT is different in that we only evaluate the potential and the actions of the organization in question. We do not take rumours or prejudice into consideration. That means that the Fallen Angels are an opportunity for us.")
		
		ANSWER("Yes, but what really is your point? Are there connections between NEXT and the Fallen Angels?",52)

	NODE(52)
		SAY("That is exactly the point, officially we do not have any connections to them. But despite the general opinion about the Fallen Angels we have no intention of wasting valuable resources on research that we could simply acquire from the Fallen Angels. NEXT has to proceed carefully with these deals, however. If the fact that we occasionally deal with the Fallen Angels would surface it would mean a great loss to our reputation.")
		
		ANSWER("CONTINUE",53)
	NODE(53)
		SAY("NEXT is aware of the risks involved but still tries to maintain a certain level of contact to the Fallen Angels. Only recently an exchange of information was arranged but we were still looking for the right person who could be trusted with such an assignment.")
		
		ANSWER("That means that you have found the right person? You mean that I am the right person?",54)
		ANSWER("If you think about me, I do not have time at the moment I fear.",58)

	NODE(54)
		SAY("Very perceptive. You seem to have a great career ahead of you. So you already know where the Fallen Angels facility can be found?")
		
		ANSWER("It is called Tech Haven, am I right?",55)
	NODE(55)
		SAY("Yes. Some people would even call it the technical paradise. Why? Well, you will be able to see that for yourself when you get there. It can be found in the Wastelands and has a very interesting historical background. But I don't want to bore you with old stories. NEXT wants you for a meeting with a certain Elias from the Fallen Angels. He should wait in one of the entrances to Tech Haven.")
		
		ANSWER("CONTINUE",56)

	NODE(56)
		SAY("We have been told that he has the authority to speak for the Fallen Angels. Listen to what he has to say. He will also provide you with a control chip that you should bring back to Mr Mason. You will already have met him, am I right?")
		
		ANSWER("Yes. I am on my way then.",57)
	NODE(57)
		SAY("Good luck and take care when crossing the Wastelands, it might be dangeorous.")
		STARTMISSION(3547)
		SETNEXTDIALOGSTATE(9)
		
		ENDDIALOG()
		

	NODE(58)
		SAY("It was worth a try. Come back if you feel ready for an assignment.")
		ENDDIALOG()
		
	NODE(59)
		SAY("Have you already met Elias in Tech Haven?")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--NEXT 3
	NODE(101)
		SAY("I mean, after all this is a company and not the wellfare. NEXT cannot afford to pay mechanics who don't do their work. That's why I am asking you to meet him and figure out if he needs help. He was one of the guys who built the subway in the first place. One of the pioneers if I may say so.")
		
		ANSWER("Alright, I will have a look.",102)
		ANSWER("I really cannot do it at the moment. I am sorry.",103)
	NODE(102)
		SAY("Thank you in advance. He likes to visit Garriots Diner there.")
		STARTMISSION(3548)
		SETNEXTDIALOGSTATE(4)
		
		ENDDIALOG()
		
	NODE(103)
		SAY("Maybe you will change your mind later on.")
		ENDDIALOG()
		
	NODE(104)
		SAY("Could you please help Torben? You can find him in the Pepper Park subway station usually.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--NEXT 4
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--NEXT 5

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--NEXT 6
	NODE(251)
		SAY("Unfortunately I do not know all details of the plan. I know that a contact from the Fallen Angels is going to help us, though. A certain Elias.")

		ANSWER("Elias? Yes I know that guy, he is a little stuck up though. But let's see what he has to say once we meet again.",252)
	NODE(252)
		SAY("The plan is supposed to start soon and I believe you are needed with Elias. Although I have no clue why. Good luck, we count on your success. After all we do not want to loose our working places and end up in the Wastelands...")
		STARTMISSION(3551)
		SETNEXTDIALOGSTATE(3)
		ENDDIALOG()

----------------------------------------------------
----------------------------------------------------
--FRAKTIONSWECHSEL
	NODE(300)
		SAY("I am rather busy. Please move on.")
		ENDDIALOG()

	NODE(301)
		GETFACTIONSYMPATHY(3)
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
			CHANGEFACTION(3)
			SAY("Welcome at NEXT.")
			ENDDIALOG()
		end

end