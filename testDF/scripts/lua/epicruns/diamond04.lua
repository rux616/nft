--new
--Diamond Real Estate
--
--Trigger
--Triggernumber,Type,Person
--0,PVP, Black Dragon, 50
--1,D, Jenna NCPD, 100
--2,D, Human R, 150
--3
--
--Startnode, Person
--0, Human Resource Director
--50, Simmons
--100, Jenna NCPD
--150, Human Resource Director
--200,
--250,
--
--Items
--belastende Dokumente, 50 9352

function DIALOG()
--------------------------------------------------------------------
--Human Resource Director
--0
	
	NODE(0)
		SAY("If you feel ready, now is the chance to give it another go. I would advise you to visit Simmons once more. Thanks to your efforts he decided to come to Diamond after all. He seemed very determined and knew what he wanted.")

		ANSWER("Did he get over the loss of his wife so fast?",1)
		ANSWER("I am sorry, but I don't yet feel ready for another assignment.",2)
	NODE(1)
		SAY("He didn't say anything about that. But he specifically asked for you and was convinced that he could do something against the Black Dragon. And those bastards are giving us a lot of trouble recently. He needs your help, though. Seeing that he joined us because of your influence you did earn the bonus for convincing him. It is 8000 Credits, you'll get it once you completed this assignment. But don't waste your time, you can find him in the Pepper Park 02 area again.")
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()
	NODE(2)
		SAY("It is your decision. Be sure to check back once you changed your mind.")
		ENDDIALOG()
--------------------------------------------------------------------
-- Simmons
--50
	NODE(50)
		SAY("I did not yet have the opportunity to extend my thanks to you. Even though I suffered a great loss, you still have done me a favor. And I am not about to simply forget that,")

		ANSWER("I am sorry that there wasn't more I could do.",51)
	NODE(51)
		SAY("That is no problem. It was not your fault. The only one responsible for this cruelty are the Black Dragons.")

		ANSWER("I wouldn't have thought that you would get over this loss so fast.",52)
	NODE(52)
		SAY("Well, the only choice is to continue the life, right? Even if my wife meant more to me than I am able to express in words. I can't just stop and refuse to live, just wait until I die is not an option.")

		ANSWER("That sounds right, but you...",53)
	NODE(53)
		SAY("Maybe I did not get over this loss as good as you thought I did. I have another request for you and in exchange I am willing to provide information against the Black Dragon.")

		ANSWER("I have already been informed that you need my help. What exactly do you need my help for?",54)
	NODE(54)
		SAY("Kill them.")

		ANSWER("I don't understand.",55)
	NODE(55)
		SAY("Kill any one of those bastards. They are evil incarnated and don't deserve anything less. All of them. All shall suffer for what they did to my Cathrine.")

		ANSWER("I understand that your pain must be unbearable but is this the right way?",56)
	NODE(56)
		SAY("Really? What am I supposed to do then? Ask the CityAdmin to help me with my revenge? You can't be serious. No, my goal is to bring about the downfall of the Black Dragon. Even if I should die in the process. Then I would at least be reunited with my loved one.")

		ANSWER("If it helps to give Diamond a break and at the same time give you some peace of mind I will try it.",57)
	NODE(57)
		SAY("Very good. How you deal with them is up to you. But don't make it too easy for them. Take care only to a kill Black Dragon Runner who is about your level. No guards, no personnel.")

		ANSWER("Understood, I will try my best.",58)
	NODE(58)
		SAY("Come back once you killed one of them. Until then I should have something for Diamond, I believe.")
		SETNEXTDIALOGSTATE(59)
		ENDDIALOG()

--Spieler tötet drei Black Dragon Runner
		
	NODE(59)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Why haven't you killed that Black Dragon Runner yet? Don't you think they deserve it?")
			ENDDIALOG()
		else
			SAY("Well done. The first step has been taken. While you provided a handy diversion I was able to acquire some names and some compromising material. That is my contribution for Diamond which will damage the Black Dragon considerably. After all, that is what I am aiming for.")

			ANSWER("Don't keep me in suspense, what do you have for me?",60)
		end
	NODE(60)
		SAY("Here, take it and get it to the NCPD. They will be able to use these names. Soon, those persons won't find a single safe spot in the whole city of Neocron.")

		ANSWER("Good, I hope that will give Diamond the direly needed break.",61)
	NODE(61)
		GIVEITEM(9352)
		SAY("Bring these documents to the NCPD and hand them over to officer Jenna. Afterwards Diamond might have need of your services. I suggest you go back to the Human Resource Director who sent you in the first place.")
		SETNEXTDIALOGSTATE(62)
		ENDDIALOG()
	NODE(62)
		SAY("Give the documents to the NCPD. After that you can visit the Human Resource Director at Diamond again.")
		ENDDIALOG()

--------------------------------------------------------------------
-- Jenna NCPD
--100
	NODE(100)
		TAKEITEM(9352)
		if(result==0)then
			SAY("I have no time, citizen. Leave this installation.")
			ENDDIALOG()			
		else
			SETNEXTDIALOGSTATE(101)
			SAY("I am representing the law and order here. Make it short, citizen.")

			ANSWER("I have information concerning suspicious persons. I thought you could take care of them.",101)
		end
	NODE(101)
		SAY("These informations seem to reflect the data from our files. Thanks to your input it will be much easier to actually find and execute those criminals. Thank you very much. If you have more information like that you should not refrain from handing it over to us.")
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(102)
		ENDDIALOG()
		
	NODE(102)
		SAY("If you don't plan on further helping the efforts of the NCPD I advise you to leave the building.")

		ENDDIALOG()
--------------------------------------------------------------------
--Human Resource Director
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Did you meet Simmons already? If he really can help Diamond it is worth a try. He is waiting in Pepper Park 02.")
			ENDDIALOG()			
		else
			SAY("You have done a great job in recruiting that Simmons. He turned out to be very resourceful. Even now he already delivered a heavy blow to the Black Dragon. Although I have no idea how he got the necessary information. I am lead to believe that he's got some kind of personal grudge against them.")

			ANSWER("Oh, believe me when I say it is a very personal grudge.",151)
		end
	NODE(151)
		SAY("Still you have earned yourself a reward. 15000 credits. Your performance was very convincing. Especially impressive was your dedication to even risk your own head for the sake of Diamond. That was very convincing if you ask me.")

		ANSWER("I am just doing my job. And maybe a little extra.",152)
	NODE(152)
		GIVEMONEY(15000)
		GIVEMONEY(8000)
		SETNEXTDIALOGSTATE(153)
		SAY("Keep up the good work. If you continue to train as hard as you did we will be able to give you assignments more often. But for now you can take a few days off and relax for a while. (next mission at level 40)")
		EPICRUNFINISHED(2,3)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
		
	NODE(153)
		SAY("Go away")
		ENDDIALOG()


end