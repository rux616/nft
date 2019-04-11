--new
function DIALOG()

--Trigger
--Triggernumber,Type,Person
--0
--50
--0,D,Hontoka
--1,Pvp, 1Black Dragon
--2,D,Cole
--200
--3,D,Foster

--Startnode, Person
--0 Human Resource
--50 Leila
--100 Hontoka
--150 Cole
--200 Hontoka
--250 Jester

-----------------------------------------------------
--Recruiter

	NODE(0)
		SAY("Tsunami members whose loyalty is in question are still not wanted until this whole mess is cleaned up.")
		
		ANSWER("That is a pity. I guess I will have to rely on Leila's offer after all.",1)
	NODE(1)
		SAY("Excuse me now. This situation requires that I have my full attention to it.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
		
	NODE(2)
		SAY("Do not force me to call the security. Go and visit that Leila you were talking about.")
		ENDDIALOG()

-----------------------------------------------------
--Leila

	NODE(50)
		SAY("You are back, finally! I have had a lot of trouble contacting Hontoka, he is another Tsunami executive but his identity is a mystery to many. He prefers to watch everything from a distance. I know that his rank within the syndicate is at least equal to Taylor. He transmitted his location so that you can find him. I believe he spoke of the Industrial sector 02. I would try it there first...")
		
		ANSWER("Glad to hear that. Sure wasn't an easy time to keep a low profile.",51)
	NODE(51)
		SAY("You need to find more evidence against Taylor. But how? I do not know, but there are certain people here in Neocron who would do almost everything for money. But maybe you should talk to Hontoka first, he has some ideas himself.")
		
		ANSWER("I will do as you say. But the whole damn situation seems to slowly slip from my hands!",52)
	NODE(52)
		GIVEITEM(9252)
		SAY("You have to keep calm or it will consume you. Now quick, before Gecko sees me talking to you. And... I wanted to give you this back... I could not do it... when Gecko found out that I was a spy, he gave me that implant back and said I was free to use it, whenever the pain of my existance is too great to bear...")
		
		ANSWER("That is the poison injector...",53)
	NODE(53)
		SAY("Yes, now please go...")
		SETNEXTDIALOGSTATE(54)
		ENDDIALOG()
		
	NODE(54)
		SAY("Go now... Hontoka is in Industrial 02.")
		ENDDIALOG()

-----------------------------------------------------
--Hontoka

	NODE(100)
		SAY("I was informed of your situation. Leila believes you can be trusted and I trust Leila. It looks grim. You have angered the snake and now you fear its poison.")
		
		ANSWER("I have come here because it seems that you are my only hope in this.",101)
	NODE(101)
		SAY("I dislike Taylor as much as I loath the swamp bugs. Always sucking blood from others, never creating something of their own. That was one of the reasons I quit the active duties with Tsunami. Make no mistake, I still have many friends within the syndicate but it is not the same now. Back then there used to be a certain honor amongst the members. Now there is none or the little that is left with Veronique.")
		
		ANSWER("What are you doing so close to Neocron in any case?",102)
	NODE(102)
		SAY("Somebody needs to take care of our investments in Neocron. After all we have worked here for a long time and its not easy to extract all our invested money like that. I do not blame Veronique for this whole situation, I blame the times we live in. Oh, as much as I would like to change all this back to the state where there was honor in every deed. If there would just be a threat great enough to unite the warring members. I want to help you, young Tsunami and that is why I will try to get evidence for the treachery of Taylor Gomez.")
		
		ANSWER("Thank you for that, but what can I do in the meanwhile?",103)
	NODE(103)
		SAY("The Black Dragon is gathering its forces and securing its back. The direction of their movement is clear in that it is pointed towards us. Veronique and Axom know that very well and they are concentrating their forces too. The only way to stop this confrontation might be to confront Taylor directly and kill him. Thereby uncovering his dirty secrets. But there is need for preparation. If you cannot prove his guilt it will not do you any good to kill Taylor.")
		
		ANSWER("Easier said than done, do you know somebody to give me that information.",104)
	NODE(104)
		SAY("I might know a person. The person I mean has many talents and knows the way of the world. Visit Mark Cole in the weapon market in sector 06 of the dome. He might know more.")
		
		ANSWER("I believe I can find that on my own, thank you.",105)
	NODE(105)
		SAY("Come back to me after you have the information Cole provided you with.")
		SETNEXTDIALOGSTATE(200)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
	

-----------------------------------------------------
--Cole

	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("I can't imagine what you might want from somebody like me.")
			ENDDIALOG()
		else
			SAY("Hey, Tsunami scum! Watch were you are going, this is my place.")
		
			ANSWER("Cole? I was told I could get information here.",151)
		end
	NODE(151)
		SAY("That is great! Now, I even have a Tsunami who is asking for my help. You must be pretty stupid judging from your looks. I am not into that sort of business, unless...")
		
		ANSWER("Unless what?",152)
	NODE(152)
		SAY("Well, maybe. Maybe I can give you some information if you do something for me...")
		
		ANSWER("Well, that depends... I...",153)
	NODE(153)
		SAY("Alright, I thought you were tough but now I see that you are just another looser. Its a pity with all those privateers that don't earn a penny and a no good scum like you is earning the big money. Beat it, slacker.")
		
		ANSWER("Wait, I'll do it ...its ok, what is it?",154)
	NODE(154)
		SAY("That is better now. Ok, now listen. There is this guy who is constantly keeping tabs on me. I tell you, he is watching and following me almost all day long.")
		
		ANSWER("And where is he now? I cannot see him.",155)
	NODE(155)
		SAY("He is Black Dragon. Should be just your kind of job, because you are Tsunami. I want to divert his attention so that I can have a friend of mine sneek into his appartement and nick his stuff.")
		
		ANSWER("It is still unclear what you want me to do.",156)
	NODE(156)
		SAY("Your part will be to divert their attention. Just kill two Black Dragon member and there will be chaos. Enough for my friend to do his part, hopefully.")
		
		ANSWER("Alright, but I better get my information then.",157)
		ANSWER("Would it be too much for you to tell me precisely who to kill?",163)
	NODE(157)
		SAY("Information? Oh, yes, of course, your info. I have it right here in my head. Now go and return once you did your part.")
		SETNEXTDIALOGSTATE(158)
		ENDDIALOG()

--Spieler killt 4 Black Draggon PvP Trigger 1
		
	NODE(158)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("It will not do. You must kill one of those Black Dragons.")
			ENDDIALOG()
		else
			SAY("You again! What is it this time??")
		
			ANSWER("I have fulfilled my part of the agreement, now it is your turn...",159)
		end
	NODE(159)
		SAY("That was about high time. Serves that bastard right for keeping tabs on me. Now that my friend nicked his equipment I want to see how he is going to keep tabs on me any longer. I prize my privacy very high, you know.")
		
		ANSWER("Tell me what you know about Taylor Gomez?",160)
	NODE(160)
		GIVEITEM(9254)
		SAY("Oh, I have lots of information about that person. After I have consulted some of my informative sources, this is what came up. I know from a reliable source that he is being paid enormous sums by the Black Dragon. He also indulges in perverted sexual desires and receives bribes from various organisations throughout Neocron. Is that enough information? Do I need to be more precise? Here is a datacube with all the relevant data. ")
		
		ANSWER("That is really more than I hoped for. I have to take good care of this datacube. It would be a shame if I lost it somewhere.",161)
	NODE(161)
		SAY("Now beat it. Just don't be surprised if some of the info on the cube is not 100% truthful. You understand, eh?")
		ACTIVATEDIALOGTRIGGER(2)
		SETNEXTDIALOGSTATE(162)
		ENDDIALOG()
		
	NODE(162)
		SAY("I have no more business with you. I have given you your information, now go back to whoever sent you in the first place.")
		ENDDIALOG()
	

	NODE(163)
		SAY("It is your task to kill a Contact from the Black Dragon. They should NOT be runners. I recommend you to check out the secret Black Dragon Faction Office in Neocron. The Black Dragon Contacts there should be a easy target for you.")
		
		ANSWER("And I can really flatline any Black Dragon employee?",164)
	NODE(164)
		SAY("No, only a Black Dragon Contact. Otherwise the kill cannot be accepted. But don't attract too much attention. If you get caught we will deny any knowledge of your existance.")
		SETNEXTDIALOGSTATE(158)
		ENDDIALOG()


-----------------------------------------------------
--Hontoka

	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Have you seen Cole already? Visit him before you come here again.")
			ENDDIALOG()
		else
			SAY("Have you been able to find any evidence?")
		
			ANSWER("Yes, I found more than I expected. It is almost too much. I wonder where Cole had all this information from.",201)
		end
	NODE(201)
		SAY("I believe such men have their sources. It is more important just how valid the information is. Is it good information?")
		
		ANSWER("We will have Taylor soon enough. This information is giving away that Taylor receives payment from the Black Dragon. That should finish him.",202)
	NODE(202)
		SAY("Before you confront Taylor you should get better at what you do and maybe Jester can help you get a decent weaponry. He is a genius when it comes to technology. You might want to visit him now.")
		SETNEXTDIALOGSTATE(203)
		ENDDIALOG()
		
	NODE(203)
		SAY("At the moment I do not have more advice for you. Go and see Jester in Dome of York sector 07, he might be able to give you some appropriate tools.")
		ENDDIALOG()
		



-----------------------------------------------------
--Jester

	NODE(250)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Sorry but I am very busy right now.")
			ENDDIALOG()
		else
			SAY("Ah, my favourite would be Tsunami! Did you know that a lot of Tsunami groups are looking for you? Where have you been?")
		
			ANSWER("I uncovered some dirty little secrets about Taylor and I believe I could finish him off.",251)
		end
	NODE(251)
		SAY("So you think you are now ready to face him? I don't know, you still look a little frail.")
		
		ANSWER("I am almost ready, I still need better weaponry. Can you do something about that?",252)
	NODE(252)
		SAY("Not really. Unless you have something I can work with. Only recently I found a very sophisticated blueprint of a weapon and I could not resist to adapt some of its good parts. Meaning that I have a weapon design, but it does need the chemical Valadium. That chemical is extremely rare so I guess its a slim chance. If you can get your hands on one of those X-OR microchips again or get me back the one I gave you, I could almost certainly assemble it. ")
		
		ANSWER("But I do have that Microchip again and I also have Valadium. Maybe these will suffice? That would be really good.",253)
	NODE(253)
		TAKEITEM(9251)
		if(result==0)then
			SAY("I cannot do much without the X-OR chip.")
			ENDDIALOG()
		else
			TAKEITEM(9253)
			if(result==0)then
				SAY("Valadium is needed so that I can complete the design. Most of the time Valadium is not even labelled. That shows how rare it is.")
				-- give back the x-or chip or the player cant return
				GIVEITEM(9251)
				ENDDIALOG()
			else
				GIVEITEMWITHSLOTS(9255,255,1)
				SAY("This looks good. Here is the weapon. The blueprint comes from some secret weapon project that was never completed. That means I  had to improvise a bit. Be sure to visit the recruiter before you take on Taylor himself.(next mission at level 45)")
				GIVEMONEY(20000)
				EPICRUNFINISHED(8,4)
				ACTIVATEDIALOGTRIGGER(3)
				ENDDIALOG()
				
			end
		end


end