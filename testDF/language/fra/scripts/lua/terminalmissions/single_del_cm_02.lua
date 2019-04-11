--************************
--name   : SINGLE_DEL_CM_02.lua
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
		SAY("Greetings, Runner, here for the delivery job?")
		SAY("What? There is a delivery to be done. Interested?")
		SAY("The CityMercs have a delivery for you if you are the right man.")
		SAY("Hey, Runner! We are in need for a delivery man.")
		SAY("I am already waiting for hours for the right man to come by.")
		
		ANSWER("The terms say you got a job, something about a delivery. I am interested.",1)
		ANSWER("I am the delivery man you are waiting for.",1)
		ANSWER("I have all the skill you might need for the delivery job.",1)
		ANSWER("This place sucks, I'm gone",3)
		ANSWER("You do not look familiar, goodbye.",3)
	NODE(1)
		GIVEQUESTITEM(91)
		SAY("We need this package delivered to %NPC_NAME(1). His current location is at %NCP_WORLD(1). Move, Runner!")
		SAY("An urgent package, this one. Delivery to %NPC_NAME(1) at %NCP_WORLD(1). Then return to me. You have your orders, dismissed.")
		SAY("Section 2 is preparing battle strategies. They require our assistance. You will initiate contact with %NPC_NAME(1) at %NCP_WORLD(1) and provide the package that CityMerc is giving into your responsibility. Come back afterwards.")
		SAY("CityMerc is offering you an opportunity. Move this delivery to the appropriate person , %NPC_NAME(1), at %NCP_WORLD(1) and you shall receive a reward for your services if you return after delivery.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(1)
			if (result==0) then
				SAY("You have your orders! Move out and do your duty!")
				SAY("Any questions? I suggest you do what you were asked to do.")
				SAY("This is no game and we don't play. Do your job or forget your reward.")
				SAY("I thought you were listening to the mission briefing the first time. Delivery to %NPC_NAME(1) at %NCP_WORLD(1) and come back when you completed your job.")
				ENDDIALOG()
			else
				SAY("My orders are to reward you %REWARD_MONEY() credits for your services. That is all, Runner, dismissed.")
				SAY("I heard of the completion of your mission. Well done, Soldier. Here are your %REWARD_MONEY() credits. The CityMercs do not require your assistance any longer, goodbye.")
				SAY("Aye, your reward, right? %REWARD credits have been transmitted to your account. If you are prepared for more, visit the job Term.")
				SAY("Your skills are exceptional. The package has safely reached the destination and is now secured. %REWARD_MONEY() credits have been moved to your account for your services.")
				SAY("Well done. Your delivery has served CityMerc well since we now can continue with several operations. Because of your major involvement we will give you %REWARD_MONEY() credits.")
				SAY("Because of your successful delivery we will be able to settle some issues that were bothering us for some time now. Good luck with your future career. Here are your %REWARD credits.")
				ACTIVATEDIALOGTRIGGER(2)
				ENDDIALOG()
			end
	NODE(3)
		  TAKEQUESTITEM(91)
	                if (result==0) then
	                	SAY("Did you loose your package, Runner? How unfortunate. Retrieve it and see me then.")
	                	SAY("The CityMercs will not be pleased unless you turn over the package.")
	                	SAY("This is no attitude I can accept. Either you supply the package or your reward will be cancelled.")
	                	SAY("Why did you come to me at all? Without the delivery your presence here is unnecessary.")
				ENDDIALOG()
			else
				SAY("Well, done Runner. Might just be that you still have a future in this city. Return to %NPC_NAME(0), he will provide your reward.")
				SAY("Officer %NPC_NAME(0) will take care of your reward. This delivery will serve the CityMercs well.")
				SAY("It is about time you arrived here with the package. What were you thinking? %NPC_NAME(0) will handle your payment.")
				SAY("%NPC_NAME(0)will be pleased to hear of your successful completion of the mission. He is also responsible for your payment when you return to him.")
				SAY("Please hand over the delivery, we will see to everything else. See Mr. %NPC_NAME(0) for the payment.")
				ACTIVATEDIALOGTRIGGER(1)
				SETNEXTDIALOGSTATE(5)
				ENDDIALOG()
			end
	NODE(4)
		SAY("Aye, I agree that you should not be here.")
		SAY("CityMercs are not interested in idle conversations. Move along, citizen.")
		SAY("Move along, there are others who want to speak to me.")
		ENDDIALOG()
	NODE(5)
		SAY("What the hell do you want here? I got the packet, now go back to %NPC_NAME(0) to recieve your reward.")
		SAY("Thanks for delivering this package. Now go back to %NPC_NAME(0) to recieve your reward.") 


		ENDDIALOG()
end	
