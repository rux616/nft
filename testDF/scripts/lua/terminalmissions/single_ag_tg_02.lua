--************************
--name   : SINGLE_AG_TG_02
--ver    : 0.1
--author : Kintama
--date   : 2004/09/08
--lang   : en
--desc   : terminal mission
--npc    : 
--************************
--changelog:
--2004/09/08(0.1): Added description
--************************

function DIALOG()

	NODE(0)
		SAY("Look pal, you here for the job or not?")
		SAY("Make it snappy, whatcha want?")
		SAY("You better have a damn good reason for bothering me.")
		SAY("Now over here we have... oh wait, I forgot. I`m not a tour guide. What the hell do you want?")
		SAY("Time is money friend, and I ain`t got much of either. Whatcha want?")
		SAY("Hmmm... you seem like the enterprising type. You wanna know about the job?")
		
		ANSWER("I`m here for the job. What exactly does it require?",1)
		ANSWER("Just tell me the details about the work and I`ll be out of here ASAP.",1)
		ANSWER("I`m looking for a contact for an extermination job. If that`s you, then I need the info.",1)
		ANSWER("Well, I guess you aren`t the person I was looking for then.",4)
		ANSWER("Guess I wasted your time, wrong person.",4)
		ANSWER("Oops, looking for someone else.",4)
	NODE(1)
		SAY("Great! Grand! SUPER! Here`s your mission, jackass. Go look around the local area and find %TARGET_VALUE(0,1) of %TARGET_NPCNAME(0). Take them out. Then, as much as it pains me to say this, come back here and I`ll give you your reward.")
		SAY("Why the hell did it have to be me? I volunteered for intel, but nooo. Those dumbass Guardian administrators thought I had an anger problem! I`ll show them freaking anger!! ... Oh, you still here? Well, go kill %TARGET_VALUE(0,1) of %TARGET_NPCNAME(0), they shouldn`t be too hard to find around here. And chumba, I want this job done yesterday. Rez me punk? Don`t forget to come by after you`re done either.")
		SAY("I needed someone to take out those assholes a couple of days ago. A little frikkin late aren`t you? Well, if you can still find them I need you to flatline %TARGET_VALUE(0,1) of %TARGET_NPCNAME(0). Once you`re sure they`re all down and gonna stay that way, come find me and I`ll pay you.")
		SAY("This one is damn simple, which is pretty convenient, seeing as you look like the type to bang your head against the wall for fun. You kill %TARGET_VALUE(0,1) of %TARGET_NPCNAME(0), then come see me, then get money? Got it? Good, now get going!")
		SAY("Okay, this is how it`s gonna fall out. Go find %TARGET_VALUE(0,1) of %TARGET_NPCNAME(0). After you`ve tracked them down... turn em into meat, or whatever the hell those bastards are made of. If you manage to finish the job, then come back and find me. Oh, and here`s a tip for free: limit your trips on those flaky genereps. You don`t look like the type with too much extra in the intelligence department, and I`ve heard those crazy monks engineered them to cause little glitches over time.")
		SAY("You really look like the type that enjoys a lot of violence. Luckily, that is exactly what this job calls for. Go hunt down %TARGET_VALUE(0,1) of %TARGET_NPCNAME(0) and make it real unhealthy for em. When you finish, there`ll be creds waiting for you back here. Now scram, I got work to do.")
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				SAY("You can`t possibly be done. Go finish the job before you come back.")
				SAY("I`ve been fighting for the Guardian for years, and I`ve never seen anyone work that fast. Conclusion... you ain`t done! Now get out there and finish the damn job.")
				SAY("Neocron isn`t getting any more free by us sittin' here talking. So go do your work and let me do mine!")
				ENDDIALOG()
			else
				SAY("Well, you did finish the job! I guess there`s hope for freedom after all. Here are %REWARD_MONEY() credits for the work, and don`t forget to check back if you could use another job.")
				SAY("Today seems to be full of surprises! I guess you didn`t manage to mess the job up. Okay, fair is fair: here are your %REWARD_MONEY() credits, and remember that the Guardian has plenty more jobs if you`re interested.")
				SAY("I guess you see something new every day. Okay, take %REWARD_MONEY() credits for helping the Guardian out. Now scram, I got more work to do!")
				SAY("It looks like I read you wrong pal. Sorry if I yelled at you earlier too, thing have been a little... tense around here lately. Anyway, here is your pay, %REWARD_MONEY() creds, for the work. And make sure to check back on the terms if you want more. The Guardian always needs people that can get stuff done.")
				SAY("You got the job done I assume? Good, here are your %REWARD_MONEY() credits. Freedom to the people!")
				SAY("Job done? Good. I just transferred the %REWARD_MONEY() credits into your account for the work. If you need more money then just check the terms again. I`m sure the Guardian could work something out that would be mutually beneficial.")
				ACTIVATEDIALOGTRIGGER(1)
				ENDDIALOG()
			end
	NODE(4)
		SAY("Why the hell did you walk up and start chatting, then? Scram!")
		SAY("You`d better get the hell out of here before I take the time to think about how stupid you`ve just been.")
		SAY("Well get out of here then, and I recommend not warping from the genereps with the gum stuck on the pad. You`re damn near as dumb as a CopBot.")
		ENDDIALOG()
end
