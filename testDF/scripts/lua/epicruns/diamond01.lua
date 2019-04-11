--new
--Diamond Real Estate
--
--Trigger
--Triggernumber,Type,Person
--0,D,Grimm
--1
--2
--3
--
--Startnode, Person
--0, Human Resource Director
--50, Thompson
--100, Foster
--150,Jenna
--200,Human Resource Director
--250,
--
--Items
--

function DIALOG()
--------------------------------------------------------------------
--Human Resource Director
--0
	
	NODE(0)
		SAY("Ahh, welcome at Diamond. We have closely followed your progress so far and some people here were very impressed. To say the least. It was decided to give you an assignment that requires a certain skill.")

		ANSWER("I am pleased to hear that.",1)
		ANSWER("Before I accept such an assignment I believe I should prepare myself better.",5)
	NODE(1)
		SAY("As you might already know we face certain difficulties because of these unpredictable Black Dragons. They are ruthless criminals who would refrain from nothing to reach their goals. Ever since Diamond was privatised in 2046 the Black Dragons were the most serious threat we had to deal with.")

		ANSWER("Why? What do they want? Diamond only trades in real estate.",2)
	NODE(2)
		SAY("Yes, exactly. The Black Dragon aim to dominate the real estate market and the only way to achieve that is to disable Diamond. We already had to decrease our efforts in the Pepper Park Area since the Black Dragon threaten our clients. Even Eric Danmund himself, the head of Diamond has declared a state of emergency.")

		ANSWER("This is bad, but I thought you wanted to tell me about my assignment.",3)
	NODE(3)
		SAY("Of course but I thought you should have some background knowledge. Too many people don't know that almost all apartements and shops are property of Diamond. Except for the problems with the Black Dragons. It has become even worse recently. They already have forced some of our clients away from us. Diamond would like you to visit two persons who want to cancel their contracts with us. You should try and convince them to rethink their decision. Obviously the Black Dragon have something to do with this. After you convinced them you could go to the NCPD and make sure that they are aware of the problem with the Black Dragon.")

		ANSWER("Where can I find those two persons? I will give it my best shot.",4)
	NODE(4)
		SAY("The first client can be found in Plaza 02, he agreed to a meeting in Gariots Diner. The other one can be found in ViaRosso 03. If you still have time after that you should really visit the NCPD and report back to me with the results of your work.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()
		
	NODE(5)
		SAY("Please do so. Always be prepared. Come back once you think you have sufficiently prepared yourself.")
		ENDDIALOG()

--------------------------------------------------------------------
--Thompson
--50
	NODE(50)
		SAY("Hello, are you the Diamond representative?")

		ANSWER("Yes, sorry if I am late but I was only just prepared for this meeting.",51)
	NODE(51)
		SAY("Then you do not yet know what these bastards have done to us?")

		ANSWER("No, I am sorry.",52)
	NODE(52)
		SAY("They busted open the door after they disabled our alarm system. Pointing their guns at us they forced us into a corner of our apartement while they emptied our drawers and cabinets. They piled all our clothing on a table and ignited it. We had to patiently stand by and watch them burn all our clothing, my daughter cried and cried and there was nothing I could have done. After they finally went they threatened us to return if we would not leave our apartement.")

		ANSWER("That is horrible. Have you already contacted the NCPD?",53)
	NODE(53)
		SAY("Yes and they told me they were powerless. The described ruffians don't appear in any CityAdmin file. I am sorry but the only thing I can do under these circumstances is to cancel the contract with Diamond. My little daughter Jasmin doesn't leave her mother for even a second without bursting into tears.")

		ANSWER("I understand. Under these circumstances everybody would act like that. But if you ever change your mind again you know that Diamond is there.",54)
	NODE(54)
		SAY("Thank you for the offer. We have always had good experiences with Diamond, but I cannot continue like this.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(55)
		ENDDIALOG()
		
	NODE(55)
		SAY("My decision is set. I cannot change it for the sake of my child.")
		ENDDIALOG()



--------------------------------------------------------------------
--fOSTER
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Don't disturb me. Our meeting is not till later and I'm busy at the moment.")
			ENDDIALOG()
		else

			SAY("You must be the representative from Diamond, right?")

			ANSWER("Yes I am, and I am here to try and persuade you to become a Diamond Real Estate client again.",101)
		end
	NODE(101)
		SAY("Then try your luck although I think it will be in vain. I will not continue my contract with Diamond.")

		ANSWER("I respect your decision but I would like to hear the reasons you have.",102)
	NODE(102)
		SAY("I don't really want to speak about it since it is of a more personal nature.")

		ANSWER("I assure you that every precaution is being taken against these ruffians, if they were responsible in this case.",103)
	NODE(103)
		SAY("Every possible precaution?! That is not enough! How do you expect to prevent things like this in the future?!")

		ANSWER("I am sure our security experts will take care if it.",104)
	NODE(104)
		SAY("What do you think can those security experts of yours do against six massive Tanks storming your apartement and forcing you to swallow the whole content of your Cryofridge?!! I still need to take pills because of this incident! Well, now you see what I mean. Content?")

		ANSWER("You are right, that is wrong. Best I visit the NCPD personally.",105)
	NODE(105)
		SAY("Go on and try it but it didn't help me in the first place. The contract is cancelled in any case. Sorry.")
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(106)
		ENDDIALOG()
		
	NODE(106)
		SAY("I do not believe I will change my opinion. Good day to you.")
		ENDDIALOG()
--------------------------------------------------------------------
--Jenna
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Please refer to an employee for questions.")
			ENDDIALOG()
		else
			SAY("State your intentions, citizen.")

			ANSWER("I am coming from Diamond and wanted to report that our clients are being harrassed by ruffians who force them to abandon their homes. By force I might add.",151)
		end
	NODE(151)
		SAY("Yes, we have been informed about this in several cases. 36 to be precise. But we still lack vital information to pursue this further. I am sorry.")

		ANSWER("What? That many? And you are telling me that all those people cannot give you enough detail on the criminals? What am I supposed to think of this?",152)
	NODE(152)
		SAY("The descriptions of the criminals do not appear in any of our files. According to our files they do not even exist. They are simply not registered in Neocron. The NCPD suspects the Black Dragon to be behind this but up to this point only a few preventive executions were executed.")

		ANSWER("Preventive executions? But the NCPD...",153)
	NODE(153)
		SAY("I am sorry, citizen. Everybody is doing his best here. I cannot tell you more.")
		ACTIVATEDIALOGTRIGGER(2)
		SETNEXTDIALOGSTATE(154)
		ENDDIALOG()

	NODE(154)
		SAY("The NCPD tries to maintain peace within Neocron. The NCPD always works 110 percent. Therefore you can return to Diamond and rest assured that we will take care of it sooner or later.")	
		ENDDIALOG()
--------------------------------------------------------------------
-- Human Resource Director
--200
	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Always be nice and friendly. One client is waiting in Plaza 02 and the other one in ViaRosso 03. You will find them in one of the various restaurants on location.")
			ENDDIALOG()
		else
			SAY("There you are again. That was pretty fast. You seem to be a very determined person.")

			ANSWER("Determined might be an overstatement. The clients were forced from their property by Ruffians.",201)
		end
	NODE(201)
		SAY("Have you been able to convince them to come back to Diamond?")

		ANSWER("Unfortunately not and it is no coincidence. These persons really have suffered and even the NCPD is confronted with a riddle.",202)
	NODE(202)
		GIVEMONEY(1000)
		SAY("Very unsettling news. I will have to forward them to the superiors. Mr Danmund should hear about this. You have not exactly successfully accomplished your assignment, nontheless Diamond forwards these 1000 Credits to you. If you so desire you can improve on your skills and visit us again for a new mission later on. (next mission at level 20)")
		EPICRUNFINISHED(2,0)
		ACTIVATEDIALOGTRIGGER(3)
		ENDDIALOG()

end