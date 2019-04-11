--new
--BlackDragon
--
--Trigger
--Triggernumber,Type,Person
--0,D, MANUEL50
--1,D, WISEGUY 100
--2,D,
--3
--
--Startnode, Person
--0, WISEGUY
--50, MANUEL 1649
--100, WISEGUY
--150, LUCY 1670
--200, LEONE 1671
--250, LUCKY 1672
--
--Items
--Drogenpaket
--Missionbase Eintrag
--NPC0	NPC1	NPC2	NPC3	TRG0	VAL01	VAL02	VAL03	TRG1	VAL01	VAL02	VAL03	TRG2	VAL01	VAL02	VAL03	TRG3	VAL01	VAL02	
--1649	1670	1671	1672	3	0	0	0	3	4	1	0
--START	START	START	START
--50	150	200	250
--


function DIALOG()
--------------------------------------------------------------------
--Soldat
--0
	
	NODE(0)
		SAY("If you think being with us is an easy way to money and power, forget it. You gotta work hard like every single one of us. Competition is tough to say the least.")

		ANSWER("Very well. Then tell me what exactly you guys do around here. I am not going to work for somebody I don't know.",1)
	NODE(1)
		SAY("You will see, Runner. It would probably be best though if you learned a little more respect first. People would take you more seriously, you know? Why don't you frickin newcomers have any manners at all?!")

		ANSWER("No reason to insult me, I understand what you are saying.",2)
	NODE(2)
		SAY("Alright, alright. It's not that I am trying to get rid of you or something. But who am I to know whether you are a Tsunami infiltrator or not. That's the reason why you will have to prove yourself to us first. Even before I can answer those questions of yours.")

		ANSWER("Don't worry, I'm prepared for everything.",3)
	NODE(3)
		SAY("If that's really your attitude you have a bright future in front of you. However, you should always keep the first rule in your mind because if you don't, you will go down fast.")

		ANSWER("I am listening...",4)
	NODE(4)
		GIVEITEM(9460)
