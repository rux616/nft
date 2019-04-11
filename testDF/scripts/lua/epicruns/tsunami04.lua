--new
function DIALOG()

--Trigger
--Triggernumber,Type,Person
--0
--0,D,Taylor
--1,D,Gruber
--2,D,Leila
--200

--Startnode, Person
--0 Human Resource
--50 Taylor
--100 Gruber Zakashi
--150 Leila
--200
--250

-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("There are more and more rumours about spies in our own ranks. The rumours are spreading and nothing we do seems to be able to prevent dissent in our own ranks. People do not trust each other, I mean, not that they did before. It was even brought to Veroniques attention and her reply was a white list for all Tsunami members that are as loyal as it gets.")
		
		ANSWER("What does that mean for me?",1)
	NODE(1)
		SAY("That list contains the names of the people that really can be trusted.This means that lots of small members are held at a certain distance, you included. I know, you did prove to be amongst those who did do a lot for Tsunami recently. I could get you on that list maybe, but it would require another test of loyalty. Just to be really sure about your intentions. ")
		
		ANSWER("This is plain bullshit, I have already proven my worth more than once. I don't have to take this shit.",4)
		ANSWER("I have proven my worth. If I need to do it again, I will do it.",2)
	NODE(2)
		SAY("Officially that is true, but there is certainly a leak within Tsunami. Your last mission was not the only indication for insider information. I know that you put your life in danger there, but with all those genrep copies nowadays that could prove to be too small a price to be counted for your loyalty. There is the option of running an errand for a higher ranking member in order to improve your loyality even more and get onto that white list.")
		
		ANSWER("Just great. You really are dissing the wrong guy here.",3)
	NODE(3)
		SAY("If you are loyal, then you will persist. If not, we don’t need you anyway. Go to Taylor Gomez in the HQ. He told me earlier that he has a mission for you. It seems he is one who thinks you are loyal to Tsunami.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(5)
		ENDDIALOG()
		
	NODE(4)
		SAY("Not a wise choice. Tsunami is not some club you can just exit or join any time you like. Keep that in mind.")
		ENDDIALOG()
		
	NODE(5)
		SAY("I do not know if Gomez will wait forever to give you this assignment.")
		ENDDIALOG()
		


-----------------------------------------------------
--Taylor


	NODE(50)
		SAY("I wanted to speak to you about something important. Remember when you killed that ProtoPharm guy? You said that he had been warned, right? And that does imply that some spy within Tsunami has access to important information, right? Who do you think could be the culprit? Be honest about it, I am just asking since you might have a better idea of who it was. After all you experienced his treachery first hand.")
		
		ANSWER("I don’t know, it could be anyone. but I am sure it must be a high ranking member since nobody else could have had that kind of information.",51)
	NODE(51)
		SAY("Yes, the only other  possibility is a low profile member like you. After all, you knew about all this in the first place. I mean the ambush for example. You reported that they were prepared and you did not manage to finish the mission. Your contact did not want to blame the Black Dragon for the murder. Could it not be, that you did set up this whole scharade? You could have worked for the Black Dragon yourself.")
		
		ANSWER("You know damn well, that it could not have been me. It was my ass on the line! It was me who took that ProtoPharm guy out!",52)
	NODE(52)
		SAY("You are getting too emotional for my liking. I assume you know more than you want to admit. That is not a problem for me, I have always been one who is not easily deceived. I know a good man when I see one. And you certainly did a lot for Tsunami recently. So I wanted to give you an important mission even if you are not on the list that Veronique herself compiled. I am sure that suits your ego, doesn't it? And it might help you to be more easily recognized within Tsunami.")
		
		ANSWER("Very good, at least one person who acknowledges my worth for the syndicate.",53)
	NODE(53)
		SAY("Yes, yes, the person you are supposed to meet can be found in the Wastelands at the Catlock Bay. He will give you further instructions on how to proceed.")
		
		ANSWER("That is not very specific. Could you be a little bit more precise?",54)
	NODE(54)
		SAY("My patience is wearing off, go now and meet Gruber at the Catlock Bay. Otherwise your standing within the syndicate will be severely impaired.")
		SETNEXTDIALOGSTATE(55)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
		
	NODE(55)
		SAY("I want to do you a favor with this! Dont be so stupid to risk all that you have already accomplished. Got to the Catlock Bay.")
		ENDDIALOG()
		


-----------------------------------------------------
--Zakashi

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Be gone, I have no business with you.")
			ENDDIALOG()
		else
			SAY("You are coming from Gomez? Is that correct?")
		
			ANSWER("Yes, he told me that you would have further instructions for me.",101)
		end
	NODE(101)
		SAY("Oh, what an irony. He never tells anyone enough, now, does he? So he did not tell you, why he sent you out here? Out here into the Wastelands?")
		
		ANSWER("No, but I suppose...",102)
	NODE(102)
		SAY("Really sad but also a rather good joke. Yes, you will receive some sort of instructions from me. That much is true. You must have noticed that Taylor Gomez knows that you are aware that there is a leak in the syndicate. You knew, didn't you?")
		
		ANSWER("I don't know where this leads us to...",103)
	NODE(103)
		SAY("Ha, ha, ha. Well, let me give you a hint. I believe I can tell you now since you won't be able to tell anybody else. Taylor believes that you found out about something that he wanted to cover up.")
		
		ANSWER("You mean, he is the spy?",104)
	NODE(104)
		SAY("That might be. Maybe. Might even be close to the truth. But whom will you tell, who will believe you? Hah, nobody! they would kill you for even mentioning such an idea. My job is to take care that you are eliminated. Do not struggle, if you kill me you would be off much worse. Tsunami would hunt you down for killing one of their members. And remember you are alone, nobody can help you.")
		
		ANSWER("That is not true! But... maybe Leila would help, damn could she be the only one I can trust... but can I really trust her?",105)
	NODE(105)
		SAY("Enough talk, more fight! Ha, ha, ha. ")
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(106)
		ATTACK()
		ENDDIALOG()
	NODE(106)
		SAY("I will make sure that you are dead!")
		ATTACK()
		ENDDIALOG()

-----------------------------------------------------
--Leila


	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("No, I don't want to speak to you again. You are ruining my whole life.")
			ENDDIALOG()
		else
			SAY("You again! Do you even know what Gecko did to me after we talked? This is not fair! He knows! He knows I am a spy for Tsunami! He yelled it to my face! And the horrible things he did to me. *sob*")
		
			ANSWER("Hey, hey, stop whining, I need your help.",151)
		end
	NODE(151)
		SAY("Oh yes? Sure why not, you have been such a good friend to me... No, I won't help you! Not after this.")
		
		ANSWER("Alright, I feel sorry for you, really. But I am not responsible for what some freak does to you, now, am I?",152)
	NODE(152)
		SAY("Oh, yes? You have a choice! But I, I am dependent on those who have power and I cannot revolt against them. Even if they beat and humiliate me! I cannot flee, I cannot fight, I am practically their slave!!")
		
		ANSWER("I don't know how I can make it up to you, but I might be able to ease your pain. If you help me now!",153)
	NODE(153)
		SAY("What could you do? Oh, well, it cannot really get worse for me. What do you want me to do?")
		
		ANSWER("I have accidentially found out who is acting as a spy in the syndicate. But that person is too powerful for me to take on alone.",154)
	NODE(154)
		SAY("You have found out, who the spy is everybody is talking about? Who is it?")
		
		ANSWER("It is Taylor Gomez. I am sure of it. He tried to have me killed because he thought I found out.",155)
	NODE(155)
		SAY("Taylor? No way! He is so powerful. But how can I help you against a demon like him? He is almost as cruel as Gecko.")
		
		ANSWER("I don't know! Isn't there a way to get out of this?",156)
	NODE(156)
		SAY("Wait! I believe there is a way! But I will have to contact somebody first, please be patient for a while and keep a low profile. Come back once you feel it is safe for you.(next mission at Level 40)")
		GIVEMONEY(10000)
		EPICRUNFINISHED(8,3)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
		


end