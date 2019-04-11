--new
--Tsunami

function DIALOG()
NODE(0)
--CANDOEPICRUN(8, epicmissionid)
--EPICMISSIONERROR_WRONGFACTION			-1
--EPICMISSIONERROR_FULLYACCOMPLISHED		-2
--EPICMISSIONERROR_MISSIONMISSIONS		-3
--EPICMISSIONERROR_ALREADYFINISHED		-4
--EPICMISSIONERROR_WRONGSKILLLEVEL		-5
--EPICMISSIONERROR_MISSIONRUNNING		-6
--EPICRUNFINISHED(8, epicmissionid)
--STARTMISSION( missionid aus missionbase def)

	CANDOEPICRUN(8,0)
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
			CANDOEPICRUN(8,0)
			if(result==-2)then
				SAY("Your only way to further support us is to found a clan of your own.")
				ENDDIALOG()
			else
-- Abfrage ob Skillevel stimmt und dann ob die Mission schon erfüllt wurde
				CANDOEPICRUN(8,0)
				if(result==-5)then
					SAY("Youre not good enough for this job, come back once you are better at what you do. (next mission at level 10)")
					ENDDIALOG()
				else
						CANDOEPICRUN(8,0)
				        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------2
						CANDOEPICRUN(8,1)
						if(result==-5)then
							SAY("Youre not good enough for this job, come back once you are better at what you do. (next mission at level 20)")
							ENDDIALOG()
						else
								CANDOEPICRUN(8,1)
				        		if(result==-4)then
-------------------------------------------------------------------------------------------------------------------3
						CANDOEPICRUN(8,2)
						if(result==-5)then
							SAY("Youre not good enough for this job, come back once you are better at what you do. (next mission at level 30)")
							ENDDIALOG()
						else
								CANDOEPICRUN(8,2)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------4
						CANDOEPICRUN(8,3)
						if(result==-5)then
							SAY("Youre not good enough for this job, come back once you are better at what you do. (next mission at level 35)")
							ENDDIALOG()
						else
								CANDOEPICRUN(8,3)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------5
						CANDOEPICRUN(8,4)
						if(result==-5)then
							SAY("Youre not good enough for this job, come back once you are better at what you do. (next mission at level 40)")
							ENDDIALOG()
						else
								CANDOEPICRUN(8,4)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------6
						CANDOEPICRUN(8,5)
				if(result==-5)then
					SAY("Youre not good enough for this job, come back once you are better at what you do. (next mission at level 45)")
					ENDDIALOG()
				else
								CANDOEPICRUN(8,5)
				        if(result==-4)then
						SAY("Your only way to further support us is to found a clan of your own.")
						ENDDIALOG()
					else
--Mission 6 wird hier gestartet
		SAY("We still have not sorted this situation. You can take some vacation in the meantime.")
		
		ANSWER("I guess I should visit Jester again and clear the whole situation myself. If you want something done then do it yourself.",251)

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------6
					else
--Mission 5 wird hier gestartet
		SAY("Tsunami members where the loyalty is in question are still not wanted until this whole mess is cleaned up.")
		
		ANSWER("That is a pity. I guess I will have to rely on Leila s offer after all.",201)

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------5
					else
--Mission 4 wird hier gestartet
		SAY("There are more and more rumours about spies in our own ranks. The rumours are spreading and nothing we do seems to be able to prevent dissent in our own ranks. People do not trust each other, I mean, not that they did before. It was even brought to Veroniques attention and her reply was a white list for all Tsunami members that are as loyal as it gets.")
		
		ANSWER("What does that mean for me?",151)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------4
					else
--Mission 3 wird hier gestartet
		SAY("There is some vital information about the deal between Black Dragon and ProtoPharm. We know where it will take place and we know when it will take place. Still, disrupting the deal alone will do us no good since then the deal will just take place sometime else. We need to kill the ProtoPharm representative and make it look as if it was the Black Dragon who killed them. ")
		
		ANSWER("Yes, but how can we do that. It is not as if Proto Pharm is that stupid not to be able to differentiate between Black Dragon and Tsunami.",101)
		ANSWER("I do not feel up to another challenge today.",103)

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------3
							else
