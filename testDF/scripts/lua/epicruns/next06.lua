--new
function DIALOG()

--Trigger
--Triggernumber,Type,Person
--(0),kill Warbot, Elias
--
--1,D,CityAdmin
--2,D,Mason



--Startnode, Person
--0 Human Resource
--50 Elias
--100 CityAdmin
--150 Mason

-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("I am glad to see you back again. Mason instructed me to tell you his plans concerning the unbelievable actions from ProtoPharm. It seems now everybody knows about them, however there is a way to return everything back to normal.")
		
		ANSWER("That sounds promising but is it true?",1)
	NODE(1)
		SAY("Unfortunately I don't know all details of the plan. I know that a contact from the Fallen Angels is going to help us, though. A certain Elias.")
		
		ANSWER("Elias? Yes I know that guy, he is a little stuck up though. But let's see what he has to say once we meet again.",2)
	NODE(2)
		SAY("The plan is supposed to start soon. You need to meet Elias as soon as possible. Although I havn't got a clue why. Good luck, we count on your success. After all we do not want to loose our working places and end up in the Wastelands...")
		STARTMISSION()
		SETNEXTDIALOGSTATE(3)
		ENDDIALOG()
		
	NODE(3)
		SAY("Didn't you want to visit Elias in Tech Haven? After everything is settled see Mason back here.")
		ENDDIALOG()

-----------------------------------------------------
--Elias

	NODE(50)
		SAY("I have heard about the things you have done for NEXT. This doesn't happen often, but must say that I am impressed. Let us get to the point right away. The progress of ProtoPharm in the last weeks needs to be undone. I hope you have already been told how that is supposed to happen?")
		
		ANSWER("I have come here totally uninformed. I don't even know the details of the plan.",51)
	NODE(51)
		SAY("Oh, very well, since I was entrusted with this by Violet Derix herself I will tell you how it will happen. But only because Violet especially asked for you in this matter. We will hack the Neocron network and produce an error message. That error message will be our savior.")
		
		ANSWER("CONTINUE",52)
	NODE(52)
		SAY("Violet and myself have used the time and come up with a kind of virus with the only goal to target all business data of the last few weeks. That way we will affect all files of in the whole network, containing business transaction data.")
		
		ANSWER("CONTINUE",53)
	NODE(53)
		SAY("It is the quickest and safest way. Thus the progress of ProtoPharm will be nullified and NEXT will in return know about all the next moves of the enemy. This will enable NEXT to react accordingly to the situation. Have you been able to understand all that?")
		
		ANSWER("Ahhh...what was the conclusion again?",54)
	NODE(54)
		SAY("The conclusion would be that all data will be reset to what it was a few weeks back.")
		
		ANSWER("Of course, I understood that of course. What then are we waiting for?",55)
	NODE(55)
		SAY("I will start straightaway... one moment ... that cannot be... not that Warbot again. That stupid thing is regularly cutting our lines to the City Network. If that continues at this rate and we get cut off while I am hacking we can just forget about it. It seems that this is supposed to be a gamble we have to take. ")
		
		ANSWER("What about disabling the Warbot?",56)
	NODE(56)
		SAY("Do you really mean that?")
		
		ANSWER("Yes, I will disable that Warbot if it helps.",57)
	NODE(57)
		SAY("That would be the best solution of course. The Warbot is probably directly in front of one of the entrances to the city. As soon as he is disabled I will know it. After that I will initiate the hack process. Have fun with that Warbot and good luck.")
		
		ANSWER("CONTINUE",58)
	NODE(58)
		SAY("Oh yes, afterwards you could do me a favor and ask a certain CityAdmin employee whether or not it worked out all right. I can't remember the name but he can be found in the CityAdmin installation. I should tell you that your Mr Mason wants to speak to you after this is done as well.")
		SETNEXTDIALOGSTATE(59)
		ENDDIALOG()
		
--Spieler killt Warbot Trigger 0

	NODE(59)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("I can only start my action once the Warbot is disabled.")
			ENDDIALOG()
		else
			SAY("Alright, everything is done so far. Make sure you visit the right CityAdmin personnel and see whether or not we were successful.")
			ENDDIALOG()
			
		end


-----------------------------------------------------
--CityAdmin


	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("I am very busy at the moment, just try it again later on.")
			ENDDIALOG()
		else
			SAY("Hello citizen, what can I do for you?")
		
			ANSWER("I wanted to ask how many people within Neocron have accessed their bank account yesterday... it is for a statistic I am working on.",101)
		end
	NODE(101)
		SAY("That is no problem. Thanks to our electronical database it will only be a moment. What the... this is strange, there is no entry for yesterday. That is most definitely wrong... the day before yesterday hasn't got one either...")
		
		ANSWER("That's all I wanted to know. ... Goodbye.",102)
	NODE(102)
		SAY("Just a second there is data missing all over the place...")
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(103)
		ENDDIALOG()
		
	NODE(103)
		SAY("I have no time! Somebody screwed up the whole network. Much data did just vanish somehow. I must inform my superiors at once!")
		ENDDIALOG()
		

-----------------------------------------------------
--Mason

	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("I have all hands full trying to stop those ProtoPharm vultures...")
			ENDDIALOG()
		else
			SAY("And you have done it again. You have saved the day. How do you feel? I am supposed to forward the thanks from Violet to you. Not only because you saved her life, mind. Even Mr. Digger has expressed his gratitude to you. Well, but the normal life will carry on soon enough. And sometime in the future even your heroic deeds will be forgotten.")
		
			ANSWER("CONTINUE",151)
		end
	NODE(151)
		SAY("Enjoy it as long as you can. NEXT has also prepared a special gift for you. Since you were refused to do the testdrive, NEXT is giving you the experimental vehicle. It does now belong to you at no extra costs.")
		
		ANSWER("CONTINUE",152)
	NODE(152)
		GIVEITEM(9104,255)
		SAY("I believe it will get more peaceful now. If you want to support NEXT even further I would suggest to you to open your own clan. Since there will be no more special runs available for you in such quiet times I fear. But it has been a pleasure to work with you.")
		EPICRUNFINISHED(3,5)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
		

end