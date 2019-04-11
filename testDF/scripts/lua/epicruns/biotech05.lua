--new
function DIALOG()
--Trigger
--Triggernumber,Type,Person
--0,D,Grand
--1,D,McMillan

--Startnode, Person
--0 Human Resource
--50 Grand
--100 McMillan


-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("It is not acceptable any longer. Every day there is a new flood of rumours reaching the net, trying to disrupt BioTech as a whole. But we can do nothing against so many individual hackers.")
		
		ANSWER("CONTINUE",1)
	NODE(1)
		SAY("BioTech decided to determine who is pulling the strings in this. Once we found him these rumours will soon stop flooding the network. A creature without its head is a dead creature, it was always like that and it will always be like that.")
		
		ANSWER("I'll gladly try my best for BioTech. Where do I start?",2)
		ANSWER("If you think about me, I cannot do it at the moment...",5)
	NODE(2)
		SAY("It seems that this hacker, Grand is his name I think, is suited for what we have in mind. Visit him again. Motivate him to find out who started all this. Who has declared open war on us.")
		
		ANSWER("I believe that will be a piece of cake.",3)
	NODE(3)
		SAY("You can offer him a small sum of 10000 Credits as compensation. It could help to support his motivation. Of course this will be sponsored by the company. Good luck.")
		
		ANSWER("CONTINUE",4)
	NODE(4)
		SAY("If the hacker should be succesful be sure to meet McMillan as well. He will discuss the next steps with you.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(6)
		ENDDIALOG()
		
	NODE(5)
		SAY("But it would have been very important to Biotech. Well, whatever you mean. But you are letting BioTech down this time, really.")
		ENDDIALOG()
		
	NODE(6)
		SAY("Did you already visit Grand in the Outzone 01?")
		ENDDIALOG()
		

-----------------------------------------------------
--Grand

	NODE(50)
		SAY("Not again!! I thought I was finally free of you!!")
		
		ANSWER("There is still a little something you have to do...",51)

	NODE(51)
		SAY("I have already told you all I know! What on earth could you want form me again?")
		
		ANSWER("Simple. We need to know who is behind all these rumours. And you, you will find out who the culprit is.",52)
	NODE(52)
		SAY("I have strong objections... I won't be exploited...")
		
		ANSWER("BioTech plans to award you 10000 Credits if you agree to help us. Still not interested?",53)

	NODE(53)
		SAY("Those 10000 will really be mine? well, maybe I can do something. But it won't be easy.")
		
		ANSWER("That would really have surprised me if something turned out to be easy.",54)
	NODE(54)
		SAY("Once I have the 10000 I can begin the search for the persons that is responsible for the rumours. This will take a while but I believe I can do it. Although I might still need a few tools.")
		
		ANSWER("What kind of tools?",55)

	NODE(55)
		SAY("There is a special kind of Warbot in the Wastelands. They have special network ID codes printed on their microchips.")
		
		ANSWER("CONTINUE",56)
	NODE(56)
		SAY("If I use those IDs nobody will be able to track me since it appears as if a Warbot is browsing the net. It is a certain fail safe for me.")
		
		ANSWER("If that really is necessary, I will do it. Every day there is more and more rubbish about BioTech entering the net so we need to hurry. Where can I find this WarBot?",57)

	NODE(57)
		SAY("That is easy. Just go the Wasteland zone i 07. There you will find not only a production facility, Emmerson factory I believe was its name, but also these WarBots. Get me one of those Microchips. But I fear that you cannot take it without disabling one of them first. Good luck!")
		SETNEXTDIALOGSTATE(58)
		ENDDIALOG()

--SPieler holt Warbot Microchips

	NODE(58)
		TAKEITEM(9203)
		if(result==0)then
			SAY("Without the number code I will be caught in no time. You better get me one.")
			ENDDIALOG()
		else
			SAY("Thanks. But this can take a while now. I will transmit the results directly to BioTech, ok? I really hope this is the last time that I see you.")
			ACTIVATEDIALOGTRIGGER(0)
			SETNEXTDIALOGSTATE(59)
			ENDDIALOG()
			
		end

	NODE(59)
		SAY("It will still take a while. The more I am being disturbed the longer it will take. You can just as well wait at your company.")
		ENDDIALOG()
		


-----------------------------------------------------
--McMillan

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Please speak to me only if you know something of importance.")
			ENDDIALOG()
		else
			ISMISSIONTARGETACCOMPLISHED(2)
			if(result==0)then
				SAY("You must have forgotten something. I am almost certain.")
				ENDDIALOG()
			else
				SAY("There you are. You are really getting famous throughout BioTech. And with your help we will ban that ghost that is haunting us.")
		
				ANSWER("Grand, the hacker, has agreed to pin down the person who is behind all of this. He will transmit his findings directly to BioTech. But that could still take some time.",101)
			end
		end
	NODE(101)
		GIVEMONEY(30000)
		GIVEITEM(9204,255)
		SAY("Very good, very good. As soon as we know who started all this we will need your help again. But we should speak about that once it is about time to act. For now you are being awarded 30000 credits for your invaluable service. And in addition this implant might come in handy in the next mission. Get into shape, you might need it...")
		EPICRUNFINISHED(5,4)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
end