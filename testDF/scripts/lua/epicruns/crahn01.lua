
--new
function DIALOG()

--Human Resource Director
	NODE(0)
		SAY("As I can see you have worked hard to prove your loyalty to our order. In the name of the holy Crahn I hereby thank you for your dedication. If you want to further serve the order we would now be ready to assign more complex missions to you. Are you ready for this challenge?")

		ANSWER("Yes, sister. I wholly submit my body and my soul to the wellfare of Crahn.",1)
		ANSWER("I am sorry but I am not yet ready for such an assignment.",9)

	NODE(1)
		SAY("Then let us proceed... Mark Cole, an ex-member of the Fallen Angels has informed us that he is reputedly having a very valuable object in his possession. He did not say what kind of object he was referring to. The order is not sure whether or not Cole is trustworthy and we do not want Cole to develop an aloofness.")

		ANSWER("He is not even one of us, why would any father stoop as low as to visit him?",2)
	NODE(2)		
		SAY("True, that is why the order decided not to send a high ranking brother to him. But since we still need to find out about this object I ask you to get it from Cole and deliver it to Father Manus right here in the cathedral of Crahn. So that Father Manus will be able to examine it more closely.")

		ANSWER("Who exactly is Mark Cole and who are the Fallen Angels?",3)
	NODE(3)
		SAY("Cole did work for the Fallen Angels a long time. The Fallen Angels are an association of scientists who used to live exiled in the Wastelands. Their base of operations, a Mekka of sin, was Tech Haven. Of course, now they chose to get their share of what remains of the Dome of York. The relationship between the brotherhood and the Fallen Angels is stained because of some unfortunate events, but that doesn't mean that we arn't we are interested in cooperating with former Tech Haven scientists.")

		ANSWER("Doesn't Cole work for them any longer? What happened?",4) 
	NODE(4)
		SAY("In contrary to what he said, Cole was banished from the ranks of the Fallen Angels after he tried to sell secret science projects of the Angels.")

		ANSWER("Where can I find Cole exactly?",5)
	NODE(5)
		SAY("Cole waits in Dome of York for you. There is an area for trade with all kinds of weaponry within the dome. Nobody laid claim to it so far because it is beneficial for everyone. You will find that sly Cole there. Sector 06.")

		ANSWER("CONTINUE",6)
	NODE(6) 
		SAY("Afterwards, give Father Manus my best regards. His work is an inspiration for all of us. Would you like to accept this assignment?")

		ANSWER("Yes,... I will not disappoint Crahn.",7)
	NODE(7)
		SAY("May your mission be guarded by the holy Crahn.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(150)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()

	NODE(8)
		SAY("Return here once you feel that you could stand up to the challenge.")
		ENDDIALOG()

-----------------------------------------------------------------
--Mark Cole
	NODE(50)
		ACTIVATEDIALOGTRIGGER(0)
			SAY("You are the young monk that the brotherhood announced to me? Why doesn't father Manus come himself?")

			ANSWER("Please Cole... I haven't got much time. Give me the object that is supposed to be so very valuable.",51)

	NODE(51)
		SAY("Not so fast my young friend... Since I am no member with the Fallen Angels anymore, life got pretty dangerous for me. The Angels obviously plan to kill me because they assume that I could sell their scientific secrets that I still have from my time in their labs.")

		ANSWER("I am not interested in your problems. I thought you were supposed to give me an allegedly valuable object? Anything else is not of interest for me.",52)

	NODE(52)
		SAY("Please understand... I am totally broke and can't even afford a simple weapon. The object I have is very valuable for the brotherhood but totally useless for me. Organise a simple weapon for me... a stiletto... then I will hand over the object to you.")

		ANSWER("Very well... I will bring you your stiletto. Wait here for me.",53)

	NODE(53)
		SAY("Where else should I go? The killers of the Fallen Angels are lurking everywhere. Only in the darkness of this market I feel halfway safe.")
		SETNEXTDIALOGSTATE(54)
		ENDDIALOG()

	NODE(54)
		--Spieler gibt Mark das Messer

		TAKEITEM(19)
		if(result==0)then
			SAY("Go and get me that knife...go.")
			ENDDIALOG()
		else
			GIVEITEM(9000)
			SETNEXTDIALOGSTATE(55)
			SAY("Give me the knife... here take this trash. And now get lost... otherwise you might be seen with me. I am already curious what this great Father Manus of yours is going to do with this rubbish.")

			ANSWER("Well, well... now that you got everything you wanted you are showing your real face. If you really believe that you can fight against the Fallen Angels with a stiletto you should be prepared for a surprise. I for one will not regret it if your body is found decaying in the wastelands.",55)
		end

	NODE(55)
		SAY("Yes, yes, yes... now bugger off already.")

		SETNEXTDIALOGSTATE(56)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
	NODE(56)
		SAY("Get lost. I don't want to be seen with you. Don't you have to give the item to somebody?")
		ENDDIALOG()


-----------------------------------------------------------------
--Pater Manus
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("I do not have the time to speak to young monks.")
			ENDDIALOG()
		else
			SAY("Welcome , young monk. The order already announced your arrival. Did you meet Cole?")
		
			ANSWER("Yes, but I still have something important to do. I am sorry.",109)
			ANSWER("Oh yes I did... he is a very mean contemporary.",101)
		end
	NODE(101)
		SAY("Yes, he is a fool... and a traitor... Did he hand you this ominous object?")
	
		ANSWER("Yes father. But I don't know what it is. It looks like metal and somehow feels warm to the touch.",103)
	NODE(103)
		SAY("Let me have it.")

		ANSWER("Of course, here it is. Take it.",104)

	NODE(104)
		TAKEITEM(9000)
		if(result==0)then
			SAY("But, where is the object? Without the object we cannot do anything.")
			ENDDIALOG()
		else
			SAY("Interesting... this object is Tacholytium. A warm and moderately radioactive metal. If you look at it in the dark you will notice that it even glows very slightly. That is also the reason why our ancestors have preferred to use this material.")

			ANSWER("CONTINUE",105)
		end
	NODE(105)
		SAY("...at that time, when we lived below the earth for generations after the great light, many strange machines of the ancient Psi Monks were constructed from Tacholytium. I will probably have to study some of the older records in order to fully grasp the meaning of this item.")

		ANSWER("Does that mean that this object is worth something after all?",106)
	NODE(106)
		SAY("Patience, young monk, is a virtue. I will retire to the archive in order to fully answer your question. Until then I should better lock this away safely. It is entirely possible that it is the key for something of great importance.")

		ANSWER("So shall it be. Thank you father.",107)
	NODE(107)
		SAY("Now return to the HQ. They are already waiting there for you. May Crahn bless your journey.")
		ACTIVATEDIALOGTRIGGER(2)
		SETNEXTDIALOGSTATE(108)
		ENDDIALOG()
	NODE(108)
		SAY("I am sorry but I am already on my way into the archive. Please go back to the headquarters.")
		ENDDIALOG()
	NODE(109)
		SAY("Don't forget to meet Cole.")
		ENDDIALOG()

-----------------------------------------------------------------
--Official Resources Director
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("May I point you to your assignment? The mission is not yet accomplished. Mark can be found in sector 06. And don't forget that Father Manus is waiting for you as well.")
			ENDDIALOG()
		else
			SAY("Welcome home, young monk. Father Manus already told me of your successful mission and the strange object. That was good work. Especially how you interacted with Cole. I know that he is a very difficult and impertinent person.")

			ANSWER("Crahn has granted me patience.",151)
		end
	NODE(151)
		SAY("As a reward you will receive these 2000 credits. I would suggest that you invest this money in your PSI equipment.")

		ANSWER("Thank you father. I will consider your suggestion.",152)
	NODE(152)
		SAY("If you further train your skills I might soon have another special run for you. May Crahn bless you. You have to go out amongst the people to train the use of your PSI-powers. (next mission at level 20)")
		GIVEMONEY(2000)
		EPICRUNFINISHED(10,0)
		ACTIVATEDIALOGTRIGGER(3)
		ENDDIALOG()
end