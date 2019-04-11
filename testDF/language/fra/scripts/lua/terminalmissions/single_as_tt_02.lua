--************************
--name   : SINGLE_AS_TT_02.lua
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
				SAY("Can I help you with something, sir?")
				SAY("Are you looking for anything that I could help you with, sir? Tangent offers a full line of fine products.")
				SAY("I'm sure a Tangent customer rep could help you with any problem you have. I happen to be a little busy at the moment.")
				SAY("You looking for anything in particular? I don't have anything on my person, but I can tell you where the nearest Tangent store is.")
				SAY("Look chumba, at the moment I'm on a job. When it goes down, you really don't want to be anywhere around. Get me?")
				SAY("Man, I'm not the typical Tangent salesman. Just go to one of our stores if you need service.")

				ANSWER("I'm not interesting in buying anything. Using was always more my style. Are you my contact?",2)
				ANSWER("Easy, all I want is some information. Are you the contact for a Tangent black op?",2)
				ANSWER("I'm not interesting in shopping right now. I might be in the market for some ammo afterwards, if you catch me. You the contact?",2)
				ANSWER("Sorry, I thought you were someone else. Must have been pulling too much termtime lately.",1)
				ANSWER("Whups, wrong person. I really need to lay off those boosts.",1)
				ANSWER("I think I made a wrong turn somewhere. See you later.",1)

			else
				SAY("Can I help you with something ma'am?")
				SAY("Are you looking for anything that I could help you with ma'am? Tangent offers a full line of fine products.")
				SAY("I'm sure a Tangent customer rep could help you with any problem you have. I happen to be a little busy at the moment.")
				SAY("You looking for anything in particular? I don't have anything on my person, but I can tell you where the nearest Tangent store is.")
				SAY("Look chumbata, at the moment I'm on a job. When it goes down, you really don't want to be anywhere around. Get me?")
				SAY("Lady, I'm not the typical Tangent salesman. Just go to one of our stores if you need service.")

				ANSWER("I'm not interesting in buying anything. Using was always more my style. Are you my contact?",2)
				ANSWER("Easy, all I want is some information. Are you the contact for a Tangent black op?",2)
				ANSWER("I'm not interesting in shopping right now. I might be in the market for some ammo afterwards, if you catch me. You the contact?",2)
				ANSWER("Sorry, I thought you were someone else. Must have been pulling too much termtime lately.",1)
				ANSWER("Whups, wrong person. I really need to lay off those boosts.",1)
				ANSWER("I think I made a wrong turn somewhere. See you later.",1)
			end
	NODE(1)	
		SAY("Sorry to hear that. Be sure to check out your nearest Tangent shop though.")
		SAY("Really? Good, you didn't look like the type I'd like to work with anyway.")
		SAY("I can always peg the strollers from the Runners. Have a nice day friend.")
		ENDDIALOG()
	NODE(2)
		GENDERCHECK()
			if (result==1) then
				SAY("Perfect, then you are the guy I've been waiting for. You'd be amazed how many people just want to stop and chat. Anyway, earlier today Tangent recon assets located a certain target in %NPC_WORLD(1) that we thought was already killed. It seems a new name got registered too, %NPC_NAME(1). Intel thinks some hacker got creds to change it, but rest assured that it is the target. You're being paid to change his status back to deceased, and then keep quiet about it. Understand?")
				SAY("Yes, I'm the contact you were supposed to meet. Tangent sent me out here to pass along a name and a location to you: %NPC_NAME(1), probably in %NPC_WORLD(1). This is a quick and dirty job. Get in, ID the target, earn your pay, and then make it back here. Oh, and if I see you being followed on the way back, I'm gone.")
				SAY("Good, guess you're the Runner. And yeah, I'm the intel monkey you were sent to meet. Here's the run. Tangent needs a certain former associate by the name of %NPC_NAME(1) out of the picture. Make your way to %NPC_WORLD(1) and find the target. Then do what we're paying you for... without attracting too much attention, and come find me for your payment.")
				SETNEXTDIALOGSTATE(3)
				ENDDIALOG()
			else
				SAY("Perfect, then you are the lady I've been waiting for. You'd be amazed how many people just want to stop and chat. Anyway, earlier today Tangent recon assets located a certain target in %NPC_WORLD(1) that we thought was already killed. It seems a new name got registered too, %NPC_NAME(1). Intel thinks some hacker got creds to change it, but rest assured that it is the target. You're being paid to change his status back to deceased, and then keep quiet about it. Understand?")
				SAY("Yes, I'm the contact you were supposed to meet. Tangent sent me out here to pass along a name and a location to you: %NPC_NAME(1), probably in %NPC_WORLD(1). This is a quick and dirty job. Get in, ID the target, earn your pay, and then make it back here. Oh, and if I see you being followed on the way back, I'm gone.")
				SAY("Good, guess you're the Runner. And yeah, I'm the intel monkey you were sent to meet. Here's the run. Tangent needs a certain former associate by the name of %NPC_NAME(1) out of the picture. Make your way to %NPC_WORLD(1) and find the target. Then do what we're paying you for... without attracting too much attention, and come find me for your payment.")
				SETNEXTDIALOGSTATE(3)
				ENDDIALOG() 
			end
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				SAY("Look, you don't back out on us. Just because we're corporate doesn't mean we don't have ways of making people disappear. Now go finish the run.")
				SAY("Yes? I told you everything you need to know. Now get going, or we'll go find someone who can do the job.")
				SAY("Look, jobs like this are always pretty hush for corps, so it would be better if you just did the work and didn't ask questions.")
				ENDDIALOG()
			else
				GENDERCHECK()
					if (result==1) then
						SAY("I must say, I like your work man. You might just have a future with Tangent. And trust me, we have plenty to offer. But let's settle up on this run first, %REWARD_MONEY() credits wasn't it? Okay, they're deposited in your account now. Nice working with you.")
						SAY("Excellent job, some of our sources informed us of you success. Here's %REWARD_MONEY() credits, and you deserve it. Be sure to drop by Tangent if you need more gear too. I'm sure we could find something for you.")
						SAY("That was a nice run you had, buddy. Oh trust me, we have our ways of knowing. That's one of the first lessons for corporates: someone is always watching. Anyway, I just deposited the %REWARD_MONEY() credits in your account, they should be showing up anytime now. And make sure to check back with Tangent for more work. We don't do as much of this kind of thing as some of the other groups, but I'm sure we'll have need for your services again.")
						ACTIVATEDIALOGTRIGGER(1)
						ENDDIALOG()
					else
						SAY("I must say, I like your work lady. You might just have a future with Tangent. And trust me, we have plenty to offer. But let's settle up on this run first, %REWARD_MONEY() credits wasn't it? Okay, they're deposited in your account now. Nice working with you.")
						SAY("Excellent job, some of our sources informed us of you success. Here's %REWARD_MONEY() credits, and you deserve it. Be sure to drop by Tangent if you need more gear too. I'm sure we could find something for you.")
						SAY("That was a nice run you had, baby. Oh trust me, we have our ways of knowing. That's one of the first lessons for corporates: someone is always watching. Anyway, I just deposited the %REWARD_MONEY() credits in your account, they should be showing up anytime now. And make sure to check back with Tangent for more work. We don't do as much of this kind of thing as some of the other groups, but I'm sure we'll have need for your services again.")
						ACTIVATEDIALOGTRIGGER(1)
						ENDDIALOG()
					end
			end
end
