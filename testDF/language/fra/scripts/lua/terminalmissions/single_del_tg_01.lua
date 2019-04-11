--************************
--name   : SINGLE_DEL_TG_01.lua
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
		SAY("Well, you look like a fast enough Runner; ya here about the delivery job?.")
		SAY("About damn time. You the Runner?")
		SAY("Look kid, my to-do file is bigger than Reza`s ego, so scram. Oh! Unless you`re here about the delivery job?")
		SAY("Hello, you wouldn`t happen to be the Runner would ya?")
		SAY("Hi, you had better be the Runner or my boss is gonna have my ass.")
		SAY("You look the typical pop n drop type, ya here about the job?")
		
		ANSWER("Yeah, I`m the Runner. Just give me the package and delivery point and I`m gone.",1)
		ANSWER("Bingo. Drop the cargo and flash me the details.",1)
		ANSWER("Yes, I`m here for the job. Just give me the package and the place.",1)
		ANSWER("Sorry, wrong chumba for you.",4)
		ANSWER("Find someone else, I don`t have the time.",4)
		ANSWER("Look, I don`t deliver.",4)
	NODE(1)
		GIVEQUESTITEM(91)
		SAY("Groove. Here`s your cargo; drop it by %NPC_NAME(1) in %NPC_WORLD(1) real superfly like. After that, tail it back to here and you`ll get yer pay. And chumba, if you skip with this the Guardian ain`t gonna forget yer face.")
		SAY("Ha! As soon as you new Runners get tanked up ya'll think you can run around acting like a FragDuke4.0. Let me tell you something - run a cocky tude like that and the one thing you`ll get is a g rep trip, one way. I been fighting for Neocron since you were still soygop, so cut the netshow flash... got it? Luckily, even you shouldn`t have a problem with this job. Grab this package, take it to %NPC_NAME(1) in %NPC_WORLD(1), then trace back to here and collect your money. Easy enough?")
		SAY("This is an easy one. %NPC_NAME(1) is waiting for you in %NPC_WORLD(1). All you need to do is take this package, drop it off, and then come see me for yer cash. And don`t even think of selling that, Reza may own the streets, but there ain`t a copbot on every corner.")
		SAY("The Guardian needs more people as willing to help as you. Okay, there is someone by the name of %NPC_NAME(1), works in %NPC_WORLD(1). I need you to take this package there and drop it off. The creds will be waiting here with me when you`re done.")
		SAY("Okay, the addy on the pack reads %NPC_NAME(1). Look around %NPC_WORLD(1), find em and deliver the package, then come back and see me for your credits. And if this package ain`t there in an hour, yer name is gonna be in the next list of Guardian members our double agent turns over to CityAdmin.")
		SAY("This is a hot one. Get your ass over to %NPC_WORLD(1) like a warbot is after you, then find %NPC_NAME(1) and drop the package off. Remember, real crucial stuff, 10-4? After you`ve relieved yourself of the package, I`m sure that the Guardian will be grateful. Come see me and I`ll hook you up with some compensation.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(1)
			if (result==0) then
				SAY("Look, last time I checked that package didn`t have legs of its own, so get going!")
				SAY("What the hell are you still doing here? We need that package delivered, now go do your job!")
				SAY("Club Veronique can wait until later! Go deliver that damn package!")
				ENDDIALOG()
			else
				SAY("Phew, that`s a load off me. Take %REWARD_MONEY() credits for your troubles. Thanks for helping the Guardian out chumba.")
				SAY("Finally I can get my boss to stop yelling at me! Here, have %REWARD_MONEY() credits for the delivery. Now, I would love to chat but I`ve got work to do.")
				SAY("Well, there`s one more done. %REWARD_MONEY() creds more in your account too, now let me get back to work. The revolution won`t start itself.")
				SAY("Great, maybe my superiors will stop bitching at me now. Oh yeah, here are %REWARD_MONEY() credits for the work. Freedom to the people!")
				SAY("Like I promised, here are %REWARD_MONEY() credits. And thanks for helping out the Guardian, you should sleep better knowing that you`re working against that monster Lioon.")
				SAY("About damn time, I could have gotten it there faster by hiring a paraplegic dwarf. But a deal is a deal - %REWARD_MONEY() credits in your account. Now get outta my sight!!")
				ACTIVATEDIALOGTRIGGER(2)
				ENDDIALOG()
			end
	NODE(3)
		TAKEQUESTITEM(91)
			if (result==0) then
				SAY("Where the hell is the damn packet? Don`t bother me unless you`ve got it.")
				SAY("Look, I need that package, now go run and get it before I make another hole in your face!")
				SAY("I don`t know what kind of game you are playing, but this ain`t NeoFrag, now go get the damn package before I get pissed!")
				ENDDIALOG()
			else	
				SAY("Score! I`ve been waiting for this. Thanks for delivering it, friend, and I`m sure %NPC_NAME(0) has some money for your help.")
				SAY("Perfect. I needed that to finish up, thanks for the delivery. %NPC_NAME(0) probably has some credits waiting for you.")
				SAY("Ah, that must be the package from %NPC_NAME(0). Thanks for helping out, now I have to get back to work; there always seems to be more. Oh, and I assume that there are some credits waiting for you with that old scoundrel.")
				SAY("Hello, who are you? Oh, the package. Wow, you made pretty good time. Anyways, I am sure you have more important things to do than talk to me. %NPC_NAME(0) should have a reward for you.")
				SAY("The deliveryman! You can`t understand how long I`ve been waiting for this package, so you`ll have to excuse me if I don`t stop to chat. Anyway, I am sure that you`re more interested in going to see %NPC_NAME(0) and picking up your pay.")
				SAY("Took you guys long enough to get it delivered. But at least it got here, even though I have seen turtles in the zoo that move faster - and four legged ones at that. %NPC_NAME(0) probably has credits for you or something.")
				ACTIVATEDIALOGTRIGGER(1)
				SETNEXTDIALOGSTATE(5)	
				ENDDIALOG()
			end
	NODE(4)
		SAY("Great, people stop by and bother me every minute of the day, but none of them want to help out.")
		SAY("Well, if you change your mind then I`ll be waiting.")
		SAY("Fine, but you had better hurry and get outta my sight before I remember where I put my pistol.")
		ENDDIALOG()
	NODE(5)
		SAY("What the hell do you want here? I got the packet, now go back to %NPC_NAME(0) to recieve your reward")
		SAY("Thanks for delivering this package. Now go back to %NPC_NAME(0) to recieve your reward.") 
		ENDDIALOG()
end
