--new
function DIALOG()

--Trigger
--Triggernumber,Type,Person

--0,D,Mason
--1,D,Almachim
--2,D,Mason



--Startnode, Person
--0 Human Resource
--50 Mason
--100 BioTech
--150 Mason
--200 Almachim
--250 Mason

-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("Good that you arrived just now, hurry and see Mason. Something terrible happened.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()
		
	NODE(1)
		SAY("Hurry, Mason is already waiting impatiently.")
		ENDDIALOG()
		


-----------------------------------------------------
--Mason

	NODE(50)
		SAY("You arrive in the nick of time. Something terrible happened. You have already heard of our system administrator? I was informed that she has been poisoned and that she has fallen into coma. I cannot bear to think what would happen if she dies.")
		
		ANSWER("CONTINUE",51)
	NODE(51)
		SAY("She could never complete her artful programs and with her death all of her shares of the company would flow onto the open market and the whole company structure could change. Believe me, such a change would be far from welcome.")
		
		ANSWER("What is supposed to happen now?",52)
	NODE(52)
		SAY("The experts told me that there is a medicine that could wake her from her comatose slumber. But that medicine is only available from BioTech or ProtoPharm. Since Protopharm will certainly not hand it over to us we need to get it from BioTech. The chemicals we need are Hydrosin and Kaboxorid. What are you waiting for? You are one of the most reliable Runners, therefore it is only appropriate if you go and get it. Hurry up and find a BioTech employee where you can get those materials from!")
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()
		

-----------------------------------------------------
--BioTech

	NODE(100)
		SAY("A productive day to you, Runner. What can I do for you?")
		
		ANSWER("It is very important! Hurry and give me some Hydrosin and Kaboxorid.",101)
	NODE(101)
		SAY("Of course. I have been informed that somebody would come and get it. Unfortunately there is a slight problem...")
		
		ANSWER("That is just what we need right now! What kind of problem is it?",102)
	NODE(102)
		SAY("We've got enormous amounts of Hydrosin stored but Kaboxorid is not available any longer. A new delivery is only expected to arrive at the end of the month.")
		
		ANSWER("That is a catastrophe! Have you any idea who else could have Kaboxorid for sale?",103)
	NODE(103)
		SAY("I fear that apart from us only Protopharm is offering that product. Unless, wait a moment! Kaboxorid is produced by the El Farid and they are bound to have more of it. You should try it there. Do you still want the Hydrosin, though?")
		
		ANSWER("If there is no other possibility I will only take the Hydrosin for now. Thank you. I have to hurry back to NEXT and report this, goodbye.",104)
	NODE(104)
		GIVEITEM(9102)
		SAY("You are from NEXT? Just wanted to say that ProtoPharm is buying NEXT shares like crazy... But probably you already know about that. Good luck.")
		SETNEXTDIALOGSTATE(105)
		ENDDIALOG()
		
	NODE(105)
		SAY("Didn't you say that you have to hurry back to NEXT?")
		ENDDIALOG()
		

-----------------------------------------------------
--Mason

	NODE(150)
		TAKEITEM(9102)
		if(result==0)then
			SAY("Where did you leave the medicine? Hurry up!")
			ENDDIALOG()
		else

			SAY("Runner! Where have you been? I am not going to loose our system administrator because of you. Violet Derix is an important person for us! Do you have the medicine?")
		
			ANSWER("I could only get Hydrosin. They told me that the only place to actually get the other stuff is Protopharm or the El Farid village.",151)
		end
	NODE(151)
		SAY("Only Hydrosin? That is not enough. Violets situation is getting worse. She almost looks dead on the screens already. Damn it, this is too much like the death of my own family. Go and get this damned Kaboxorid!")
		
		ANSWER("CONTINUE",152)

	NODE(152)
--NEW
			SAY("You will already have a motorbike courtesy of NEXT. Try and see Almachim about it, he will hopefully be able to organise some Kaboxorid. He lives in the El Farid village.")
		
			ANSWER("I just wanted to pass on that Protopharm seems to buy shares like mad before I go.",153)
--NEWEND
	NODE(153)
		SAY("That might even be the case but you should just get the missing element!! That is more important right now!")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(250)
		ENDDIALOG()


-----------------------------------------------------
--Almachim

	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("I am very busy at the moment, why don't you come back the next month?")
			ENDDIALOG()
		else
			SAY("Welcome to our village, Runner. It is rare but it seems that some city people do actually find this isolated place. Although they come with a purpose most of the time. What is your purpose then?")
		
			ANSWER("You have already guessed that I come with a purpose. It is very important. The life of a very important person depends on the success of my mission.",201)
		end
	NODE(201)
		SAY("You came all the way out here just to save the life of another city person? That honours you. Here take a sip of this excellent wine first. Don't worry, it is only alcohol. Many of the rules of the city do not apply out here as you would expect them to. City people get ill because of their hectic life style and yet they carry on. Their life means nothing to them and yet they cry if a person close to them dies. Can you explain that to me?")
		
		ANSWER("CONTINUE",202)
	NODE(202)
		SAY("But out here in the desert, where the sand and the wind combine to form a deadly threat, where the scorpion stalks its prey, out here there are different rules. I you want to achieve something out here you need patience. Then tell me what you exactly want.")
		
		ANSWER("I am in dire need of a product called Kaboxorid. I could not find it anywhere else. I was told that it is being produced out here however",203)
	NODE(203)
		SAY("Kaboxorid? I am not surprised that it is rare now. Last year the production of it was stopped. The few remaining chemicals that are still around are only the remnants. See, the chemical is extracted from a poisenous cactus and has an effect like a drug in its pure form.")
		
		ANSWER("CONTINUE",204)
	NODE(204)
		SAY("In lesser concentrations however it can be used to awaken a person from even the deepest coma. But there are some serious side effects which are the reason why the production was stopped. One of the side effects were spontaneous mutation.")
		
		ANSWER("Production was cancelled? That is madness! Only because of a few mutations?",205)
	NODE(205)
		SAY("I don't know how the city people think, but if you ask an El Farid to choose between death or mutation he would surely choose death. It is an unworthy life to live with a mutation. The dignity of being yourself would be destroyed, the pureness of your spirit would be poisoned.")
		
		ANSWER("I am not questioning your traditions, I only want that chemical.",206)
	NODE(206)
		SAY("It honours you that you respect our traditions. Indeed we do not have the substance anymore but we still possess some blueprints that we have used for the production process. I believe we could spare one in this case.")
		
		ANSWER("Very good, exactly what I need...",207)
	NODE(207)
		SAY("Not so fast, Runner. Nothing if given for free in this desert. But your story tells me that you will still have to pay your own price for the blueprint. You have to construct the required chemical out of the blueprint and be quick about it. The life of a person can be a very fragile thing.")
		
		ANSWER("Thank you, I am in your dept. But now I really have to hurry.",208)
	NODE(208)

		GIVESPECIALITEM(1507,1,9103)
		SAY("Then make haste back to the secure walls of your city.")
		SETNEXTDIALOGSTATE(209)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
		
	NODE(209)
		SAY("You really seem to take your time in bringing the chemical to Neocron.")
		ENDDIALOG()
		


-----------------------------------------------------
--Mason

	NODE(250)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Don't waste time! A human life is at stake here!!")
			ENDDIALOG()
		else
			SAY("Do you have it?")
		
			ANSWER("Yes, I have it. Go on and take it.",251)
		end
	NODE(251)
		TAKEITEM(9103)
		if(result==0)then
			SAY("We need Kaboxorid! No Blueprint or other rubbish!")
			ENDDIALOG()
		else
			SAY("Thank heavens. I don't know what could have happened but now it should not be a problem any longer. The experts have assured me that the administrator will awake from the coma with the help of these substances.")
		
			ANSWER("I have returned just in time it seems. But it really wasn't easy because I had to construct the substance first with the help of a Blueprint.",252)
		end
	NODE(252)
		SAY("Really? NEXT is now really indebted to you. Thanks to you we will have our system administrator back in no time.")
		
		ANSWER("Good news but it was not too easy after all.",253)
	NODE(253)
		SAY("I wish there would have been such a miracle potion in existence back when my wife still lived. Well. I have followed up your report and it really seems as if ProtoPharm is trying to buy NEXT shares from every possible source. It is rather unsettling but I believe we have to wait for now. Wait and observe.")
		
		ANSWER("CONTINUE",254)
	NODE(254)
		GIVEMONEY(20000)
		SAY("As for your reward, you have really earned the 20000 credits now. Furthermore you have been chosen to conduct a test drive with an experimental vehicle for the next time. Don't thank me, it was Torben who bugged me until I gave in and accepted it. But remember, you have to get in good shape for this one.")
		EPICRUNFINISHED(3,3)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()	

end