--new
function DIALOG()
--Trigger
--Triggernumber,Type,Person
--0,D,Thompson
--
--1,D,Protopharm
--2,D,Human Resource


--Startnode, Person
--0 Human Resource
--50 Thompson
--100 BioTech Human Resource
--150 Protopharm
--200 BT Human Resource

-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("Ahh, I was already informed that new runners would join BioTech. We always welcome worthy additions to our own ranks.")
		
		ANSWER("CONTINUE",1)
	NODE(1)
		SAY("Normal procedures would demand that the Director of Operations welcomes you personally but he is currently engaged in an important meeting with Seymour Jordan. You will understand that he cannot just cancel that meeting.")
		
		ANSWER("That is a pity but I do understand it. What kind of tasks await me, now that I am working for BioTech?",2)
	NODE(2)
		SAY("That is the way we like it, concise and straight to the point. You will already have received your appartement key from BioTech. In exchange we are only expecting loyalty and that you take care of a select number of special assignments. But more about that later. You have certainly chosen the right faction with BioTech, congratulations.")
		
		ANSWER("CONTINUE",3)
	NODE(3)
		SAY("First I should maybe tell you something about the company background. BioTech was involved in many different projects since its founding in the year 2638. Currently the focus is almost exclusively on the development and production of various implants.")
		
		ANSWER("CONTINUE",4)
	NODE(4)
		SAY("This does not mean that BioTech is a stranger to spaceship construction, medicine or weapons. To be precise, the first interstellar spaceship named the Avenger was developed and built by BioTech.")
		
		ANSWER("Yes, I have heard about that.",5)
	NODE(5)
		SAY("Back to the present. We had a request from the CityAdmin for an interview with one of our latest additions to the crew. They are doing a survey and need to ask a few questions. This would probably not take very long and BioTech would even be prepared to give you a small compensation...")
		
		ANSWER("That sounds good, I believe I can do that.",6)
		ANSWER("I am sorry but that won't be possible for the moment.",7)
	NODE(6)
		SAY("Excellent. You can find the CityAdmin employee in the Plaza district 02. A meeting was arranged in one of the local restaurants. Please return here once you are finished to give me a small report.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(100)
		ENDDIALOG()
		
	NODE(7)
		SAY("You can always change your mind if you want to.")
		ENDDIALOG()


-----------------------------------------------------
--Thompson

	NODE(50)
		SAY("Hello, you have been sent by BioTech I assume?")
		
		ANSWER("Yes. And I assume that you are from the CityAdmin.",51)

	NODE(51)
		SAY("Very good, my name is Thompson. I fear I have a tight schedule, so let us start straightaway, shall we? I would like to point out however, that this conversation will be recorded. Almost everything in Neocron is recorded one way or the other in any case but I still have to mention it.")
		
		ANSWER("That is rather unsettling if really everything is being recorded.",52)
		
	NODE(52)
		SAY("Rest assured that there are still places where CityAdmin has no eyes or ears. Even if Mr Reza would probably like to change that.")
		
		ANSWER("Alright. Then lets start straightaway. What was this interview all about?",53)
	NODE(53)
		SAY("I am compiling a survey about the general behaviour of citizens. It will show a comparison between different factions and point out relevant results.")
		
		ANSWER("CONTINUE",54)
	NODE(54)
		SAY("But you can imagine that this is a really huge task for one person alone. I am not even sure whether or not our conversation will ever be published or presented to an audience. I need some answers from you however to complete this task.")
		
		ANSWER("If that is all, just ask...",55)
	NODE(55)
		SAY("Okay. Why did you choose to join BioTech in the first place? Was it the professionalism of the company, was it the size or was it something else?")
		
		ANSWER("I think it was something of everything and I am more than just interested for the products of BioTech.",56)
	NODE(56)
		SAY("Thank you. Have you already had some negative experiences with BioTech? Did other employees maybe behave strangely or suspicious?")
		
		ANSWER("No, not that I know of. But I do not think that usually happens.",57)
	NODE(57)
		SAY("Do you already have relationships or even close relationship to one or more BioTech employees? Or are you for example already engaged in an affair with a BioTech employee?")
		
		ANSWER("Please give me a break, what has that got to do with anything?",58)

	NODE(58)
		SAY("Let us try another question then. Do you know about BioTech employees that have connections to criminal elements?")
		
		ANSWER("I believe this has gone too far now. Your questions have nothing to do with the survey or any statistic anymore. You are just trying to get company specific info from me.",59)
	NODE(59)
		SAY("Careful, Runner. CityAdmin has no need whatsoever to question somebody like you. CityAdmin is above all criticism. After all this interview is on a totally voluntary basis.")
		
		ANSWER("CONTINUE",60)
	NODE(60)
		SAY("Let me correct myself. Once you have agreed to this interview you will receive a comment in your file when you abort the interview.")
		
		ANSWER("Damn! But what is the purpose of these questions then? Is that your method of uncovering criminal elements in society? I, for one, don'T think that I will answer any more question.",62)
	NODE(62)
		SAY("Didn't you hear of the rumours lately? There are accusations against employees of BioTech that they did not conform with the law. There already have been a couple of executions.")
		
		ANSWER("CONTINUE",63)
	NODE(63)
		SAY("Of course these criminals have earned that kind of punishment. After all they worked against the great system that is Neocron.")
		
		ANSWER("CONTINUE",64)
	NODE(64)
		SAY("CityAdmin only tries to get a detailed image of the current situation. BioTech is just as vulnerable to dubious characters like every other company.")
		
		ANSWER("But that have only been rumours, or not?",65)
	NODE(65)
		SAY("It does not matter here whether or not it was only rumours. But since you have refused to answer all my questions and therefore questioned my authority and the authority of the CityAdmin this will go into your citizen file.")
		
		ANSWER("CONTINUE",66)
	NODE(66)
		SAY("Furthermore be warned! The CityAdmin loves its citizens but in exchange for that it is expected of a citizen to follow the rules. If those rules are compromised there is only one punishment, Death. And in your case, Runner, you have barely escaped that fate.")
		
		ANSWER("But I have not done anything...",67)
	NODE(67)
		SAY("To question the authority of a CityAdmin employee is more than enough... now go before you will really get yourself in trouble here.")
		SETNEXTDIALOGSTATE(68)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()

	NODE(68)
		SAY("I do not have more to say. Go back to BioTech, as I am sure you might want to report everything.")
		ENDDIALOG()
		



-----------------------------------------------------
--Human Resource Director

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)	
		if(result==0)then
 			SAY("Did you already complete the interview? He should be somewhere in the Plaza district.")
			ENDDIALOG()
		else
			SAY("A productive day, Runner.")
		
			ANSWER("Yes, that would have been nice. But instead I had to waste my time speaking to that CityAdmin employee.",101)
		end
	NODE(101)
		SAY("Calm down and don't speak like that about the CityAdmin. After all they protect everything here in Neocron.")
		
		ANSWER("Bah! But then there is only one penalty for almost everything. Death!",102)
	NODE(102)
		SAY("Stop it right now... there is nothing you can do to change the system anyway. Accept it.")
		
		ANSWER("This will not be easy but I have always been a survivor. The CityAdmin cannot really throw me off course.",103)
	NODE(103)
		SAY("Good, what do you remember from the interview? What did excite you so much?")
		
		ANSWER("It began very slow, but then questions would become ever so specific about the company and private relations. In time I realised that the questions only tried to find out more about the situation of BioTech.",104)
	NODE(104)
		SAY("Are you certain? That is strange... Was it mentioned, why these questions have been asked?")
		
		ANSWER("He said something about rumours about BioTech that popped up recently.",105)
	NODE(105)
		SAY("Rumours! Yes, I have heard of them. But I would not have thought that they have already reached the CityAdmin. Although I have heard some bits and pieces about it.")
		
		ANSWER("These rumours are real? But why then are they so dangerous that the CityAdmin would dispatch some CopBots?",106)
	NODE(106)
		SAY("Well, the NCPD and the CityAdmin will want to make certain that Neocron is secure. That's why they follow every rumour. Rumours that could damage Neocron. In such a case the NCPD usually only watches the person in question for some time before they rush in.")
		
		ANSWER("That seems to be only sensible, I mean, you can't execute somebody because of his belief.",107)
	NODE(107)
		SAY("Oh, I almost forgot. There is another task to do if you feel up to it. It is a small delivery for ProtoPharm, our most important cooperation partner for the construction of implants. BioTech makes constant improvements to their palette of implants and ProtoPharm is helping in a tight cooperation.")
		
		ANSWER("CONTINUE",108)
	NODE(108)
		SAY("The chemicals that are produced by ProtoPharm are very important to prevent and control certain anti reactions of the body. If those chemicals were not effective enough there would be symptoms like the ejection of the implant from the body, heavy flue, cramps and it could even lead to insanity.")
		
		ANSWER("I never knew that implants could be that dangerous.",109)
	NODE(109)
		SAY("Exactly that is what I am talking about! Through the cooperation with ProtoPharm they are not dangerous at all. Every implant is thoroughly tested before it is introduced to the market.")
		
		ANSWER("CONTINUE",110)
	NODE(110)
		SAY("Most of the time these test implants are tested on mutants or certain critters in the Wastelands. These are then closely monitored over a certain time. That means that BioTech implants are a safe choice.")
		
		ANSWER("It would seem that I have chosen the right faction then. I am ready to do the delivery now.",111)
	NODE(111)
		GIVEITEM(9200)
		SAY("Glad to hear that. If you are ready you can deliver this package to ProtoPharm. It contains rows of numbers that represent the results from tests with mutants. Just visit me again after your delivery and I will see to your payment.")
		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()


