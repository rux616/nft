--new
function DIALOG()

--Trigger
--Triggernumber,Type,Person
--
--0,D,BioTech
--1,D,Mason



--Startnode, Person
--0 Human Resource
--50 Biotech direx of operations
--100 Mason

-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("Welcome at NEXT, we are always excited about new members. I hope your appartement is acceptable? As you probably already know NEXT is concerned with every means of transportation there is. Almost all kind of vehicles you can see in and around Neocron were assembled in the assembly halls of NEXT.")
		
		ANSWER("CONTINUE",1)
	NODE(1)
		SAY("From Hoverbikes over subways to spaceships even, all are produced by NEXT. But in order to remain at the top of this market we are obliged to have good business connections to every other company. Would you want to help us with that or do you still need time to make yourself feel at home?")
		
		ANSWER("I believe I am ready to help NEXT in their endeavours.",2)
		ANSWER("At the moment I would say I need more time to have a look around.",9)
	NODE(2)
		SAY("Excellent. We need people like you. At the moment your assignment is related to a grand project between us and BioTech. Of course BioTech is not the only company we have ralations to. Right at the front there is also Tangent and the CityAdmin. ")
		
		ANSWER("CONTINUE",3)
	NODE(3)
		SAY("You could probably argue that the CityAdmin is indeed more a company than anything else. Well, anyway, the long term goal of the project I was talking about is to open up a gate to the stars again, Irata III to be precise. The head of NEXT, Craig Diggers, is determined to reanimate the spaceship projects.")
		
		ANSWER("Does he have a special reason to be so determined?",4)
	NODE(4)
		SAY("Mr Diggers suffered a terrible accident back then. It was his dream to accompany the great Trek to Irata III. But instead he lost his legs because of an accident on his way to the spaceships. He missed the chance to join the Trek. After that accident he was not able to shake off the longing for Irata III.")
		
		ANSWER("CONTINUE",5)
	NODE(5)
		SAY("His legs were replaced by artificial ones and you might already have guessed by whom. Yes, BioTech! That might also be the reason why a new spaceship program is developed in cooperation with them. Mr Diggers is possibly still feeling obliged to BioTech.")
		
		ANSWER("A spaceship program with BioTech? I thought BioTech was only developing implants and organic mechanisms.",6)
	NODE(6)
		SAY("Yes, that is the general assumption nowadays but the truth is that BioTech deals with many different science projects. The best example is Tangent. Tangent was the former weapon department of BioTech. Only later on it got big enough to split from BioTech and become independent. But now back to business.")
		
		ANSWER("CONTINUE",7)
	NODE(7)
		GIVEITEM(9100)
		SETNEXTDIALOGSTATE(8)
		SAY("These documents are copies of already signed contracts for BioTech. They are probably already waiting for them. By delivering these contracts you will not only do us a favour but you will also demonstrate to us your determination to get something done from start till end. This could mean the beginning of a wonderful career. Don't forsake yourself now.")
		
		ANSWER("Good, i will take this assignment. Where do I have to go?",8)
	NODE(8)
		SAY("You will directly adress the director of operations in the Via Rosso 1. You should find him without trouble. Oh, and yes, before I forget, meet Mr Mason after you have delivered the documents. He is vice director of NEXT and can be found here in the building. Good luck.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(10)
		ENDDIALOG()
		
	NODE(9)
		SAY("Then take some time and come back once you are ready.")
		ENDDIALOG()
		
	NODE(10)
		SAY("Have you already delivered that package to the director of operations in the Via Rosso 1? Once you did that you can speak to Mr Mason right here in the building.")
		ENDDIALOG()
		


-----------------------------------------------------
--BioTech direx of operations

	NODE(50)
		TAKEITEM(9100)
		if(result==0)then
			SAY("Are you supposed to deliver the documents from NEXT to us? But where is that delivery then?")
			ENDDIALOG()
		else
			SAY("I was already informed that these documents would arrive here any moment. Do you have them with you? Then just hand them over to me.")
		
			ANSWER("Here you are, these documents will probably secure the contract between BioTech and NEXT.",51)
		end
	NODE(51)
		SAY("Yes, indeed. This mutual agreement should enable us to create a superior spaceship design compared to previous iterations. Of course it will still be a long way until we reach that goal.")
		
		ANSWER("CONTINUE",52)
	NODE(52)
		SAY("For such a big project it is compulsory for companies to cooperate. A spaceship consists of so many various technologies that no single company can hope to complete such a project on its own.")
		
		ANSWER("I can imagine that. Goodbye.",53)
	NODE(53)
		SAY("Goodbye. Always keep a stiff upper lip as I am sure there is still something heading towards Neocron in the future. I am sure of that.")
		SETNEXTDIALOGSTATE(54)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
		
	NODE(54)
		SAY("I have already received the documents and now, if you'll excuse me, I'll have to go back to work. Maybe you should go back to your company as well.")
		ENDDIALOG()



-----------------------------------------------------
--Mason

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Please come back a little bit later. I just don't have the time at the moment. Maybe you still have something else to do.")
			ENDDIALOG()
		else
			SAY("I believe we have not met yet. I am Mason and the vice director of the NEXT HQ. Our paths will probably cross on a regular basis in the future. How can I help?")
		
			ANSWER("I have delivered important documents to the BioTech HQ. It had something to do with a cooperation between NEXT and BioTec",101)
		end
	NODE(101)
		GIVEMONEY(2000)
		SETNEXTDIALOGSTATE(102)
		SAY("Right, I remember. Haven't these documents been delivered already? That was about high time then. You seem to have delivered them just in time it seems. I believe that is worth a little bonus. How about 2000 credits?")
		
		ANSWER("Thank you, it was a pleasure.",102)
	NODE(102)
		SAY("There is always enough work here at NEXT. We have managed to get a good reputation after many years of hard work. Back when NEXT was founded in the year 2723 to this year and day. But besides nurturing our good reputation there are of course many other important tasks to complete.")
		
		ANSWER("CONTINUE",103)
	NODE(103)
		SAY("I suggest that you come back to NEXT after you have demonstrated your loayalty to NEXT. Because then NEXT can give you some more interesting assignments. Be certain to adress a Human Resource Director since it is their responsibility. Goodbye Runner.(next mission level 20)")
		EPICRUNFINISHED(3,0)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
		

end