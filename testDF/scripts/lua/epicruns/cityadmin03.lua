--new
function DIALOG()
--Trigger
--Triggernumber,Type,Person
--0,D,Elias
--1,D, Cole
--2,D,Jenna

--Startnode, Person
--0,Human Resource
--50,Elias
--100,Ethan Cole
--150,Jenna


--Items
-----------------------------------------------------
--Human Resource Director

NODE(0)
	SAY("The NCPD still has its hands full closely investigating these murders. But there is still the safetey of Neocron that cannot be neglected.")
	
	ANSWER("CONTINUE",1)
NODE(1)
	SAY("We decided to give an ambitious Runner a task that would suit him. I believe you already had the opportunity to have a closer look at the CopBots on the streets?")
	
	ANSWER("Yes, they are very impressive.",2)
NODE(2)
	SAY("Yes, but there is also something that many people do not know. There is a certain number of CopBots that vanish from the streets of Neocron each year. There are even reports about Amok CopBots in the Wastelands. CopBots that run crazy.")
	
	ANSWER("Unthinkable! What ever would happen if a CopBot freaked out on the streets of Neocron?",3)
NODE(3)
	SAY("Do not worry. The CopBot system is very effective in dealing with these issues. But there is also a different situation. Some CopBots are stolen before they are activated. That happens very rarely and usually it only takes hours to solve these crimes.")
	
	ANSWER("CONTINUE",4)
NODE(4)
	SAY("But... in this case it was only discovered that a CopBot was missing when it was supposed to be switched on. That happened about two month ago and there is not a single clue to its whereabouts.")
	
	ANSWER("How do you normally deal with these situations?",5)
NODE(5)
	SAY("There is a small radio probe that is hidden inside the CopBot. It sends out a signal to the HQ as soon as the CopBot is activated. But this time it has not been activated or the radio probe was removed.")
	
	ANSWER("CONTINUE",6)
NODE(6)
	SAY("If that is the case it must have been executed by some kind of hacking genius. Even our hackers can only do it with some special equipment.")
	
	ANSWER("Well, but where can you find such a hacker? ...maybe ...the Fallen Angels!!",7)
NODE(7)
	SAY("Yes, exactly, you have a keen mind. That is exactly what we need. Your assignment is to see a certain Elias, he can be found near the Tech Haven entrance in sector E 07. Ask him about possible connections between the Fallen Agnels and the stolen CopBot.")
	
	ANSWER("Tell me more.",8)
	ANSWER("I am not yet ready for another task.",9)
NODE(8)
	SAY("Once you are done give Officer Jenna a report of the situation. Thank you in advance from the CityAdmin.")
	STARTMISSION()	
	SETNEXTDIALOGSTATE(10)
	ENDDIALOG()	


NODE(9)
	SAY("Come back when you have prepared yourself.")
	ENDDIALOG()
	
NODE(10)
	SAY("I thought you wanted to investigate the case about the lost CopBot? You should visit Elias in sector E 07 and report any news to the NCPD.")
	ENDDIALOG()


-----------------------------------------------------
--Elias

NODE(50)
	SAY("I don't have time for something like that. I am very busy.")
	
	ANSWER("It won't take long. I was sent by the CityAdmin.",51)
NODE(51)
	SAY("Then you are supposed to be the operative? Can't be that important if they just send a simple Runner.")
	
	ANSWER("You have been informed about the stolen CopBot I assume?",52)
NODE(52)
	SAY("Yes, indeed. I was told how very important that is for the CityAdmin. Even if I do not fully understand it, one CopBot more or less doesn't cut the mustard.")
	
	ANSWER("That might be your opinion. Do the Fallen Angels have a CopBot from the CityAdmin in their possession?",53)
NODE(53)
	SAY("Very amusing. I fear I have to disappoint you there, the Fallen Angels security turrets are far more effective and do not cost as much in production as your precious CopBots. CopBots are inferior in comparison to the security turrets. Why would they need a CopBot then?")
	
	ANSWER("CONTINUE",54)
NODE(54)
	SAY("I have also had a look at their registry and I can assure you that no Fallen Angel member is involved in anything that could be related to such a case.")
	
	ANSWER("It seems I stumbled into another dead end then.",55)
NODE(55)
	SAY("Wait. I have said that no member would do something like that. But there are quite a few ex-members who are capable enough to do something like that.")
	
	ANSWER("That is much better! Then tell me please where I can find those ex-members...",56)
NODE(56)
	SAY("That won't be easy. The Fallen Angels do not store the files of ex-members and therefore they will have no idea where they can be found. But it might be a good shot to have a look into the more dubious areas. They might have good contacts to the various underground movements.")
	
	ANSWER("That is easier said than done. It would take me years to find the right place and person to get the information I want.",57)
NODE(57)
	SAY("Very true. Especially because you are so unsophisticated. But maybe you can manage to track down a certain Cole. It is said he lives near the black market in the Outzone 01. I do not know if that is true but if you manage to find him I strongly advise you not to trust him too much.")
	
	ANSWER("CONTINUE",58)
