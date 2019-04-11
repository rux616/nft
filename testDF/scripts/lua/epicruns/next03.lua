--new
function DIALOG()

--Trigger
--Triggernumber,Type,Person
--
--0,D,Torben
--1,D,Max
--200,D, Gerard
--3,D,Torben



--Startnode, Person
--0 Human Resource
--50 Torben
--100 Gerard
--150 Max
--200 Gerard
--250 Torben

-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("Ahh, you are back. I fear we do not have another official assignment for you. But I wanted to ask you if you could go and check on old Torben in the Pepper Park subway station. He didn't want to talk to me but I know he has a problem if he doesn't pick up his work again soon.")
		
		ANSWER("CONTINUE",1)
	NODE(1)
		SAY("I mean, after all this is a company and not the wellfare. NEXT cannot afford to pay mechanics who don't do their work. That's why I am asking you to meet him and figure out if he needs help. He was one of the guys who built the subway in the first place. One of the pioneers if I may say so.")
		
		ANSWER("Alright, I will have a look.",2)
		ANSWER("I really cannot do it at the moment. I am sorry.",3)
	NODE(2)
		SAY("Thank you in advance. He likes to visit Garriots Diner there.")
		SETNEXTDIALOGSTATE(4)
		STARTMISSION()
		ENDDIALOG()
		
	NODE(3)
		SAY("Maybe you will change your mind later on.")
		ENDDIALOG()
		
	NODE(4)
		SAY("Could you please help Torben? You can find him in the Pepper Park subway station usually.")
		ENDDIALOG()
		

-----------------------------------------------------
--Torben

	NODE(50)
		SAY("Hey! Do I know you? And I was beginning to think that this was a place where you are alone with your trouble.")
		
		ANSWER("That is exactly the reason why I am here.",51)
	NODE(51)
		SAY("What? To be alone with your troubles?")
		
		ANSWER("No, not really. I come from NEXT. They are all wondering why you have stopped doing your work. NEXT could decide to fire you if this continues.",52)
	NODE(52)
		SAY("How do you like the subway? I like it a lot. It is very soothing with the gentle hissing and swaying of the hovercabs.")
		
		ANSWER("CONTINUE",53)
	NODE(53)
		SAY("It all looked quite different back when we started to build it in the first place. Rain water would prevent access to some support tubes, gigantic boulders would have to be removed and one time some mutants errected a barricade in one of the tubes. We had to kill time for two whole months until the NCPD could solve the problem. Ha, those were the days.")
		
		ANSWER("Somehow I get the feeling that you are avoiding my questions.",54)
	NODE(54)
		SAY("NEXT has always paid for the work. And paid good. Even when Mr Diggers sold all his shares of the company and caused a major hubbub the payments continued.")
		
		ANSWER("Look, I know you have a problem and I am prepared to help but that is only possible with your DAMN COOPERATION!!",55)
	NODE(55)
		SAY("...")
		
		ANSWER("I am sorry but it had to be said.",56)
	NODE(56)
		SAY("Alright... yes, I got a problem but I am supposed not to tell it to anyone. They said they would break every single bone in my body. And I cannot stand pain. I hate it...")
		
		ANSWER("You can trust me. Pull yourself together and tell me what happened.",57)
	NODE(57)
		SAY("These... people... came to me after my shift and gave me a beating. I could barely reach the appartement of me and my ex-wife before collapsing. They said, they would come back and continue where they stopped unless I stopped working... and ... and I cannot bear the pain. Please help me...")
		
		ANSWER("These bastards, to beat up a defenseless man like that. Who was it, do you have any idea? Does NEXT know about it?",58)
	NODE(58)
		SAY("No, I wasn't strong enough. I am frightened. But I have heard of similar cases with other employees... Those guys were definitely Black Dragon and came from the Outzone. No doubt. But you'll never stand a chance on your own. They are very strong.")
		
		ANSWER("Maybe you are underestimating me. But maybe we can consult the CityMercs? They are bound to have experience with this scum.",59)
	NODE(59)
		SAY("That might just be. I know one of them is here in Neocron. Gerard is his name and he can be found in the HQ of the CityMercs. But please only mention my name if it is really necessary. I still want to enjoy the rest of my life.")
		SETNEXTDIALOGSTATE(250)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
	


