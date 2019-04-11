--new
function DIALOG()

--Trigger
--Triggernumber,Type,Person
--0
--50
--0,D,Leila
--1,D,Taylor
--200

--Startnode, Person
--0 Human Resource
--50 Jester
--100 Leila
--150 Taylor Gomez
--200
--250

-----------------------------------------------------
--Recruiter

	NODE(0)
		SAY("This is a lucky coincidence, you arrived just when we needed somebody for a special job. We have some trouble with the Black Dragon scum. There was an open conflict in front of one of our clubs. They dared to attack with firearms. We had them running in no time but it sure was a powerful message. They attacked us on our own ground. It is time to do something about that. Are you ready to do more for Tsunami?")
		
		ANSWER("These Black Dragons are very bold. I would volunteer to kill some of those rats myself if that is what you want.",1)
		ANSWER("It does not suit me right now. I cannot help you at the moment.",6)
	NODE(1)
		SAY("No, it is not time for that just yet. Since you have proven your loyalty to us, there is another assignment that you will be entrusted with. It is important for our move to know as much as possible about the plans of the Black Dragon. But before Tsunami plans the next move we will have a small revenge on the Black Dragon.")
		
		ANSWER("How big is the threat?",2)
	NODE(2)
		SAY("The current situation is seeing battles between Tsunami and Black Dragon every day. They are forcefully trying to push into our market. They are threatening our clients and dancers likewise. We cannot allow this to continue. We will teach those bastards that Tsunami never yields. Not even an inch of its turf.")
		
		ANSWER("But what can be done other than killing them off?",3)
	NODE(3)
		SAY("We have managed to get a disguised member as a spy into the Black Dragon hierarchy. Her name is Leila. You will bring a small package to her and then she will cause some chaos from within the ranks of the Black Dragon. ")
		
		ANSWER("And where do I get that from?",4)
	NODE(4)
		SAY("The package you are supposed to bring to her is still in the hands of Jester. Get the package from him and then give it to Leila. It should be quite a surprise for them once they find out what happened. Be sure to tell Leila that the implant is targeted at either Gecko or Trond himself, the leader of the Black Dragon. Now go.")
		
		ANSWER("Where can I find Leila?",5)
	NODE(5)
		SAY("Oh, yes. Its not that difficult. She can be found near the Black Dragon HQ. That is the designated meeting place. After you have delivered the package visit Taylor Gomez in Secret Passage-2 near the Tsunami Secret Faction Office in Neocron.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(7)
		ENDDIALOG()
		
	NODE(6)
		SAY("Tsunami is not offering you these assignments out of gratitude. That you reject such a mission tells us alot about your loyalty to Tsunami.")
		ENDDIALOG()
		
	NODE(7)
		SAY("You have your assignment. Get the package from Jester to Leila at the Black Dragon HQ and then report back to Taylor gomez.")
		ENDDIALOG()

-----------------------------------------------------
--Jester



	NODE(50)
		SAY("Ah, my favorite would-be-Tsunami. I guess you are here for my little invention? It took me a while to figure out the correct amount of hormone distribution but it should work fine now. Would not want to use it myself, though. In the past I worked for ProtoPharm amongst others and now that knowledge about how chemicals can influence certain body functions helped me quite a lot in constructing this little device.")
		
		ANSWER("You guessed right. I am here to retrieve that device. What is it in any case?",51)
	NODE(51)
		SAY("It is a very sophisticated poison injector. For anybody else it looks like a simple implant but in truth it messes with the brain of the unfortunate person that uses it. I pity that person already, he he he. Have fun with it. But before you can have it I need some chemicals to make it work properly. Go and get me Tiberal and some Adiclovin. ")
		SETNEXTDIALOGSTATE(52)
		ENDDIALOG()

--Player gets Tiberal and Adiclovin
		
	NODE(52)
		TAKEITEM(269)
		if(result==0)then
			SAY("I need Tiberal and Adiclovin for this to work, there is no other way.")
			ENDDIALOG()
		else
			TAKEITEM(273)
			if(result==0)then
				GIVEITEM(269)
				SAY("Now I still need Adiclovin.")
				ENDDIALOG()
			else
				GIVEITEM(9252)
				SAY("Excellent. Now its almost done... here we go. Now you can have it.")
				SETNEXTDIALOGSTATE(53)
				ENDDIALOG()
		
			end
		end
	NODE(53)
		SAY("I have already provided you with the device. I sure hope you did not loose it. Now go and deliver it to the contact.")
		ENDDIALOG()
		

-----------------------------------------------------
--Leila

	NODE(100)
		SAY("Maybe I could fulfill some of your dreams? What do you think?")
		
		ANSWER("I am here for somebody named Leila. ",101)
	NODE(101)
		SAY("... Oh no, I knew that day would come. Please I cannot speak to you, you don’t know how cruel Gecko is.")
		
		ANSWER("Who is Gecko?",102)
	NODE(102)
		SAY("Gecko is second in command of the Black Dragon. You do not know what he did to me for lesser things than just speaking to a Tsunami.")
		
		ANSWER("You are supposed to have some informations about the plans of the Black Dragon for me.  Do not whine like that.",103)
	NODE(103)
		SAY("If I tell you all I know about them, will you leave me alone, please?")
		
		ANSWER("I still have this device for you. I was instructed to hand it over to you. I think you know what to do with it, don't you? It is for Gecko or Trond. Either one is fine.",104)
	NODE(104)
		SAY("I cannot do that, it would be my death warrant. Please, I am already experiencing hell on earth here.")
		
		ANSWER("You should better do like you are told or it might get worse for you. Tsunami is not known to forgive traitors.",105)
	NODE(105)
		TAKEITEM(9252)
		if(result==0)then
			SAY("But how can I succeed if you do not have the device?")
			ENDDIALOG()
		else
			SAY("Alright but please don’t hurt me. I don’t know much about their plans. Gecko keeps me on a pretty short leash. I suspect he knows that I am from Tsunami and I fear for my life every single day. The only thing I heard is that there is a major deal between Black Dragon and ProtoPharm going on. I don’t know more... please go before they suspect something.")
		
			ANSWER("Right, here is the device. Just make sure it is delivered to the right person.",106)
		end
	NODE(106)
		SAY("I... I will try to do as I am told...")
		SETNEXTDIALOGSTATE(107)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
		
	NODE(107)
		SAY("I have to wait for the right moment! I cant just walk in there and press this poison injector onto his head. So leave me be.")
		ENDDIALOG()
		


-----------------------------------------------------
--Taylor Gomez

	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("I cannot waste time talking to you at the moment. Have you already completed your assignment?")
			ENDDIALOG()
		else
			SAY("Have you been able to get the required information? And have you delivered the device?")
		
			ANSWER("Yes, I have delivered the device though I did not find out much about the plans of the Black Dragon. The only thing I was told is that they plan a major deal with ProtoPharm.",151)
		end
	NODE(151)
		GIVEMONEY(5000)
		SETNEXTDIALOGSTATE(152)
		SAY("Excellent. I will try to find out more about that deal and how it can possibly benefit us. In the meanwhile take these 5.000 credits as a reward.")
		
		ANSWER("Thank you. A word about Leila ... she seemed to be in trouble and said she suspected that they know about her spying activities for Tsunami.",152)
	NODE(152)
		SAY("Are you sure? I believe she is just paranoid. Lets assume just for a second that she is in danger. One whore more or less just won’t cut the mustard. The truth is that she is expendable.")
		
		ANSWER("But she seemed really frightened. Isn't that a rather harsh way to deal with a Tsunami member?",153)
	NODE(153)
		SAY("Don’t worry about that. Next time we might go into the offensive against the Black Dragon and we will certainly be needing your help. I suggest you get yourself in shape until then. (next mission at level 30)")
		EPICRUNFINISHED(8,1)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
		
	

end