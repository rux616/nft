--new
function DIALOG()
--Trigger
--Triggernumber,Type,Person
--0,D,Matt
--1,D,Torben
--2,D,Mazzaro

--Startnode, Person
--0
--50,Matt Tronstett
--100,Torben
--150,Mazzaro
--Items -> none

-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("There are good news. The CityAdmin decided to commission a new kind of beam weapon. Naturally Tangent is one of the main contenders for that assignment.")

		ANSWER("CONTINUE",1)
	NODE(1)
		SAY("Albeit we cannot understand why both BioTech and Tangent have been chosen for the final consideration. It is quite obvious that Tangent has all the necessary knowledge right here.")

		ANSWER("CONTINUE",2)
	NODE(2)
		SAY("I mean, Tangent's only purpose is after all the production and invention of weapons. However the CityAdmin decided to take BioTech into consideration for this project.")

		ANSWER("But BioTech should pose no problem for Tangent. Tangent has the advantage in this game.",3)
	NODE(3)
		SAY("Very true. Everybody knows that. BioTech must have used dirty tricks to be offered this kind of deal in the first place.")

		ANSWER("When will it be decided who gets the commission?",4)
	NODE(4)
		SAY("Within a limited time frame both companies are to come up with a prototype of the planned beam weapon. The better prototype gets the deal. But I would not count on a fair competition.")

		ANSWER("CONTINUE",5)
	NODE(5)
		SAY("If all this is arranged by BioTech I am certain they already have prepared a sneaky plan.")

		ANSWER("Doesn't Tangent have effective mechanisms to deal with such an event?",6)
	NODE(6)
		SAY("BioTech is welcome to try it. They will get what they deserve. For this project Damion Jordan himself expressed a wish that a retired beam expert should join the development team.")

		ANSWER("CONTINUE",7)
	NODE(7)
		SAY("The problem is that the expert already retired about half a year ago. Since you have already completed your first run and showed us that you are loyal to Tangent I thought you could try to convince that expert to come back and work for us again.")

		ANSWER("CONTINUE",8)
	NODE(8)
		SAY("You are supposed to present him an offer he cannot refuse. The offer to be part of the team again. You might have to use your negotiation skills for this one.")

		ANSWER("I could at least try it. Where can I find that expert?",9)
		ANSWER("I wish to train my negotiation skills first.",11)
	NODE(9)
		SAY("Matt Tronstett is his name. According to our latest information he lives at Point Red in the Wastelands. You know, sector B 07.")

		ANSWER("CONTINUE",10)
	NODE(10)
		SAY("If you were able to convince him you can see Mazzaro and report to him.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(12)
		ENDDIALOG()
		
	NODE(11)
		SAY("Please come back as soon as you feel ready to accept this mission.")
		ENDDIALOG()
	NODE(12)
		SAY("Have you convinced Tronstett already? He lives in Point Red in the Wastelands. Once you are finished report to Mazzaro.")
		ENDDIALOG()


-----------------------------------------------------
--Matt Tronstett

	NODE(50)
		SAY("No, I am not buying anything! Piss of, stupid Runner!")

		ANSWER("Ahem, I am coming from Tangent. Are you Mr Tronstett?",51)
	NODE(51)
		SAY("Tangent? Yes, I do remember it rather well. Sorry that I reacted in such a harsh way. Most of the time somebody visits me here I am either supposed to buy something or get killed. You can imagine that I do not improve my social skills that way")

		ANSWER("To be honest, I want to present you with the exact opposite of what you just mentioned. Tangent sends me because your exceptional skills are wanted for another project from Tangent.",52)
	NODE(52)
		SAY("And? Am I supposed to be flattered now?")

		ANSWER("This is a once in a lifetime chance, Mr Tronstett. Right from one of the most powerful companies in Neocron. Doesn't that sound promising?",53)
	NODE(53)
		SAY("You! What do you know? I have worked years on end until my fingers bled. I had a great vision that I was working for. And I have spent every free minute working on projects for the company.")

		ANSWER("CONTINUE",54)
	NODE(54)
		SAY("I have been the greatest supporter of Tangent. The weapons that were produced served to return freedom to the hands of the people. The freedom to move safely through the Wastelands.")

		ANSWER("CONTINUE",55)
	NODE(55)
		SAY("Nobody would be as vulnerable as before any longer. Nobody would have to hide in some stinkin hole. Bullshit! I have been enlightened, I have come to know the truth. And when I finally found it I quit.")

		ANSWER("What truth did you find?",56)
	NODE(56)
		SAY("Tangent has no interest in the people. No interest at all. Tangent is like a giant machine whose gigantic gears grind everything to dust. Everything that is in its way. It has become a beast.")

		ANSWER("CONTINUE",57)
	NODE(57)
		SAY("Sometimes I believe it has developed its own will. Not even Damion Jordan can really control it. Even if Damion would be gone that beast would just grow another head and continue.")

		ANSWER("CONTINUE",58)
	NODE(58)
		SAY("It is like a Hydra. Severe one head and it will grow two. Unstoppable and cold as death.")

		ANSWER("It seems clear to me that you have not made a pleasent experience with Tangent. But I can assure you that this will not repeat itself.",59)
	NODE(59)
		SAY("You are very naive, Runner. Nowadays all I want is to meet my old friend Torben once in a while, visiting that restaurant in the Pepper Park subway station and talking about old times. Torben and I have endured a lot and he always helped and aided me with his advice.")

		ANSWER("Would you maybe listen to your friend if he would suggest that you work for Tangent again? Maybe I should really try and convince your friend to do the convincing for me. He will surely understand that it will be the best for you.",60)
	NODE(60)
		SAY("What? What did you just say?")

		ANSWER("I have just mouthed a thought I had. Goodbye Mr Tronstett.",61)
	NODE(61)
		SAY("Very well, goodbye Runner.")
		SETNEXTDIALOGSTATE(62)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
		
	NODE(62)
		SAY("Even if you ask me again and again I am still not interested. I will tell Torben about this in the Pepper Park subway station.")
		ENDDIALOG()
		

-----------------------------------------------------
--Torben

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Do i know you from somewhere? Leave me alone.")
			ENDDIALOG()
		else
			SAY("Hullo, Runner. Where is the problem?")

			ANSWER("I have heard that you know a certain Mr Tronstett? Matt Tronstett?",101)
		end
	NODE(101)
		SAY("Of course I know him, he is one of my best friends. I have met him on a cooperation between NEXT and Tangent. I am working for NEXT, you know. Tronstett is a very precise and reliable person.")

		ANSWER("He certainly is. Would you recommend to him to work for Tangent once more? I have heard many good things about him. It would be a shame to let his talent go to waste out there in the Wastelands. Wouldn't it?",102)
	NODE(102)
		SAY("He is really unmotivated at the moment. I admit as much. He was very disillusioned when he quit Tangent. I think he just realized that he could not change anything as one person. But I would never advise him to anything he would not want himself.")

		ANSWER("No, no, what are you thinking? But a work place at Tangent would be safe and well paid. And your friend can occupy himself with what he likes best. Research.",103)
	NODE(103)
		SAY("You are not trying to convince me to advise my friend Matt in a certain way?")

		ANSWER("Yes, I am trying to do exactly that. Don't you see that it would be the best for him? He is not getting younger and the Wastelands might soon claim his life. But with Tangent he would be safe.",104)
	NODE(104)
		SAY("No, really, Matt should do whatever he thinks is right. If you would offer that job to me I would certainly accept it. But not like that, thank you.")

		ANSWER("As a last resort I can only try to offer you a small bonus to make the decision easier for you. To make it easier to convince your friend.",105)
	NODE(105)
		SAY("What do you think I am?! I am not selling my best friend.")

		ANSWER("Maybe 5000 credits? I could talk to one of the directors of operation from Tangent.",106)
	NODE(106)
		SAY("5000 ?? Well... I think it might not really harm him in any way to work some more in his old days. I will recommend it to him as long as you don't forget about my bonus. Otherwise I will surely counsel him against it. Return to your company and I'll take care of the rest.")
		SETNEXTDIALOGSTATE(107)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()

	NODE(107)
		SAY("I have already accepted your dirty money, what else do you want?! My soul? Go back to your company and make sure that I get that money you promised.")
		ENDDIALOG()
		

-----------------------------------------------------
--Mazzaro

	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Yes? I understand but only meet me once you have finished your task.")
			ENDDIALOG()	
		else
			SAY("I can almost remember your name. That's a good sign. Have you been able to convince Tronstett?")

			ANSWER("It wasn't too easy. I had to convince a certain Torben to convince Tronstett in my stead. Unfortunately I had to promise him 5000 credits.",151)
		end
	NODE(151)
		SAY("You have just promised him that money from Tangent? Without asking in the first place? That is very careless of you. But if Matt Tronstett really should work for us again it is a small price to pay.")

		ANSWER("CONTINUE",152)
	NODE(152)
		SAY("In that case we will gladly pay the sum. Is it certain that Torstett will work for us again?")

		ANSWER("It should all be sorted out. He told me he trusts the advice of his friend.",153)
	NODE(153)
		SAY("Well done. You really seem to be up to every trick, it seems to me. Tangent rewards you with these 2000 credits. With the help from Tronstett that Beam weapon will be developed even faster.")

		ANSWER("CONTINUE",154)
	NODE(154)
		SAY("Keep yourself available and in good shape in case that we need your services again for a special assignment.")
		EPICRUNFINISHED(4,1)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()

end