-----------------------------------------------------
--Gerard

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("I have more pressing matters to attend to, excuse me.")
			ENDDIALOG()
		else
			SAY("What are you doing here? This is CityMerc property.")
		
			ANSWER("I know, I know, I wanted to speak to Gerard.",101)
		end
	NODE(101)
		SAY("Are you blind boy? I am Gerard. State your business soldier.")
		
		ANSWER("I know somebody who is currently working at NEXT and is roughed up severely by some Black Dragon scum. On top of that, he gets blackmailed by them aswell.",102)
	NODE(102)
		SAY("I am familiar with that kind of stuff, happens a lot around here. Blackmailing happens every day. Most of the time the Black Dragon have some kind of motive, though. I mean, they don't just blackmail somebody just because they feel like it. Although I heard that happened too. I have seen once how they cut out somebodies eye implant when he was fully conscious. Rough people, you better watch your step in their vicinity.")
		
		ANSWER("Can't you do anything against it? I am certain that the company would pay for it. The Black Dragons can be found in the Outzone.",103)
	NODE(103)
		SAY("I believe that we can do something. But we need the exact location where we can find them. The Outzone is not precise enough. Or maybe you can even talk to them, sometimes even they see reason. But there is something else. Yes, there are some rumours that ProtoPharm is supporting the Black Dragon to go against NEXT. But I don't have a clue whether that is true or not.")
		
		ANSWER("ProtoPharm is goading the Black Dragons on against us? It is hard to believe that they would do such a thing.",104)
	NODE(104)
		SAY("It is rumoured. Alright, we will see to your problem. But we need to know exactly where they are because we cannot search the whole Outzone for them. And you should try and talk to them, maybe they only want money. Try the Outzone Sec-5, I heard several rumours of fishy deals going on there, good luck soldier.")
		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()
		


-----------------------------------------------------
--Max

	NODE(150)
		SAY("Look who is there. Another sissy who dares to enter our territory. Say what you want, maybe you can convince us not to kill you straightaway.")
		
		ANSWER("I am here because you are roughing up some employees from NEXT without any reason.",151)
	NODE(151)
		SAY("Well, those must have been real ugly ones that have begged us to do it. NEXT you say? Yes, I believe you are right. We have done ProtoPharm a little favor. An unofficial one. They were probably tired of you NEXT guys as well.")
		
		ANSWER("You are really going to get trouble because of this. Isn't there a possibility to arrange for this to stop? Money maybe?",152)
	NODE(152)
		SAY("Well, if you are offering enough... of course. We are after all reasonable men. What do you offer?")
		
		ANSWER("Personally I cannot offer you anything but NEXT...",153)
	NODE(153)
		SAY("Well you have quite a big mouth. First you promise us riches and then you put us off. As if you could promise something from NEXT. I believe you did not quite understand that you are all alone here.")
		
		ANSWER("I really mean it, there must be another way out of this situation.",154)
	NODE(154)
		SAY("Yes, and that way is over your dead body.")
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(155)
		ATTACK()
		ENDDIALOG()
	NODE(155)
		SAY("Are you still alive?!")
		ATTACK()
		ENDDIALOG()
		


-----------------------------------------------------
--Gerard

	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Go and find out about their exact whereabouts. Try to talk to them first.")
			ENDDIALOG()
		else

			SAY("And? Have you encountered them?")
		
			ANSWER("Sure, can't you see it? Those damned bastards tried to kill me!",201)
		end
	NODE(201)
		SAY("Calm down soldier. I am not making the rules here. But since you have confirmed their position we can take action against them. Normally we send our own scout but I thought you looked tough enough for the challenge. You could do us another favor, maybe...")
		
		ANSWER("Forget it, either you take care of it or I am gone from this place.",202)
	NODE(202)
		SAY("Alright, alright. Of course we will take care of it. After all we are still CityMercs. Wouldn't be the first time that we fight against the Black Dragon. I just want to bring 2735 to your attention. Man, that must have been a slaughter. Our boss really whooped their asses. I think we will only need one white ribbon platoon for this one, though. Don't rack your brains over it, we're taking over and you'll be as safe as in Plaza 1.")
		SETNEXTDIALOGSTATE(203)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
		

	NODE(203)
		SAY("I have already told you that we are on it. You can tell your friend that everything will be taken care of.")
		ENDDIALOG()


-----------------------------------------------------
--Torben

	NODE(250)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Any news? Did you already visit Gerard in the City Mercs HQ?")
			ENDDIALOG()
		else
			SAY("Have you spoken to the CityMercs? What did they say?")
		
			ANSWER("Well, after the Dragons tried to kill me first, yes. It seems the CityMercs are going to take care of the situation now.",251)
		end
	NODE(251)
		SAY("The Mercs are taking care of it? Really?")
		
		ANSWER("I just said so, didn't I?",252)
	NODE(252)
		SAY("That would mean I am saved! Once the CityMercs take care of something, they do it right. Thank you Runner! I would not have thought you could help me. I thought nobody could help me. But I have been wrong. I will commence my work at once!")
		
		ANSWER("CONTINUE",253)
	NODE(253)
		GIVEMONEY(5000)
		GIVEITEM(1535)
		SAY("And if I can, I will try to make it up to you later on. At the moment I only have these 5000 credits left but I hope they are sufficient for the moment at least. I will support you and suggest that you be given more important tasks in the future. Goodbye and thank you, Runner! Here is a reward for serving NEXT, its a motorbike.")
		EPICRUNFINISHED(3,2)
		ACTIVATEDIALOGTRIGGER(3)
		ENDDIALOG()

end