--************************
--name   : SINGLE_AG_AB_02.lua
--ver    : 0.1
--author : Ferron
--date   : 2004/09/14
--lang   : en
--desc   : terminal mission
--npc    : 
--************************
--changelog:
--2004/09/14(0.1): simple copy from _01
--************************

function DIALOG()

	NODE(0)
		GENDERCHECK()
			if (result==1) then -- Male
				SAY("Hola, chumba.  Wa'sup?")
				SAY("Greetz, chumba.  What the hell can I do for you?")
				SAY("Hello, chumba.  Watcha wantin' from me?")
		        	
				ANSWER("I'm here for the extermination job. Vermin problem or something like that. What do I need to do?",1)
				ANSWER("I applied for an extermination job. The terminal indicated that I needed to talk to you about the details.",1)
				ANSWER("I'm just here for an extermination job. What will I be killing?",1)
				ANSWER("Chumba? I must be in the wrong place. Goodbye",4)
				ANSWER("Chumba? I must have mistaken you for someone else. Goodbye.",4)
			
			else -- Female
				SAY("Hola, chumbata. Wa'sup?")
				SAY("Greetz, chumbata. What the hell can I do for you?")
				SAY("Hello, chumbata. Watcha wantin' from me?")
		        	
				ANSWER("I'm here for the extermination job. Vermin problem or something like that.  What do I need to do?",1)
				ANSWER("I applied for an extermination job. The terminal indicated that I needed to talk to you about the details of the job.",1)
				ANSWER("I'm just here for an extermination job. What will I be killing?",1)
				ANSWER("Chumbata? I must be in the wrong place. Goodbye",4)
				ANSWER("Chumbata? I must have mistaken you for someone else. Goodbye.",4)
			end

	NODE(1)
		SAY("Well, don't expect some grand adventure, this is just simple target practice, really. I want you to kill, oh I dunno, %TARGET_VALUE(0,1) %TARGET_NPCNAME(0). Yeah, and come back here afterwards so you can get paid. Or don't come back and don't get paid. I don't care.")
		SAY("Great, I've been waiting for you. I have a simple hunt-n-kill for you. Take out %TARGET_VALUE(0,1) of those pesky %TARGET_NPCNAME(0). Come back to me afterwards and you can get paid. Or you could forget the whole thing and live with the rats. I don't care.")
		SAY("OK, what I have for you is a simple hunt-n-kill.  We'll say your target is, oh I dunno, %TARGET_NPCNAME(0). Yeah, %TARGET_VALUE(0,1) of them. Kill 'em and come back to me and you'll get paid. Hussle up, it's %TARGET_NPCNAME(0) slaggin' time.")
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()

	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				SAY("Hey idiot, what the hell are you doing back here? If you're not going to finish the job, piss off, that's fine. Just don't bug me anymore.")
				SAY("Damn it! What the hell are you doing? Kill the %TARGET_NPCNAME(0), get the money. You rez me?")
				SAY("Hey, if you don't want the money, that's fine. If you want the money, then you kill the %TARGET_NPCNAME(0). It's real easy. Now, stop wasting my time.")
				ENDDIALOG()
			else
				SAY("Nice work. Hope you didn't get too much critter juice on you. Here are your %REWARD_MONEY() credits. Now, get outta here.")
				SAY("Good job, here are your %REWARD_MONEY() credits. Slaggin' shit like that can really get your adrenaline pumping, no? Anyways I've got some work to do, I'll catch you on the flip side.") 
				SAY("Happy slagger is back! Here are you %REWARD_MONEY() credits. Maybe I'll see you at the Pussy Club or something. You can buy me a drink. HA!  Now, get outta here.")
				ACTIVATEDIALOGTRIGGER(1)
				ENDDIALOG()
			end
	NODE(4)
		GENDERCHECK()
			if (result==1) then -- Male
			SAY("Right. Hope you find your way home.")
			SAY("Know thyself, bro'. Know thyself. And know that you wasted my time.")
			
			else
			SAY("Right. Hope you find your way home.")
			SAY("Know thyself, sis'.  Know thyself. And know that you wasted my time.")

			end
		ENDDIALOG()
end