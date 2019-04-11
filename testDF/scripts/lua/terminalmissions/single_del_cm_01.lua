--************************
--name   : SINGLE_DEL_CM_01.lua
--ver    : 0.1
--author : Kintama
--date   : 2004/09/09
--lang   : en
--desc   : terminal mission
--npc    : 
--************************
--changelog:
--2004/09/09(0.1): Added description
--************************

function DIALOG()

	NODE(0)
		SAY("Speak. Are you here for the delivery?")
		SAY("Are you just standing there or are you here for the job?")
		SAY("What is it you want with the CityMercs?")
		SAY("Hey. Are you the delivery man?")
		SAY("Hello, there is a job to do if you are interested.")
		
		ANSWER("I heard that the CityMercs need something delivered? If that's the case I'm your Runner.",1)
		ANSWER("I am here for the delivery job that is posted on job Term.",1)
		ANSWER("There is a delivery to be made, right? Then I am your man.",1)
		ANSWER("Obviously you are not the one I was looking for.",3)
		ANSWER("I don't think I should be here. Bye.",3)
	NODE(1)
	   	GIVEQUESTITEM(91)
		SAY("Make your way to %NCP_WORLD(1) and look out for %NPC_NAME(1). He needs the new armor since his one was shredded in the last firefight. We have a full schedule and cannot send somebody else so be quick aobut it.") 
		SAY("This stuff needs to be delivered to %NPC_NAME(1). He is currently working at %NCP_WORLD(1) on a tricky job. It might not be completely safe for you, but then everything comes with a price, right? After that return to me for a reward.")
		SAY("Runner, do us a favor and deliver this package to our man at %NCP_WORLD(1). His name is %NPC_NAME(1) and I would hurry if I were you. Come back for the reward afterwards.")
		SAY("Glad to see a Runner who is not looking down his nose on a simple delivery job. Get this package to %NPC_NAME(1) at %NPC_WORLD(1). I will have your reward ready for when you return.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(1)
			if (result==0) then
				SAY("His name is %NPC_NAME(1) and he is at %NCP_world(1). Go there and deliver the package, it is easy enough.")
				SAY("I don't want to hear excuses. %NPC_NAME(1) needs the package, hurry.")
				SAY("Runner, I thought you understood the importance of this delivery. Now go and do your job or I will loose my faith in your abilities.")
				SAY("The question is, why do you still carry the package around with you? Come back once you delivered it.")
				ENDDIALOG()
			else
				SAY("%NPC_NAME(1) seems to be content with your delivery. Here is your reward, %REWARD_MONEY() credits, you will find it shortly in your account.")
				SAY("Nice job, Runner. The CityMercs would like to thank you and we are looking forward to future collaborations. Your %REWARD_MONEY() credits have been forwarded to your account.")
				SAY("Well done. Now our employee will be able to commence his job. The CityMercs have awarded %REWARD_MONEY() credits for this job which are now yours.")
				SAY("Although you took your time with the delivery, I was informed that the package is at its destination. Here are your %REWARD_MONEY() credits.")
				SAY("Back so soon, Runner? Good, very good. Our plans can proceed at once, then. You shall have your just reward, %REWARD_MONEY() credits should suffice I think. Now be gone, I am very busy.")
				SAY("Section 3 of the CityMercs informed me that the package was well received. Our employees there should have everything now. The %REWARD_MONEY() credits have been transferred to your account, congratulations")
				ACTIVATEDIALOGTRIGGER(2)
				ENDDIALOG()
			end
	NODE(3)
	         TAKEQUESTITEM(91)
	                if (result==0) then
	                        SAY("This must be a joke, I really need that package now. Hurry and get it as quick as possible")
	                        SAY("Yeah, right. You lost it? I have heard that too often now, go and get me the delivery.")
	                        SAY("I cannot continue my work until I receive the new parts. I don't like this at all. Be quick to get it in time for me.")
	                        SAY("I cannot say that you are very reliable as a delivery man if you arrive without the delivery. I am slowly losing my patience. Return when you have the package.")
				ENDDIALOG()
			else
				SAY("It's about time I got the stuff from the CityMercs. I almost thought they forgot me. I am sure %NPC_NAME(0) will have a handy reward for you.")
				SAY("Just another package. One package comes and then another one. Everytime more work. %NPC_NAME(0) will have your credits ready. You better hurry, life is short.")
				SAY("Sweet. This is it. I have waited for days now. Finally I have everything together. Ah, yes. %NPC_NAME(0) should have your money.")
				SAY("See %NPC_NAME(0) for your reward. Now that I have the package I am sure that more and more work is waiting for me. Heavens.")
				SAY("I would invite you to a drink but I will not dish out money senselessly. Thanks for the delivery. %NPC_NAME(0) should have the money for you. Hey, you could come back and invite me for a drink. No, just kidding.")
				ACTIVATEDIALOGTRIGGER(1)
				SETNEXTDIALOGSTATE(5)	
				ENDDIALOG()
			end
	NODE(4)
		SAY("Yeah, good riddance, I say. Don't bother me any longer, Runner.")
		SAY("Right, watch your steps unless you want to loose it all. Come back when you have business with the CityMercs.")
		SAY("Oh, I see. So now you are leaving. Don't worry, I think others are better suited for the job.")
		ENDDIALOG()
	NODE(5)
		SAY("What the hell do you want here? I got the packet, now go back to %NPC_NAME(0) to recieve your reward.")
		SAY("Thanks for delivering this package. Now go back to %NPC_NAME(0) to recieve your reward.") 

		ENDDIALOG()
end