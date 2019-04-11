--new
function DIALOG()

--Trigger
--Triggernumber,Type,Person

--0,D,Mason


--Startnode, Person
--0 Human Resource
--50 Elias
--100 Mason

-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("There is another opportunity to do something for NEXT. It is not easy to explain because opinions vary greatly amongst the citizens of Neocron. Many opinions regarding the Fallen Angels are based on lies and prejudices which rarely are based on facts that really speak against them.")
		
		ANSWER("CONTINUE",1)
	NODE(1)
		SAY("The Fallen Angels have a rather strained relationship to the CityAdmin. It is a shame that they have such an immense Know-how that many could profit from but in reality few people actually do. But NEXT is different in that we only evaluate the potential and the actions of the organization in question. We do not take rumours or prejudice into consideration. That means that the Fallen Angels are an opportunity for us.")
		
		ANSWER("Yes, but what really is your point? Are there connections between NEXT and the Fallen Angels?",2)

	NODE(2)
		SAY("That is exactly the point, officially we do not have any connections to them. But despite the general opinion about the Fallen Angels we have no intention of wasting valuable resources on research that we could simply acquire from the Fallen Angels. NEXT has to proceed carefully with these deals, however. If the fact that we occasionally deal with the Fallen Angels would surface it would mean a great loss to our reputation.")
		
		ANSWER("CONTINUE",3)
	NODE(3)
		SAY("NEXT is aware of the risks involved but still tries to maintain a certain level of contact to the Fallen Angels. Only recently an exchange of information was arranged but we were still looking for the right person who could be trusted with such an assignment.")
		
		ANSWER("That means that you have found the right person? You mean that I am the right person?",4)
		ANSWER("If you think about me, I do not have time at the moment I fear.",8)

	NODE(4)
		SAY("Very perceptive. You seem to have a great career ahead of you. So you already know where the Fallen Angels facility can be found?")
		
		ANSWER("It is called Tech Haven, am I right?",5)
	NODE(5)
		SAY("Yes. Some people would even call it the technical paradise. Why? Well, you will be able to see that for yourself when you get there. It can be found in the Wastelands and has a very interesting historical background. But I don't want to bore you with old stories. NEXT wants you for a meeting with a certain Elias from the Fallen Angels. He should wait at one of the entrances to Tech Haven.")
		
		ANSWER("CONTINUE",6)

	NODE(6)
		SAY("We have been told that he has the authority to speak for the Fallen Angels. Even as he is making quite a secret about his faction association due to the current political situation. Listen to what he has to say. He will also provide you with a control chip that you should bring back to Mr Mason. You will already have met him, am I right?")
		
		ANSWER("Yes. I am on my way then.",7)
	NODE(7)
		SAY("Good luck and take care when crossing the Wastelands, it might be dangeorous.")
		SETNEXTDIALOGSTATE(9)
		STARTMISSION()
		ENDDIALOG()
		

	NODE(8)
		SAY("It was worth a try. Come back if you feel ready for an assignment.")
		ENDDIALOG()
		
	NODE(9)
		SAY("Have you already met Elias at the Tech Haven entrance in e 07?")
		ENDDIALOG()
		



