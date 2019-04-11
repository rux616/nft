--new
function DIALOG()

--Trigger
--Triggernumber,Type,Person
--
--0,D,Benji
--1,D,Max
--2,D,MAson



--Startnode, Person
--0 Human Resource
--50 Benji NEXT
--100 Max
--150 Dennis Karsten
--200 Mason

-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("NEXT would like to offer you to test drive one of our experimental vehicle. Mason might have already mentioned it to you. You can fetch the keys for the vehicle from the technician Benji at the desert race track in sector G 11. Your task is to do extensive tests of the vehicle in the surrounding desert.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()
		
	NODE(1)
		SAY("Simply talk to the NEXT technician Benji at the desert race track. After all is done you can visit Mason here at the HQ.")
		ENDDIALOG()
		


-----------------------------------------------------
--Benji NEXT

	NODE(50)
		SAY("You have to be the test driver then, am I right?")
		
		ANSWER("Yes, that's me. Now I only need the keys. Reminds me, what kind of vehicle is it anyway?",51)
	NODE(51)
		SAY("Well, it is a modified version of the standard track buggy. A new kind of alloy was developed and is now serving as armor. That alloy originally was a sideproduct of the space research. This alloy serves to make the vehicle very rigid. But about the keys... you have come too late.")
		
		ANSWER("CONTINUE",52)
	NODE(52)
		SAY("I was just waiting here for you to turn up when suddenly these unpleasent Black Dragons appeared. They threatened to shoot me if I would not give them the keys. There was no other choice for me than to hand the keys over to them.")
		
		ANSWER("The keys have been stolen?! How can you stay so calm? I cannot believe it.",53)
	NODE(53)
		SAY("What was I supposed to do? Oh yeah, I know, let them shoot me only that they take the keys afterwards. I don't think so. But wait... I believe one of them called the leader Max. Maybe that helps?")
		
		ANSWER("Wasn't that the guy from the Outzone Sector 3 I saw recently?",54)
	NODE(54)
		SAY("Maybe you can still get the keys back if you hurry. If you get them back you might just as well go back to the NEXT HQ since the test drive is cancelled anyway. Mason will surely be happy to see the keys again I believe.")
		
		ANSWER("Apparently I have to go after a Black Dragon guy once more. I don't have fond memories of them when I think back. And you better not get lost on the way back.",55)
	NODE(55)
		SAY("No need to fear. I know my way around this desert.")
		SETNEXTDIALOGSTATE(56)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
		
	NODE(56)
		SAY("Good luck. The Outzone 03 is no place where I'd like to be...")
		ENDDIALOG()
		
--OZ 3?? is that the prison or is this guy ingame on 2 locations?? and who the fuck is richard?


-----------------------------------------------------
--Richard

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Piss off Runner!")
			ENDDIALOG()
		else
			SAY("There are still wonders in this world. That NEXT clown is really coming to me to get his ass whooped.")
		
			ANSWER("You better hand over the keys to the experimental vehicle at once.",101)
		end
	NODE(101)
		SAY("Ha ha. Very good. You better hand them over at once... that was almost good enough for the big screen. Even if I had the keys I would not hand it over to you. NEXT will not exist for much longer anyway. ProtoPharm is going to swallow NEXT whole.")
		
		ANSWER("CONTINUE",102)
	NODE(102)
		SAY("Nothing will be left of NEXT, believe me. And about the keys... they are in the hands of the reliable Mr Karsten. You could find him near the Pussy Club but I fear you will not be able to go there... at least not on your feet.")
		
		ANSWER("You are looking for a fight again??!!",103)
	NODE(103)
		SAY("Yes, this time I will whoop your ass!!")
		ATTACK()
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(104)
		ENDDIALOG()
	NODE(104)
		SAY("You won't be able to visit the Pussy Club as long as I can prevent it.")
		ATTACK()
		ENDDIALOG()
		

-----------------------------------------------------
--Dennis Karsten

	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Enjoy your time at the club.")
			ENDDIALOG()
		else
			SAY("Welcome in this swamp of corruption and worldly enjoyments. What is such a well known Runner doing out here in the lions den?")
		
			ANSWER("Let me come straight to the point. You have got some keys that belong to NEXT. Hand them over and we'll forget this whole thing.",151)
		end
	NODE(151)
		SAY("It will not be that easy, Runner. Even if you saved the system administrator from sure death it will not change anything. NEXT will become a small part of ProtoPharm. And you know what is the best thing about it? There is no escape. Now to your request. Yes, I have these keys right here.")
		
		ANSWER("What bullshit are you talking about?! NEXT will never be swallowed by ProtoPharm...",152)
	NODE(152)
		GIVEITEM(9106)
		SETNEXTDIALOGSTATE(153) ;
		SAY("First of all here are your keys back, after all I am not the average kind of thief. But... I simply hate NEXT! They are responsible for all the evil here in Neocron! NEXT will go down whether you like it or not!")
		
		ANSWER("Not as long as I can help it.",153)
	NODE(153)
		SAY("Enough! I will not allow you to prevent that from happening!!")
		ATTACK()
		ENDDIALOG()
		

-----------------------------------------------------
--Mason

	NODE(200)
		TAKEITEM(9106)
		if(result==0)then
			SAY("I have an important meeting with our superiors coming up. Try later again.")
			ENDDIALOG()
		else
			SAY("Benji has already reported that you were off chasing the Black Dragon on your own. Impressive. I would not have thought to see you again. ")
		
			ANSWER("But that is not everything, I also have got the keys back.",201)
		end
	NODE(201)
		SAY("You have the keys back? Then there was a fight? Who did steal the key after all?")
		
		ANSWER("It turned out to be a certain Dennis Karsten. He was totally insane.",202)
	NODE(202)
		SAY("Karsten? I remember that name. He worked for ProtoPharm for years. He got a little bit mad after an accident that we were partially responsible for. He had this sister whom he loved very much. After the accident we received masses of hatemail from his hand.")
		
		ANSWER("CONTINUE",203)
	NODE(203)
		SAY("Well, his sister died in an accident with one the alpha version of the gliders. I think he has never forgiven NEXT for that. But people should just read the small print and they would know the risk involved in testing our products. I hope he did not injure you or anything?")
		
		ANSWER("It's alright. Both Karsten and Max from the Black Dragon have talked about ProtoPharm having plans to take over NEXT. I don't like the sound of that.",204)
	NODE(204)
		SAY("I will not get involved into that discussion right now. We know that ProtoPharm was very active recently. The number of shares that are still with loyal NEXT friends is decreasing as we speak. But there is no simple solution for this problem. We work on it. In case you didn't notice, you have earned 50000 credits for bringing back those keys back.")
		
		ANSWER("CONTINUE",205)
	NODE(205)
		SAY("We know that you missed your shot to do the testdrive. The technicians will certainly want to go over all settings first before a second testdrive will be considered. Once we find a way to deal with ProtoPharm we will need your loyal help again. That much I can assure you. You have made quite an impression on NEXT.")
		
		ANSWER("At the moment I only ever talk to you to be honest, there is no way I can see my popularity it seems.",206)
	NODE(206)
		GIVEMONEY(50000)
		SAY("Exactly, but I recently had a conversation with Mr. Diggers and he expressed great respect for you. He said he is already curious to see how you will fare in the future. Well, there is much to do and I have to get back to business.")
		EPICRUNFINISHED(3,4)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
	  
end