--new
function DIALOG()
--Trigger
--Triggernumber,Type,Person
--0,D,Hontoka
--
--1,D,McMillan
--


--Startnode, Person
--0 Human Resource
--50 Hontoka
--100 Black Lily
--150 McMillan

-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("I have already heard about your ambitious endeavours to get more renown within BioTech. Well, it seems to work for the moment. I was instructed to offer you another task. You might remember the rumours about BioTech that abounded in Neocron.")
		
		ANSWER("CONTINUE",1)
	NODE(1)
		SAY("Well, this time they also appeared in the network and they raise heavy accusations against two BioTech directors. It is unknown, where these rumours come from and that is the reason why we need more information.")
		
		ANSWER("I understand. That is my task then, right?",2)
		ANSWER("If this is supposed to be a mission I will have to deny it, I am sorry.",5)
	NODE(2)
		SAY("Yes, not alone though. We already have sent out several Runners with the order to investigate into the rumours. And you will have exactly the same order. These informations are naturally not easy to acquire and that is why you need to utilize rather uncommon methods.")
		
		ANSWER("CONTINUE",3)
	NODE(3)
		SAY("There is a Tsunami contact person that agreed to give us some information. But it is not certain if the Tsunami know anything about it at all. If you get your hands on something interesting, best report it to McMillan. He is one of the directors of operation here at BioTech and was informed about everything.")
		
		ANSWER("Ok, I have understood everything so far. Where exactly can I find this Tsunami contact?",4)
	NODE(4)
		SAY("He is in the Industrial district 02. But be careful out there since it is pretty dangerous. The name of the contact is Hontoka.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(6)
		ENDDIALOG()		

	NODE(5)
		SAY("Rethink your decision. You can always come back for the mission.")
		ENDDIALOG()
		
	NODE(6)
		SAY("Meet up with Hontoka in the Industrial district 02. Once you have what you need, be sure to visit McMillan right here in the HQ.")
		ENDDIALOG()

-----------------------------------------------------
--Hontoka

	NODE(50)
		SAY("Ho, Runner. What's up?")
		
		ANSWER("A productive day. I am coming from BioTech. Man, this really is a dirty neighbourhood.",51)

	NODE(51)
		SAY("That doesn't suit you, does it? Well, there are those who have to live here. Myself, I am lucky, I am just visiting. Some people just have more luck than others.")
		
		ANSWER("Let's get back to business, shall we? You know why I am here?",52)
	NODE(52)
		SAY("Yes.BioTech is scared of the images of some ghosts. Although those images are just the mirror of the reality. they show how BioTech looks on the inside, or don't they?")
		
		ANSWER("I doubt that very much. BioTech is a honorable company and has nothing to hide.",53)

	NODE(53)
		SAY("Only a fool would talk about things he has not seen for himself. Who can say whether these stories are real or not? I will not judge on this but I am on your side. These rumours are not very productive for certain deals...")
		
		ANSWER("Is that so? Then you can surely tell me what you know about those rumours.",54)
	NODE(54)
		SAY("I know that some of those stories are fiction, created to cause mayhem. But I also know that every page has two sides to it.")
		
		ANSWER("CONTINUE",55)

	NODE(55)
		SAY("Meaning that certain stories about BioTech having contacts to the underworld or even about secret experiments on humans are not really fiction.")
		
		ANSWER("You are joking, BioTech would never do experiments of this kind.",56)
	NODE(56)
		SAY("Oh, BioTech would never do that, that is true. Such a thing is only ever done by an employee of BioTech. Most have their own motivation. The search for power, money or even fear are very strong motivations. But never the company itself.")
		
		ANSWER("CONTINUE",57)

	NODE(57)
		SAY("It is always the individual person that does something like that. There are contacts to the Tsunami for example and sometimes even cooperations. They are denied officially of course. Just as well there are disgusting experiments on humans. Some of which are even partially legal by existing laws.")
		
		ANSWER("There are always people who are committing such monstrous acts. I will not be drawn further into this discussion. I want to know if there are indications about who is spreading these rumours.",58)
	NODE(58)
		SAY("You are walking the way that leads to the goal but you do not have an eye for the flower at the side of the way. How can you reach the goal if you do not see the whole picture, if you do not see everything? No, I do not know more about it. But think about who would do something like that? Who would want to damage BioTech?")
		
		ANSWER("A good question. I don't know it at the moment, but I will find out.",59)

	NODE(59)
		SAY("That is the right attitude. I suggest you visit Black Lily in Pepper Park 02. She is very close to the source of rumours. She could know more about it than I do. Go now.")
		SETNEXTDIALOGSTATE(60)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
		
	NODE(60)
		SAY("You will not be able to get more information from my side. But once you have what you came for, give it to your superiors.")
		ENDDIALOG()
		

-----------------------------------------------------
--Black Lily

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Well, how about it? Oh my, you look exhausted. You have probably planned something else already, dont you?")
			ENDDIALOG()
		else
			SAY("I am sure I could give you all that you could wish for. Or even more.")
		
			ANSWER("No thanks. Not now. I have spoken to Hontoka. He advised me to ask you about rumours.",101)
		end
	NODE(101)
		SAY("Rumours are fascinating, don't you think?")
		
		ANSWER("Everybody should decide that on his own. Do you know by any chance who is behind all these rumours that are spread throughout the network?",102)
	NODE(102)
		SAY("You mean those accusations? Maybe I know something. these stories are very amusing. I could spend days to just download them off the net.")
		
		ANSWER("Does that mean you know something and you are just keeping it from me? Do you expect something in return or are you just not prepared to tell me?",103)
	NODE(103)
		SAY("Don't be that sensitive, of course I know something about it. It is difficult to spread that many rumours in the net and not to leave any trace at all. But you have already guessed that I would like you to do me a little favor.")
		
		ANSWER("If it is not too much I am prepared to give you something in return for the information.",104)
	NODE(104)
		SAY("I am sure we will get along nicely. I want you to bring me some special drugs. You know it is not that easy with a job like that. Sometimes you feel like cowering in some corner and dying.")
		
		ANSWER("CONTINUE",105)
	NODE(105)
		SAY("But drugs help to get over these periods... at least for a time. They numb your feelings. I can imagine how you think about me now... everybody thinks like that.")
		
		ANSWER("It is not fair that you suffer like that. But life has never been fair ... I will get you those drugs.",106)
	NODE(106)
		TAKEITEM(722)
		if (result~=0) then
			TAKEITEM(722)
			if (result~=0) then
				TAKEITEM(722)
				if (result~=0) then
					-- Player has already the drugs with him (no need to let him open dialog again
					GIVEITEM(9201)
					SAY("Thanks. Here is your datacube. Maybe somebody from your company might be interested in it. A director maybe?")
					SETNEXTDIALOGSTATE(108)
					ENDDIALOG()
				else
					GIVEITEM(722)
					GIVEITEM(722)
					SAY("Thank you, please bring me three of those Paratemol Forte drugs. It's those cylinders with the red pills. In exchange for that I will give you a datacube with the informations you wanted.")
				end
			else
				GIVEITEM(722)
				SAY("Thank you, please bring me three of those Paratemol Forte drugs. It's those cylinders with the red pills. In exchange for that I will give you a datacube with the informations you wanted.")
			end
		end
		SETNEXTDIALOGSTATE(107)
		ENDDIALOG()

--Spieler organisiert Forte Drogen Paratemol forte 722		

	NODE(107)
		TAKEITEM(722)
		if (result==0) then
			SAY("Come on. I really need those pills.")
			ENDDIALOG()
		else
			TAKEITEM(722)
			if (result==0) then
				GIVEITEM(722)
				SAY("Come on. Can't you count till 3?")
				ENDDIALOG()
			else 
				TAKEITEM(722)
				if(result==0)then
					GIVEITEM(722)
					GIVEITEM(722)
					SAY("Come on. Can't you count till 3?")
					ENDDIALOG()
				else
					GIVEITEM(9201)
					SAY("Thanks. Here is your datacube. Maybe somebody from your company might be interested in it. A director maybe?")
					SETNEXTDIALOGSTATE(108)
					ENDDIALOG()
					
				end
			end
		end
	NODE(108)
		SAY("I have already given you every information that I have. Take it back to your company or wherever you came from and give it to your directors.")
		ENDDIALOG()
		


-----------------------------------------------------
--McMillan

	NODE(150)
		TAKEITEM(9201)
		if(result==0)then
			SAY("At the moment I have not time for you. But you could speak to another employee. Only come to me if you have real important information.")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(151)
			SAY("Ahh, a new face. It is always a pleasure to welcome another ambitious Runner in our ranks. I hope you are content with everything you experienced so far?")
		
			ANSWER("Of course, everything fits so well together and is organized professionally. But...",151)
		end
	NODE(151)
		SAY("Yes, I knew you would be content. Nobody has ever regretted it to join our company. The best company of all of Neocron. I was informed about those horrible rumours in the network.")
		
		ANSWER("CONTINUE",152)
	NODE(152)
		SAY("It is cruel and evil enough to create these rumours in the first place. These people have obviously no idea how that hurts all of us.")
		
		ANSWER("I believe those people know very well what they do. They obviously want to hurt BioTech.",153)
	NODE(153)
		SAY("I guess its those punks again, these Anarchy Breed! Or those up to no goods, the Twilight Guardian. I cannot stand both of them. It is already past time somebody did something against them. Did you find anything out?")
		
		ANSWER("Yes, I have. I have received a datacube with some interesting information. Although I have not had the chance to examine them any closer.",154)
	NODE(154)
		SAY("You have really found something? Very good, go on and give it to me. I will follow it up and have the data analysed. Good work! Where did you get this information?")
		
		ANSWER("I...well, I got it from a few contact persons in Pepper Park and the neighbourhood.",155)
	NODE(155)
		SAY("Pepper Park? That cesspit of corruption? Well, we will see, if this information is any good. I am of the opinion that only shit and violence ever comes out of there. I strongly advise you to keep your distance from that area! There is only trouble.")
		
		ANSWER("I will keep it in mind.",156)
	NODE(156)
		GIVEMONEY(5000)
		SETNEXTDIALOGSTATE(157)
		SAY("Alright then! Since you did your job, and did it well, BioTech gives you 5000 Credits as payment. It will be transferred to your account presently. Maybe we have another mission for you once we sifted through this information. A productive day, Runner.")
		EPICRUNFINISHED(5,1)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
		
	NODE(157)
		SAY("Go away")
		ENDDIALOG()

end