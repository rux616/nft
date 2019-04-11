--new
function DIALOG()
--Trigger
--Triggernumber,Type,Person
--0,D,Hontoka
--1,D,Kev Critter
--2,D,Human Resource MANN --- ARGHHH diese Scripterei bringt mich noch zum Wahnsinn
--Items

--Startnode, Person
--0,Human Resource
--50,Hontoka
--100,Kev Critter


-----------------------------------------------------
--Human Resource Director

NODE(0)
	SAY("A problem surfaced that is directly related to you, I fear. A datacube was found, a datacube with propagande material from the Twilight Guardian.")
	
	ANSWER("CONTINUE",1)
NODE(1)
	SAY("That fact alone would not be very exceptional. But this datacube has been tracked back to you. You know what that means.")
	
	ANSWER("But that cannot be! I would never...",2)
NODE(2)
	SAY("Calm down. I have not notified a CopBot yet, did I? But you will surely understand that something like that would result in the execution of the owner of that datacube?")
	
	ANSWER("CONTINUE",3)
NODE(3)
	SAY("Propaganda like that is prohibited within Neocron.")
	
	ANSWER("Yes but somebody must have set me up! I have only given one person a datacube recently. He must be the one who did it!!",4)
NODE(4)
	SAY("CityAdmin is fully aware of the fact that somebody could try and trick one of our employees. Standard procedure is to give the person in question a time limit to prove his innocence.")
	
	ANSWER("CONTINUE",5)
NODE(5)
	SAY("I know that you have really had some accomplishments recently and that's why I am willing to give you some extra time. You should start to collect evidence right now because you don't have an eternity left.")
	
	ANSWER("But how? I don't even know where I could start!",6)
NODE(6)
	SAY("You should start where you have lost that datacube or where you have given it away. Here is the datacube with the propaganda material.")
	
	ANSWER("It must have been that Hontoka guy in the Industrial district 02. I have given him a datacube.",7)
NODE(7)
	SAY("It's up to you now. CityAdmin can't afford to follow up every case like this one. If you cannot prove your innocence you are guilty.")
	
	ANSWER("CONTINUE",8)

--Spieler bekommt Datacube 9054
NODE(8)
	GIVEITEM(9054)
	SAY("Go and get some hard evidence or suffer the consequences.")
	STARTMISSION()
	SETNEXTDIALOGSTATE(150)
	ENDDIALOG()
	
NODE(9)
	SAY("I fear you don't have enough time left for a break. But that is your choice.")
	ENDDIALOG()
	


-----------------------------------------------------
--Hontoka

NODE(50)
	SAY("Hey, I know you! I already wondered where you would end up.")
	
	ANSWER("I have one or two questions about the datacube I gave you.",51)
NODE(51)
	SAY("A work of genius, isn't it? You will be hunted by CopBots very soon now and they will do the whole job. I don't even have to get involved myself that way.")
	
	ANSWER("That means you did it! Why are you trying to ruin me? What do you really want? I bet you are even involved with those murders.",52)
NODE(52)
	SAY("I would not go that far. You just asked the wrong questions at the wrong time. That's all.")
	
	ANSWER("CONTINUE",53)
NODE(53)
	SAY("I have done it as a favor for some friends of mine. It's all very simple don't you think?")
	
	ANSWER("You will pay for this! I will get my revenge.",54)
NODE(54)
	SAY("Hahahaa. I would love to see that. Hunted by the CopBots and you are planning to fight the Tsunami? Very bold. Your only hope seems to be an old Runner at the Blakkmist Garbage dump.")
	
	ANSWER("CONTINUE",55)
NODE(55)
	SAY("Very amusing. But you won't get that far because I decided to do another favor for my friends. I will kill you and there won't be any problems any longer.")
	
	ANSWER("What does that mean? How is the Blakkmist Garbage Dump going to help me?",56)
NODE(56)
	SAY("That is not of importance any longer. Die !")
	SETNEXTDIALOGSTATE(57)	
	ATTACK()
	ENDDIALOG()
NODE(57)
	SAY("Are you still not dead?!")
	ATTACK()
	ENDDIALOG()
--Spieler wird angegriffen

-----------------------------------------------------
--Kev Critter

NODE(100)
	ISMISSIONTARGETACCOMPLISHED(0)
	if(result==0)then
		SAY("Not another one of those beggars. Get lost...leave me alone.")
		ENDDIALOG()
	else
		SAY("It is a rare occasion to be visited by a Runner from Neocron these times.")
	
		ANSWER("Please, it is important, I need your help.",101)
	end
NODE(101)
	SAY("Have you seen that?! That stupid, son of a bitch mosquito! Well, but there are even meaner mosquitos out there. Especially those giant ones that come from the swamps in the west.")
	
	ANSWER("Would you please listen to me?",102)
NODE(102)
	SAY("I am listening! But it is always the same! If I get a visitor he will most certainly want something from me. Please, please, I need this or that... or something like, I really need your help or similar bull shit. I am sick of it.")
	
	ANSWER("CONTINUE",103)
NODE(103)
	SAY("In any case, the life out here is not paradise. Some people think I am just waiting here to help them.")
	
	ANSWER("No, I did not want to appear like that. But you really are my only hope I have left, it seems.",104)
NODE(104)
	SAY("I am not going to repeat myself! I am sick of it! Piss off...")
	
	ANSWER("Oh no, I am not going to be put off that easily. I am going to wait here. I am going to wait until you are going to help me.",105)
