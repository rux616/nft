--new
function DIALOG()
--Trigger
--Triggernumber,Type,Person
--PvP 3 Twilight Guardian
--1,D,Cole
--2,D,Simmons

--Startnode, Person
--0,Human Resource
--50,Cole
--100,Grand
--150,Simmons

--Items
-----------------------------------------------------
--Human Resource Director

NODE(0)
	SAY("I have a confirmation from the NCPD now. There are only two possible target persons that could have been the mysterious hackers. They have been determined with the help of your list.")
	
	ANSWER("CONTINUE",1)
NODE(1)
	SAY("I suggest, since you have organised the list in the first place that you will also help to track down the hacker.")
	
	ANSWER("Very well, what I started I am going to finish.",2)
	ANSWER("I fear I am not ready yet for such an endeavour.",7)
NODE(2)
	SAY("Glad to hear that. CityAdmin depends on Runners with willpower like yours. You should talk with the contact person who gave you the list in the first place first. He might know even more about the individual persons since he compiled that list.")
	
	ANSWER("You mean this annoying Ethan Cole, am I right?",3)
NODE(3)
	SAY("Possible. Remember that this hacker will most likely not have worked alone. And I also have some bad news, I fear.")
	
	ANSWER("CONTINUE",4)
NODE(4)
	SAY("Another murder was committed since the last time. The investigations are thoroughly stuck even though every new trail is closely examined.")
	
	ANSWER("CONTINUE",5)
NODE(5)
	SAY("Maybe you should concentrate on finding this hacker and the stolen CopBot first. So, don't worry too much about the murders at the moment.")
	
	ANSWER("That's fine with me. Consider it done.",6)
NODE(6)
	SAY("Good luck.")
	STARTMISSION()
	SETNEXTDIALOGSTATE(8)
	ENDDIALOG()
	
NODE(7)
	SAY("Don't rest too long, though, unless another murder happens.")
	
	ENDDIALOG()
NODE(8)
	SAY("Are you already following the hackers trail? You might want to visit that Cole in Outzone sector 01 again.")
	
	ENDDIALOG()



-----------------------------------------------------
--Cole

NODE(50)
	SAY("Welcome again, CityAdmin. How can I be of service to you today?")
	
	ANSWER("How about dropping your sarcasm?",51)
NODE(51)
	SAY("Yes, sir! Hey, what do you expect? I am living here like a dog between mutants and outlaws. Compared to those I am speaking with an angels tongue.")
	
	ANSWER("Can we skip to more important things? I need information again...",52)
NODE(52)
	SAY("Why is it always the case that people can never seem to get enough? They always want more and more. What do you want this time?")
	
	ANSWER("I need more information about two of those persons on that list you gave me.",53)
NODE(53)
	SAY("No problem! But first I need something for myself. As always. You can say what you want, but I am not selling myself below price.")
	
	ANSWER("What is it this time?",54)
NODE(54)
	SAY("Simple. You are CityAdmin, right? I lost a small sum when I gambled three days ago. Since I could not pay my dept straightaway these bastards almost clubbed me to death.")
	
	ANSWER("CONTINUE",55)
NODE(55)
	SAY("I have always been of the opinion to repay my depts on equal terms. For their stupidity they will pay dearly. But since I do not exactly know their names any longer their faction has to bleed for them. The Twilight Guardian.")
	
	ANSWER("I am supposed to kill for you?!",56)
NODE(56)
	SAY("Yeah, you got a problem with that? Twilight Guardian are like rats. Once in a while you can step on a few of them. Best if you kill five of those bastards.")
	
	ANSWER("What?! So many!? I am really supposed to kill five Twilight Guardian? No, maybe three but not more. That is my last word.",57)
NODE(57)
	SAY("Alright then, three it is. But no information before the job isn't done. You can kill those that are about your level. See you later, Runner.")

	ANSWER("Could you be a little bit more precise about who should be flatlined?",63)
	
--Spieler killt drei Twilight Guardian seines Ranges

NODE(58)
	ISMISSIONTARGETACCOMPLISHED(0)
	if(result==0)then
		SAY("You have not yet kill three of them.")
		ENDDIALOG()
	else
		SAY("Brilliant. That suits those suckers well. Well done! I would not have thought that you are that good in flatlining. The two names you are looking for are Grand and Simmons. One of them is living just around the corner in this district.")
	
		ANSWER("CONTINUE",60)
	end
NODE(60)
	SAY("The other one, Simmons, is a damned coward! As I remember it he lives in Pepper Park. He loves seafood. He eats it almost every day in Pepper Park 02 at Roccos Seafood.")
	
	ANSWER("CONTINUE",61)