--Mission 2 wird hier gestartet
		SAY("This is a coincidence, you arrived just when we needed you. We have some trouble with the Black Dragon scum. There was an open conflict in front of Club Veronique. They dared to attack with firearms. We had them running in no time but it sure was a powerful message. They attacked us on our own ground. It is time to do something about that. Are you ready to do more for Tsunami?")
		
		ANSWER("These Black Dragons are very bold. I would volunteer to kill some of those rats myself if that is what you want.",51)
		ANSWER("It does not suit me right now. I cannot help you at the moment.",56)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------2
					else
--Mission 1 wird hier gestartet
		SAY("You are new here, right? Come closer over here, we need to talk.")
		
		ANSWER("I am all yours. ",11)
						
					end
				end			
			end
		end

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tsunami 1
	NODE(11)
		SAY("We always appreciate a new loyal member. Tsunami is a great organisation as you will find out. We offer much to our members but keep in mind that Tsunami is also a rather competitive environment. Do you feel up to a little competition?")
		
		ANSWER("Of course I will do my very best.",12)
	NODE(12)
		SAY("Then you surely understand that if I would trust everybody just like that, I'd be dead by now. That means, I do not trust you. I cannot trust you, not right now that is. We will have to prove your worthiness somehow.  Something that shows where your loyalties are. ")
		
		ANSWER("I have not the slightest doubt that I am loyal to your cause.",13)
	NODE(13)
		SAY("It should be easy enough. We don't want to waste you in the process of your first assignment now, do we?  Still, if you don't even make it past this assignment you are out. It really is that simple. So keep yourself in a good shape.")
		
		ANSWER("Aye, I am no looser. You will realize that soon enough.",14)
	NODE(14)
		SAY("You should already know that the head of Tsunami is Veronique Duchamps. She is pulling all the strings and she is as vicious as it gets.If anything big is going on you can bet that she is already involved behind the curtains. Since she has got so many deals and relations to take care of she needs an errand boy once in a while.")
		
		ANSWER("I understand. So, what do I have to do?",15)
	NODE(15)
		GIVEITEM(9250)
		SAY("Its a simple delivery, so don't screw it up. Bring this package to Diamond Real Estate, its for Eric Danmund himself. Just give it to the appropriate Diamond employee at their HQ or at one of their shops. Your R.P.O.S. should lead the way once you enter the right building or section of the city.")
		
		ANSWER(" Come on, thats a piece of cake. Consider it already done.",16)
	NODE(16)
		SAY("Expect something in return from her and bring it to Jester in sector 07 of Dome of York, he is working for us as well. At least sometimes. He is a freelancer. Now do what you are told to do. Sometimes he hangs out in one of the various pubs.")
		STARTMISSION(3570)
		SETNEXTDIALOGSTATE(7)

		ENDDIALOG()
		
	NODE(17)
		SAY("Is it really that difficult? Go to the 10th sector, deliver the package, get another one in return and bring it to Jester in sector 07. After that report to Taylor Gomez here in the HQ.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tsunami 2
	NODE(51)
		SAY("No, it is not time for that just now. Since you have proven your loyalty to us already there is another assignment that you will be entrusted with. It is important for our move to know as much as possible about the plans of the Black Dragon. But before Tsunami plans the next move we will have a small revenge on the Black Dragon.")
		
		ANSWER("How big is the threat?",52)
	NODE(52)
		SAY("The current situation is seeing battles between Tsunami and Black Dragon every day. They are forcefully trying to push into our market. They are threatening our clients and dancers likewise. We cannot allow this to continue. We will teach those bastards that Tsunami never yields. Not even an inch of its turf.")
		
		ANSWER("But what can be done other than killing them off?",53)
	NODE(53)
		SAY("We have managed to get a disguised member as a spy into the Black Dragon hierarchy. Her name  is Leila. You will bring a small package to her and then she will cause some chaos from within the ranks of the Black Dragon. ")
		
		ANSWER("And where do I get that from?",54)
	NODE(54)
		SAY("The package you are supposed to bring  her is still in the hands of Jester. Get the package from him and then give it to Jester. It should be quite a surprise for them once they find out what happened. Be sure to tell Leila that the implant is targeted at either Gecko or Trond himself, the leader of the Black Dragon. Now go.")
		
		ANSWER("Where can I find Leila?",55)
	NODE(55)
		SAY("Oh, yes. Its not that difficult. She can be found near the Black Dragon HQ. That is the designated meeting place. After you have delivered the package visit Taylor Gomez in the Tsunami HQ.")
		STARTMISSION(3571)
		SETNEXTDIALOGSTATE(7)
		ENDDIALOG()
		
	NODE(56)
		SAY("Tsunami is not offering you these assignments out of gratitude. That you reject such a mission tells us alot about your loyalty to Tsunami.")
		ENDDIALOG()
		
	NODE(57)
		SAY("You have your assignment.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tsunami 3
	NODE(101)
		SAY("We have some friends with the Anarchy Breed. Mainly because they like our Clubs in Pepper Park so much. I am sure that they might still have a few weapons that were used by the Black Dragon. Those weapons can be used to trick ProtoPharm. Be sure to see crazy Dillan and mind that crazy is not just his nickname. ")
		
		ANSWER("Don't worry, I know how to deal with that kind of people.",102)
	NODE(102)
		SAY("After that you should see Raymon in sector 06 of the dome, he has contacts to ProtoPharm and he likes money very much which is the reason why we could convince him so easily to work with us. He should be able to make the murder look like it was done by the Black Dragon. Hand the weapon from Dillan to him and then go and kill that stupid ProtoPharm Mr. Cook guy at the meeting place in the Outzone 03.")
		STARTMISSION(3572)
		SETNEXTDIALOGSTATE(4)
	
		ENDDIALOG()
		
	NODE(103)
		SAY("Its your choice but you are aware that Tsunami does not appreciate slackers.")
		
		ENDDIALOG()
	NODE(104)
		SAY("Get the plan rolling. Meet the Anarchy Breed outside the city gates and then Mastersen in Plaza 04. Make sure to report back to Taylor afterwards.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tsunami 4
	NODE(151)
		SAY("That list contains the names of the people that really can be trusted.This means that lots of small members are held at a certain distance, you included. I know, you did prove to be amongst those who did do a lot for Tsunami recently. I could get you on that list maybe, but it would require another test of loyalty. Just to be really sure about your intentions. ")
		
		ANSWER("This is plain bullshit, I have already proven my worth more than once. I don't have to take this shit.",154)
		ANSWER("I have proven my worth. If I need to do it again, I will do it.",152)
	NODE(152)
		SAY("Officially that is true, but there is certainly a leak within Tsunami. Your last mission was not the only indication for insider information. I know that you put your life in danger there, but with all those genrep copies nowadays that could prove to be too small a price to be counted for your loyalty. There is the option of running an errand for a higher ranking member in order to improve your loyality even more and get onto that white list.")
		
		ANSWER("Just great. You really are dissing the wrong guy here.",153)
	NODE(153)
		SAY("If you are loyal, then you will persist. If not, we don’t need you anyway. Go to Taylor Gomez in the HQ. He told me earlier that he has a mission for you. It seems he is one who thinks you are loyal to Tsunami.")
		STARTMISSION(3573)
		SETNEXTDIALOGSTATE(5)
		ENDDIALOG()
		
	NODE(154)
		SAY("Not a wise choice. Tsunami is not some club you can just exit or join any time you like. Keep that in mind.")
		ENDDIALOG()
		
	NODE(155)
		SAY("I do not know if Gomez will wait forever to give you this assignment.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tsunami 5
	NODE(201)
		SAY("Excuse me now. This situation requires that I have my full attention to it.")
		STARTMISSION(3574)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
		
	NODE(202)
		SAY("Do not force me to call security. Go and visit that Leila you were talking about.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tsunami 6
	NODE(251)
		SAY("Pretty big words if you ask me, but if you can clear the situation Tsunami certainly would be grateful.")
		STARTMISSION(3575)
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()

----------------------------------------------------
----------------------------------------------------
--FRAKTIONSWECHSEL
	NODE(300)
		SAY("I am rather busy. Please move on.")
		ENDDIALOG()

	NODE(301)
		GETFACTIONSYMPATHY(8)
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
			CHANGEFACTION(8)
			SAY("Tsunami welcomes you.")
			ENDDIALOG()
		end
end