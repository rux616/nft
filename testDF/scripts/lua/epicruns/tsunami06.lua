--new
function DIALOG()

--Trigger
--Triggernumber,Type,Person
--0
--0,D,Foster
--1 Spieler killt taylor
--2,D,Recruiter
--200

--Startnode, Person
--0 Human Resource
--50 Foster
--100 Taylor
--150 Recruiter
--200
--250

-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("We still haven't sorted this situation. You can take some vacation in the meantime.")
		
		ANSWER("I guess I should visit Jester again and clear the whole situation myself. If you want something done then do it yourself.",1)
	NODE(1)
		SAY("Pretty big words if you ask me, but if you can clear the situation Tsunami certainly would be grateful.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()
		

-----------------------------------------------------
--Jester

	NODE(50)
		GIVEITEM(3185)
		GIVEITEM(3185)
		GIVEITEM(3185)
		SAY("It took me quite some time to design that weapon I gave to you last time. It might help you to defeat Taylor. Here is some ammunition for it ... Good luck.")
		SETNEXTDIALOGSTATE(51)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
	NODE(51)
		SAY("I hope the weapon is suitable for you?")
		ENDDIALOG()
		
		

-----------------------------------------------------
--Taylor

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("You dare to approach me? Run or I shall see you killed.")
			ENDDIALOG()
		else
			SAY("You! You dare to approach me? Traitor!")
		
			ANSWER("Don't twist reality here. You are the traitor and I can prove it with this data cube.",101)
		end
	NODE(101)
		SAY("What? Let me have a look. Where have you got that from? It almost looks real but I have to tell you that it is a fake. Unfortunately.")
		
		ANSWER("What do you mean? I got that from a reliable contact.",102)
	NODE(102)
		SAY("A contact? You don't mean Hontoka do you?")
		
		ANSWER("Yes, I do.",103)
	NODE(103)
		SAY("I don't believe it, Hontoka has planned this all along. He set me up as if I was a child. Believe me, it was him, he is the one who is always talking about how he misses the old times and wants to restore honor and glory. I bet he even told you that an outside threat could help to do just that, am I right?")
		
		ANSWER("Yes... but what about it?",104)
	NODE(104)
		SAY("He is always talking to people about that, it is so obvious!")
		
		ANSWER("I am not convinced! What about Gruber, you sent me to him to get killed.",105)
	NODE(105)
		SAY("No, I did not! He was instructed to give you a mission! If he wanted to kill you it was set up by Hontoka. He is the one you should kill.")
		
		ANSWER("No! You only want to confuse me! I still believe that you are the spy. Your foul arguments cannot deceive me. Prepare to get your just reward for your treachery.",106)
	NODE(106)
		SAY("That is a pity, now I have to kill you.")
		ATTACK()
		SETNEXTDIALOGSTATE(107)
		ENDDIALOG()
	NODE(107)
		SAY("You shall not get away !!")
		ATTACK()
		ENDDIALOG()

--Spieler killt entweder Hontoka oder Taylor...Taylor ist der verantwortliche Trigger 1
-----------------------------------------------------
--Recruiter

	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("I thought I already told you not to come back unless everything is back to normal.")
			ENDDIALOG()
		else
			ISMISSIONTARGETACCOMPLISHED(0)
			if(result==0)then
				SAY("Did you try talking to Taylor before you attack him?")
				ENDDIALOG()	
			else
				SAY("Come back once we have  found out who the spy is.")
		
				ANSWER("No need. I found out that it was Taylor and eliminated him. I have all the data that points to him as a spy on this datacube.",151)
			end
		end
	NODE(151)
		TAKEITEM(9254)
		if(result==0)then
			SAY("But there is no datacube. And unless you have evidence you could also be the spy.")
			ENDDIALOG()
		else
			SAY("It is true. It is all true. To think that Taylor Gomez would commit treachery...")
		
			ANSWER("He was a cunny devil and I hope he does not survive this.",152)
		end
	NODE(152)
		SAY("You have done an invaluable service for Tsunami, thank you. I forward the heartfelt thanks of Veronique herself that you were able to thwart the schemes of that treacherous spy. I am certain she would have liked to thank you herself but she is extremely busy. You have truly earned these 150.000 credits. Thank you again.")
		
		ANSWER("I told you that I am as loyal as it gets. One more thing. Leila is the name of a Tsunami member who is undercover at the Black Dragon HQ. Her real identity has been discovered and now she has to fear for her life every day.",153)
	NODE(153)
		GIVEMONEY(150000)
		SAY("We will see to that matter of course, rest assured. We would not let a Tsunami member down now would we? Why don't you found a clan and support the Tsunami even more? You seem to be very capable of holding your own. You are almost predestined to support our efforts. You should really attend to bigger matters than a few pesky missions from the Tsunami HQ. There are lesser members who can do that job now. I hope that you will make a fine addition to our faction. Good luck on your way.")
		EPICRUNFINISHED(8,5)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
		

end