NODE(61)
	SAY("Both are elite hackers as I remember it... I wish you a lot of fun, Runner.")
	SETNEXTDIALOGSTATE(62)
	ACTIVATEDIALOGTRIGGER(1)
	ENDDIALOG()
	
NODE(62)
	SAY("Didn't you want to see the hackers? Grand and that Simmons guy in Pepper Park 02.")
	ENDDIALOG()


NODE(63)
		SAY("It is your task to kill three Runner from the Twilight Guardian. They should NOT be employees, guards or official representatives. Only Runner.")
		
		ANSWER("And I can really flatline any Runner I want to?",64)
NODE(64)
		SAY("No, only if your target is about your level or higher. Otherwise the kill cannot be accepted.")
		SETNEXTDIALOGSTATE(58)
		ENDDIALOG()

-----------------------------------------------------
--Grand

NODE(100)
	ISMISSIONTARGETACCOMPLISHED(1)
	if(result==0)then
		SAY("Get lost, no time, must hack!!")
		ENDDIALOG()
	else
		SAY("Are you shitting me? You just invited yourself or what?")
	
		ANSWER("I am coming from the CityAdmin...",101)
	end
NODE(101)
	SAY("Stupid Admin! Piss off or I'll...")
	ATTACK()
	ENDDIALOG()
		
--Spieler wird angegriffen


-----------------------------------------------------
--Simmons

NODE(150)
	ISMISSIONTARGETACCOMPLISHED(2)
	if(result==0)then
		SAY("I... I am eating at the moment, if it pleases you?!")
		ENDDIALOG()
	else

		SAY("He...Hello? W...what can I do for you?")
	
		ANSWER("Are you Mr Simmons?",151)
	end

NODE(151)
	SAY("Y...yes, that's m... me, why?")
	
	ANSWER("I am coming from the CityAdmin and it has taken me a long time to find you.",152)
NODE(152)
	SAY("Heavens! What could you want from me? I... I don't possess anything of value.")
	
	ANSWER("I know from a reliable source that you are a hacker.",153)
NODE(153)
	SAY("Me?... Me a hacker? I... what should I say? Possibly...")
	
	ANSWER("Then it was you who stole the CopBot and modified it! Admit it!",154)
NODE(154)
	SAY("I knew it, I knew it, I admit it! But don't hurt me. I have modified the CopBot so that it kills all these CityAdmin employees.")
	
	ANSWER("CONTINUE",155)
NODE(155)
	SAY("I have removed the radio probe and then I reprogrammed it with the help of a modified Law Enforcer. It runs completely autonomous now.")
	
	ANSWER("CONTINUE",156)
NODE(156)
	SAY("It was all carefully planned by the Twilight Guardian! They forced me to participate. I could not resist! Please believe me!")
	
	ANSWER("CONTINUE",157)
NODE(157)
	SAY("They wanted to slowly wear down the CityAdmin through constant murders. They wanted to corner the CityAdmin that way.")
	
	ANSWER("You have just made a confession that would suffice to guarantee your total annihilation. I am certain of that. You surely know what awaits you, don't you?",158)
NODE(158)
	SAY("No, please! I will do everything, just... just don't kill me! I don't have a Genrep clone! ... I know! Here! I'll give you 10000 credits, ok?")
	
	ANSWER("CONTINUE",159)
NODE(159)
	SAY("And... and I can modify you a Law Enforcer so that it has the features of an implant that improves your skills. Alright? Please have mercy with me, don't tell the NCPD.")
	
	ANSWER("You really seem to be a poor loser, if you really were forced to do it.",160)
NODE(160)
	SAY("Please, I will do everything, really everything...")
	
	ANSWER("Alright but I will still need your help to find that stolen CopBot.",161)
NODE(161)
	SAY("Yes, I can do that, no problem! I can localize the position of the CopBot. Once you are done with it, I will modify that Law Enforcer for you.")
	
	ANSWER("CONTINUE",162)
NODE(162)
	SAY("But I will still need some time to determine its exact location.")
	
	ANSWER("CONTINUE",163)
NODE(163)
	SAY("As I said, it works totally autonomous and the calculation of his position will be difficult. Please be patient.")
	
	ANSWER("Very well. I will grant you a few days. By then you should have localized its exact position. But before I visit you again I will probably visit a Human Resource Director first.",164)
NODE(164)
	SAY("I will do my very best. Thank you very much.")
	GIVEMONEY(10000)
	SETNEXTDIALOGSTATE(165)
        EPICRUNFINISHED(1,4)
	ACTIVATEDIALOGTRIGGER(3)
	ENDDIALOG()

NODE(165)
	SAY("Go away")
	ENDDIALOG()
end