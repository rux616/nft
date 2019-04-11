--************************
--name   : SINGLE_DEL_BT_02.lua
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
		SAY("Yes Runner, how may I help you?")
		SAY("Greetings citizen, what can I do for you?")
		SAY("Hello Runner, what can I do for you?")
		
		ANSWER("I signed up for a delivery job on the BioTech terminal.  What will I be delivering?",1)
		ANSWER("I'm here for a delivery job. I applied for it on the BioTech terminal.",1)
		ANSWER("I'm sorry, I thought you were someone else. Goodbye",4)

	NODE(1)
		GIVEQUESTITEM(91)
		SAY("A group of technicians needs this recycler. %NPC_NAME(1) will meet you in %NPC_WORLD(1) to pick up the recycler. They need the recycler to continue their work, so please, be swift.  Return to me for your payment.")
		SAY("%NPC_NAME(1) is a BioTech technician working in %NPC_WORLD(1). Please get this recylcer over there as soon as you can. Return to me for your payment.")
		SAY("OK Runner, you are surely familiar with %NPC_WORLD(1), take this recylcer there and deliver it to a %NPC_NAME(1), one of our technicians.  Work there is being held up, so please, be swift. Return to me for your payment.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()

	NODE(2)
		ISMISSIONTARGETACCOMPLISHED(1)
			if (result==0) then
				SAY("Runner, what are you doing back here already? %NPC_NAME(1) is still waiting on the recycler. Now go and do your job!")
				SAY("Damn it! What are you doing back here? You need to get that recycler to %NPC_WORLD(1). Now, move out!")
				ENDDIALOG()
			else
				SAY("Good work, Runner. BioTech will benefit from your work with us. Here are your %REWARD_MONEY() credits. I hope to see you again.")
				SAY("Very good, well done. Here are your %REWARD_MONEY() credits. I hope to work with you again.") 
				ACTIVATEDIALOGTRIGGER(2)
				ENDDIALOG()
			end
	NODE(3)
		TAKEQUESTITEM(91)
			if (result==0) then
				SAY("Where is the recycler? You were told to deliver a recycler to me. Now, go and get it.")
				SAY("What? You don´t have the recycler? Please, go and get the recycler and bring it to me.")
				ENDDIALOG()
			else
				SAY("Ah yes, the recycler. Now I can get rid of these scraps and continue with my work. You did a good job. Head back to %NPC_NAME(1) and get your payment.")
				SAY("The recylcer, finally! Nice work, Runner. Now go back to %NPC_NAME(1) and get your payment.")
				SAY("Finally, you've brought me a recycler. This will speed up this job a great deal. Thanks, Runner.")
				ACTIVATEDIALOGTRIGGER(1)
				SETNEXTDIALOGSTATE(5)
				ENDDIALOG()
			end
	NODE(4)
		SAY("Good Bye.")
		SAY("Come back when you know what you want, Runner.")
		ENDDIALOG()
	NODE(5)
		SAY("What the hell do you want here? I got the packet, now go back to %NPC_NAME(0) to recieve your reward.")
		SAY("Thanks for delivering this package. Now go back to %NPC_NAME(0) to recieve your reward.") 
		ENDDIALOG()
end