--************************
--name   : SINGLE_DEL_BD_02.lua
--ver    : 0.1
--author : Ferron
--date   : 2004/09/14
--lang   : en
--desc	 : terminal mission
--npc    :
--************************
--changelog:
--2004/09/14(0.1): edited TS script to build this BD version (Ferron)
--************************

function DIALOG()

	NODE(0)
		SAY("What is your business here?")
		SAY("Hey-o. What can I help you with?")
		SAY("Yes? What is it that you want, Runner?")
		SAY("Welcome to my office. How can I be of assistance?")
		SAY("Hey-o Runner, you come to see me about the delivery job maybe?")
		
		ANSWER("Yes, I am here regarding the delivery job.",1)
		ANSWER("Yeah, I heard you needed a drop done. Just give me the information and the package...",1)
		ANSWER("Sorry, I all ready have a job.",4)
		ANSWER("Find someone else, I am not interested in helping you.",4)
		ANSWER("Look buddy, do I look like some kind of Runner? I don't do deliveries.",4)
	NODE(1)
		GIVEQUESTITEM(91)
		SAY("We have managed to obtain some juicy stuff on a certain %NPC_NAME(1) at %NPC_WORLD(1). I want you to hand them this package and get clear, I wouldn't wait for them to open it if I were you. Come back here afterwards.")
		SAY("Runner, I have a package I need delivered to %NPC_NAME(1) at %NPC_WORLD(1). The contents of this package are sensitive to say the least, so I wouldn't be around when it's opened. Return to me when it is done.")
		SAY("Runner, Black Dragon has managed to dig up some interesting dirt on %NPC_NAME(1) at %NPC_WORLD(1). It has been summed up in this package and I want you to give it to them. Drop it off and run like a Titan was after you; they won't be happy when they open it.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(1)
			if (result==0) then
				SAY("Are you scared or what? The bastisch isn't that dangerous, as long as you vaporize real quick like. Now get going.")
				SAY("Hurry and get the package delivered. I am quite curious as to how %NPC_NAME(1) will react.")
				SAY("Hey-o. Forgot where to go, Jingo? %NPC_NAME(1) at %NPC_WORLD(1). Don't forget to make a quick get away.")
				SAY("Get the package delivered to %NPC_NAME(1). Today, preferably.")
				ENDDIALOG()
			else
				SAY("Hey-O Runner. %NPC_NAME(1) confirmed the drop, kind of. You did well and I hope you got away clean. %REWARD_MONEY() credits has been deposited into your account. See you around.")
				SAY("Hey-o. %NPC_NAME(1) called me up, so I guess you made the drop. %REWARD_MONEY() credits will be moved to your account. Black Dragon thanks you for a job well done.")
				SAY("The drop has been confirmed and %REWARD_MONEY() credits have been moved to your account. Black Dragon is grateful for your assistance. See you around.")
				SAY("Runner, %REWARD_MONEY() credits have been moved to your account. You did well today and we look forward to working with you again.")
				SAY("Hey-o Runner. You have been paid %REWARD_MONEY() credits. Look at the terminals for future assignments. See you around, I hope.")
				ACTIVATEDIALOGTRIGGER(2)
				ENDDIALOG()
			end
	NODE(3)
		TAKEQUESTITEM(91)
			if (result==0) then
				SAY("What? I'm not expecting a package. Sure you got the right fellow? Heck, you don't even have a package! Get lost!!")
				SAY("You had a package for me, right? Where?")
				SAY("Stop pulling my leg, you don't even have a package to deliver!")
				ENDDIALOG()
			else	
				SAY("What? I'm not expecting no package. I don't get it...The sender is gonna have to pay for this one.")
				SAY("Nah, you have the wrong fella' here. I'm not expecting no package.")
				SAY("Sure? For me? From who? Hmmm....whoever sent it is gonna have to pay for it, for sure.")
				SAY("Thanks, I guess. I wasn't expecting a package though. Who ever sent it will have to pay you for it.")
				SAY("Ah, OK. Package for free. Wonder what it is...")
				ACTIVATEDIALOGTRIGGER(1)
				SETNEXTDIALOGSTATE(5)	
				ENDDIALOG()
			end
	NODE(4)
		SAY("For general information about Black Dragon I suggest you gock the terminals.")
		SAY("If you can't help me with the delivery I suggest you leave me alone...")
		SAY("Ok, I get it. You are some kind of tourist or something, right? Get out before I call the muscle in here...")
		ENDDIALOG()
	NODE(5)
		SAY("What the hell do you want here? I got the packet, now go back to %NPC_NAME(0) to recieve your reward")
		SAY("Thanks for delivering this package but go now back to %NPC_NAME(0) to recieve your reward.") 
		ENDDIALOG()
end