NODE(58)
	SAY("That traitor did work for the Angels at one point. He nicked a lot of important data when he went. They are still trying to repair the damage he did.")
	
	ANSWER("Thank you, I will have a look at that area.",59)
NODE(59)
	SAY("Be careful and remember that we are not involved in this in any way.")
	SETNEXTDIALOGSTATE(60)
	ACTIVATEDIALOGTRIGGER(0)
	ENDDIALOG()
	
NODE(60)
	SAY("Ask somebody else about it, the Fallen Angels have got nothing to do with that. But maybe that Ethan Cole in Outzone 01")
	ENDDIALOG()

-----------------------------------------------------
--Ethan Cole

NODE(100)
	ISMISSIONTARGETACCOMPLISHED(0)
	if(result==0)then
		SAY(" Get lost, Runner!")
		ENDDIALOG()		
	else
		SAY("Hello, and who might you be? A curious Runner?")
	
		ANSWER("Ethan Cole? That's you, right?",101)
	end
NODE(101)
	SAY("That depends on who you are. I am very allergic to certain hostile people.")
	
	ANSWER("I can understand that. It's just the time we live in I suppose.",102)
NODE(102)
	SAY("Well, tell your tale, what is it you want from me?")
	
	ANSWER("I was told that you know your way around the underground of Neocron.",103)
NODE(103)
	SAY("With a little patience and of course the brain of a genius it is really very easy. So, yeah, I know my way around here.")
	
	ANSWER("I need a list of hackers who operate from the underground. They possibly are ex-Fallen Angels.",104)

NODE(104)
	SAY("Ahh, yes, I rememember the name of the Fallen Angels from somewhere...")
	
	ANSWER("Save your breath, Cole! I exactly know about your history with the Fallen Angels.",105)
NODE(105)
	SAY("Yes, really? Then I can drop my charade I suppose. It would probably suit you best if I could give you a list straightaway, wouldn't it?")
	
	ANSWER("Of course, that would be best...",106)

NODE(106)
	SAY("That would be too easy now, wouldn't it? No, it is not quite that easy. Bring me about twenty bottles of this synthetic Wine Plus and then we will see. That kind of stuff is hard to come by here in the Outzone. And hurry.")
	SETNEXTDIALOGSTATE(107)
	ENDDIALOG()

--Spieler organisiert 24 Synthetic Whine 807
	
NODE(107)
	TAKEITEMCNT(807,20)
	if(result==0)then
		SAY("I won't tell you anything without that wine that you promised me.")
		ENDDIALOG()
	else
		SETNEXTDIALOGSTATE(108)
		SAY("That's about time. Give it to me!")
	
		ANSWER("Here you are but don't forget about our deal...",108)
	end
NODE(108)
	SAY("Yes, yes, don't worry. Nice, that wine is exactly the taste I was expecting...")
	
	ANSWER("We had an agreement and I did my part...",109)
NODE(109)
	GIVEITEM(9053)
	SAY("I don't usually give a damn about agreements but since I am such a generous person I will still give you that list. Now go out of my sight!")
	ACTIVATEDIALOGTRIGGER(1)
	SETNEXTDIALOGSTATE(110)
	ENDDIALOG()
	


NODE(110)
	SAY("I thought I told you that I don't want to be seen with you. Don't you have to report this to somebody in the NCPD?")
	
	ENDDIALOG()


-----------------------------------------------------
--Jenna

NODE(150)
	ISMISSIONTARGETACCOMPLISHED(1)
	if(result==0)then
		SAY("No news? What a shame.")
		ENDDIALOG()
	else
		SAY("If this isn't our most ambitious freelancer. What news do you have for us?")
	
		ANSWER("I went to great length just to get some information about potential hackers. That was quite a chase.",151)
	end
NODE(151)
	SAY("Did it pay off at least?")
	
	ANSWER("I don't know. I've got a list with many names but I did not really want to do your job of checking that list. Go on and take it.",152)
NODE(152)
	TAKEITEM(9053)
	if(result==0)then
		SAY("Yes, such a list would have been really helpful. It's a shame that you don't have one.")
		ENDDIALOG()
	else
		SETNEXTDIALOGSTATE(153)
		SAY("Let me have a look. Yes, some of those names sound familiar. But some of those certainly have nothing to do with hacking. That much is clear that it will take some time to work through all those names.")
	
		ANSWER("Did you get your hands on something useful in the meanwhile?",153)
	end
NODE(153)
	SAY("That depends... we could not follow up the murder cases but we have a statement from the Twilight Guardian where they take credit for the murders. But that does not help us much since CityAdmin is at war with the Twilight Guardian anyway. It is not your problem, however.")
	
	ANSWER("CONTINUE",154)
NODE(154)
	GIVEMONEY(8000)
	SETNEXTDIALOGSTATE(155)
	SAY("First of all, here is your payment. 8000 credits. It will take some time until we have some news. Keep in shape because you can never know when we might need your help again. If you feel prepared you can ask one of the human resource directors now and then.")
	EPICRUNFINISHED(1,2)
	ACTIVATEDIALOGTRIGGER(2)
	ENDDIALOG()

NODE(155)
	SAY("Go away")
	ENDDIALOG()

end