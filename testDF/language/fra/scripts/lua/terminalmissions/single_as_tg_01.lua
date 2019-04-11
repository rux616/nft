--************************
--name   : SINGLE_AS_TG_01.lua
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
				SAY("Hunh... You really don`t look like the type. Whatcha want?")
				SAY("Can I help you with something, stranger?")
				SAY("Look, I`m a busy man. What`s yer business here?")
				SAY("Okay, now here`s the latest mug we have... wait, what are you here for?")
				SAY("Hey man, can I help you with something? Hook a little information maybe?")
				SAY("Well, it looks like you`re already packin. Is there anything I could help you with... something that might use that weapon?")
				
				ANSWER("I`m here about a message I got from a mutual friend. What can you tell me about my dancing partner?",2)
				ANSWER("I need information about someone who pissed off a friend with money, can you help me out?",2)
				ANSWER("Some people on the net contacted me about employment of my 'skills'. I need some information about the target.",2)
				ANSWER("I think you`ve got the wrong person.",1)
				ANSWER("Umm... Look, I don`t think I`m the person you`re looking for.",1)
				ANSWER("I must have taken a wrong turn somewhere.",1)
			else
				SAY("Hunh... You really don`t look like the type. Whatcha want?")
				SAY("Can I help you with something babe?")
				SAY("Look, I`m a busy man. Yeh got business here?")
				SAY("Okay, now here`s the latest mug we have... wait, what are you here for?")
				SAY("Hey lady, looking for something? Maybe trying to hook into a little info?")
				SAY("Well, it looks like you`re already packin. Is there anything I could help you with... something that might use that weapon?")				
				ANSWER("I`m here about a message I got from a mutual friend. What can you tell me about my dancing partner?",2)
				ANSWER("I need information about someone who pissed off a friend with money, can you help me out?",2)
				ANSWER("Some people on the net contacted me about employment of my 'skills'. I need some information about the target.",2)
				ANSWER("I think you`ve got the wrong person.",1)
				ANSWER("Umm... Look, I don`t think I`m the person you`re looking for.",1)
				ANSWER("I must have taken a wrong turn somewhere.",1)
			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Well, man, that`s too bad now isn`t it? See you later then.")
				SAY("That makes sense. You really don`t have the look in your eyes that most of them do.")
				SAY("Okay, but be a little more careful in the future who you talk to though, some of my counterparts don`t have the tolerance for loose ends that I do.")
				ENDDIALOG()
			else
				SAY("Well, lady, that`s too bad now isn`t it? See you later then.")
				SAY("That makes sense. You really don`t have the look in your eyes that most of them do.")
				SAY("Okay, but be a little more careful in the future who you talk to though, some of my counterparts don`t have the tolerance for loose ends that I do.")
				ENDDIALOG()
			end
	NODE(2)
		GENDERCHECK()
			if (result==1) then
				SAY("Excellent, I guess you`re the guy we were looking for. Okay, I got a name and a place for you. That`s it. The rest of the deal is up to you and I think you have a pretty damn good idea of what we expect. The target is %NPC_NAME(1) and should be found in %NPC_WORLD(1) according to our latest intel. Do your job... quietly, and then return here and I`ll debrief you.")
				SAY("Well, information I have, and it looks like you're well equipped to do something with that info. The file I got lists %NPC_NAME(1) as the target and %NPC_WORLD(1) as the place. Standard methods apply to this operation. We want a quiet, confirmed takedown. Then return here for a debriefing. And pal, asking around about anything to do with this job would be very... very bad for your health. Remember, you only get g rep'ed if you die, and that can take a very long time.")
				SAY("Good, you seem like a professional. We've had to work with far too many new runners who couldn't define discreet with a built in RPOS dictionary. The target for this one is %NPC_NAME(1), should be in %NPC_WORLD(1) unless something major changed. Standard methods for a cloaked run apply. After you finish your work, come back here for a debriefing. And remember, this isn't a job to go brag about at Club V afterwards.")
				SAY("That's real good, because I've been waiting with some intel for a good runner. I picked up a blank drop in my message box earlier today. It just had two lines %NPC_NAME(1) and %NPC_WORLD(1). I figure you have a pretty good idea of what to do with that information. A word to the wise though, I've seen a few black runs, and the higher ups never like to read about them in the next day's screamsheets. So try and keep it quiet out there, and after you get done make sure you drop back here and get debriefed.")
				SAY("I guess you are the runner the message mentioned then. Okay, the target for this one is %NPC_NAME(1), and should be found in %NPC_WORLD(1). Like most of these types of operations, try to keep it quiet. It's a lot easier for everyone involved that way. Including you. Anyway, after you are sure the target isn't getting back up, come back here and I'll debrief you.")
				SAY("That drop this morning makes a lot more sense then. There hasn't been one in awhile, and I was beginning to think the desk jockeys forgot about the more subtle combat options. Okay runner, your target for this one is named %NPC_NAME(1). The intel I got also lists %NPC_WORLD(1) as a good place to start looking. After you track the target down and do your stuff, make sure you come back here for your debriefing. And runner, go out there and make a quiet riot, I'll see you when you're done man.")
				SETNEXTDIALOGSTATE(3)
				ENDDIALOG()
			else
				SAY("Excellent, I guess you're the guy we were looking for. Okay, I got a name and a place for you. That's it. The rest of the deal is up to you and I think you have a pretty damn good idea of what we expect. The target is %NPC_NAME(1) and should be found in %NPC_WORLD(1) according to our latest intel. Do your job... quietly, and then return here and I'll debrief you.")
				SAY("Well, information I have, and it looks like you're well equipped to do something with that info. The file I got lists %NPC_NAME(1) as the target and %NPC_WORLD(1) as the place. Standard methods apply to this operation. We want a quiet, confirmed takedown. Then return here for a debriefing. And pal, asking around about anything to do with this job would be very... very bad for your health. Remember, you only get g rep'ed if you die, and that can take a very long time.")
				SAY("Good, you seem like a professional. We've had to work with far too many new runners who couldn't define discreet with a built in RPOS dictionary. The target for this one is %NPC_NAME(1), should be in %NPC_WORLD(1) unless something major changed. Standard methods for a cloaked run apply. After you finish your work, come back here for a debriefing. And remember, this isn't a job to go brag about at Club V afterwards.")
				SAY("That's real good, because I've been waiting with some intel for a good runner. I picked up a blank drop in my message box earlier today. It just had two lines %NPC_NAME(1) and %NPC_WORLD(1). I figure you have a pretty good idea of what to do with that information. A word to the wise though, I've seen a few black runs, and the higher ups never like to read about them in the next day's screamsheets. So try and keep it quiet out there, and after you get done make sure you drop back here and get debriefed.")
				SAY("I guess you are the runner the message mentioned then. Okay, the target for this one is %NPC_NAME(1), and should be found in %NPC_WORLD(1). Like most of these types of operations, try to keep it quiet. It's a lot easier for everyone involved that way. Including you. Anyway, after you are sure the target isn't getting back up, come back here and I'll debrief you.")
				SAY("That drop this morning makes a lot more sense then. There hasn't been one in awhile, and I was beginning to think the desk jockeys forgot about the more subtle combat options. Okay runner, your target for this one is named %NPC_NAME(1). The intel I got also lists %NPC_WORLD(1) as a good place to start looking. After you track the target down and do your stuff, make sure you come back here for your debriefing. And runner, go out there and make a quiet riot, I'll see you when you're done girl.")
				SETNEXTDIALOGSTATE(11)
				ENDDIALOG() 
			end
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				SAY("I don't have any other information for you.")
				SAY("Look, I already told you all the stuff I got. It's your job now.")
				SAY("You keep asking questions and you might start getting answers. And trust me, you don't want answers.")
				ENDDIALOG()
			else
				GENDERCHECK()
					if (result==1) then
						SAY("You done? Good. The Guardian really needs more experienced people like you. %REWARD_MONEY() credits, the standard rate, are in your account now. And if ya need more cash... or yer trigger finger gets cramped, make sure to come back and check with the Guardian first. We like to retain people of your caliber.")
						SAY("Now that was a good piece of work. I haven't heard even the faintest whisper on the streets about your job. You really earned these %REWARD_MONEY() credits. If you need another one, just go check the terminals. I'm sure the Guardian has other ways you could help out, especially with your skills.")
						SAY("Ah, you're back! I wish they were all as professional as you. Here are the %REWARD_MONEY() credits for the job. And man, if you need another job make sure to check the terms. The Guardian always needs people that recognize discretion is an asset.")
						SAY("Glad to see you again. I presume the matter we discussed... ah, great. Well, with the job come the rewards. There are %REWARD_MONEY() more credits in your account now. Make sure to look us up if you want a job later too. These days it seems that the Guardian always has matters that require a... firmer hand.")
						SAY("Hello. Say, you're that guy that I sent on the quiet one aren't you. Well, I guess everything worked out. Here are %REWARD_MONEY() credits for the work. Make sure to check back on the terminals if you want some more work of the same type. I'm sure the Guardian could find something for you.")
						SAY("Well well, I expected to see you again soon. I just got word from some of our other assets of your success. I trust %REWARD_MONEY() creds will be enough for the job, and for your continued silence in the matter? Good. And man, the Guardian always needs people who can keep quiet. Look us up if you want another job.")
						ACTIVATEDIALOGTRIGGER(1)
						ENDDIALOG()
					else
						SAY("You done? Good. The Guardian really needs more experienced people like you. %REWARD_MONEY() credits, the standard rate, are in your account now. And if ya need more cash... or yer trigger finger gets cramped, make sure to come back and check with the Guardian first. We like to retain people of your caliber.")
						SAY("Now that was a good piece of work. I haven't heard even the faintest whisper on the streets about your job. You really earned these %REWARD_MONEY() credits. If you need another one, just go check the terminals. I'm sure the Guardian has other ways you could help out, especially with your skills.")
						SAY("Ah, you're back! I wish they were all as professional as you. Here are the %REWARD_MONEY() credits for the job. And lady, if you need another job make sure to check the terms. The Guardian always needs people that recognize discretion is an asset.")
						SAY("Glad to see you again. I presume the matter we discussed... ah, great. Well, with the job come the rewards. There are %REWARD_MONEY() more credits in your account now. Make sure to look us up if you want a job later too. These days it seems that the Guardian always has matters that require a... firmer hand.")
						SAY("Hello. Say, you're that babe that I sent on the quiet one aren't you. Well, I guess everything worked out. Here are %REWARD_MONEY() credits for the work. Make sure to check back on the terminals if you want some more work of the same type. I'm sure the Guardian could find something for you.")
						SAY("Well well, I expected to see you again soon. I just got word from some of our other assets of your success. I trust %REWARD_MONEY() creds will be enough for the job, and for your continued silence in the matter? Good. And babe, the Guardian always needs people who can keep quiet. Look us up if you want another job.")
						ACTIVATEDIALOGTRIGGER(1)
						ENDDIALOG()
					end
			end
end
