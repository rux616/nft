--************************
--name   : SINGLE_AS_TG_02.lua
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
		GENDERCHECK()
			if (result==1) then
				SAY("Hello mister. Anything I can help you with?")
				SAY("Hi, can I help you with something, man?")
				SAY("Money can't buy time, and that's what I am wasting talking to you. You want something?")
				SAY("Hmmm... you look a lot like the picture of the Runner I got. Whatcha want?")
				SAY("Looking for anything in particular sir, perhaps some information?")
				SAY("I only got one thing if you are looking for trouble, a damn big pistol. On the other hand, if you are looking for information I might be able to help you.")
				
				ANSWER("I was called in for a sensitive matter that my employers wanted gone. Are you the contact I was supposed to meet?",2)
				ANSWER("Talking falls short sometimes, then they call me. Are you the controller for this one?",2)
				ANSWER("Someone has a problem. They offer me credits, and the problem goes away. Are you my contact?",2)
				ANSWER("Sorry, I thought you were someone else.",1)
				ANSWER("Mistaken identity, you aren't the person that I was looking for.",1)
				ANSWER("Oops, I think I made a wrong turn somewhere.",1)
			else
				SAY("Hey babe. Anything I can help you with?")
				SAY("Hi, can I help you with something lady?")
				SAY("Money can't buy time, and that's what I am wasting talking to you. You want something?")
				SAY("Hmmm... you look a lot like the picture of the Runner I got. Whatcha want?")
				SAY("Looking for anything in particular babe, perhaps some information?")
				SAY("I only got one thing if you are looking for trouble, a damn big pistol. On the other hand, if you are looking for information I might be able to help you.")
			
				ANSWER("I was called in for a sensitive matter that my employers wanted gone. Are you the contact I was supposed to meet?",2)
				ANSWER("Talking falls short sometimes, then they call me. Are you the controller for this one?",2)
				ANSWER("Someone has a problem. They offer me credits, and the problem goes away. Are you my contact?",2)
				ANSWER("Sorry, I thought you were someone else.",1)
				ANSWER("Mistaken identity, you aren't the person that I was looking for.",1)
				ANSWER("Oops, I think I made a wrong turn somewhere.",1)
			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Man, you're lucky we keep things general until both sides confirm, otherwise it could have been very unhealthy for you.")
				SAY("Good, you don't look like you have the experience for this kind of run.")
				SAY("Be careful who you talk to around here man. If this had been a deep run you'd be waking up in a generep right now and wondering what the hell happened.")
				ENDDIALOG()
			else
				SAY("Babe, you're lucky we keep things general until both sides confirm, otherwise it could have been very unhealthy for you.")
				SAY("Good, you don't look like you have the experience for this kind of run.")
				SAY("Be careful who you talk to around here lady. If this had been a deep run you'd be waking up in a generep right now and wondering what the hell happened.")
				ENDDIALOG()
			end
	NODE(2)
		SAY("Yeah, I am the handler you were supposed to meet. Okay, here's the intel I have for you. Lately, the Guardian has been having problems major in %NPC_WORLD(1). These disturbances have thrown a wrench in several active operations and have forced us to put the rest on hold. All of the disturbances are linked to a certain %NPC_NAME(1). We must have this taken care of quickly, or all of our ops in %NPC_WORLD(1) are in jeopardy. Go take out the target and then make your way back here. And trust me Runner, the Guardian will make it worth your time.")
		SAY("Yes, I've been waiting here for a Runner. Earlier today I picked up a file from a dead drop. I won't bore you with the details, but the relevant facts are that you need to make %NPC_NAME(1) disappear. The intel I got also suggests %NPC_WORLD(1) as the last confirmed location. This one is black, so the Guardian can't move any other assets in to help you. It's just you on this one. Take out the target, quiet and quick, and then come see me. I'll have creds waiting for you. Now get going and good luck.")
		SAY("Good, you know how these things work. I got a message telling me to meet a Runner here and transfer some information, guess that's you. The target for this op is %NPC_NAME(1) and the last known location is %NPC_WORLD(1). Our intel boys say that should still be the place to start looking. Once the matter is successfully concluded at your end, come see me and I'll pay your for your services.")
		SAY("Yup, you pegged me. The file on this one is pretty skimpy. It seems a certain %NPC_NAME(1) messed with some highly connected Guardians. They set up a meeting in %NPC_WORLD(1), only you're the one that is gonna show up. Six the target, then swing back by here to pick up your credits.")
		SAY("I'll be managing your support for this operation, which pretty much means just intel seeing as you will be going in alone. The target's name is %NPC_NAME(1). Why your employers want the target flatlined shouldn't concern you; the fewer questions you ask the better. I also tapped some personal resources and narrowed the location down to %NPC_WORLD(1). Get there, scout around until you get a visual, then smoke the target as soon as you two are alone. Remember, this matter needs to be handled quietly. Anyway, after you finish the hot side of the operation track back here and we will even up the financial aspects.")
		SAY("You got it, Runner. Guardian intel sent me out here with the details for you. Your target is named %NPC_NAME(1). This individual has been, how shall we say... a thorn in the side of the Guardian for a while. However, we recently received a tip that the target was hanging around %NPC_WORLD(1). Your mission is to go scout around, visually confirm the target, then make it real lethal like. Rez me? After the target is down, come see me for a debriefing and we will even up the credits.")
		SETNEXTDIALOGSTATE(3)
		ENDDIALOG()
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				GENDERCHECK()
					if (result==1) then
						SAY("Look man, that is all I can tell you. The rest of the mission is up to you.")
						SAY("Sorry dude, but I'm a noncom. The rest is up to you.")
						SAY("Runner , there is one thing you should know about this business by now. Asking too many questions leads to getting too many answers. People that know too many answers find themselves testing just how close to death you can get before the g reps kick in.")
					else
						SAY("Look lady, that is all I can tell you. The rest of the mission is up to you.")
						SAY("Sorry babe, but I'm a noncom. The rest is up to you.")
						SAY("Runner, there is one thing you should know about this business by now. Asking too many questions leads to getting too many answers. People that know too many answers find themselves testing just how close to death you can get before the g reps kick in.")
					end
				ENDDIALOG()
			else
				GENDERCHECK()
					if (result==1) then
						SAY("Excellent, I just got news that the target is confirmed down. Here is your fee, %REWARD_MONEY() credits. You did real good on this one man, and the Guardian always needs good people. Check us if you need some more credits.")
						SAY("Our netRunners just backdoored into the generep db and watched %NPC_NAME(1)'s vitals go flat a couple minutes ago. Utter choice work my man! You sure earned these %REWARD_MONEY() credits. Look the Guardian up if you want another run too, with your record you'll be the go to man.")
						SAY("Now that was a slick piece of work man. Someone at intel was kind enough to splice me into a live video feed of the target. Hot damn boy, these %REWARD_MONEY() credits are well deserved. I put in a comment on your dossier too, so check back with the Guardian anytime. I'm sure we will have something waiting for you.")
						SAY("Ah, back so soon? No, don't worry. I just got the confirmation tag a couple minutes ago. Here is your reward for a successful mission, %REWARD_MONEY() credits. Now scram, yours ain't the only run I'm working out here.")
						SAY("Ha! There is gonna be one surprised cleanup crew in %NPC_WORLD(1) after the mess you made of %NPC_NAME(1). The Guardian got off easy only paying you %REWARD_MONEY() credits for this one. Check back after these creds disappear too. With your file the Guardian should easily be able to find another job for you.")
						SAY("We just got feedback from a Guardian agent that happened to be in the area. It seems you did a real good job with this run. Keep this level of work up and you could have a real future with us. Oh, and here are the %REWARD_MONEY() credits for the work.")
						ACTIVATEDIALOGTRIGGER(1)
						ENDDIALOG()
					else
						SAY("Excellent, I just got news that the target is confirmed down. Here is your fee, %REWARD_MONEY() credits. You did real good on this one chica, and the Guardian always needs good people. Check us if you need some more credits.")
						SAY("Our netRunners just backdoored into the generep db and watched %NPC_NAME(1)'s vitals go flat a couple minutes ago. Utter choice work babe! You sure earned these %REWARD_MONEY() credits. Look the Guardian up if you want another run too, with your record you'll be the go to girl.")
						SAY("Now that was a slick piece of work lady. Someone at intel was kind enough to splice me into a live video feed of the target. Hot damn babe, these %REWARD_MONEY() credits are well deserved. I put in a comment on your dossier too, so check back with the Guardian anytime. I'm sure we will have something waiting for you.")
						SAY("Ah, back so soon? No, don't worry. I just got the confirmation tag a couple minutes ago. Here is your reward for a successful mission, %REWARD_MONEY() credits. Now scram, yours ain't the only run I'm working out here.")
						SAY("Ha! There is gonna be one surprised cleanup crew in %NPC_WORLD(1) after the mess you made of %NPC_NAME(1). The Guardian got off easy only paying you %REWARD_MONEY() credits for this one. Check back after these creds disappear too. With your file the Guardian should easily be able to find another job for you.")
						SAY("We just got feedback from a Guardian agent that happened to be in the area. It seems you did a choice job with this run. Keep this level of work up and you could have a real future with us. Oh, and here are the %REWARD_MONEY() credits for the work.")
						ACTIVATEDIALOGTRIGGER(1)
						ENDDIALOG()
					end
			end
end
