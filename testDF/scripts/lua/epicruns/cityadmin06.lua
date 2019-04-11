--new
function DIALOG()
--Trigger
--Triggernumber,Type,Person
--0,D,Simmons
--1,D,Jenna

--Startnode, Person
--0,Human Resource
--50,Simmons
--100,Jenna


--Items
-----------------------------------------------------
--Human Resource Director

NODE(0)
	SAY("Those investigations seem to take longer than you originally planned, don't they? At least there are no new murders to report at the moment. Keep on top of it, though.")
	
	ANSWER("Don't worry, I will determine the exact position of the stolen CopBot.",1)
NODE(1)
	SAY("Does that mean you have a clue?")
	
	ANSWER("I think I have. I still need to visit a ... ahem ... contact person who will reveal the exact location to me.",2)
NODE(2)
	SAY("Good luck.")
	STARTMISSION()
	SETNEXTDIALOGSTATE(3)	
	ENDDIALOG()
NODE(3)
	SAY("I thought you have a clue that you can follow up. You should visit Jenna at the NCPD once you have more information.")
	ENDDIALOG()

-----------------------------------------------------
--Simmons

NODE(50)
	SAY("H...Hello, I have located the CopBot like you said.")
	
	ANSWER("What are you waiting for? Tell me where it is.",51)
NODE(51)
	SAY("You can find him in F 03 in the Wastelands. It is some kind of swamp land. The program probably chose it for the CopBot to remain undetetected. That was programmed into his main memory")
	
	ANSWER("Good, I will take care of that.",52)
NODE(52)
	SAY("Good luck... I'll wait here... to enhance the Law Enforcer... when you come back.")
	SETNEXTDIALOGSTATE(53)
	ENDDIALOG()
	
--Spieler tötet CopBot, Kann man einen Roboter töten?

NODE(53)
	TAKEITEM(9050)
	if(result==0)then
		SAY("But, where did you leave the Law Enforcer of the CopBot?")
		ENDDIALOG()
	else
		SETNEXTDIALOGSTATE(54)
		SAY("That was really fast! Do you have the Law Enforcer?")
	
		ANSWER("Yes, but I prefer to keep it as proof for the whole incident.",54)
	end
NODE(54)
	SAY("Please, give it back to me. It is important for me.")
	
	ANSWER("I don't understand why this implant is so important to you.",55)
NODE(55)
	SAY("Very well, keep this cursed thing. But I beg you, don't give me away to the NCPD. They'll surely kill me for this.")
	
	ANSWER("I need to tell them at least who committed the murders.",56)
NODE(56)
	SAY("But that wasn't me. That means you don't need to tell them about me. Please do me this last favor.")
	
	ANSWER("I will think about it, Goodbye.",57)

--advanced law enforcer

NODE(57)
	GIVEITEM(9050)
	SAY("Good luck then.")
	SETNEXTDIALOGSTATE(58)
	ACTIVATEDIALOGTRIGGER(0)
	ENDDIALOG()
NODE(58)
	SAY("Do you still want something? But I already have given you everything.")
	ENDDIALOG()


-----------------------------------------------------
--Jenna

NODE(100)
	ISMISSIONTARGETACCOMPLISHED(0)
	if(result==0)then
		SAY("I am sorry but I don't have time at the moment. Work is not getting less.")
		ENDDIALOG()
	else
		SAY("Did you already find out anything new?")
	
		ANSWER("Let me put it this way, I solved the murders and also the stolen CopBot case. The murders will stop.",101)
	end
NODE(101)
	SAY("You have solved the murders? No, I can't believe you, you must be joking!")
	
	ANSWER("Yes, if I tell you. The stolen CopBot was reprogrammed to kill all these people.",102)
NODE(102)
	SAY("Really? That would at least explain, why we could not find any suspect.")
	
	ANSWER("Yes and it all happened according to the plans of the Twilight Guardian. You have guessed as much and now I have proof. This modified Law Enforcer.",103)
NODE(103)
	TAKEITEM(9050)
	if(result==0)then
		SAY("Without proof this story sounds a little bit too fantastic, don't you think?")
		ENDDIALOG()
	else
		SAY("But what did they hope to achieve through those murders? And where is the CopBot now?")
	
		ANSWER("The Twilight Guardian wanted to slowly wear down the CityAdmin with all these murders and they came close to reaching that goal. The CopBot can be found in the swamps in sector F 03. ",104)
	end
NODE(104)
	SAY("Amazing... wait ... I have a satellite picture here from the F 03 sector. You are right, the CopBot is there. Did you disable it? It looks rather destroyed.")
	
	ANSWER("Yes, I wanted to ensure that it is the right one. I would not want to report wrong facts.",105)
NODE(105)

	SAY("Then you have really earned the reward for this. NCPD and CityAdmin awarded 50000 credits for the person who could solve this crime. Now this money belongs to you.")
	
	ANSWER("Thank you, it was a pleasure.",106)
NODE(106)
	SAY("You can really take some time off now and maybe you should found a new clan and support the CityAdmin with it.")
	
	ANSWER("I will think about it... Oh yes, before I forget. The hacker who did all this is visiting Roccos Seafood in Pepper Park rather often, his name is Simmons. It's your decision what to do with him. After all he committed these crimes.",107)
	ANSWER("Then I wish you goodbye.",108)
NODE(107)
	GIVEMONEY(50000)
	GIVEMONEY(30000)
	GIVEITEM(9055,255)
	SETNEXTDIALOGSTATE(109)
	SAY("Good luck with your future. For the arrest of the hacker you have earned another reward of 30000 credits. Since you have accomplished much for the CityAdmin it was decided to give you this PowerArmor. It was developed by using CopBot technology and is only awarded to truly loyal citizens. But if you were them we expect you to behave accordingly and carry on your duties.")
	EPICRUNFINISHED(1,5)
	ACTIVATEDIALOGTRIGGER(1)
	ENDDIALOG()
NODE(108)
	GIVEMONEY(50000)
	GIVEITEM(9055,255)
	SETNEXTDIALOGSTATE(109)
	SAY("Good luck with your future career, Since you have accomplished much for the CityAdmin it was decided to give you this PowerArmor. It was developed by using CopBot technology and is only awarded to truly loyal citizens. But if you were them we expect you to behave accordingly and carry on your duties.")
	EPICRUNFINISHED(1,5)
	ACTIVATEDIALOGTRIGGER(1)	
	ENDDIALOG()
	
NODE(109)
	SAY("Go away")
	ENDDIALOG()

end