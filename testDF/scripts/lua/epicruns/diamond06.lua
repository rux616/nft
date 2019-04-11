--new
--Diamond Real Estate
--
--Trigger
--Triggernumber,Type,Person
--0,D, Gregory 100
--1,D, Fergusson 200
--2,Loot , Hontoka
--3,D, Human Resource 300
--
--Startnode, Person
--0, Human Resource Director
--50, HONTOKA
--100, Gregory Parkins
--150, Hontoka
--200, Fergusson
--250, Hontoka
--300, Human Resource
--
--Items
--Giftdroge 250 9354

--synthetic wine 807

function DIALOG()
--------------------------------------------------------------------
--Human Resource Director
--0
	
	NODE(0)
		SAY("I now have a definitive response from Eric Danmund himself. He seems to have declared a state of emergency and is willing to cooperate with the Tsunami. This is all Top Secret and you are only hearing this since you have earned our trust. Nobody outside the company may get any info about this special operation and if you get caught we will deny any knowledege of your existance. Are you ready to free Diamond from this plague that is Black Dragon?")

		ANSWER("You can bet on that.",1)
	NODE(1)
		SAY("I didn't expect anything less of you. First you should bring these documents to your Tsunami contact person. I hope you still know who he is?")

		ANSWER("Certainly, I met him in the Industrial sector 02. I am on my way.",2)
	NODE(2)
		GIVEITEM(9353)
--Dokumente
		SAY("Then keep in mind that your task will not only be the delivery. You will be directly involved as our inside person on the job. You are to help until the CityMercs contract kicks in. Diamond hopes you will succeed.")
		SETNEXTDIALOGSTATE(300)
		STARTMISSION()
		ENDDIALOG()
		

--------------------------------------------------------------------
-- HONTOKA
--50
	NODE(50)
		TAKEITEM(9353)
		if(result==0)then
			SAY("Didn't you get the permission from Diamond?")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(51)
			SAY("Look who is there. Did the allmighty Danmund finally reach a decision?")

			ANSWER("Sarcasm doesn't suit you but your proposal was accepted. It was agreed to cooperate with you.",51)
		end
	NODE(51)
		SAY("I am glad to hear that since without this special cooperation the future would look bleak. Not only for us but also for Diamond. I just don't feel comfortable when I have to depend on other people. Meaning I am not exactly excited about this temporary cooperation. There are already some plans but it would be prudent if you would lend us a helping hand.")

		ANSWER("I have been prepared for this.",52)
	NODE(52)
		SAY("Good, good. Foster analysed the components of this poison drug. ProtoPharm turned out to be producing many of these components. We did secure much of it after that attack on their production facility but that doesn't tell us what they planned to do with all these chemicals.")

		ANSWER("Obviously they expected to sell it to someone they don't like.",53)
	NODE(53)
		SAY("That would be too easy. But I don't know what exactly they are planning. That is why we need you. Most Tsunami operatives are known throughout Neocron. More like infamous. But you are not and that is why you are going to visit the ProtoPharm labs and ask a few questions there. The person to ask is Gregory Parkins. Understood?")

		ANSWER("Yes, but what kind of questions should I ask?",54)
	NODE(54)
		SAY("Ask how much of this Neuralgon was actually sold and where it was delivered to. If he does not want to tell you, you might have to use your brain and think of something. Try to do a small favor for him.")

		ANSWER("Great, this doesn't sound like an easy job. But I will surely try.",55)
	NODE(55)
		SAY("Afterwards you can find me back here. I will tell you how we continue with the plan. I cannot give away too much detail on it just now.")
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()
		


--------------------------------------------------------------------
-- Gregory Parkins
--100
	NODE(100)
		SAY("This area is off limits. Leave immediately.")

		ANSWER("Ahh, sorry, I thought this was the annual meeting of the Wine Connaisseurs.",108)
		ANSWER("I would like to know more about Neuralgon.",107)
		ANSWER("What can you tell me about Neuralgon?",107)
	NODE(101)
		TAKEITEM(807)