--DRUGPAKET
		SAY("No remorse and no mercy! That is bad for business, understand? Now that you know the most important rule you could make a delivery for us. Manuel is one of our street dealers and he ran low on drugs. You will get a fresh bundle to him in sector 08. He can be found in one of the back alleys. After that you get straight back to me. Unless of course you want to talk to some people here first. Maybe Leone or Lucky? They're both rather powerful. Make sure however that you keep your hands off Lucy, ok? You better talk to Leone or Lucky instead, would benefit you more I think.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(100)
		ENDDIALOG()
		


--------------------------------------------------------------------
-- MANUEL
--50
	NODE(50)
		SAY("Yes? What is it? Are you here to try some real sweet drugs? Come on, I can get you anything you want. I can even get you something special.")

		ANSWER("No, thanks. Here is a delivery of drugs for you. It's some kind of test job for me, you know?",51)
	NODE(51)
		TAKEITEM(9460)
--Drogenpaket
		if(result==0)then
			SAY("This is lame, this is real lame. If you're going to get me that delivery, that's ok. But if you haven't got it, where's the point in telling me about it?")
			ENDDIALOG()
		else
			SAY("Test? Whatever. I'd prefer a big fat bundle of money really. It's a tough job here. If I do this for another twenty years I think I will die.")

			ANSWER("Twenty years? That is a long time. You must surely know a lot about things here, eh?",52)
		end
	NODE(52)
		SAY("Sure I do. After all I grew up around here. Some free advice, make sure you avoid the Tsunamis on the street unless you have the advantage. You should try and make friends with Leone and Lucky since they are pulling the strings around here. Apart from the really powerful persons of course. You will be lucky to ever lay an eye on Gecko at all. Most of the time he is seen with his girl, Lucy. Don't make the mistake and fall for that bitch, she is already promised to Gecko ... and Lucky might have something against it as well. But listen, I have a favor to ask.")

		ANSWER("Something else? I thought I have already given the delivery to you.",53)
	NODE(53)
		SAY("I know but I am living through a nightmare right now. Nobody wants to buy anything and I am low on credits. I haven't eaten anything in days because of this crap. Please, I need some money. Come on, 1000 would be enough. Please, I really need it.")

		ANSWER("Ok, but that's all you will get from me.",54)
		ANSWER("There is no way I am giving you any money, you hear me? Look after yourself or nobody will.",55)
	NODE(54)
		SAY("Runner, you just didn't get it, didn't you?  Hahaha. You better join the Fallen Angels or something because they can't cope with the rough life out here either. You've failed the test, looser.")
		SETNEXTDIALOGSTATE(56)
		ENDDIALOG()
		
	NODE(55)
		SAY("It sure takes a lot to withstand my whining. Congratulations, you have passed the test. We are always looking for merciless bastards like you.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(57)
		ENDDIALOG()
	NODE(56)
		SAY("I am sorry but you won't get a second chance from me. Maybe you can try again? Ask the person who sent you.")
		ENDDIALOG()

	NODE(57)
		SAY("Go to the Wiseguy who sent you in the first place. Tell him that you passed the test.")
		ENDDIALOG()



--------------------------------------------------------------------
--WISEGUY
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Sorry, you gotta speak to Manuel first. If he sends you away you might have to try again from the beginning.")
			ENDDIALOG()
		else
			SAY("Well done, you have passed the test. It seems you did remember the first rule.")

			ANSWER("Yes, great. Do I get some kind of reward now or what?",101)
		end
	NODE(101)
		GIVEMONEY(1000)
		SAY("You think you are clever, don't you? I'll give you 1000 credits but only because I am such a nice person. Do something with it! The better you are the further you'll get. If you really are clever you can grab loads of credits with us. Most people don't get there, though. Once you feel stronger you can come back for another assignment. Newcomers like you can't do squat for us at the moment. (next mission at level 20)")

		EPICRUNFINISHED(9,0)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()

		

--------------------------------------------------------------------
--Lucy
--150
	NODE(150)
		SAY("You don't look very familiar. So, you are new with the Black Dragon? What a pity. Maybe we should continue our neat conversation until you are rich and powerful for example.")

		ANSWER("Manuel told me about you. I have great ambitions and I will reach my goals. Just wait and see.",151)
	NODE(151)
		SAY("You wouldn't believe how often I had to listen to similar bullshit. If you really mean it try to get Gecko as a friend. He is the right hand of Trond and he is very powerful. Maximilian Trond is more like a God you can prey to. You'll be lucky if you ever even lay an eye on him. See you later, Runner.")
		SETNEXTDIALOGSTATE(152)
		ENDDIALOG()
	NODE(152)
		SAY("I wish I could talk more with people. If only Gecko wouldn't be so damn jealous.")

		ENDDIALOG()
--------------------------------------------------------------------
--Leone
--200

	NODE(200)
		SAY("Why are you disturbing me? I don't have time to waste on a nobody like you. I have no intention of ending up like Wan Tokai. Mainly because he is dead.")
	
		ANSWER("Rest assured, I won't be a nobody forever. But who is Wan?",201)
	NODE(201)
		SAY("You don't even know Wan Tokai a.k.a. the Dragon? The single one person who gave his name for the Black Dragon? Runner, you are still far from being interesting to me. You better leave now.")
		SETNEXTDIALOGSTATE(202)
		ENDDIALOG()
	NODE(202)
		SAY("Do I need to repeat myself? You have to play according to the rules or you will die. Do you get it?")
		ENDDIALOG()	

--------------------------------------------------------------------
--Lucky
--250
	NODE(250)
		SAY("A new face?! And what is your business with me? I have never heard of you before. I will certainly not giving out something for free. But keep in mind that drugs and appartements are always generating money. A wise man would try and get some experience with our business.  And if you're just looking for a job, ask one of the Wiseguys around. ")
	
		SETNEXTDIALOGSTATE(251)
		ENDDIALOG()
	NODE(251)
		SAY("Improve on yourself and then we will see.")
	
		ENDDIALOG()
end