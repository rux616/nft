--************************
--name   : SINGLE_DEL_TG_02.lua
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
		SAY("Hey, are you the Runner for the delivery?")
		SAY("You here for the delivery job?")
		SAY("This package is burning my hands, tell me you're the connection for the delivery.")
		SAY("If you aren't the Runner for the delivery job then I ain't got nothing to say to you.")
		SAY("The only thing I want to hear is you asking me where this package needs to go. Please tell me that is what you're here for.")
		SAY("I got a message earlier about a delivery. That your mission?")
		
		ANSWER("You win! I am here for the delivery job. Just tell me what I need to do.",1)
		ANSWER("Bingo. If you want a delivery, then I got it covered.",1)
		ANSWER("You need a package somewhere else? Just drop it off and hit me with the cords.",1)
		ANSWER("'Fraid you got yourself the wrong person.",4)
		ANSWER("Sorry, those non-com runs are a total scam.",4)
		ANSWER("Sorry pal, I only do the hot ones.",4)
	NODE(1)
		GIVEQUESTITEM(91)
		SAY("You do not know how happy I am to see you. This package really needs to be delivered majorly fast, get it? The destination is a contact named %NPC_NAME(1), should be hanging around %NPC_WORLD(1). You get the package there, drop it off, then buzz back here to get hooked up with your creds, rez?")
		SAY("%NPC_NAME(1), remember that name. This package needs to be there now. You get it there quick and then trace yourself back here and your bank account will have enough for a new toy. Oh, almost forgot! %NPC_NAME(1) usually hangs around %NPC_WORLD(1). Now get going Runner.")
		SAY("You ever seen one of those totally rad-scarred mutants in the wastes? Well, if not then I am sure you can imagine. You know they were once people right? Oh yeah! The radiation just does weird things to your body when you get exposed too long. Well, I personally guarantee that you are gonna be stumbling around the wastes naked if this package isn't delivered in five. This delivery goes to %NPC_NAME(1), who is waiting for you in %NPC_WORLD(1). Now, if I were you, I would be running already.")
		SAY("The Guardian has a package they need moved. Problem not, but all the members that would normally do a job like this are busy right now. So we have to go outside to find a Runner. This is where you come in. Take this package to %NPC_NAME(1) in %NPC_WORLD(1). No questions asked, no answers wanted. You do this right, there will be a nice stack of credits waiting for you back here.")
		SAY("Good, I've burned too much time waiting here already. This package needs to go to %NPC_NAME(1). The notice I got listed %NPC_WORLD(1) as the place, so look for them there. Once the package is safely delivered, come back here and the Guardian will gladly pay you for your services.")
		SAY("Barely made it chumba, I was just about to call the netRunners and tell them to find a Runner who keeps a R.P.O.S. clock on. Hi, the name is %NPC_NAME(0). Your package lists %NPC_NAME(1) as the recipient and %NPC_WORLD(1) as the place to start looking. Now get going and try to make up some time in transit. If you get it there in time I'll have some creds waiting here too.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(1)
			if (result==0) then
				SAY("I already gave you the name and destination, so go get the job done! %NPC_NAME(1) in %NPC_WORLD(1) if you forgot.")
				SAY("%NPC_NAME(1) hasn't buzzed me with a nice 'Thanks for the package' message, so you can't be done yet. Get going!")
				SAY("What the hell are you hanging around here for? Go find your target in %NPC_WORLD(1)!")
				ENDDIALOG()
			else
				SAY("I mark em off the list, and the new ones pop up. Sometimes I feel like a full replic AI that got stuck on figuring out a kid's algebra homework. But listen to me bitch, you are probably more interested in your money. Here you go, %REWARD_MONEY() credits. Remember to check with the Guardian first if you want another job.")
				SAY("Well, there's one more scratched off the list. There are also %REWARD_MONEY() more credits in your account for the work. Thanks for helping the Guardian out, friend!")
				SAY("No matter how good our computers get, it always seems to boil down to face time. Not that I am complaining! With all those hotshot netRunners flying around, I wouldn't trust a fully integrated job system any more than CityAdmin official's press releases. But look at you, you probably have work to get done. Here are %REWARD_MONEY() credits for the delivery, and be sure to check with the Guardian if you need more jobs.")
				SAY("Hunh?! Oh! Sorry... drifted off there. This damn job is making me too soft! If I'd pulled that in a hot comzone then I would be carrying half my guts home in a backpack, assuming there was anything left. Some of those damn new weapons... Well, here are %REWARD_MONEY() credits for the work, and remember to keep your ears open. The revolution will come!")
				SAY("Good, I just got the confirmation message from %NPC_NAME(1). As for your money... there. I just transferred %REWARD_MONEY() credits into your account. Thanks for helping out the Guardian friend, we need more people with a sense of morals like you.")
				SAY("Which one were you? %NPC_NAME(1) in %NPC_WORLD(1)? Okay, good then. I got a confirmation from the other end a few minutes ago. Here are your credits, %REWARD_MONEY() to be exact. Now you will have to excuse me, there is always more work.")
				ACTIVATEDIALOGTRIGGER(2)
				ENDDIALOG()
			end
	NODE(3)
		TAKEQUESTITEM(91)
			if (result==0) then
				SAY("Don't tell me you forgot my package!")
				SAY("If I don't see that package real quick-like, you're going to be seeing right through your stomach.")
				SAY("If you dropped my package then what the hell are you doing here? Go out and get it!")
				ENDDIALOG()
			else	
				SAY("Is that the package from the Guardian? Great! They told me no one was free for a delivery, but I guess you took the job. Thanks again, and I feel bad I don't have any credits for you. I guess your contact should have money for you though, so I will let you get back there and get paid.")
				SAY("Phew... when they told me no one could deliver it, I thought I would be waiting for weeks. Thanks for speeding things up, and I am sure your contact has some creds waiting for you.")
				SAY("Good, the package. Is %NPC_NAME(0) still coordinating the deliveries for the Guardian? Ha! Oh, we go back a ways... but you prolly have some credits to pick up, so don't let me slow you down with my stories.")
				SAY("Thank you. Chatting would be the polite thing to do, but I am a bit busy at the moment. And if I remember anything from my freelance days, you will be wanting to get back and pick up your credits anyway. I just sent a message to %NPC_NAME(0) when I saw you walking up, so your credits should be waiting for you.")
				SAY("Right on! You will have to excuse me if I'm a bit brief, but I have some very delicate work that requires constant attention. Don't worry about your pay either. I promise I will send a message to %NPC_NAME(0) with the confirmation tag. Your credits should be waiting for you when you get there.")
				SAY("Ah! A freelance Runner. Guess all the Guardian were busy with something. Anyway, I'll send %NPC_NAME(0) the confirmation number on your way back, so the credits for this one should be waiting.")
				ACTIVATEDIALOGTRIGGER(1)
				SETNEXTDIALOGSTATE(5)
				ENDDIALOG()
			end
	NODE(4)
		SAY("Mighty sorry to hear that. Be sure to register and come by if you change your mind though.")
		SAY("Those netRunners told me they had someone lined up. I sure hope whoever it is pops up soon though. Sorry for mistaking you.")
		SAY("Well, if you are not the registered Runner then I am gonna have to say bye. Gotta keep my eyes peeled so I don't miss the the real one.")
		ENDDIALOG()
	NODE(5)
		SAY("What the hell do you want here? I got the packet, now go back to %NPC_NAME(0) to recieve your reward.")
		SAY("Thanks for delivering this package but go now back to %NPC_NAME(0) to recieve your reward.") 
		ENDDIALOG()
end