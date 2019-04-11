--new
function DIALOG()

--Trigger
--Triggernumber,Type,Person
--0
--0,D,Dillan
--1, kill Cook, Mastersen
--2,D,Gomez
--200

--Startnode, Person
--0 Human Resource
--50 crazy Dillan
--100 Raymon
--150 Taylor
--200
--250

-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("There is some vital information about the deal between Black Dragon and ProtoPharm. We know where it will take place and we know when it will take place. Still, disrupting the deal alone will do us no good since then the deal will just take place sometime else. We need to kill the ProtoPharm representative and make it look as if it was the Black Dragon who killed them. ")
		
		ANSWER("Yes, but how can we do that. It is not as if Proto Pharm is that stupid not to be able to differentiate between Black Dragon and Tsunami.",1)
		ANSWER("I do not feel up to another challenge today.",3)
	NODE(1)
		SAY("We have some friends with the Anarchy Breed. Mainly because they like our Clubs so much. I am sure that they might still have a few weapons that were used by the Black Dragon. Those weapons can be used to trick ProtoPharm. Be sure to see Happy Gil. ")
		
		ANSWER("Don't worry, I know how to deal with that kind of people.",2)
	NODE(2)
		SAY("After that you should see Raymon in sector 06 of the dome, he has contacts to ProtoPharm and he likes money very much which is the reason why we could convince him so easily to work with us. He should be able to make the murder look like it was done by the Black Dragon. Hand the weapon from Gil to him and then go and kill that stupid ProtoPharm Mr. Cook guy at the meeting place in the Outzone.")
		SETNEXTDIALOGSTATE(4)
		STARTMISSION()
		ENDDIALOG()
		
	NODE(3)
		SAY("Its your choice but I hope you are aware that Tsunami does not appreciate slackers.")
		
		ENDDIALOG()
	NODE(4)
		SAY("Get the plan rolling. Meet the Anarchy Breed outside the city gates and then Raymon in sector 06 at the weapon market. Make sure to report back to Taylor afterwards.")
		ENDDIALOG()
		


-----------------------------------------------------
--crazy Dillan

	NODE(50)
		SAY("Whatsup, Runner?! Yo, you look like a stupid dumbass Tsunami courier to me. No really, just kidding. ")
		
		ANSWER("True, and you are lucky that we can use your help. Otherwise I’d break your ugly nose.",51)
	NODE(51)
		SAY("Wohoo, the little Tsunami's got guts, ey?! I like that, really. So, whats your business with crazy old me?")
		
		ANSWER("I need a weapon that was used by the Black Dragons. You got something for me?",52)
	NODE(52)
		SAY("Yes, yes, we have plenty of weapons from the dragons. They are just as good friends to us as you Tsunamis are. Hey, maybe one of these days we will screw both of you from behind. Hehee. ")
		
		ANSWER("Don’t mention Black Dragon in the same sentence with us, it hurts.",53)
	NODE(53)
		SAY("Just because you don’t like em? I don’t care a shit about whether or not you wanna take each other out. The Breed has always chosen their own friends. What weapon do you care to have now? Bah, forget that. I am only willing to give you this submachine gun anyway. Content?")
		
		ANSWER("Is that the only one you have? It looks rather broken.",54)
	NODE(54)
		SAY("Trust me. It fires alright, only tested it yesterday on a mutant. Hehee. That walking corpse was riddled with bullets... I tell you, a bloody mess was the only thing left of him.")
		
		ANSWER("Alright, I will take it.",55)
	NODE(55)
		SAY("Want a last word of advice? Black Dragon is up to something. They are buying weapons big scale and they are securing their alliances all over the place. Might be something to do with Tsunami. In fact, if it were not for your fine etablissements we would have sided with the Dragons. It's a shame that you don't deal in Drugs.")
		SETNEXTDIALOGSTATE(56)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
		
	NODE(56)
		SAY("See you in one of your nice clubs in town, Runner. Didn't you say something about visiting somebody in the Dome of York?")
		ENDDIALOG()


