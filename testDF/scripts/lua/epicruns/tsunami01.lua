--new
function DIALOG()

--Trigger
--Triggernumber,Type,Person
--0
--50
--0,D,Jester
--1,D,Taylor
--200

--Startnode, Person
--0 Recruiter
--50 Maxime (change)
--100 Jester
--150 Taylor Gomez
--200
--250

-----------------------------------------------------
--Recruiter

	NODE(0)
		SAY("You are new here, right? Come closer over here, we need to talk.")
		
		ANSWER("I am all yours. ",1)
	NODE(1)
		SAY("We always appreciate a new loyal member. Tsunami is a great organisation as you will find out. We offer much to our members but keep in mind that Tsunami is also a rather competitive environment. Do you feel up to a little competition?")
		
		ANSWER("Of course I will do my very best.",2)
	NODE(2)
		SAY("Then you surely understand that if I would trust everybody just like that, I'd be dead by now. That means, I do not trust you. I cannot trust you, not right now that is. We will have to prove your worthiness somehow.  Something that shows where your loyalties are. ")
		
		ANSWER("I have not the slightest doubt that I am loyal to your cause.",3)
	NODE(3)
		SAY("It should be easy enough. We don't want to waste you in the process of your first assignment now, do we?  Still, if you don't even make it past this assignment you are out. It really is that simple. So keep yourself in a good shape.")
		
		ANSWER("Aye, I am no looser. You will realize that soon enough.",4)
	NODE(4)
		SAY("You should already know that the head of Tsunami is Veronique Duchamps. She is pulling all the strings and she is as vicious as it gets. If anything big is going on you can bet that she is already involved behind the curtains. Since she has got so many deals and relations to take care of she needs an errand boy once in a while.")
		
		ANSWER("I understand. So, what do I have to do?",5)
	NODE(5)
		GIVEITEM(9250)
		SETNEXTDIALOGSTATE(6)
		SAY("Its a simple delivery, so do not screw it up. Bring this package to Maxime, its for Eric Danmund himself. She is a contact who will make sure that the delivery reaches its destination. She is very adept at working for both Neocron and Dome of York. Meet her in sector 10.")
		
		ANSWER("Come on, that's a piece of cake. Consider it done.",6)
	NODE(6)
		SAY("Expect something in return from her and bring it to Jester in sector 07 of Dome of York, he is working for us as well. At least sometimes. He is a freelancer. Now do what you are told to do. Sometimes he hangs out in one of the various pubs.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(7)
		ENDDIALOG()
		
	NODE(7)
		SAY("Is it really that difficult? Go to the 10th sector, deliver the package, get another one in return and bring it to Jester in sector 07. After that report to Taylor Gomez in the Secret Passage-2 near the Secret Tsunami Faction Office in Neocron.")
		ENDDIALOG()
		


-----------------------------------------------------
--Maxime

	NODE(50)
		SAY("I am sure you can bother somebody else. Look, I am very busy.")
		
		ANSWER("I have a delivery for you. It is supposed to be for Mr. Danmund. I trust you can arrange a delivery?",51)
		
	NODE(51)
		TAKEITEM(9250)
		if(result==0)then
			SAY("I have only got time if it is important. I don't think it is important in this case.")
			ENDDIALOG()
		else
			SAY("You have a delivery for Mr. Danmund? Hrmph, alright, as if this would be the first time. Give me the package and I will see it delivered.")
		
			ANSWER("Here it is. I was told to get something in return for the delivery.",52)
		end
	NODE(52)
		SAY("Really? I almost forgot about that. Just let me check something.")
		
		ANSWER("Please do that. I'll wait.",53)
	NODE(53)
		SAY("Oh, interesting. Cecil Stone has ordered that a chip should be given to you. One of the experimental X-OR chips. But that is really strange.")
		
		ANSWER("What do you mean?",54)
	NODE(54)
		GIVEITEM(9251)
		SETNEXTDIALOGSTATE(55)
		SAY("Well, Diamond Real Estate is not usually dealing in other goods than appartements. That means it is rather strange that you should be given a microchip in return. Anyway, I am only delivering. I don't want to ask questions that could get me killed.")
		
		ANSWER("What is so special about this chip? Looks pretty important.",55)
		
	NODE(55)
		SAY("As I said, I don't do intel. Ask someone else about that.")
		SETNEXTDIALOGSTATE(56)
		ENDDIALOG()
		
	NODE(56)
		SAY("Look, I am busy, unless you have another delivery that I should pass on do not bother me.")
		ENDDIALOG()
		

-----------------------------------------------------
--Jester

	NODE(100)
		TAKEITEM(9251)
		if(result==0)then
			SAY("Keep walking, I am waiting for an important delivery.")
			ENDDIALOG()
		else
			GIVEITEM(9251)
			SAY("A productive day. God, how I hate this phrase. Well, are you the one who is supposed to give me something from Tsunami? You still look rather green to me. Do you have the chip?")
		
			ANSWER("You better watch your mouth, I don't like being called green. Yes I got the chip, it comes straight from Cecil Stone it seems. Although I cannot fathom why he would go to this length in getting the chip delivered to us.",101)
		end
	NODE(101)
		SAY("Excellent, I have waited long enough for that chip. That was really about time. What are you waiting for, you can leave now. Or do you have a question?")
		
		ANSWER("I would like to know, what exactly you are doing for Tsunami?",102)
	NODE(102)
		SAY("I am not working for Tsunami alone. To be honest, I have many clients but all of them depend on my discretion in what I do. That means I will not tell you more about what I do. But, I suppose I can tell you about the chip. It is a neural light chip. It is not only capable of storing incredible amounts of data but it can also control the very thoughts of a person. In theory, I mean.")
		
		ANSWER("Interesting, but why does Tsunami need it?",103)
		
	NODE(103)
		SAY("It is for a device that I construct for Tsunami. I can't and won't tell you more about it. Now, be on your way. Go back to Taylor Gomez and tell him I got the chip.")
		SETNEXTDIALOGSTATE(104)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
		
	NODE(104)
		SAY("No, I already told you. I cannot tell you about my work! Otherwise I would end up dead in some dark back alley. Now report to Taylor Gomez already")
		ENDDIALOG()

-----------------------------------------------------
--Taylor Gomez
		
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("You have not completed your assignment yet. Better get that package to Maxime immediately. Don't forget to report back once you are finished.")
			ENDDIALOG()
		else
			SAY("What took you so long? That was an easy delivery mission. I you don't learn to concentrate your thoughts to the task ahead you don't belong here.")
		
			ANSWER("Come on, give me a break, it takes a while to cross the whole city.",151)
		end
	NODE(151)
		SAY("That excuse is not acceptable. Tsunami members should always give 110 percent of what they can do. If you want to work for us then you should be a little bit more reliable.")
		
		ANSWER("I will try to be faster next time, although I can't see how I could possibly manage it faster. By the way, what was in the package I handed over to Maxime?",152)
		
	NODE(152)
		SAY("It was a simple gift to the CEO of Diamond Real Estate. A gift that was used as a decoy to avoid too much attention to the real objective of the task. That way they could give you the microchip without drawing too much attention. Cecil Stone, the system administrator at Diamond has some considerable debts with us and that is why he provided that microchip for us. Only because we don't have much to say in Neocron any longer it doesn't mean that we will abandon our contacts over there.")
		
		ANSWER("What is Jester doing with that chip then?",153)
	NODE(153)
		SAY("He is a freelancer. Sometimes he does business with us. He will construct us something special out of that chip. Your first job is done, you have proven your loyalty to us. Don't make the mistake to speak of payment. It is not you who is doing us a favor here, no. It is us doing you a favor. We will monitor your achievements and once your loyalty to us is not in question any longer we will have some more jobs for you. Goodbye. (next mission at level 20)")
		EPICRUNFINISHED(8,0)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
		


end