--new
function DIALOG()
--Trigger
--Triggernumber,Type,Person
--0,D,Black Lily
--1,D,Jenna
--2,D,Human resource Director

--Startnode, Person
--0,Human Resource
--50,Jenna
--100,Black Lily
--Items -> none

-----------------------------------------------------
--Human Resource Director

NODE(0)
	SAY("Welcome to the CityAdmin. To join us was possibly the best choice you ever did. CityAdmin is the biggest official institution for the safety of the citizens of Neocron. And everything thanks to Lioon Reza.")
	
	ANSWER("Since I now belong to the CityAdmin I thought I could get some sort of employment.",1)

NODE(1)
	SAY("I was just about to get there. As a loyal member of the CityAdmin it is expected of you that you accept certain paid assignments. You are free to accept these assignments but who would reject a request of the one institution that is responsible for the wellfare of every person in Neocron?")
	
	ANSWER("CONTINUE",2)
NODE(2)
	SAY("After all the CityAdmin is working for the citizens unlike the previous dictatorship of the psi monks. At that time every thought was controlled by them and the people lived in virtual slavery. Many people forget who freed them from all that.")
	
	ANSWER("But is it that different today? I mean, you can be executed for uttering the wrong word.",3)

NODE(3)
	SAY("Don't continue. I'll give you a good advice since you are new here. There are no rumours about the CityAdmin, you either accept it or you don't. This is especially true about Reza. If you don't heed my warning you might be punished with death rather sooner than later. And all that just because you could not keep your mouth shut.")
	
	ANSWER("I understand. I will consider your advice. Then tell me what is important about the CityAdmin?",4)
NODE(4)
	SAY("Well. As I have stated earlier, Reza has freed the people from the cruel dictatorship of the psi monks after more than one hundred years of rulership. That happened in the year 2724 as far as I recall. That was also the begin of a new era of freedom.")
	
	ANSWER("CONTINUE",5)
NODE(5)
	SAY("The psi monks owe it to the generosity of Lion Reza that they are still allowed to live in the city. Apart from that many new improvements were made so that the citizens would have an easier time. For example the law was simplified.")
	
	ANSWER("CONTINUE",6)
NODE(6)
	SAY("Nowadays everybody knows what he may or may not do. The success can be seen in Plaza or ViaRosso, there the criminality equals zero. ")
	
	ANSWER("CONTINUE",7)
NODE(7)
	SAY("And all of this despite the great difficulties after so many people left with the great trek in the search for Irata III. At that time criminality increased dramatically. It is only thanks to the CopBots  that there is still order within the city.")
	
	ANSWER("Do you know what happened to the people who joined the great trek? I mean after the contact to Irata III broke off?",8)
NODE(8)
	SAY("That is easy to answer. The great trek is a long way from reaching Irata II. The efforts of the CityAdmin is concentrated on the safety and wellfare of the citizens of Neocron.")
	
	ANSWER("CONTINUE",9)
NODE(9)
	SAY("But enough of those old stories. There is a delivery to be made to the NCPD. And once you are already there you might also be able to help the NCPD a little. Neocron is big and there is always plenty to do.")
	
	ANSWER("Good, I will deliver this package. What does it contain?",10)
	ANSWER("I don't think I am ready for that yet.",11)
NODE(10)
	GIVEITEM(9052)
	SAY("It contains some evidence in the form of drugs that are registered in connection with a crime. If you want to know more, I am sure you can get more information at the NCPD. Good luck with your first assignment for the CityAdmin.")
	STARTMISSION()
	SETNEXTDIALOGSTATE(200)
	ENDDIALOG()
	
NODE(11)
	SAY("If you think so. Please return if you are ready.")
	ENDDIALOG()
	

-----------------------------------------------------
--Officer Jenna, NCPD

NODE(50)
	TAKEITEM(9052)
	if(result==0)then
		SAY("You have forgotten the package. Make sure I get it soon.")
		ENDDIALOG()
	else
		SETNEXTDIALOGSTATE(51)
		SAY("Hello, Runner. I hope you have the package? good, you have to understand that there is a chaos here at the moment. That normally doesn't mean anything but it is even more chaotic than usually.")
	
		ANSWER("Here you are. Why all the fuss?",51)
	end
NODE(51)
	SAY("You haven't heard it yet? Yesterday a high ranking CityAdmin member was killed in the early morning hours. Imagine it, a murder of a CityAdmin member. Surely you understand now why everything is somewhat chaotic here.")
	
	ANSWER("A murder in such a high position? Is there already a suspect?",52)
NODE(52)
	SAY("The evidence is not what I would call revealing. Plus there are no witnesses. The only ones that were in the vicinity officially were the CopBots. Apart from that some drugs have been secured on site. You have just delivered them here, by the way.")
	
	ANSWER("CONTINUE",53)
NODE(53)
	SAY("The possibilities are just so many at the moment. It could have been the Black Dragon because of the drugs that were found. But it could also have been the Tsunamis, maybe a dancer or even the Twilight Guardian scum.")
	
	ANSWER("CONTINUE",54)
NODE(54)
	SAY("That means we just have too many trails to follow and too few to really investigate. That's whats causing all the chaos here. By the way, you have just started with the CityAdmin, right?")
	
	ANSWER("Yes, that is about right.",55)
NODE(55)
	SAY("I believe you have made a good choice. the Cityadmin is a very safe and well paid employer. Of course you have to be familiar with all the rules and regulations. If you have nothing else to do at the moment you could do the NCPD a little favor.")
	
	ANSWER("If I can help just say a word. I am ready for it.",56)
	ANSWER("I am sorry but I have something urgent coming up.",58)