--Synthetic Wine
		if(result==0)then
			SAY("Didn't I tell you that this area is off limits?")
			ENDDIALOG()
		else
			SAY("Ahh, of course this is something different. How did you know that I like wine?")

			ANSWER("Such a great scientist is known all over Neocron.",102)
		end
	NODE(102)
		SAY("I feel honored, thank you very much.")

		ANSWER("You are welcome. I am very interested in buying some of this Neuralgon.",103)
	NODE(103)
		SAY("Neuralgon? You have chosen an unfortunate time. All Neuralgon has been sold. There is nothing left and it will probably take some time until we have produced enough of it again.")

		ANSWER("Yes, yes, I have heard about that. You delivered it to... ahhh... What was the name of that location again?",104)
	NODE(104)
		SAY("It was delivered to the Industrial Area 01 but I don't know what these chemicals were used for. Neuralgon is often used to increase the absorbtion rate of certain medicine. The medicine is integrated into the organism faster.")

		ANSWER("Thank you, this is all very interesting. Have a nice day.",105)
	NODE(105)
		SAY("Thank you for the wine.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(106)
		ENDDIALOG()
		
	NODE(106)
		SAY("Thanks once more for the wine")
		ENDDIALOG()

	NODE(107)
		SAY("How dare you? This is off limits. Leave immediately.")
		ENDDIALOG()

	NODE(108)
		SAY("Oh boy, every child knows that the meeting takes place in ViaRosso. Since I consider myself a connaisseur myself I should know. I'm especially looking forward to the new synthetic wine plus samples they will offer. Can't wait to taste the delicious flavor of synthetic wine plus again. Now go before I inform the security.")
		SETNEXTDIALOGSTATE(101)
		ENDDIALOG()

--------------------------------------------------------------------
--Hontoka
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Look for Gregory Parkins in the ProtoPharm Lab. The entrance is in Plaza 02.")
			ENDDIALOG()
		else
			SAY("Then go on and tell me what you found out.")

			ANSWER("A lot of Neuralgon was transported to the Industrial Area 01. It was all the Neuralgon ProtoPharm had in stock.",151)
		end
	NODE(151)
		SAY("Really? What do they need all this Neuralgon for? Surely they can't produce that much of these poisenous drugs.")

		ANSWER("It must be something different. I think I should visit that Industrial Zone 01. Maybe I will be able to find something.",152)
	NODE(152)
		SAY("Sure, at the moment I am rather busy preparing for one stage of ourplan. Diamond mainly sent you and a lot of money. This means we got to do most of this on our own. Be sure to report any news, ok? Maybe a worker there will know something. They usually know a lot.")
		SETNEXTDIALOGSTATE(250)
		ENDDIALOG()

		


--------------------------------------------------------------------
-- Fergusson
--200
	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(0)	
		if(result==0)then
			SAY("Don't touch anything.")
			ENDDIALOG()
		else
			SAY("Aye, what can I do for you, Runner?")

			ANSWER("I just wanted to have a look around. Maybe you can answer a few questions?",201)
		end
	NODE(201)
		SAY("Aye, that I can do. But don't you want to give something to a poor worker like me? Otherwise I might just swallow important information.")

		ANSWER("I have understood, here you have 1000 credits. What can you tell me about a substance called Neuralgon?",202)
	NODE(202)
		TAKEMONEY(1000)
		if(result==0)then
			SAY("Sorry, my memory is a little fuzzy at the moment. Maybe it would help if you really had any money.")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(203)
			SAY("I remember that some stuff called like that was delivered here and then brought to some place else. It was quite a few crates. Looked expensive. Did I already mention that I like credits very much?")

		ANSWER("Right, another 1000 credits. Here you are.",203)
		end
	NODE(203)
		TAKEMONEY(1000)
		if(result==0)then
			SAY("Sorry, my memory is a little fuzzy at the moment. Maybe it would help if you really had any money.")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(204)
			SAY("Some suspicious looking guys came by for the delivery. I saw that one of them had a Black Dragon tatoo on his neck. One of them sneered that they would make sure to distribute all the stuff to the whole city. And should I tell you something else? That's 1000 once more.")

			ANSWER("Please continue. After all you do cost me enough as it is.",204)
end
	NODE(204)
		TAKEMONEY(1000)
		if(result==0)then
			SAY("Sorry, my memory is a little fuzzy at the moment. Maybe it would help if you really had any money.")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(205)
			SAY("I believe they are planning something major. And its going to affect the whole city.")

			ANSWER("Great, that was a lot of bullshit and little real information. Goodbye.",205)
		end
	NODE(205)
		SAY("Good luck and a productive day.")
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(206)
		ENDDIALOG()		

	NODE(206)
		SAY("I have already told you all there is to say. I have to continue my work, excuse me.")
		ENDDIALOG()	
--------------------------------------------------------------------
-- Hontoka
--250
	
	NODE(250)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Look for Fergusson in the Industrial sector. We are not on holidays here, the Black Dragon won't allow us any mistake.")
			ENDDIALOG()
		else

			SAY("Good, you have to continue straightaway or the Black Dragon will succeed in their plan. We finally know what they have been preparing all the time.")

			ANSWER("Then tell me. I could only tell you that the Black Dragon want to distribute that Neuralgon all over the city.",251)
		end
	NODE(251)
		SAY("That is not as wrong as you might think. They are planning to mix this poisenous drug into the Neocron City water supply. And only to the fresh drinkable water supplies that are used by the various enemies of the Black Dragon. There is one main pipeline below Pepper Park 03. There is also a secret entrance to it in the Bump Asylum and the secret Black Dragon HQ. there. If you meet somebody down there be sure to take that damned drug from him. Kill him or just knock him out. Any person down there is probably going to try and poison our water.")

		ANSWER("And you just stand here? Don't you have anything to do? This is an emergency.",252)
	NODE(252)
		SAY("Don't be stupid, if it wasn't for me we would never have allied against the Black Dragon. Of course I am not merely standing here. Somebody has to coordinate the various operatives. Be sure to get back to me once you secured this drug.")
		SETNEXTDIALOGSTATE(253)
		ENDDIALOG()

--Spieler stellt Black Dragon unter dem Bump Asylum

	NODE(253)
		TAKEITEM(9354)
		if(result==0)then
			SAY("It is urgent! They will poison us all if we don't take care. Look for the secret entrance in the Bump Asylum or the secret entrance to the secret Black Dragon HQ. Well, not that secret, actually, Pepper Park 03.")
			ENDDIALOG()
		else
			SAY("That really was good work. I wouldn't have thought you capable of something like this. Our various troops have intercepted all Black Dragons that were sent out to poison the water supply. From my knowledge nothing got through. We will be able to do the rest without your help. You can report back to Diamond now if you wish. If you ever feel like joining us, we will gladly consider it.")
			SETNEXTDIALOGSTATE(254)
			ENDDIALOG()
		end

	NODE(254)
		SAY("Everything is under control. It was a close call but at the end we deserved to win. Good luck for your career.")
		ENDDIALOG()
--------------------------------------------------------------------
-- HUMAN rESOUORCE 
--300
	NODE(300)
--NEW
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("This is important. We cannot allow the Black Dragons to harass us any longer. Visit Hontoka in Industrial 02.")
			ENDDIALOG()
		else
			ISMISSIONTARGETACCOMPLISHED(1)
			if(result==0)then
				SAY("This is important. We cannot allow the Black Dragons to harass us any longer. Visit Hontoka in Industrial 02.")
				ENDDIALOG()
			else
				ISMISSIONTARGETACCOMPLISHED(2)
				if(result==0)then
					SAY("This is important. We cannot allow the Black Dragons to harass us any longer. Visit Hontoka in Industrial 02.")
					ENDDIALOG()
				else
					GIVEMONEY(100000)
					GIVEITEM(1574)
					SETNEXTDIALOGSTATE(301)
					SAY("We have already heard of your success. This was indeed good work. The Tsunami Syndicate is applying a strong pressure on the Black Dragons at the moment and tomorrow the contract with the CityMercs is going to take effect. After that we will discontinue our dealings with the Tsunami. But you have done a great service for Diamond and I would be glad if you were to support Diamond with a clan of your own. As a small reward we will award you 100 000 credits. Also we would like to give you an additional storage space where you can deposite some of your additional goods. Good luck with whatever ventures you are planning for the future.")
					EPICRUNFINISHED(2,5)
					ACTIVATEDIALOGTRIGGER(3)
					ENDDIALOG()
				end
			end
		end

	NODE(301)
		SAY("Go away")
		ENDDIALOG()
--NEWEND
-----------
--Garmont
--350
	NODE(350)
		SAY("Ive got a nice little suprise for the water supply right here. And there is nothing you could do to stop me now.")
		ATTACK()
		ENDDIALOG()

end