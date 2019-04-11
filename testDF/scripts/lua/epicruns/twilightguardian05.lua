--new
--Twilight Guardian
--
--Trigger
--Triggernumber,Type,Person
--0,D,Mrs Sung
--1,D,johnson
--2,D,JADE
--3,D,TOVALL
--
--Startnode, Person
--0, Contact Person
--50, Mrs Sung
--100, JOHNSON
--150, TOVALL
--200, JADE
--250, TOVALL
--
--Items
--CASHCUBE
--PAKET FÜR JADE
--TECH WAFFE

function DIALOG()
--------------------------------------------------------------------
--Contact Person
--0
	
	NODE(0)
		SAY("Donnovan informed me about the location of the Neokorps meeting. It is somewhere in sector A 06 at the coast. Sorry, I can't remember numbers very well. It is your job to walk the leader of the Neokorps to the afterlife. After you have been there you can get a small payment to the contact person. You know better where to find that guy. Apart from that Tovall wanted to speak to you alone after you have accomplished all this. Understood?")

		ANSWER("I think so...",1)
	NODE(1)
		GIVEITEM(9483)
--CASHCUBE
		SAY("Very well, take a good shot at that Neokorps commander. Give em hell. Try one of the few broadcasting stations in that area. Maybe there is somebody who can tell you more.")

		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)
		SAY("The target is in A06 and the contact person is still expecting the cashcube. After this Tovall wants to speak to you. Remember, duty comes first.")

		ENDDIALOG()

--------------------------------------------------------------------
--Mrs Sung
--50
	NODE(50)
		SAY("Are you looking for somebody?")

		ANSWER("Hmm, to be honest, I am looking for a group of people who are supposed to meet around here somewhere.",51)
	NODE(51)
		SAY("Ahh, then you are the one I am expecting. You walked straight into our little trap. Now I will have to kill you myself. I hope you have already prepared for your death.")

		ANSWER("I don't understand...",52)
	NODE(52)
		SAY("...")
		ATTACK()
		SETNEXTDIALOGSTATE(53)
		ENDDIALOG()
		
	NODE(53)
		SAY("...")
		ATTACK()
		ENDDIALOG()

--------------------------------------------------------------------
--JOHNSON
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("You already have the money? I suggest you visit sector A 06 first and kill the Neokorps leader.")
			ENDDIALOG()
		else
			SAY("You? You survived the trap? But everything was planned so very meticulous! I don't understand.")

			ANSWER("Then you are a traitor after all. You have been suspicious to me all the time, you pig.",101)
		end
	NODE(101)
		SAY("Damn you, I won't suffer any more insults from the likes of you scum. You Twiligh Guardian deserve nothing less than death. And death is what you will get.")

		ANSWER("I didn't expect anything less from a slave of Reza. Let me free you from that burden!",102)
	NODE(102)
		SAY("...")

		ATTACK()
		SETNEXTDIALOGSTATE(103)
		ENDDIALOG()
	NODE(103)
		SAY("...")
		ATTACK()
		ENDDIALOG()
--------------------------------------------------------------------
--Tovall
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("First I have to do something else, sorry.")
			ENDDIALOG()
		else
			SAY("Hey, haven't seen you in a while. Remember that I told you that there still was hope, Jade lives and she is well considering the circumstances.")

			ANSWER("Great but at the moment I am more worried that we stepped right into a trap of Reza. One of his agents engineered it and lead me right into it.",151)
		end
	NODE(151)
		SAY("Then you did not succeed in eliminating the Neokorps commander? Don't look at me like that, Donnovan told me everything about the plan. It's ok, I am authorized to know about it.")

		ANSWER("Yes, I mean no, I did not succeed since I encountered a killer in his stead.",152)
	NODE(152)
		SAY("I understand the situation, it seems it is time for plan B. It came as a surprise for us that Jade still lived but it was even more so a surprise since she seems to be close to unravelling a secret. That is the reason why she did not return in the first place. Donnovan already wanted to send somebody to her aid but I guess we already have a volunteer right here in front of me.")

		ANSWER("Very well but it should better be important. That Neokorps bastard should just wait and see what happens when I meet him for real.",153)
	NODE(153)
		GIVEITEM(9480)
--PAKET FÜR JADE
		SAY("You can find her in the Outzone but I don't know where. She changes places every now and then to remain undetected. Outzone sector 4 should be sufficient, though. Good luck and maybe you could take this package to her now? Thank you.")
		SETNEXTDIALOGSTATE(250)
		ENDDIALOG()

	NODE(154)
		SAY("She is supposed to be somewhere in the Outzone. I don't know the exact location, though. Her last known location is Sector 04.")

		ENDDIALOG()

--------------------------------------------------------------------
--JADE
--200
	NODE(200)
		TAKEITEM(9480)
		if(result==0)then
			SAY("I don't know you, leave me alone.")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(201)
			SAY("Finally, you are Twilight Guardian, right?")

			ANSWER("Yes, I come directly from the canyons. I even bring a present.",201)
		end
	NODE(201)
		SAY("A package from Tovall? It seems he just cannot leave me alone. You have to know that he fell in love with me, such a fool. He wouldn't even admit it. But we have more pressing matters now.")

		ANSWER("Good, that's why I am here, right?",202)
	NODE(202)
		SAY("I have information that you are tracking Neokorps as well. I hope you know what I am talking about at least.")

		ANSWER("Sure thing but unfortunately my investigation ended in a trap. The contact was a traitor sent by Reza.",203)
	NODE(203)
		SAY("Anyway, ever since the Neokorps first started hunting us inside the city gates of Neocron I have been following their tracks very closely. Now there are only a few possibilities left to check out. That means I will hopefully soon be able to find that Neokorps commander. I only need a little help with that. Are you ready? May I remind you that there is a huge bounty on the commanders head?")

		ANSWER("Agreed. You have a way with people that is just irresistable.",204)
	NODE(204)
		SAY("Great, just let me finish a few preparations before we start. Just talk to a contact person once you are ready for the final blow. If you want to you can retrieve a Fallen Angels special commission from Tovall now. Until later.")
		SETNEXTDIALOGSTATE(205)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
		
	NODE(205)
		SAY("Visit Tovall. He has got something useful for you.")

		ENDDIALOG()
--------------------------------------------------------------------
--Tovall
--250
	NODE(250)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("She is supposed to be somewhere in the Outzone. I don't know the exact location, though. Her last known location is Sector 04.")
			ENDDIALOG()
		else

--tECH wAFFE
			GIVEITEM(9484,255)
			SAY("The development of the project with the Fallen Angels will soon be finished. But until then there is still much to do. Here is a sample of what the Fallen Angels will give us.(next mission at level 45)")
			EPICRUNFINISHED(15,4)
			ACTIVATEDIALOGTRIGGER(3)
			ENDDIALOG()
		end

end