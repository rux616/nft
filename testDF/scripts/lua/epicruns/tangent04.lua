--new
function DIALOG()
--Trigger
--Triggernumber,Type,Person
-- 6(0),PvP, Max
-- 1,D, Mazzaro

--Startnode, Person
--0
--50, Max
--100, Benjamin
--150, Mazzaro
--Items -> none

-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("A message was sent to your contact person from BioTech in which we announced our interest in the blueprint of the prototype. We have of course tried to match his price but...")

		ANSWER("He rejected your offer? The blueprint is sold already?",1)
	NODE(1)
		SAY("Not that, no. I believe he knows that this is a big and powerful company. Tangent would have been able to match any price he could want. No, he expressed that he wanted a different method of payment.")

		ANSWER("CONTINUE",2)
	NODE(2)
		SAY("He said that he still has some unfinished business with the Fallen Angels. It would seem that they refused to hire him on grounds that he is not qualified enough.")

		ANSWER("That is not too uncommon. Even Tangent has a bad relationship with the Angels.",3)
	NODE(3)
		SAY("Indeed. But the Fallen Angels were not forced to hack the Tangent system in the first place. That caused quite a chaos and now they are only getting their just reward. I'll come straight to the point. We want you to match the price of the contact person.")

		ANSWER("What exactly do I have to do then?",4)
		ANSWER("I cannot do that at the moment. I am sorry.",9)
	NODE(4)
		SAY("It is very simple. Even if we normally do not resort to such actions. You meet up with Max whom you can find in the Outzone Sector 5. He is very experienced when it comes to things like this.")

		ANSWER("CONTINUE",5)
	NODE(5)
		SAY("You tell him that he is supposed to kill 10 Fallen Angels members. That was easy, wasn't it? But tell him not to kill the small ones, only choose those of approximately your status.")

		ANSWER("If it serves Tangent, I will do it. After all the Fallen Angels attacked us in the first place. But I have my doubts about killing off a random number instead of those responsible for the attack.",6)
	NODE(6)
		SAY("You won't get far with that attitude. You have to be willing to walk over some dead bodies for Tangent, now and then. Come on. What do you expect? Tangent produces weapons.")

		ANSWER("CONTINUE",7)
	NODE(7)
		SAY("And for what? Certainly not to blow holes into the sky. The company is worth more than a pesky few mutated Fallen Angels.")

		ANSWER("Alright. I already said I'd do it. But I don't believe that a blueprint is ever worth a human life.",8)
	NODE(8)
		SAY("Don't worry about that and leave the moral issues for Tangent. Meet with Max in the Outzone Sec-5. He is Black Dragon, so always have an eye open. Do not trust anyone outside the company. After you have picked up the blueprint Mazzaro wants to talk to you.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(10)
		ENDDIALOG()
		
	NODE(9)
		SAY("As you wish. but don't count on Tangent always having an assignment for you.")
		ENDDIALOG()
		
	NODE(10)
		SAY("You have your mission. Go to Max in the Outzone Sec-5 and tell him to kill those Fallen Angel guys. Then you can get that Blueprint from Benjamin in Industrial 02. Report to Mazarro once you are done.")

		ENDDIALOG()


-----------------------------------------------------
--Max

	NODE(50)
		SAY("What is somebody like you doing here? You could die out here one of these days. And all just because of your recklessness.")

		ANSWER("I was sent by Tangent.",51)
	NODE(51)
		SAY("I thought so. What is the problem this time?")

		ANSWER("I am supposed to tell you to kill ten Fallen Angel members. It doesn't matter who...",52)
	NODE(52)
		SAY("It doesn't matter who? Very nice. I especially like these kind of missions. You can just stalk a harmless unsuspecting victim and have fun while you execute your mission.")

		ANSWER("Stop it, do you really think that is fun?!",53)
	NODE(53)
		SAY("If you ask me, yes. Life itself is only a temporary situation. With drugs you can already see what lies behind life. Have a glimpse into the afterlife.")

		ANSWER("CONTINUE",54)
	NODE(54)
		SAY("But it is simply cool. Have you ever looked into the eyes of a dying person? You can exactly see the moment when they have drawn their terminal breath.")

		ANSWER("Stop it, I don't want to listen to this.",55)
	NODE(55)
		SAY("But you should listen. The Fallen Angels are easy targets but I have changed my mind. I will only take care of nine of them. Only nine.")

		ANSWER("But it were supposed to be ten! You can't simply change the terms of the agreement.",56)
	NODE(56)
		SAY("Well then there is only one choice. You have to do it yourself. You don't want to throw away your good relation to Tangent now, do you? The blood of a human person will stain your hands. Well and then it will show whether or not you can also wash away the blood from your dreams...")

		ANSWER("But, but I don't even know who I should kill...",58)

--Spieler muss 5 FallenAngels umbringen PvP 6
		
	NODE(57)
		SAY("We will only kill nine, the rest is your responsibility. You will have to kill one Fallen Angel yourself it seems. Maybe your superiors at the HQ would like to hear about it if you managed to do it. Or maybe you have a contact to meet around here.")
		ENDDIALOG()

	NODE(58)
		SAY("It will be your task to kill one Runner from the Fallen Angels. They should NOT be employees, guards or official representatives. Only Runner.")
		
		ANSWER("And I can really flatline any Runner I want to?",59)
	NODE(59)
		SAY("No, only if your target is about your level or higher. Otherwise the kill cannot be accepted. Good luck.")
		SETNEXTDIALOGSTATE(57)
		ENDDIALOG()
-----------------------------------------------------
--Benjamin

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("What is taking you so long? You have an assignment, don't you?")
			ENDDIALOG()
		else
			SAY("What is taking you so long?")

			ANSWER("I simply cannot get used to having killed so many people for a blueprint.",101)
		end
	NODE(101)
		SAY("Then it is done? Good, good, finally they pay for what they did to me.")

		ANSWER("Was it really worth the lives of ten people?",102)
	NODE(102)
		SAY("Who knows? It doesn't really interest me what a Runner is thinking. I follow my own agenda.")

		ANSWER("Stop, what about the blueprint?",103)

-- Spieler bekommt Blueprint 9153

	NODE(103)	
		GIVEITEM(9153)
		SAY("Alright, alright, here you are. Now go, I don't want to give anybody too many clues on what I am doing here. Now return to your company.")
		SETNEXTDIALOGSTATE(104)
		ENDDIALOG()

	NODE(104)
		SAY("I have already given the blueprint to you. Hurry and deliver it back to Tangent.")
		ENDDIALOG()


-----------------------------------------------------
--Mazzaro

	NODE(150)
		TAKEITEM(9153)
		if(result==0)then
			SAY("Go and do not return without the blueprint. I hope you visited Max in the Outzone Sec-5, otherwise Benjamin in Industrial 02 will probably not give you the blueprint.")
			ENDDIALOG()
		else
			SAY("And? How did you like your assignment? Bloody? Disgusting? Come on, speak up.")
	
			ANSWER("It doesn't feel right to exchange so many lives against one blueprint.",151)
		end
	NODE(151)
		SAY("You can argue about how much a human life is worth. Fact is that every human dies even if we do nothing.")

		ANSWER("CONTINUE",152)
	NODE(152)
		SAY("Death is part of every life. Death could even be described as the goal everybody is working towards .")

		ANSWER("Yes, that is true but the worth of a human is not connected to that.",153)
	NODE(153)
		SAY("You are foolish if you don't see death and deny its existence. Some people believe in preordination. If you take that into account those Fallen Angels were meant to die at that place and time.")

		ANSWER("Even then it would be cruel...",154)
	NODE(154)
		SAY("Sometimes such questions just so happen to bother us. Why does there have to be war and murder?")

		ANSWER("CONTINUE",155)
	NODE(155)
		SAY("But the answer is always the same, there has not! Humans have only one curse that at the same time is their greatest blessing. Humans create their own reality.")

		ANSWER("What can I say?",156)
	NODE(156)

		SAY("Just hand over that blueprint and since the task was not very easy, which I admit, you earned 10000 credits.")

		ANSWER("CONTINUE",157)

	NODE(157)
		GIVEMONEY(10000)
		SAY("Take some time to rest but be sure to check back once in a while since it might be that we can use your help again.")
		EPICRUNFINISHED(4,3)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()

end