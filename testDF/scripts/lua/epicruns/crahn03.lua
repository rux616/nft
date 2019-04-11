--new
function DIALOG()
--Trigger
--1,100,150 Dialog
--6 Kill Multiple
-----------------------------------------------------------------
--Resource officer
	NODE(0)
		SAY("You are slowly becoming one of the most indispensable members of our order, young monk. The council has decided to officially accept you into the blue circle of our brotherhood.")

		ANSWER("Thank you, sister. I will fulfill my duties with the help of Crahn.",1)
	NODE(1)
		SAY("This means that you will be charged with missions now that are regarding internal affairs of the order. You have to treat those missions with confidentiality.")

		ANSWER("I feel honoured, sister. How can I serve the order this time?",2)
		ANSWER("I don't yet feel that I am enlightened enough, father.",6)
	NODE(2)
		SAY("Our friend, Mark Cole, has informed the council that he supposedly has information about a secret meeting between the Fallen Angels and the representatives of the Anarchy Breed.")

		ANSWER("A secret meaning? What can this mean?",3)
	NODE(3)
		SAY("There have been rumours about an alliance between those two factions for a long time, but until now we could not get any details about the state of their negotiations. Meet Cole and listen to what he has to say.")

		ANSWER("Where do I meet Cole?",4)
	NODE(4)
		SAY("Where should this good-for-nothing person be? He is still in the vicinity of the weapon market in sector 06 right here in the Dome and tries to sell his supposedly important information to the highest bidder.")

		ANSWER("Very well.",5)
	NODE(5)
		SAY("But be careful... you know, that he is an unpleasent fellow. May Crahn bless your mission.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()
		
	NODE(6)
		SAY("Then go forth and work with that goal in mind. If you feel prepared we will offer you the same mission once more.")

		ENDDIALOG()

-----------------------------------------------------------------
--Cole
	NODE(50)

		ACTIVATEDIALOGTRIGGER(0)
			SAY("If this isn't my favorite PSI Monk. How is brother Gabriel? I heard that he survived the insidious ambush.")

			ANSWER("How can you know about that attack? Neither he nor I did tell anybody about it.",51)

	NODE(51)
		SAY("I am earning my money by knowing things that others want to know. A little knifefight in the subway is not something somebody would pay for however.")

		ANSWER("Damn it... it was you. And then you tried to sell the holodisc to Neocron? But this time you have gone too far. You are going to be chased down and tortured to death by the order for this attack. Until you suffocate on your own blood.",52)
	NODE(52)
		SAY("Pah... as rash as always, young monk. I don't really think that brother Gabriel could indentify the Runner who attacked him.")

		ANSWER("The Brotherhood has other ways.",53)
	NODE(53)
		SAY("But guess whose fingerprints are all over the stiletto used for the attack? Thank you so much for the weapon. It is always good to be able to defend yourself in this dark city.")

		ANSWER("You are a frickin lying snake.",54)
	NODE(54)
		SAY("Why so hostile? The most important thing is that brother Gabriel is alright again, isn't it? The order would not be thrilled by the prospect that a young talented monk is really an assassin. ")

		ANSWER("I warn you, if you are planning to...",55)
	NODE(55)
		SAY("I suggest that this whole little event remains our little secret... Well but that is not why you visited me, isn't it?")

		ANSWER("I cannot understand how the order is doing business with a man like you. But that decision is not my responsibility... I was told you had some information about a meeting between the members of the Anarchy Breed and the Fallen Angels?",56)
	NODE(56)
		SAY("I have... in fact.")

		ANSWER("And? ... Come on Cole, don't let me ask for it, otherwise this young talented monk here could turn out to be the assassin you would make him. To be honest, I would enjoy to see your entrails splattered over the wall behind you.",57)
	NODE(57)
		SAY("Alright... in the interest of our new found friendship I will make an exception and give you some information without something in exchange.")

		ANSWER("I am waiting! Clue me in already.",58)
	NODE(58)
		SAY("Calvin Grimwood of the Breed and Drakkhan Helios of the Angels are going to meet in the Outzone Sector 04.")

		ANSWER("Why? What is the reason for this meeting?",59)
	NODE(59)
		SAY("Drakkhan is going to give Calvin a small vial with a liquid metal named Corytium. Supposedly the substance fortifies PSI when ingested. The Fallen Angels want to help the Breed that way to become more autonomous and offensive.")

		ANSWER("Could this by any chance have anything to do with the rumoured alliance?",60)
	NODE(60)
		SAY("The handing over of the Corytium is basically the foundation for that mutual alliance. The factions are not trusting each other yet... and if the handing over of the Coytium would be disrupted it would throw back their negotiations several months.")

		ANSWER("This plan bears your mark. I can almost hear the hiss of a snake from your mouth.",61)
	NODE(61)
		SAY("A simple thank you would have been sufficient... but I am not yet finished. The most important thing is still to come. If you should succeed in getting the Corytium in your possession then you should bring it to Maxime in sector 10 right here in the Dome. She'll make sure that it reaches Tangent.")

		ANSWER("Tangent? Why Tangent?",62)
	NODE(62)
		SAY("Don't you read the Neocronicle? Tangent has no Corytium whatsoever and they barely have knowledge about PSI controlled weaponry at all.")

		ANSWER("That would make them interested in the substance, true. But how does that help us?",63)
	NODE(63)
		SAY("Alright, I will explain it to you. If the Anarchy Breed is informed that their Corytium is seemingly being given to their arch enemy Tangent they will loath the Angels for that.")

		ANSWER("Now it all becomes clear.",64)
	NODE(64)
		SAY("This in turn would greatly encumber the alliance between the Breed and the Angels that is dreaded so much by the Brotherhood of Crahn. And you my young monk will once more be the hero of the day.")

		ANSWER("I don't know what to say... it is incredible how much malice and trickiness is hidden inside your sick brain. But somehow I like that plan. Now tell me, what are you getting out of this?",65)
	NODE(65)
		SAY("Oh, rest assured, I won't be empty handed after this. But you should better think about your own welfare. It won't be easy. Drakkhan and Calvin will certainly not appear at the meeting without an escort. You will have to slaughter them all before you can take the Corytium of either one of them.")

		ANSWER("That should not be a problem.",66)
	NODE(66)
		SAY("I know you are exactly the kind of Runner for that job... Have fun with it and Goodbye.")
		SETNEXTDIALOGSTATE(67)	
		ENDDIALOG()
	NODE(67)
		SAY("I regret that I have no more information for you, monk! Drakkhan and the others are in Outzone Sector 04. And be sure to get the Corytium to Maxime in sector 10, or it will all be in vain.")
		ENDDIALOG()

--Spieler killt Drakkhan Trigger 6
-----------------------------------------------------------------
--Maxime

		
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Piss off!")
			SETNEXTDIALOGSTATE(100)
			ENDDIALOG()
		else
			SAY("Well, well... a monk of the blue circle. Your reputation got here ahead of you. What can I do for you?")

			ANSWER("I need somebody reliable to make a delivery for me. A substance that is meant for Tangent.",101)
		end
	NODE(101)
		TAKEITEM(9006)
		if(result==0)then
			SAY("You don't have the substance with you.")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(102)
			SAY("Then you are the one I have been waiting for. Don't worry, your little delivery will be safe with me. Trust me, I got a lot of experience in this.")

			ANSWER("Make sure Tangent believes that the delivery is from the Fallen Angels.",102)
		end
	NODE(102)
		SAY("Very well, is there something special about the substance?")

		ANSWER("It's called Corytium, you don't need to know more.",103)
	NODE(103)
		SAY("So, Cole is getting his share the usual way?")

		ANSWER("Cole, this sneaky bastard. I knew he would make some kind of profit out of this. He must have planned all this right from the start.",104)
	NODE(104)
		SAY("You should settle this with him. I have no part in this. But your delivery will be sent as an express delivery.")
		
		SETNEXTDIALOGSTATE(105)
		ACTIVATEDIALOGTRIGGER(2)	
		ENDDIALOG()
	NODE(105)	
		SAY("I believe that everything important has already been said. Don't you have to get back to your HQ?")
		ENDDIALOG()


-----------------------------------------------------------------
--resource officer
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Didn't you have a task to complete? Mark Cole is still waiting in Sector 06.")
			ENDDIALOG()
		else
			SAY("Holy Crahn. How did you pull that one off? Brother Gabriel has just reported to me that there obviously are serious differences between the Breed and the Fallen Angels.")
		
			ANSWER("It wasn't easy.",151)
		end
	NODE(151)
		SAY("The threatening alliance of those two factions should be off the table with this for now. How can our order thank you for what you did?")
		
		ANSWER("Don't thank me... thank Cole. He had this hellish brilliant plan. I was only the tool which executed the plan in the name of Crahn.",152)
	NODE(152)
		SAY("Don't be so modest... how can it be that such an old snake like Cole is concocting something useful?")
		
		ANSWER("Sometimes a snake is exactly what you need in order to quickly resolve a situation.",153)
	NODE(153)
		SAY("You are talking in riddles... Ah, before I forget: Father Manus found another fragment near the Gaya mine in the Wastelands.")
		
		ANSWER("Did he have some news on the purpose of the items?",154)
	NODE(154)
		SAY("I am supposed to inform you that he seems to be on the brink of solving this riddle. He will contact you as soon as he exactly knows what those fragments are.")
		
		ANSWER("We already have three fragments now... It is about time that I understand their meaning .",155)
	NODE(155)
		SAY("I would like to suggest to you to prepare yourself for the intiation into the red circle of the order. For this you have to further improve your skills before I can charge you with the next special run.")
		
		ANSWER("I will prepare myself presently.",156)
	NODE(156)
		GIVEMONEY(6000)
		SAY("Here are 6.000 credits that you should invest in your gear. Return here once you have improved enough. May Crahn bless you. Goodbye, young monk.(next mission at level 35)")
		EPICRUNFINISHED(10,2)
		ACTIVATEDIALOGTRIGGER(3)
		ENDDIALOG()
--Drakkhan
	NODE(200)
		SAY("This is a private meeting, so piss off!")
		ENDDIALOG()
	

end