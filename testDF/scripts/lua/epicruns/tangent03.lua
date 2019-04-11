--new
function DIALOG()
--Trigger
--Triggernumber,Type,Person
--0,D,Zakashi
--1,D,Kev
--2,D,Benjamin
--3,D,Tangent

--Startnode, Person
--0
--50, Zakashi
--100, Kev Critter
--150, Benjamin Kain
--200, Tangent Employee
--Items -> none

-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("What a strange coincidence that you would come right when we need you. The beam weapon project is progressing in big steps. A test run has already been made to see the effects it has on various materials. It is all very convincing. Only that alone is not sufficient for Tangent.")

		ANSWER("CONTINUE",1)
	NODE(1)
		SAY("Knowledge is required. Information on the progress of BioTech developments. For this purpose we need a reliable Runner like you to conduct some investigation into that direction.")

		ANSWER("Investigation? What kind of investigation?",2)
	NODE(2)
		SAY("Tangent has various methods to get required information. There are many contact persons who would sell their own mother for money. Enough of them to directly play into our hands.")

		ANSWER("Isn't spying illegal?",3)
	NODE(3)
		SAY("Spying? You obviously still haven't learnt that Tangent only does what every other company does as well. Which is exactly the reason why Tangent is still in business.")

		ANSWER("CONTINUE",4)
	NODE(4)
		SAY("You can't really be so innocent to believe that other companies don't use the same methods, right? This task is important for the company. And as far as I am concerned you are either for or against Tangent. I would not advise you to be against Tangent.")

		ANSWER("I did not want to seem insulting, sorry. It's just...",5)
	NODE(5)
		SAY("Look around and you'll see two possibilities. Either you belong to a powerful faction or... you should decrease your life expectancy accordingly. The contact person for this task can be found at the Catlock Bay.")

		ANSWER("CONTINUE",6)
	NODE(6)
		SAY("You can offer him up to 10000 credits if you think the information is worth it. He is a Tsunami with the name of Gruber. Be on your guard.")

		ANSWER("CONTINUE",7)
	NODE(7)
		SAY("There is no law in the Wastelands so be careful. Don't stay too long out there or you might catch a nasty mutation. If you find out anything interesting just come back here and report to me.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()
	NODE(8)
		SAY("It is your choice. If you change your mind just come back here.")
		ENDDIALOG()

	NODE()


-----------------------------------------------------
--Zakashi

	NODE(50)
		SAY("Come closer, I don't want to repeat myself in the case you don't understand me. Who sent you?")

		ANSWER("I am coming from Tangent. You are supposed to have information on how far the development of the BioTech Beam weapon has advanced so far.",51)
	NODE(51)
		SAY("Me? I am supposed to have that information? don't make a fool of yourself. I only have information about who could help you. But I am not certain if you really want to know that.")

		ANSWER("Why? After all that is the only reason why I came all this way into the Wastelands.",52)
	NODE(52)
		SAY("I hope you are aware that I am Tsunami?")

		ANSWER("Yes, I have been informed. Just tell me that person you spoke about. Then I can finally leave this death zone.",53)
	NODE(53)
		SAY("You might try that crazy Kev Critter at the Blackmist Garbage Dump. But speaking about death zones...")

		ANSWER("CONTINUE",54)
	NODE(54)
		SAY("BioTech already anticipated that there would be many people nosing around their secrets. People that have to be stopped. That is why they paid me to eliminate this threat. ")

		ANSWER("One moment. What is that supposed to mean? You have been hired to kill people?",55)
	NODE(55)
		SAY("Very good, yes. People like you to be precise.")

		ANSWER("I am certain we could manage this peacefully.",56)
	NODE(56)
		SAY("I am sorry but I am always loyal to the client. That is why I am going to kill you now.")

		ANSWER("But...",57)
	NODE(57)
		SAY("Too late...")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(58)
		ATTACK()
		ENDDIALOG()
	NODE(58)
		SAY("Only one person will leave this place alive.")
		ATTACK()
		ENDDIALOG()


-----------------------------------------------------
--Kev Critter

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("I see so many stars... so many... do you see them too?")
			ENDDIALOG()
		else
			SAY("Huh? Are you a ghost?")

			ANSWER("I can assure you I am very much real and not in a particular good mood.",101)
		end
	NODE(101)
		SAY("... I.... don't know, do I know you? The sky is so strange...")

		ANSWER("You seem to be on drugs. Bah, I can't talk to you like that.",102)
	NODE(102)
		SAY("What? Yes, I can talk... but about what? Hihihi. Quick, bring me some of this Powerbooze Gold. That helps most of the time.")

		ANSWER("Do I have a choice?... I thought so...",103)
	NODE(103)
		SAY("Everything is so strange...")
		SETNEXTDIALOGSTATE(104)
		ENDDIALOG()

--Spieler besorgt Powerbooze Gold 804
		
	NODE(104)
		TAKEITEM(804)
		if(result==0)then
			SAY("Please bring me a Powerbooze Gold.")
			ENDDIALOG()
		else

			SAY("Ahhh... that's much better... this drug was shit. I think I burned too many braincells on this trip.")

			ANSWER("I would definitively say so. Are you crazy? Getting on a trip like that?",105)
		end
	NODE(105)
		SAY("That's easy to say for you... it is warm in the city, everybody has a nice appartement and you give a damn about the people here in the Wastelands.")

		ANSWER("You can't say that...",106)
	NODE(106)
		SAY("Have a look around and count the abandoned villages... all were destroyed from mutants or even worse things.")

		ANSWER("CONTINUE",107)
	NODE(107)
		SAY("And the citizens of Neocron sit on their hands and swallow one Powerbooze after the other. I would much prefer to do that as well if I did not have this job here.")

		ANSWER("I am sick of it. Somebody already tried to kill me only because I wanted some information about BioTech.",108)
	NODE(108)
		SAY("Yes, every faction is guarding their secrets at all costs. Do you want to cry out your soul here or do you actually have anything useful to say?")

		ANSWER("I won't be talked to like that. I would love to smash your face for that one. Tell me how far BioTech is with the development of their Beamweapon!",109)
	NODE(109)
		SAY("You are not very polite. Think about something else... maybe a little bit more polite.")

		ANSWER("...Alright... I did not want to get all that excited anyway. Could you please tell me something? I would like to know how far the development of the BioTech Beamweapon has come.",110)
	NODE(110)
		SAY("Very good, much better, wasn't that difficult either, don't you think?... argh, my head still hurts... Alright, I only know one BioTech employee. Don't know if he can help you... just try it... His name is Benjamin. You can find him in the Industrial Sector 02. He always says that that is his world.")
		SETNEXTDIALOGSTATE(111)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
		
	NODE(111)
		SAY("Ask Benjamin in Industrial 02, I don't want to get involved.")
		ENDDIALOG()


-----------------------------------------------------
--Benjamin Kain

	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Go away, leave me be.")
			ENDDIALOG()
		else
			SAY("Yes? What?")

			ANSWER("Do you work for BioTech? Since I have heard something like that...",151)
		end
	NODE(151)
		SAY("Would you be a little bit more precise?")

		ANSWER("I would have liked to get some information but I need your help with it.",152)
	NODE(152)
		SAY("Do I look as if it would be fun to answer such questions to some pedestrians?")

		ANSWER("I can offer you a compensation for your trouble. For all the effort you have to put into it.",153)
	NODE(153)
		SAY("Credits? You mean credits? Well, maybe something would spring to my mind. But it could cost a little bit.")

		ANSWER("That sounds much better. Do you by any chance happen to know about the newly developed beam weapon ? BioTech should already have invested a lot of work into that project.",154)
	NODE(154)
		SAY("Funny that you should ask. I know about it and I can even offer you more. For the right price, that is. I have a blueprint of that beamweapon right here with me.")

		ANSWER("Really? That is an exceptional coincidence. How much do you want for that?",155)
	NODE(155)
		SAY("Since I believe BioTech should concentrate more on already established projects, not something like weapons, rather something like implants.")

		ANSWER("CONTINUE",156)
	NODE(156)
		SAY("That's why I am offering it to you at a special price. But not right now since that would just draw too much attention to me. At the moment I can offer you the information about the status of the project.")

		ANSWER("That is exactly what I need.",157)
	NODE(157)
		SAY("For you it's only 15000.")

		ANSWER("I can only offer you 10000. My superiors did not allocate more for this assignment.",158)
	NODE(158)
		SAY("Alright, if it has to be. The development of the beam weapon has progressed rather far already. A complex method to concentrate several beams has already been found and is being tested as we speak.")

		ANSWER("CONTINUE",159)
	NODE(159)
		SAY("At the moment there are still problems with the size of the emitters. Three persons would not be able to lift it off the ground. Since the CityAdmin has given out precise instructions the power of the weapon is about 15 percent higher than a comparable weapon that is available now.")

		ANSWER("Good, that is very revealing. Thank you. I will quite possibly contact you again because of that blueprint.",160)
	NODE(160)
		SAY("Yes, do that. But I cannot guarantee that I will still have the blueprint then.")
		SETNEXTDIALOGSTATE(161)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
		
	NODE(161)
		SAY("If you are not interested at the blueprint I have no desire to further speak to you.")
		ENDDIALOG()
		
-----------------------------------------------------
--Human Resource Director

	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Don't you have something to report? The contact person is in the Catlock Bay Area.")
			ENDDIALOG()
		else
			SAY("Have you acquired any news?")

			ANSWER("It was almost an odyssee. I had to cross the whole Wastelands just to find somebody who could provide the information.",201)
		end
	NODE(201)
		SAY("Nobody claimed that it would be easy to get these informations. But you seem to have found something if I am not mistaken.")

		ANSWER("Yes, I do know now that BioTech is already testing their weapon's power. But it would seem that they have problems with the size of the cannon.",202)
	NODE(202)
		SAY("Very interesting. your report is identical to those of some other operatives. that means we can be pretty sure that this information is right.")

		ANSWER("I have expected that other Runners would get the same assignment. But isn't it rather elaborate and costly to do that?",203)
	NODE(203)
		SAY("Yes it is but we cannot properly assess if the Runner will be successful with his mission or not. Which means we are playing safe and sending more people. You have done a good job, Runner.")

		ANSWER("Wait a moment. The contact person did even have a blueprint of the BioTech prototype.",204)
	NODE(204)
		SAY("... If that is true we have to look into that ourselves. You can allow yourself some rest for now.")

		ANSWER("CONTINUE",205)
	NODE(205)
		GIVEMONEY(5000)
		SAY("It will take some time until we evaluated all information. Only then can we plan the next step. But for your services you have earned yourself 5000 credits.")
		EPICRUNFINISHED(4,2)
		ACTIVATEDIALOGTRIGGER(3)
		ENDDIALOG()
	
end