-----------------------------------------------------
--Raymon

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("I wasn't expecting you so early. It is not safe yet. Come back later...")
			ENDDIALOG()
		else
			SAY("Welcome! You should try the food here. The mutated squid is first class, although its not everybodies favorite.")
		
			ANSWER("Raymon? I have heard that you are a valuable member of ProtoPharm, yes?",101)
		end
	NODE(101)
		SAY("More or less, but I know them quite a lot. So you are not here to enjoy the food I suppose?")
		
		ANSWER("No, I am here to make an offer to you from the Tsunami Syndicate. A valuable offer I might add.",102)
	NODE(102)
		SAY("I should have known you are Tsunami. ProtoPharm is not very interested in any contact with Tsunami. Especially now. ")
		
		ANSWER("What do you mean?",103)
	NODE(103)
		SAY(" I cannot tell you right now. It is... complicated. But what is your proposal?")
		
		ANSWER("I have got a weapon from a Black Dragon member here and we want...",104)
	NODE(104)
		SAY("No, don’t tell me. It should look as if it was done by the Black Dragon, right? Forget it.")
		
		ANSWER("But, but there is a lot of money for you in that. It would be worth your while.",105)
	NODE(105)
		SAY("If I had known you wanted this, I would never have agreed to meet a Tsunami in the first place. If I draw too much attention to me now. Of all times. I'll end up like this mutated squid I just ate. And besides there really is nothing you could do to disrupt the relations between the Dragons and ProtoPharm at the moment anyway.")
		
		ANSWER("Maybe a lot of money would make you rethink our offer?",106)
	NODE(106)
		SAY("No. With todays deal the bond between Black Dragon and ProtoPharm will be too strong to bust with something like that. The deal is something about a new kind of chemical, I do not know the name at the moment. It is very valuable and once Mr Cook has delivered it to the Dragons, ProtoPharm will have too strong a connection to the Dragons. Even if you killed the person in question, it would not help to blame the Dragons. ProtoPharm knows very well how important they are for the Black Dragon. At the moment they really could not afford to make such a blunder. I do not know about that chemical, though, it has some kind of special meaning. ")
		
		ANSWER("So, Mr Cook has that new chemical with him, then? ",107)
	NODE(107)
		SAY("Yes, but ... why am I telling you that? Unless Tsunami is still paying me for that information.")
		
		ANSWER("You can be lucky if you don’t wake up dead tomorrow, unless you tell me what you know.",108)
	NODE(108)
		SAY("Alright, Mr Cook is already on his way and he has got the chemical with him. ProtoPharm has received an anonymous call that the deal would be ambushed, don't ask me where I know that from. If you still think about killing Cook, think again. He will not come unprepared into the outzone sector 03, I will assure you. Now leave me and let me enjoy my meal.")
		SETNEXTDIALOGSTATE(109)
		ENDDIALOG()
		
	NODE(109)
		SAY("Now don't you dare to disrupt my dessert as well. If you really want to get that chemical, go to the Outzone sector 03 and get it off Mr Cook personally.")
		SETNEXTDIALOGSTATE(110)
		ENDDIALOG()
		
	NODE(110)
		SAY("Cook is in Outzone-03. If you excuse me, I am really trying to enjoy my dessert! Now leave me ALONE!")
		ENDDIALOG()

--Spieler grillt Cook und nimmt die die Chemikalie Trigger 1
		

-----------------------------------------------------
--Taylor Gomez

	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("I have not yet received any confirmation that you completed your assignment. I just assume you are still working on that.")
			ENDDIALOG()
		else
			SAY("I was informed about the deal and your little mission. Did it work? Did you manage to interrupt the deal between the Black Dragons and ProtoPharm?")
		
			ANSWER("Yes, though the Black Dragon will not be blamed for the kill. Mastersen would not accept the mission to blame the Dragons. Also I might add that ProtoPharm was informed about our plan to interrupt that special deal.",151)
		end
	NODE(151)
		SAY("They were warned? Surely that cannot have been! Or there is a leak within Tsunami.This is troubling but it is not really that much of a surprise. There always seem to be people in any position who will gladly provide every information required. Trust me, I know the procedures.")
		
		ANSWER("Are you talking about a mole in our ranks?",152)
	NODE(152)
		SAY("Or it might even have been one of those Psi Monks. Some people claim, that they can read thoughts and look into the future. Reginald Axom figures that Crahn is involved in the deal that you prevented to a certain extent. He was a Psi Monk but luckily he is working for us now. But if you already knew that it would not look as if it was done by the Black Dragon, why did you do it?")
		
		ANSWER("That Cook guy from ProtoPharm had an unknown chemical with him. It appears to be rather important for the Black Dragon and therefore I decided to make it Tsunami property. What should I do with it?",153)
	NODE(153)
		GIVEMONEY(15000)
		SAY("Do I look like a scientist? You can show it to Jester when you next visit him. He might know about it. But that should wait till the next time. Be sure to hone your skills and here are 15,000 credits reward. Keep that chemical very safe until then.(next mission at Level 35)")
		EPICRUNFINISHED(8,2)		
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
-----------------------------------------------------
--Cook

	NODE(200)
		SAY("Excuse me, but I am waiting for somebody.")
		ENDDIALOG()		


end