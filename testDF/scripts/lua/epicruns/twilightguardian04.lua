--new
--Twilight Guardian
--
--Trigger
--Triggernumber,Type,Person
--0,D, JOHNSON
--1,PvP vs CityMerc
--2,D, Donnovan
--3
--
--Startnode, Person
--0, Contact Person
--50, DONNOVAN
--100, JOHNSON
--150, cont P
--200, DONNOVAN
--250,
--
--Items
--

function DIALOG()
--------------------------------------------------------------------
--Contact Person
--0
	
	NODE(0)
		SAY("There are more and more rumours that tell us about the new secret police with Reza. They already seem to have killed many Twilight Guardian. And they sure seem to be a brutal and totally ruthless.")

		ANSWER("Do you know any facts?",1)
	NODE(1)
		SAY("Why do you suppose am I telling you this? I hoped that you would know a little bit more but I see that you are poking in the dark as well. Oh yes, Donnovan has got something special for you.")

		ANSWER("Good, I will visit him at once.",2)
	NODE(2)
		SAY("Do that. Maybe you will know more later. God, I am on the brink of paying anybody who can bring me some little bits and pieces  of news about this a generous sum.")
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()

--------------------------------------------------------------------
--DONNOVAN
--50
	NODE(50)
		SAY("I am sorry but this time I've got a lot for you to do. I would have loved to lead the operation myself but since I have broken my leg just yesterday I can't do anything like that. My new implant has to get a lot of rest until the Nano machines have finished their work.")

		ANSWER("I hope your leg will heal soon. The sooner I have made an impact, the sooner will Reza fall.",51)
	NODE(51)
		SAY("First there are some problems with our old enemies. The CityMercs are closing in on our area and they always appear in platoons. That is six Mercs each. Two battles have already been lost. It is about time to turn tables on them and hit em hard.")

		ANSWER("It would be best if we could hire them, eh?",52)
	NODE(52)
		SAY("Don't be silly, the CityMercs are neutral to everybody except to us. It is our plan to kill single Runners who don't have the protection of a platoon. It will be your first task to find a Runner approximately of your strength. You will have to fight and kill him. It is important that it is a Runner since they are their support troops.")

		ANSWER("Understood. I will finish a Runner of the CityMercs who is about as strong as I am.",53)
	NODE(53)
		SAY("Exactly. Do you remember Simmons? He arranged the meeting he was talking about. You should still be careful because we don't know what the contact is up to. The meeting is taking place in the Wastelands F 06. His name is Johnson. Meet him there once you have finished that CityMerc and don't forget to give me a precise report.")

		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()


--------------------------------------------------------------------
--JOHNSON
--100
	NODE(100)
		SAY("I assume you are the Twilight Guardian contact person?")

		ANSWER("If you are Mr Johnson then yes. I hope our trust will not be unjustified.",101)
	NODE(101)
		SAY("Good, good. Of course I will do my very best, after all I want to pay back Reza as well.")

		ANSWER("That is what we have in mind, too. Tell me, what do you have for us?",102)
	NODE(102)
		SAY("I would like you to show a little bit respect. After all I am risking a lot here.")

		ANSWER("Oh very well then. Could you please tell me what you know?",103)
	NODE(103)
		SAY("Listen, Reza has got a new secret police squad. It is called the Neokorps. The current commander is probably only known to Reza himself. I cannot tell you more than that their operations are radical and ruthless. But I know something else.")

		ANSWER("That would explain those last raids.",104)
	NODE(104)
		SAY("I haven't finished yet. There will be a secret meeting between the leader of the Neokorps and the officers. That will be an excellent possibility to deal Neokorps a killing blow.")

		ANSWER("That sounds tempting but what do you gain from this? You are risking a lot to provide us with this information.",105)
	NODE(105)
		SAY("Don't worry, my reward will be to see Rezas government go down the drain. I will give you additional information about the location of the secret meeting. Go now or you will risk that somebody will see us.")

		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(106)
		ENDDIALOG()
	NODE(106)
		SAY("I have already agreed to provide the information about the secret meeting.")

		ENDDIALOG()
--SPIELER BRINGT EINEN CITYMERC UM 2
--------------------------------------------------------------------
--cONTACT pERSON
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Try to contact Donnovan.")
			ENDDIALOG()
		else

			SAY("It is good to see you. And? Were you able to find something interesting?")

			ANSWER("Sure, after all I can't just let you die because of lack of information, can I?",151)
		end
	NODE(151)
		SAY("Thanks, you are a real philanthropist. Here, I'll give you 2000 credits for that piece of info.")

		ANSWER("Philan... what? Anyway, Reza does have a new secret police squad which is called the Neokorps. We already had a meeting with a CityAdmin traitor who wants to betray the commander of that new police force.",152)
	NODE(152)
		GIVEMONEY(2000)
		SAY("Thanks again. I am always open for this kind of news.")
		SETNEXTDIALOGSTATE(153)
		ENDDIALOG()
	NODE(153)
		SAY("If you find out more be sure to tell me about it.")

		ENDDIALOG()

--------------------------------------------------------------------
--DONNOVAN
--200
	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("You know that you are supposed to kill a CityMerc Runner and meet with Johnson in F 06, right?")
			ENDDIALOG()
		else
			ISMISSIONTARGETACCOMPLISHED(0)
			if(result==0)then
				SAY("You know that you are supposed to kill a CityMerc Runner and meet with Johnson in F 06, right?")
				ENDDIALOG()
			else
				SAY("Did you already visit Johnson?")

				ANSWER("Why don't you ask me about the CityMerc I was supposed to eliminate first?",201)
			end
		end
	NODE(201)
		SAY("Ha, I am sure that you wouldn't stand here in front of me if you didn't succeed. Tell me more about Johnson.")

		ANSWER("Well, he reported a so called Neokorp secret police squad. Apparently it came right out of the mind of Reza.",202)
	NODE(202)
		SAY("That must be the reason why so many of our people are ambushed so brutally. Is that all? That would not be much.")

		ANSWER("No, he promised us that he would present to us an opportunity to get our hands on the commander of the Neokorps.",203)
	NODE(203)
		SAY("Really? That person seems to be very knowledgeable. But can we dare to just let this opportunity pass unnoticed? Tell me when and how this is going to be.")

		ANSWER("I have no idea. He said that he would give us the exact time and place.",204)
	NODE(204)
		GIVEMONEY(10000)
		SAY("Good work, you are quickly becoming one of the major players against Reza. Since you did my job as well, I'll give you my reward also. You earned that much. I think you know whom to contact once you have trained some more. Good luck. (next mission at level 40)")
		ACTIVATEDIALOGTRIGGER(2)
		EPICRUNFINISHED(15,3)
		ENDDIALOG()
end