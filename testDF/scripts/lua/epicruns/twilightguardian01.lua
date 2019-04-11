--new
--Twilight Guardian
--
--Trigger
--Triggernumber,Type,Person
--0,D,donnovan
--1,D,tovall
--2,D,donnovan
--3,D,tovall
--
--Startnode, Person
--0, Contact Person
--50, Donnovan
--100, TOVALL
--150, DONNOVAN
--200, TOVALL
--250,
--
--Items
--PAKET FÜR JADE (100)
--Powerbooze 804
--wINE 806
function DIALOG()
--------------------------------------------------------------------
--Contact Person
--0
	
	NODE(0)
		SAY("Welcome. Welcome here with the Twilight Guardian. I assure you that you are not the only one who tasted enough lies and violence from that Lioon Reza bastard. Since you haven't been here for long you are not yet part of a cell, are you?")

		ANSWER("No, I only just arrived. I heard I would get a chance to pay back my dept to Reza.",1)
	NODE(1)
		SAY("Very well, you will get your chance to do just that. We need people like you. I believe Donnovan will be able to give you directions, he is a formidable warrior and survived many skirmishes. Are you content with that?")

		ANSWER("More than content. I'll be on my way immediately.",2)
	NODE(2)
		SAY("You can't miss him, he is always guarding the entrance to the canyon. He always keeps an eye on the entrance so that we'll have no nasty surprises from Rezas plotting and scheming.")

		STARTMISSION()
		SETNEXTDIALOGSTATE(3)
		ENDDIALOG()
	NODE(3)
		SAY("Well? Did you forget your way? Donnovan can be found near the entrance to our HQ.")
		ENDDIALOG()

--------------------------------------------------------------------
--donnovan
--50
	NODE(50)
		SAY("A new face? I like that. The more we are the sooner will we succeed. Succeed in dragging Rezas arse out of Neocron. You do know why we do all this?")

		ANSWER("Because Reza already had enough time to turn matters to the worst?",51)
	NODE(51)
		SAY("True to a certain extend. We do all this because Reza is putting himself above the people and because he betrayed us. We do all this because CopBots execute anybody who doesn't precisely follow the law. Reza is a dictator who is only concerned about his own welfare. The truth is that there is no safety within the walls of Neocron. There is only oppression. We are the only ones who can fight him in the name of every inhabitant of Neocron.")

		ANSWER("We are going to give Neocron back to the people?",52)
	NODE(52)
		SAY("Hagen Yager has some plans, no doubt. Once we pound Rezas government into dust, Reza will feel the rage of the people. In truth Reza is doing only as he pleases without listening at all to his members of government. ")

		ANSWER("We cannot allow this to continue.",53)
	NODE(53)
		SAY("Exactly, and because of that we have to make sure that our zeal does not lessen. It is our destiny to free Neocron from the icy grasp of Rezas claws. That is why we may never tire or break our own rules like Tovall did. He is lucky that he did only break a rather unimportant rule but I need to speak to him nonetheless. Go and visit him, tell him that I expect to discuss something with him.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()

--------------------------------------------------------------------
--TOVALL
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Sorry, I give no audiences at the moment. That means I've got no time.")
			ENDDIALOG()
		else
			SAY("Ah, what can I do for you? You are rather new to this place, aren't you? Otherwise I would surely have noticed you already.")
	
			ANSWER("I am just starting here. I come in behalf of Donnovan.",101)
		end
	NODE(101)
		SAY("What does that old geezer want from me? Unbelievable, that guy is sure to ruin everyones day.")

		ANSWER("He is expecting you for a personal conversation. It seems you have crossed the law.",102)
	NODE(102)
		SAY("And I am supposed to go there voluntarily? How do I know you aren't just making fun of me? I don't trust everybody, you know?")

		ANSWER("Come on, I am not your enemy here. Isn't it enough to have Reza and his lapdogs hunting us?",103)
	NODE(103)
		SAY("Sure but what should be the benefit of such a conversation? After all I do know that I crossed a boundary I wasn't supposed to.")

		ANSWER("Well, well, here I am trying to help you. I wonder why. It's bastards like you that prevent our early victory over Reza.",104)
		ANSWER("Listen, I am not trying to criticise you but maybe you are only making matters worse.",106)
	NODE(104)
		SAY("What did you just say?")

		ANSWER("I said that you are a worthless bastard and that you will ruin all of us.",105)
		ANSWER("Forget it.",106)
	NODE(105)
		SAY("You dare to speak to me like that? ")

		ATTACK()
		ENDDIALOG()
	NODE(106)
		GIVEITEM(804)
		SETNEXTDIALOGSTATE(107)
--EIN BOOZE
		SAY("Yes, I know that its only getting worse that way but I can't help to be stubborn. Youre alright. Here, take a drink. This could have turned ugly.")

		ANSWER("Don't worry, I know how it is to be on the edge.",107)
	NODE(107)
		GIVEITEM(9480)
--PAKET FÜR JADE		

		SAY("Well, I might visit Donnovan after all. Could you tell him about it? Oh, yes, I' ll give you a package for Jade. Donnovan will know what it is about. Thanks.")
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()


	
--------------------------------------------------------------------
--DONNOVAN
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("First you have to speak to Tovall. Then we will see.")
			ENDDIALOG()

		else
			SAY("Well, did you get my message to that muleheaded Tovall?")

			ANSWER("Yes, he agreed to meet you.",151)
		end
	NODE(151)
		SAY("Good, excellent, usually he behaves like a stubborn Drom. Is there anything else?")

		ANSWER("He also handed me a package for Jade but I have no idea who that is.",152)
	NODE(152)
		SAY("Jade? … Ahh, that is not a good story. The last message we received reported increased NCPD activity. She wrote that she did not know how long she could remain undetected and hidden. But we received this message already a week ago.")

		ANSWER("A whole week? What could have happened to her?",153)
	NODE(153)
		GIVEITEM(806)
		SETNEXTDIALOGSTATE(154) 
		SAY("Our duty is to face death unblinking. Every single one of us has got nothing to loose and everything to win. But of course there will be those that will not live to see our triumph. Even if they are dead, though, they live on through our deeds and as long as we remember them. It is an honour to die for the cause that you live for. Here, take this bottle of wine to Tovall, he will know what happened.")

		ANSWER("Well, what will be my task?",154)
	NODE(154)
		SAY("First you will have to get yourself in a decent shape. That means training, training and more training. If you are ready for more you can speak to a contact person.")
		ACTIVATEDIALOGTRIGGER(2)
		SETNEXTDIALOGSTATE(155)
		ENDDIALOG()
	NODE(155)
		SAY("Give that bottle of wine to Tovall. Afterwards you can train until the preparations continue.")
		ENDDIALOG()



--------------------------------------------------------------------
--TOVALL
--200
	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Do not fear, I will visit Donnovan in due time.")
			ENDDIALOG()
		else
			TAKEITEM(9480)
			if(result==0)then
				SAY("If you cannot deliver the package then bring it back to me at least.")
				ENDDIALOG()
			else
				SETNEXTDIALOGSTATE(201)
				SAY("What do I see? You are carrying the package and additionally a bottle of wine? That is not good.")

				ANSWER("I believe you know the meaning of this.",201)
			end
		end
	NODE(201)
		GIVEMONEY(5000)
		SAY("Of course I do but Donnovan is wrong. She is much too tough, I am certain that she is still alive. If I could just get out of here. Whatever, I will enjoy this wine nonetheless. I'll see you. (next mission at level 20)")
		EPICRUNFINISHED(15,0)
		ACTIVATEDIALOGTRIGGER(3)
		ENDDIALOG()


end