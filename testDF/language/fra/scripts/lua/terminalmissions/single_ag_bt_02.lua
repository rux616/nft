--************************
--name   : SINGLE_AG_BT_02.lua
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
		SAY("Hello, Runner.  What can I do for you?")
		SAY("Greetings Runner, how can I help you?")
		SAY("Yes, Runner? How can I help you?")
		
		ANSWER("I applied for the extermination job. The BioTech terminal directed me to talk with you.",1)
		ANSWER("The BioTech terminal directed me to you. I am here for the extermination job.",1)
		ANSWER("I thought you were someone else. Excuse me.",3)
		ANSWER("Sorry, I am in the wrong place. Goodbye.",3)

	NODE(1)
		SAY("I see. Let me look up your registration... here we go. As you already know BioTech pays Runners to kill different groups of vermin. You don't need to know why, you just need to make a sweep of the local sectors looking for %TARGET_NPCNAME(0). If you can kill %TARGET_VALUE(0,1) of them, you can return to me for some compensation. It's a small job, but everyone needs to start somewhere. Have fun!")
		SAY("Oh yes, let me pull up your registration... all right, you've signed up for vermin extermination and that's what you'll be doing. It's awfully simple, just focus on the local sectors and kill any %TARGET_NPCNAME(0) you run into. Once you've killed at least %TARGET_VALUE(0,1) of them, you can return to me for your payment. Oh, and wash your hands afterwards too. Have fun!")
		SAY("Oh yes,I'm pulling your registration up now... here we go, Runner. Have a look around the local sectors and kill at least %TARGET_VALUE(0,1) %TARGET_NPCNAME(0). Once you've done that, you can return to me for your payment. I'll be honest, Runner: this is one step up from whoring yourself at Madam Veronique's.  Have fun!")
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				SAY("Are the %TARGET_NPCNAME(0) too difficult for you to kill? I don't think so. Now go do your job.")
				SAY("Back so soon? I can't pay you until you kill at least %TARGET_VALUE(0,1) of those critters. Come back when you are completely finished.")
				SAY("Back already? You'll have to go back out and kill at least %TARGET_VALUE(0,1) before I can pay you. So, get going!")
				ENDDIALOG()
			else
				SAY("Good work, Runner. Here are the %REWARD_MONEY() credits due to you. If you want another BioTech job, just check our terminal. Maybe next time you can do something more than just kill %TARGET_NPCNAME(0). Have a nice day.")
				SAY("Very good, Runner. Here are your %REWARD_MONEY() credits. Maybe next time you look at our terminal, you can find a better job. Thanks!") 
				SAY("Welcome back, Runner. Please, accept our payment of %REWARD_MONEY() credits. If you want another BioTech job, just check our terminal. Have a nice day.")
				ACTIVATEDIALOGTRIGGER(1)
				ENDDIALOG()
			end
	NODE(3)
		SAY("Goodbye.")
		ENDDIALOG()
end