-----------------------------------------------------
--Elias

	NODE(50)
		SAY("I have expected your arrival. At least they were nice enough to inform me at all. Wait a second, you don't look very official to me.")
		
		ANSWER("It is irrelevant how I am dressed. I am here as a representative from NEXT.",51)
	NODE(51)
		SAY("I expected to be able to talk to a proper NEXT employee here. At least. You seem to be only a simple Runner.")
		
		ANSWER("If that is how you see me it is your problem. It seems to me as if you have no choice but to talk to me.",52)
	NODE(52)
		SAY("If that is necessary. Do you have at least the required expertise to understand what we will be talking about?")
		
		ANSWER("Don't worry. I am well prepared. If you believe that I am not qualified, I will personally see to it that this exchange will be delayed for a few months. That is a promise.",53)
	NODE(53)
		SAY("Alright, alright. Then let's begin. But should I talk to you about the Cryo technology first? Yes, I think we will start with Cryo technology. I hope you already know what that is. Do you?")
		
		ANSWER("Of course, that is really basic stuff. It enables you to stay asleep almost indefinitely, right?",54)
	NODE(54)
		SAY("Yes, it is especially useful in spaceships and is already known for quite some time. But now the Fallen Angels laboratories have even managed to improve the Cryo techonology.")
		
		ANSWER("CONTINUE",55)
	NODE(55)
		SAY("In the end there are now several advantages to our method. Persons who wake from a long Cryo sleep do not suffer any longer from frostburn or similar illnesses for example. NEXT will probably be interested in our research into Cryo technology.")
		
		ANSWER("Yes, especially since NEXT is involved in space travel research and various projects. But I have no authority to agree to that exchange.",56)
	NODE(56)
		SAY("Yes, I assumed something like that. Regarding the current political situation we rather wait a little bit longer to play safe. You NEXT guys are so predictable. Well, I have forwarded the relevant data to the NEXT labs. Decide whenever you want.")
		
		ANSWER("I was instructed to expect a control chip that you agreed to give to NEXT. Did I misunderstand something there?",57)
	NODE(57)
		SAY("No, in fact, that is the original purpose of this meeting. The Fallen Angels have completed the prototype of a new kind of control chip. It functions more efficient and some problems that occured with the previous model have been eliminated. It should fit in nicely with the rest of the experimental vehicle. Take the chip and don't loose it somewhere. The payment is already agreed upon. Probably the usual method.")
		
		ANSWER("What kind of experimental vehicle?",58)
	NODE(58)
		GIVEITEM(9101)
		SETNEXTDIALOGSTATE(59)
		SAY("I believe it is still labelled top secret. I shouldn't tell you any more about it. Good luck then.")
		
		ANSWER("Can you tell me a little bit more about Tech Haven? It looks like quite an impressive structure.",59)
	NODE(59)
		SAY("*sigh* Alright. Tech Haven was built from scratch for the purposes of the Fallen Angels. That was in the year 2633, if I remember correctly. But since the Angels were forced to move to the Dome, Tech Haven has become a independent trading outpost adminstrated by a pure business-orientated splinter group of the Fallen Angels.")
		
		ANSWER("CONTINUE",60)
	NODE(60)
		SAY("This splinter group tries to cover their direct associations by always stating that they are only interested in making credits. But the secret Fallen Angels Faction Office deep in the Tech Haven cores speaks for their true motives. If you want to know more about Tech Haven feel free to contact one of the administrative employees around here. I have no time any longer. No, to be honest, I am tired of telling you about Tech Haven. Please go back to Neocron now.")
		SETNEXTDIALOGSTATE(61)
		ENDDIALOG()
		
	NODE(61)
		SAY("Listen, there is a lot to do here. You should rather try and mind your own business. Go back to your company.")
		ENDDIALOG()
		

-----------------------------------------------------
--Mason

	NODE(100)
		TAKEITEM(9101)
		if(result==0)then
			SAY("You were tasked to bring that control chip to me. So, simply get it and hand it over to me.")
			ENDDIALOG()
		else
			SAY("Have you received the control chip?")
		
			ANSWER("Yes, although the Fallen Angels contact person was a rather aloof character.",101)
		end
	NODE(101)
		SAY("Yes, that sounds like Elias. But as long as they constantly deliver quality products I don't really mind. This control chip will enable our vehicles to react even faster to possible dangers for the vehicle. It will also make controlling the vehicle as comfortable as never before. I personally believe that the future is with vehicles, not with Irata III like Mr Diggers envisions.")
		
		ANSWER("CONTINUE",102)
	NODE(102)
		SAY("We have everything we will ever need right here, we just have to take it. And this whole Irata III bullshit only means that humanity gets another chance at turning another paradise into a radioactive wasteland.")
		
		ANSWER("But isn't it possible that Irata III is really as wonderful as everybody says?",103)
	NODE(103)
		SAY("Let me tell you something. Irata III might be the most wonderful place there ever was and yet I say the future is here. Apart from that, I don't believe that humanity deserves to get their hands on another blue planet I believe we have everything we need. And if we don't manage to persist here and now it would only be a matter of time until Irata III would suffer the same destiny. That is all I have to say about that.")
		
		ANSWER("You seem to be rather bitter.",104)
	NODE(104)
		GIVEMONEY(5000)
		SAY("Bitter? It happened too long ago already. I cannot feel bitter about it anymore I guess. Back then my eyes were opened to the reality. I don't really want to talk about it any longer. NEXT will have need of you in the future. Prepare yourself and if you feel ready come back. Here are 5000 credits as reward.")
		EPICRUNFINISHED(3,1)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
		
end