--new
--BlackDragon
--
--Trigger
--Triggernumber,Type,Person
--0,D, LUCY 50
--1,NPCTYPEloot, Mercurus
--2,LOOTNPC, CHANG
--3
--
--Startnode, Person
--0, WISEGUY
--50, LUCY
--100, MERCURUS 
--150, Chang
--200, LUCY
--250,
--
--Items
--DrogenProduzent 9464
--Missionbase Eintrag
--NPC0	NPC1	NPC2	NPC3	TRG0	VAL01	VAL02	VAL03	TRG1	VAL01	VAL02	VAL03	TRG2	VAL01	VAL02	VAL03	TRG3	VAL01	VAL02	
--
--START	START	START	START
--50	100	150	200
--

function DIALOG()
--------------------------------------------------------------------
--WISEGUY
--0
	
	NODE(0)
		SAY("It is time. Lucy asked me to tell you that she wants to speak to you. But be careful, Gecko doesn't like it if somebody is talking to his girlfriend.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()
	NODE(1)
		SAY("Did you talk to Lucy?")
		ENDDIALOG()


--------------------------------------------------------------------
--LUCY
--50
	NODE(50)
		SAY("Ahh, my favourite Runner. I hope you could enjoy your spare time and that you are ready to get rich.")

		ANSWER("I got no objections to being rich.",51)
	NODE(51)
		SAY("Listen. The Monsun Clan successfully raided our convoys time and time again. Usually they killed everybody who tried to stop them and sacked all the goods. Considering all the raids they made they must have amassed an enormous amount of drugs by now. It would seem logical that they store the drugs somewhere.")

		ANSWER("I see. So you are talking about a drug El Dorado.",52)
	NODE(52)
		SAY("Yes. It is a treasure that only waits to be found by us. Imagine what we could win through this.")

		ANSWER("We would be rich... Count me in. When do we start?",53)
	NODE(53)
		SAY("As soon as you are ready. I have some support from the ranks of the Crahn. Maybe they could help you with finding the location we are looking for.")

		ANSWER("What do I need you for if I am doing everything myself anyway?",54)
	NODE(54)
		SAY("Let's assume for a moment that you find the drugs. Whom would you give them to? What would you do with them? Your only choice is to sell them to me. After all Leone and Lucky are both rather angry at you presently. I will pay you a fair price, trust me.")

		ANSWER("I see, it seems that you have thought about everything. Where should I start with my search?",55)
	NODE(55)
		SAY("Mercurus assured me that the Crahn seers would at least be able to reveal a trace. Something we can follow up. I suggest you visit them first. Nobody knows much about them but it is certain that they do have a talent in seeing things that have not yet happened. As soon as you find something bring it to me.")
		SETNEXTDIALOGSTATE(200)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()



--------------------------------------------------------------------
--MERCURUS
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Crahns followers are not here for your enjoyment.")
			ENDDIALOG()
		else
			SAY("I remember that we met before. I hope Crahn has finally enlightened you. Speak up now, what is your business here.")

			ANSWER("I was promised that your seers could reveal something of importance to me. Some kind of lead to a special storage place of the Monsun Clan. That particular place where they are storing all their stolen drugs. All drugs that have ever been stolen by them.",101)
		end
	NODE(101)
		SAY("I understand. So you want our help, the help of our seers, in order to find these drugs? And you think that the seers are not busy enough already? Don't you think our seers have something more important to attend to?")

		ANSWER("I don't know about your problems but I still need your help.",102)
	NODE(102)
		SAY("If you need the help of our seers then you will have to help us first. Our seers can only help you if you take a load of their shoulders. Long story short, acquire something that is of value for us.")

		ANSWER("And what would that be?",103)
	NODE(103)
		SAY("We would be in need of a few kidneys for some special experiments we are conducting. We don't care where the kidneys come from either way. I hope you grasped my suggestion? There is only a slight inconvenience since we require kidneys from Fallen Angel members. Two kidneys would be sufficient I would say.")

		ANSWER("Are you saying that I am supposed to just grab a random Fallen Angels member, gut him and then steal his kidney?",104)
	NODE(104)
		SAY("Do you have a problem with that?")

		ANSWER("No, no, if it serves to get me closer to my goals I will get you those two kidneys.",105)
	NODE(105)
		SAY("Good, make sure you only attack employees and no Runner. Runner usually already carry some kind of virus or radiation disease and that makes them useless for our test purposes.")

		SETNEXTDIALOGSTATE(106)
		ENDDIALOG()
--SPIELER LOOTED 2 FA NPCS 

	NODE(106)
		TAKEITEMCNT(9464,2)
--NIERE
		if(result==0)then
			SAY("We need those kidneys as part of our experiments. What are you waiting for?")
			ENDDIALOG()
		else
			SAY("Excellent. I have asked one of our seers while you were busy. It seems that he was aware that you would bring us the desired kidneys and thus he presented me with the answer to your question. Since we now have our kidneys I can tell you what you desire to know.")

			ANSWER("That's what I was hoping for.",107)
		end
	NODE(107)
		SAY("Look for a person named Chang. You will find him in the Tsunami area sector 07. He holds the key to your search.")

		ANSWER("That is all I get? ",108)
	NODE(108)
		SAY("Yes and now go. I don't have any more time to waste on you.")
		SETNEXTDIALOGSTATE(109)
		ENDDIALOG()
	NODE(109)
		SAY("Look for Chang in sector 07. He will hold the key to your quest.")
		ENDDIALOG()

		

--------------------------------------------------------------------
--Chang
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("I have nothing to do with you, Runner.")
			ENDDIALOG()		
		else
			SAY("I don't care who you are, I just don't enjoy talking to somebody like you.")

			ANSWER("You certainly know where the Monsun have stored all their stolen drugs, don't you?",151)
		end
	NODE(151)
		SAY("Runner, you don't know squat. Tsunamis have no interest in drugs whatsoever.")

		ANSWER("I have a very reliable source so don't try to trick me. Do I have to beat the crap out of you first before you answer me?",152)
	NODE(152)
		RAND(2)
		if(result==0)then
			SAY("Let me tell you something. Don't get involved in Tsunami business. Guys, kill him good.")
			HELP()
			SETNEXTDIALOGSTATE(153)	
			ENDDIALOG()
		else
			SAY("You are trying my patience. I think I will have to solve this problem all by myself.")
			ATTACK()
			SETNEXTDIALOGSTATE(153)	
			ENDDIALOG()
		end
	NODE(153)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("This is no place to be for someone like you. Get lost!")
			ATTACK()
			ENDDIALOG()
		else
			SAY("My god, I hope you didn't get my key? Damn that would cost my head.")

			ANSWER("You mean this one?",154)
		end
	NODE(154)
		TAKEITEM(9463)
--KEY FÜR DROGEN EL DORADO
		if(result==0)then
			SAY("Ha, you will never get the key! I will take care of that!")
			
			ATTACK()
			ENDDIALOG()
		else
			GIVEITEM(9463)
			SAY("How did you get the key from me?! Give it back! NOW!")
			ATTACK()
			ENDDIALOG()
		end

--------------------------------------------------------------------
--LUCY
--200
	NODE(200)
		TAKEITEM(9463)
--KEY FÜR DROGEN
		if(result==0)then
			SAY("First we need to know where the stolen drugs are stored. Talk to Mercurus. He can help us with the Crahn seers.")
			ENDDIALOG()
		else
			ISMISSIONTARGETACCOMPLISHED(0)
			if(result==0)then
				SAY("Do it exactly as you were told.")
				ENDDIALOG()
			else	
				ISMISSIONTARGETACCOMPLISHED(1)
				if (result==0)then
					SAY("Do you want to be rich or dead?")
					ENDDIALOG()
				else

					SAY("Respect my friend. You have come across something big. Will you give the key to me?")

					ANSWER("First I want to know how many drugs we are talking about.",201)
				end
			end
		end
	NODE(201)
		SAY("I suspect about a few million credits worth of drugs. But I would need to see the stuff myself first. The key is at least pointing us directly to the storage place. That much I am sure off.")

		ANSWER("Good, then the question of my reward is clear. Two million should be enough and I will give you the key.",202)
	NODE(202)
		SAY("Very funny, where do you suggest I should take that sum from? No, I have another proposition to make.")

		ANSWER("I am listening.",203)
	NODE(203)
		SAY("I will get you access to our drug outlet, ok? With that you can get yourself as many drugs as you want to.")

		ANSWER("Clearly not as good as money but I could live with that. Where is the catch?",204)
	NODE(204)
		SAY("The contact person will probably only be able to give you small amounts at one time, othwerwise it would be too suspicious. But you can go back there anytime and you will get some drugs.")

		ANSWER("Agreed. What about my career? Do I get any other tasks?",205)
	NODE(205)
		SAY("No, or at least not directly from me. Gecko could get jealous. And since you have some bad blood between yourself and Lucky and Leone you won't get any more from them either. I suggest you build up your own name. Create something that will shake the foundations of the earth. I wish you the best of luck. Maybe you can start by founding a clan.")
		ACTIVATEDIALOGTRIGGER(3)
		EPICRUNFINISHED(9,5)
		ENDDIALOG()

end