--new
--Diamond Real Estate
--
--Trigger
--Triggernumber,Type,Person
--0,D,CA Employee 50
--1,1, Matt 150
--2,2, Human Resource 200
--3
--
--Startnode, Person
--0, Human Resource Director
--50, CityAdmin Employee
--100, Human Resource Director
--150, Matt Tronstett
--200, Human Resource Director
--250,
--
--Items
--Dokumente für Diamond 9350

function DIALOG()
--------------------------------------------------------------------
--Human Resource Director
--0
	
	NODE(0)
		SAY("A productive day to you. I believe you might be interested in doing something for Diamond again, yes?")

		ANSWER("You have guessed right. I think I have prepared myself well.",1)
		ANSWER("To be honest, I believe I am not ready yet.",4)
	NODE(1)
		SAY("That is good. The threat posed by these gangs of criminals is growing and growing. Of course every single one of them was sent by the Black Dragon, there is no doubt about it. Mr. Danmund has therefore prepared a contract between us and the CityMercs for the protection of our apartements. A meeting was arranged near an abandoned broadcasting station in the Wastelands.")

		ANSWER("That was direly needed. It can't go on like this.",2)
	NODE(2)
		SAY("Precisely... we still need some documents for this meeting, though. There are two copies to be collected from the CityAdmin. They have been checking them for loopholes in the contract.")

		ANSWER("I am on my way.",3)
	NODE(3)
		SAY("Very well, don't forget to return these documents to me. There is a CityAdmin employee who should have prepared everything for you.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(100)
		ENDDIALOG()
	NODE(4)
		SAY("Don't waste any time.")
		ENDDIALOG()
		

--------------------------------------------------------------------
-- CityAdmin Employee
--50
	NODE(50)
		SAY("Welcome at the CityAdmin, what can I do for you?")

		ANSWER("I am here in behalf of Diamond. I am supposed to pick up some important documents.",51)
	NODE(51)
		SAY("One moment please... yes, your ID has been accepted. That is a horrible story that happens there with Diamond. Of course CityAdmin tries to offer as much support as possible. Especially because of the shared history that binds Diamond and CityAdmin.")

		ANSWER("What do you mean?",52)
	NODE(52)
		SAY("Well, Diamond was a division of the CityAdmin before it was given to private hands. But the CityAdmin is still very much interested in seeing a successful Diamond.")

		ANSWER("Glad to hear that the CityAdmin actually cares about us. I still need those documents very much if you don't mind.",53)
	NODE(53)
		GIVEITEM(9350)
		SAY("Right. A contract with the CityMercs, right? I wish you good luck.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(54)
		ENDDIALOG()
		
	NODE(54)
		SAY("I thought you wanted to get those documents back to Diamond?")
		ENDDIALOG()
		

--------------------------------------------------------------------
--Human Resource Director
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("You are supposed to visit an employee from the CityAdmin. These documents are vital, I don't want to repeat myself.")
			ENDDIALOG()
		else
			SAY("Glad to see that you are back already. While you have been away some disturbing news reached us. The CityMerc delegation has been scattered by the Twilight Guardian and that is why the meeting cannot take place as planned. We have not been prepared for this eventuality. Unfortunately.")

			ANSWER("What now? What can be done? Are there other ways?",101)
		end
	NODE(101)
		SAY("Yes, although you can imagine the fuss at the headquarters, Diamond still has an alternative route.")

		ANSWER("Well, I am listening.",102)
	NODE(102)
		SAY("The high ranking employees that were supposed to meet the CityMercs cannot risk to travel all the way to the Military Base. It would be much safer if we used a contact person.  We know a person who lives in Point Red and who is suitable for this. It was planned to hire a Runner who would stealthily go to Point Red and hand over the documents to the contact person.")

		ANSWER("Why hire somebody when I can do the job just as well?",103)
	NODE(103)
		SAY("I admit, we haven't thought of that. Mainly because we don't want to send any member out into the dangerous Wastelands. But if you are really interested we could at least give the reward to you. The reward that was meant for the Runner initially.")

		ANSWER("Good, it should not be too difficult, Point Red is not too far away from the safe walls of Neocron.",104)
	NODE(104)
		SAY("Good luck, the contact person is a certain Matt Tronstett. He is a rather weird scientist who worked for NEXT. Because of a strange reason known only to him he prefers to live in the Wastelands in Point Red. Good luck, I will tell  him immediately to expect your arrival some time soon.")
		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()		
		

--------------------------------------------------------------------
--Matt Tronstett
--150
	NODE(150)
		TAKEITEM(9350)
		if(result==0)then
			SAY("Sorry, whatever it is I am not interested. Leave me alone.")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(151)
			SAY("Ho, Runner. What would somebody like you do in this wilderness?")

			ANSWER("An important assignment. I have a package for you Mr Tronstett.",151)
		end
	NODE(151)
		SAY("Ahh, I understand. Many people are looking for the protection of the CityMercs nowadays. Too many if you ask me. It won't be long and they will be rich. Very rich.")

		ANSWER("I hope they are worth their money.",152)
	NODE(152)
		SAY("You can count on that, Runner. There is no one who is tougher than the CityMercs. Where they are involved perfection rules.")

		ANSWER("I feel glad to hear that. Please take care that these documents reach their goal.",153)
	NODE(153)
		SAY("Of course, I know what I am doing. As a scientist you have to act professional after all. Good luck on your way back. I will hand over the contract once the CityMercs come by and visit me again.")
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(154)
		ENDDIALOG()
		
	NODE(154)
		SAY("Don't worry, I will hand over the documents personally. You can go back to Diamond and reassure your people that everything is being taken care of.")
		ENDDIALOG()

--------------------------------------------------------------------
--Human Resource Director
--200

	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Did you already give the documents to Matt Tronstett in Point Red?")
			ENDDIALOG()
		else
			GIVEMONEY(4000)
			SAY("Congratulations, I have already received a confirmation. Now, we just have to wait whether or not the CityMercs accept the contract. You have done a good job and of course you are entitled to the reward. 4000 credits. Improve your skills and we will certainly want your expertise for a later job once more. (next mission at level 30)")
			ACTIVATEDIALOGTRIGGER(2)
			EPICRUNFINISHED(2,1)			
			ENDDIALOG()
			
		end
	

end