--new
function DIALOG()
--Trigger
--Triggernumber,Type,Person
--1,D,Figaro
--6(0),PvP,Figaro
--2,D,Benjamin
--3,D,Mazzaro

--Startnode, Person
--0
--50, Figaro
--100,Benjamin
--150,Mazzaro
--Items -> none

-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("Something unforeseen happened last night. Our laboratory was sabotaged and some sub systems of our network have been hacked. Luckily Chester Cohor was able to scan the ID of the hackers before everything went down.")

		ANSWER("CONTINUE",1)
	NODE(1)
		SAY("It doesn't come as a surprise that the hackers turn out to be BioTech employees. The problem is that we do not have any evidence for this due to the fact that the relevant data blocks have been damaged by the sabotage. Our research and development was set back a couple of days as well.")

		ANSWER("That BioTech uses such methods could have been anticipated.",2)
	NODE(2)
		SAY("That may very well be but you underestimate the complexity and fragility of such systems and test rigs. Even the slightest distortion can cause maximum damage. In addition the network was still being reconfigured after the Fallen Angels hack attack. Because of that it was more vulnerable than usual.")

		ANSWER("What consequences will this have? Did Tangent already decide on a proper response? I mean, some kind of response must follow.",3)
	NODE(3)
		SAY("Yes, you are right and the consequence has already been decided. BioTech will be attacked directly by us. As a warning of course. Since you have proven your competence with these kind of missions Tangent has chosen you for this task to flatline one of them.")

		ANSWER("It's not as if I chose to do these kind of assignments. But I will do it.",4)
		ANSWER("I do not believe I can do this.",7)
	NODE(4)
		SAY("Something else I just remembered. The Tsunami seem to have been involved as well. You should speak to Figaro again since we will also utilize our connections to the Black Dragon in this case. If BioTech uses the help of the Tsunami we will certainly not go into this without the Black Dragon. You should decide the course of action that the Black Dragon should take against BioTech. Listen to what they can do and choose the appropriate response.")

		ANSWER("CONTINUE",5)
	NODE(5)
		SAY("There is more. Your contact person, Benjamin, insisted on talking only to you. He said that he prefers the devil that he already knows. It seems that he was able to nick one part of the prototype beam weapon and now he is willing to sell it to us.")

		ANSWER("Can you be a little bit more precise and tell me whom I should kill?",9)
	NODE(6)
		SAY("The word of your accomplishments spread fast. There is much to do so don't waste any time. First you should visit Figaro and after you have flatlined one BioTech member Benjamin is already waiting for you.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(8)
		ENDDIALOG()

	NODE(7)
		SAY("If you change your mind, don't hesitate to contact us.")
		ENDDIALOG()
		
	NODE(8)
		SAY("You already have the assignment specs. Give instructions to Figaro, kill a BioTech Employee and then visit Benjamin in the Industrial district 02. Once you are done with that talk to Mazarro.")
		ENDDIALOG()

	NODE(9)
		SAY("It is your task to kill one BioTech Employee. It should NOT be Runner.")
		
		ANSWER("And I can really flatline any BioTech employees I want to?",10)
	NODE(10)
		SAY("No, only one single BioTech Employee. Otherwise the kill cannot be accepted.")

		ANSWER("CONTINUE",6)

-----------------------------------------------------
--Figaro

	NODE(50)
		SAY("I haven't seen you for quite some time, Runner. But I have heard a lot about you. You seem to get around a lot.")

		ANSWER("I had all hands full in the past weeks.",51)
	NODE(51)
		SAY("Already heard about how you showed those Fallen Angels tech freaks. Not bad, not bad at all. Maybe you will get somewhere after all. But that is exactly the way it works here in the underworld. We, the Black Dragons, are constantly battling it out with the Tsunamis. Those Tsunamis always act as if they have some kind of privilege on everything.")

		ANSWER("CONTINUE",52)
	NODE(52)
		SAY("And then there are also occasional fights with the Anarchy Breed. It is rare that a company gets involved in this at all.")

		ANSWER("CONTINUE",53)
	NODE(53)
		SAY("It is more often the case that the companies hire us to do their dirty laundry. And they pay good. Now, I was told that you were sent to me to tell us what to do. Just tell me now what Tangent wants and we will execute this action against BioTech.")

		ANSWER("What options do you have? What can you do?",54)
	NODE(54)
		SAY("Let me think... sabotage, murder or extortion. That's pretty much the usual stuff we do. Ha!")

		ANSWER("It seems only reasonable to avenge sabotage with sabotage. I suggest you take out important BioTech facilities.",55)
		ANSWER("It is time to teach those BioTech freaks a lesson. Kill a couple of those bastards.",56)
		ANSWER("Blackmail some of their scientists so that they cannot gain any ground on us. Tangent will have this commission from the CityAdmin and not BioTech!",57)
	NODE(55)
		SAY("Very well, sabotage it will be. Let us see what a little bit of nitroglicerine can do in a laberatory. Have a nice day.")
		SETNEXTDIALOGSTATE(58)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
	NODE(56)
		SAY("Very well, I think that some prominent researchers are going to find an unpleasant package soon. Have a nice day.")
		SETNEXTDIALOGSTATE(58)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
	NODE(57)
		SAY("Very well, I know just the right targets. It is always nice to make some money out of someones misery. Have a nice day.")
		SETNEXTDIALOGSTATE(58)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
		
	NODE(58)
		SAY("The action is already rolling. We will take care of it, rest assured. Didn't you say you need to visit a certain person in Industrial 02?")
		ENDDIALOG()
		
--Spieler killt zwei Biotechler 6

-----------------------------------------------------
--Benjamin

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("This isn't the right time. I expect somebody else first.")
			ENDDIALOG()	
		else
			SAY("Finally! There you are! Look, I have the strong suspicion that I am being watched. So let's cut it short. The deal has already been arranged with Tangent. By accident a part of the beam weapon prototype ended up in my pocket when I left the facility and now it belongs to Tangent. Here...")

			ANSWER("Very good, thank you for this prototype part...",101)
		end

--Spieler bekommt Prototyp 9154

	NODE(101)
		GIVEITEM(9154)
		SETNEXTDIALOGSTATE(102)
		SAY("Now be on your way... no, wait! I've got something else that could prove to be of value for you. I have found out a few facts about Andressa. She works for BioTech. I can even prove it with a few documents I've got. Interested?")

		ANSWER("Of course I am. Everything against BioTech is welcome to Tangent.",102)
	NODE(102)
		SAY("Alright, but that will cost an additional 5000 credits. ")
		SETNEXTDIALOGSTATE(103)
		ENDDIALOG()
		
	NODE(103)
		TAKEMONEY(5000)
		if(result==0)then
			SAY("come back when you have the 5000 credits...")
			SETNEXTDIALOGSTATE(104)
			ENDDIALOG()
		else
			GIVEITEM(9155)
			SAY("Here is the deal. She is one of the scientists who developed the beam weapon and she was involved in every major stage. She has a few secrets that I am certain she would not want to get public. Maybe it's sufficient if I say that she digs mutants... you can find the details in her file.")

			ANSWER("Let me have a look... Heavens! This is disgusting... And exactly what we need! Good work.",105)
		end
	NODE(104)
		SAY("Did you bring the 5000 credits?")

		ANSWER("Of course, although I had to scrape the money together from all over the place.",103)


	NODE(105)
		SAY("Yes, yes, but now you should better leave.")
		SETNEXTDIALOGSTATE(106)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
		
	NODE(106)
		SAY("You now got everything I can offer! Now beat it!! I don't want to be seen talking to you. Go back to your company")
		ENDDIALOG()
		

-----------------------------------------------------
--Mazzaro

	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("You have not completed all your tasks. Kill one BioTech Employee, visit Benjamin in Industrial 02, give Figaro in Pepper Park 03 some instructions. How hard can that be?")
			ENDDIALOG()	
		else
			ISMISSIONTARGETACCOMPLISHED(1)
			if(result==0)then
				SAY("You have not completed all your tasks. Kill one BioTech Employee, visit Benjamin in Industrial 02, give Figaro in Pepper Park 03 some instructions. How hard can that be?")
				ENDDIALOG()
			else
				SAY("I am still angered because of that sabotage. They really delayed our research into the beam weapon. But I am still confident. Our design is more promising in my opinion.")

				ANSWER("CONTINUE",151)
			end
		end

	NODE(151)
		SAY("After I have looked through the BioTech blueprints of their beam weapon I have come to the conclusion that we don't have to fear them. But I sure hope that our answer to their sabotage was appropriate?")

		ANSWER("Yes, BioTech will need some time to recover from this blow. Before I forget, my contact was able to provide a part of the BioTech prototype. I believe it will be very informative.",152)

--Spieler verliert Prototype

	NODE(152)
		TAKEITEM(9154)
		if(result==0)then
			SAY("But you don't have that prototype part with you.")
			ENDDIALOG()
		else
			SAY("Excellent. You have already earned yourself a safe place here with Tangent. Only recently I have heard Damion Jordan talk about you.")

			ANSWER("CONTINUE",153)
		end
	NODE(153)
		SAY("He was referring to the fight against the Fallen Angels. Albeit there are different versions about how you showed those Fallen Angels. Tell me, you didn't really fight them all at once, did you?")

		ANSWER("But of course I have and everybody who says something different is a liar, haha!",154)
	NODE(154)
		GIVEMONEY(20000)
		SAY("Take these 20000 credits as a small compensation for your efforts. Good luck until the next time we require your help.")
		EPICRUNFINISHED(4,4)
		ACTIVATEDIALOGTRIGGER(3)
		ENDDIALOG()


end