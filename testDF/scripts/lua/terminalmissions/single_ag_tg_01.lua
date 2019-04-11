--************************
--name   : SINGLE_AG_TG_01.lua
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
		SAY("Lo. You look like the type that could help me with a problem.")
		SAY("Ah... ya the one I got the message about?")
		SAY("Hmm, you look the type, whadya want?")
		SAY("Ho! Can I help you with something?")
		SAY("Hello, anything I can help you with?")
		SAY("Hey man, I`d love to talk, but my pad is overflowing with work. You here for anything?")
		
		ANSWER("I`m here about the vermin problem. What can I do?",1)
		ANSWER("I want the vermin job. What do you need me to do?",1)
		ANSWER("Are you the contact for the extermination job? If so, I need the specifics.",1)
		ANSWER("Sorry man, gotta buzz.",4)
		ANSWER("Oops, wrong person. Sorry.",4)
		ANSWER("Never mind, I`m looking for someone else.",4)
	NODE(1)
		SAY("Ah, not one to mince words are we? One sec, lemme pull it up on my pad... Okay, I need you to kill %TARGET_VALUE(0,1) of %TARGET_NPCNAME(0), you should be able to find them by scouting around the local area. Make sure to come see me after you`re done. Of course, I doubt you`ll forget to come get the reward. And listen friend, the Guardian will not forget this.")
		SAY("Great! Listen, we`ve had a real problem around here. You, my friend, are the solution. I need you to look around and six at least %TARGET_VALUE(0,1) of %TARGET_NPCNAME(0). After you finish, come back here and you`ll get your pay. Oh, and thanks for helping the Guardian out, you can be sure we won`t forget our friends when the revolution comes.")
		SAY("Perfect, here`s the score my friend. We have a problem with vermin around here. Go poke around this area until you find something that would look better stuffed with lead - or plasma or whatever you use, not a problem. Specifically, I need you to kill %TARGET_VALUE(0,1) of %TARGET_NPCNAME(0). After the job is done, scram back here and I`ll give you your pay. Oh, and good luck; the Guardian would not be where it is without comrades like yourself.")
		SAY("One of those silent types, eh? Oh well, not important, the revolution needs all kinds. Anyway, the job requires you to tramp around this area and send %TARGET_VALUE(0,1) of %TARGET_NPCNAME(0) back to wherever they came from. When they`re all sleeping six feet under, scram it back here and your reward will be waiting for you.")
		SAY("Dammit, took those deck jockeys long enough to get someone down here. Those net heads are clueless when it comes to the real world... but useful enough in their own domain. I even hear they burnt some of Reza`s stuff real crispy like. Okay, about the job. Lets see, ah, here`s the file. The applicant, that`s you chumba, needs to kill at least %TARGET_VALUE(0,1) of %TARGET_NPCNAME(0) and then proceed back to his contact, which is me incase you`re one of those slow ones, to collect the reward. That`s it, simple enough for ya?")
		SAY("What?! Oh, the job. Look around the area and find a total of %TARGET_VALUE(0,1) of %TARGET_NPCNAME(0). After ya find them, use your imagination; a good starting point would prolly involve a lot of loud noises, pieces flying off, some energy crackling... or at least something sharp. Now get going! Plus, if you stumble back here afterwards you`ll find yourself a few credits richer.")
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				SAY("Well, what do you want? I don`t see corpses, and no corpses mean the job ain`t done.  Now get out there and finish it.")
				SAY("Look, I got more work, and you got my work. Go do the job and then we can chat.")
				SAY("Last time I checked, Neocron is still oppressed, so go do your job and let me do mine.")
				ENDDIALOG()
			else
				SAY("K-rad chumba. You really helped me out. Here are %REWARD_MONEY() creds for the work. If Neocron had more people like you, then that rat bastard Reza would`ve never been able to seize power. But worry not comrade, freedom will be ours again!")
				SAY("Good job, here are your %REWARD_MONEY() credits, I hope they make this worth your while. Love live the resistance my friend!")
				SAY("Ha! Those bastards won`t be bothering anyone any time soon. Here are %REWARD_MONEY() credits for helping us out. And comrade, keep hope alive; our time will come!")
				SAY("Thanks to you it should be a lot quieter around here. Take %REWARD_MONEY() credits for helping out. Down with Reza and freedom to the people! And a decent nights rest to me...")
				SAY("Whadya want?! Oh, this is about the job isn`t it? Okay, %REWARD_MONEY() creds should be more than enough for the work you did. Now scram, I got more work to do.")
				SAY("You finished? Good, your account just got %REWARD_MONEY() credits richer. The Guardian thanks you for your help, if we had a thousand like you then Neocron would be liberated in a day.")
				ACTIVATEDIALOGTRIGGER(1)
				ENDDIALOG()
			end
	NODE(4)
		SAY("Every damn person in this city has to bother me. Okay, whatever.")
		SAY("I guess you`re not the person I was looking for. Now let me get back to work.")
		SAY("Fine, come back if you change your mind. In the mean time, try not to bother people; they`re not all as nice as me.")
		ENDDIALOG()
end