NODE(56)
	SAY("I admire that attitude. There is a dancer who occasionally had contact to Defries. Defries is the victim of the murder. It is highly improbable that she is connected to the murder but we have to check out every loose end as well. There are so many of them that we can use every help we can get.")
	
	ANSWER("No problem. I can help you out on this one. Where can I meet her?",57)
NODE(57)
	SAY("She should be somewhere in Pepper Park. Her name is Black Lily. Afterwards you can come back and give me a short report about her statement. Then you are already finished here.")
	SETNEXTDIALOGSTATE(150)
	ENDDIALOG()
	

NODE(58)
	SAY("If you change your mind, come back any time.")
	ENDDIALOG()



-----------------------------------------------------
--Black Lily, Pepper Park

NODE(100)
	SAY("Hey, I bet I could fulfill your most secret desires. How about it?")
	
	ANSWER("Later maybe. Right now I'm here for a different reason. Yesterday a murder happened and you are a known acquaintance of the victim.",101)
NODE(101)
	SAY("A murder? That's a good joke. Half of all the people I ever knew are dead. You have to be a little bit more precise.")
	
	ANSWER("His name was Defries and he worked at the CityAdmin. He was a pretty important person.",102)
NODE(102)
	SAY("Oh yes, I know that guy. But why should I talk to you about my private life?")
	
	ANSWER("The NCPD sent me. Isn't that reason enough?",103)
NODE(103)
	SAY("That is a good joke. When the NCPD questions me usually an officer and a CopBot are present. Sometimes even one of those creepy psi monks. I have heard they can read your mind. But you, you don't even have a badge or an ID card.")
	
	ANSWER("I admit that is strange. But they must have forgotten to get me one in the first place with all that chaos around. I am really coming from the NCPD.",104)
NODE(104)
	SAY("Why don't you give me a motivation of some sort? I believe 300 would be a good motivation. Maybe then I will be able to tell you more...")
	
	ANSWER("Figures you'd want something in return, here is the money. But the information should better be worth it.",105)
NODE(105)
	TAKEMONEY(300)
	if(result==0)then
		SAY("Nice try, but you don't even have enough money.")
		ENDDIALOG()
	else
		SETNEXTDIALOG(106)
		SAY("Thats something you will have to decide for yourself. Thank you. Yes, I have known that Defries guy. Damn pervert! I am glad he got what he deserved. But I'm sure that's not the kind of information you are after.")
	
		ANSWER("CONTINUE",106)
	end
NODE(106)
	SAY("I tell you that even the CityAdmin had got some stinking rats on the inside. And Defries was certainly no exception. I know he bought drugs from the Black Dragon and without his pills he would have been totally impotent. ")
	
	ANSWER("CONTINUE",107)
NODE(107)
	SAY("If you ask me about potential enemies I tell you that he had too much money to have real personal enemies. I mean, he could pay his way out of anything.")
	
	ANSWER("CONTINUE",108)
NODE(108)
	SAY("If you want my opinion, somebody wanted to attack the CityAdmin directly and Defries was only a convenient target.")
	
	ANSWER("Thats not much to work with. Thank you anyway.",109)
NODE(109)
	SAY("It was a pleasure and hey, if you ever change your mind about my offer... I'll be waiting here for you.")
	SETNEXTDIALOGSTATE(110)
	ACTIVATEDIALOGTRIGGER(0)
	ENDDIALOG()	

NODE(110)
	SAY("Not at the moment please, leave me be. Go back to your precious NCPD.")
	ENDDIALOG()
	


-----------------------------------------------------
--Officer Jenna


NODE(150)
	ISMISSIONTARGETACCOMPLISHED(0)
	if(result==0)then
		SAY("Did you already visit Black Lily in Pepper Park 02?")
		ENDDIALOG()
	else
		SAY("There you are. What did she say about the murder?")
	
		ANSWER("I don't think she liked Defries particularly well. She thinks that the murder was not aimed at Defries in the first place but rather at CityAdmin. It is not much, but it could still help...",151)
	end
NODE(151)
	SAY("Alright. We might target a surveillance drone at her. But her theory is close to what we already assumed. Thank you that you lifted a little work off my shoulders. I still have to prepare a few reports now.*sigh*")
	
	ANSWER("Very well, I will have to return to the CityAdmin anyway to confirm the delivery.",152)
NODE(152)
	SAY("A productive day, Runner.")
	SETNEXTDIALOGSTATE(153)
	ACTIVATEDIALOGTRIGGER(1)
	ENDDIALOG()
	
NODE(153)
	SAY("I am sorry but those reports are still taking my full attention. Why don't you go back to the CityAdmin as you wanted to?")
	
	ENDDIALOG()

-----------------------------------------------------
--Human Resource Director

NODE(200)
	ISMISSIONTARGETACCOMPLISHED(1)
	if(result==0)then
		SAY("Did you visit the NCPD?")
		ENDDIALOG()	
	else
		SAY("Took longer than expected, eh? What took you so long?")
	
		ANSWER("Don't worry, the package was delivered in time. As you suggested earlier I did offer the NCPD a helping hand. Although I doubt my help did actually change much.",201)
	end
NODE(201)
	GIVEMONEY(1000)
	SETNEXTDIALOGSTATE(202)
	SAY("Really? I mean, of course that is a good reason for coming late. The 1000 credits for this delivery have already been transferred to your account. Come back once you have proven to be loyal to the CityAdmin. At that time I believe we might have a new assignment for you.")
	EPICRUNFINISHED(1,0)
	ACTIVATEDIALOGTRIGGER(2)
	ENDDIALOG()

NODE(202)
	SAY("Go away")
	ENDDIALOG()

end