NODE(105)
	SAY("Hrmph")
	
	ANSWER("I will wait.",106)
NODE(106)
	SAY("Oh, all right you stupid city Runner! But if I am supposed to help you then you have to help me as well.")
	
	ANSWER("Of course, but how?",107)
NODE(107)
	SAY("Well, I am experimenting with various drugs, after all the nights out here can get incredibly lonely. Just get the following two things for me. I am going to need them for these experiments.")
	
	ANSWER("CONTINUE",108)
NODE(108)
	SAY("... let's see, yes, Snake Minion Teeth, that sounds good. They can be found under some ruins in the desert. Ancient Yucida Village I think it was. And after that...")
	
	ANSWER("Just a moment! That already seems to be tough enough, don't you think?",109)
NODE(109)
	SAY("Aww, what the heck... Then just get me two of those Minion Teeth. Not more not less! Then I will see what I can do for you. If you don't manage to get them on your own, try to get some friends to help you. Or somebody might sell them to you.")
	SETNEXTDIALOGSTATE(110)
	ENDDIALOG()
--sPIELER ORGANISIERT SNAKE MINION TEETH X2 8152
-- NOCH NACHSCHAUEN


NODE(110)
	TAKEITEMCNT(8152,2)
	if(result==0)then
		SAY("Where are my Snake Minion Teeth? You can find them in the ruins below the Ancient Yucida Village. If you don't manage to get them on your own, try to get some friends to help you. Or somebody might sell them to you.")
		ENDDIALOG()	
	else
		SETNEXTDIALOGSTATE(111)
		SAY("You have returned. What a surprise...")
	
		ANSWER("What did you think? That you send me down into that snake pit and never see me again?",111)
	end
NODE(111)
	SAY("I can't say that thought never crossed my mind.")
	
	ANSWER("Alright, but now you have to help me...",112)
NODE(112)
	SAY("Yes, that's the agreement. I will help you. Tell me your problem.")
	
	ANSWER("To make it short, I have a problem because the content of a specific datacube that was in my possession is illegal data. The problem is that I face execution although that data is not even mine...",113)
NODE(113)
	SAY("Yeah, extracting data on the basis of its creation time isn't fashionable any longer. That means that your ID is still on the Datacube but it is not your data on the cube, right?")
	
	ANSWER("CONTINUE",114)
NODE(114)
	SAY("It'll be hard to prove your innocence with the datacube alone.")
	
	ANSWER("I need to prove that I did not copy that data onto the cube.",115)
NODE(115)
	SAY("It's difficult but not impossible. I could try to extract the original ID of the person that copied the data onto the cube. But only if you really didn't do it.")
	
	ANSWER("I didn't, I just want to get back to normal again. What would I do with Twilight Guardian propaganda material anyway?",116)
NODE(116)
	SAY("You sure? There are piles of propaganda cubes in circulation.")
	
	ANSWER("Yes, I am sure.",117)
NODE(117)
	TAKEITEM(9054)
	if(result==0)then
		SAY("Unfortunately I need the datacube so that I can help you.")
		SETNEXTDIALOGSTATE(117)
		ENDDIALOG()	
	else
		SETNEXTDIALOGSTATE(118)
		SAY("Alright, I believe I can extract the data in such a way that the creation time is displayed. Give the cube to me and wait here.")
	
		ANSWER("Here you are, please continue.",118)
	end
NODE(118)
	SAY("Just a moment. What? There is some hidden data on here. Now I have a copy of all the data that is saved on the cube. I will send the results to the authorities. It was Cityadmin, right?")
	
	ANSWER("Of course the CityAdmin...",119)
NODE(119)
	SAY("Of course. I am sending the results to the Cityadmin. Since they will show that you cannot have created them in the first place it should prove your innocence. But wait until the files have been sent before you visit the CityAdmin. Good luck, Runner.")
	
	SETNEXTDIALOGSTATE(120)
	ACTIVATEDIALOGTRIGGER(1)
	ENDDIALOG()


NODE(120)
	SAY("I have already done what you wanted me to do. Go now. You will have to talk to somebody in the CityAdmin HQ.")
	ENDDIALOG()	


-----------------------------------------------------
--Human Resource Director

NODE(150)
	ISMISSIONTARGETACCOMPLISHED(1)
	if(result==0)then
		SAY("You dare to come back here? Did you forget that you are a criminal at the moment. Quick! Go and see that guy in Industrial 02 before somebody recognizes you.")
		ENDDIALOG()
	else

		SAY("I am glad that you found the way back. About half an hour ago we received proof of your innocence.")
	
		ANSWER("CONTINUE",151)
	end
NODE(151)
	SAY("That means that you are a free citizen again. The CopBots will not come after you.")
	
	ANSWER("I am glad that all this is over now.",152)
NODE(152)
	SAY("I am sorry but it had to be. But we still want you as a freelance investigator of the murders. The investigation is still running, after all.")
	
	ANSWER("CONTINUE",153)
NODE(153)
	SAY("We cannot give you a special assignment at the moment so you should really take a break and enjoy your newly found freedom.")
	
	ANSWER("CONTINUE",154)
NODE(154)
	GIVEMONEY(10000)
	SETNEXTDIALOGSTATE(155)
	SAY("As a small compensation for all the trouble you will receive 10000 credits. You can use them whatever way you want. For a vacation for example.")
	EPICRUNFINISHED(1,3)	
	ACTIVATEDIALOGTRIGGER(2)
	ENDDIALOG()
	
NODE(155)
	SAY("Go away")
	ENDDIALOG()

end