-----------------------------------------------------
--Protopharm Employee

	NODE(150)
		TAKEITEM(9200)
		if(result==0)then
			SAY("I am sorry Runner. I have too much work on my hands. Come back later.")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(151)
			SAY("A productive day. What do you want? If you require ProtoPharm products please refer to a trader.")
		
			ANSWER("No, I am here because I have a delivery. Test results from BioTech implants to be precise.",151)
		end
	NODE(151)
		SAY("I see. Then just hand me the package and I will confirm the delivery. I have not yet seen your face. You have just began to work for BioTech, right?")
		
		ANSWER("Yes, very perceptive. But I am getting used to the situation.",152)
	NODE(152)
		SAY("I am pleased to hear that. There has always been a good cooperation with BioTech. A productive day.")
		SETNEXTDIALOGSTATE(153)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
		
	NODE(153)
		SAY("You have already delivered the package. If you still need something please see a trader or return to your company. I am very busy.")
		ENDDIALOG()
		


-----------------------------------------------------
--Human Resource Director

	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("You have not yet delivered the package to ProtoPharm. Hurry and then come back for your payment.")
			ENDDIALOG()

		else
			GIVEMONEY(2000)
			SETNEXTDIALOGSTATE(201)
			SAY("Ah, there you are. The delivery has been confirmed. Here is your reward that is granted to you by company regulation 318. And remember, the more sympathy you have within the ranks of BioTech the better the chance to receive more important tasks.")
			EPICRUNFINISHED(5,0)
			ACTIVATEDIALOGTRIGGER(2)
			ENDDIALOG()	
		end

	NODE(201)
		SAY("Go away")
		ENDDIALOG()

end