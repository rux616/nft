--************************
--name   : SINGLE_DEL_AB_01.lua
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
				SAY("Hey man! Why you mess my groove?")
				SAY("Whatchu need YT in slowspace for?")
				SAY("You with the cops, chumba?!")
				SAY("You had better have a damn good reason for bothering me.")
				SAY("You got ten seconds talktime 'fore I rearrange your face.")
				SAY("Hey dude, need a guide? I show you things, anything you need. I know where everything is... everything you want, man.")
		
				ANSWER("Look, I signed up for a delivery mission on the net. Are you the person I was supposed to meet?",1)
				ANSWER("I am here about a delivery I`m working. Are you the contact?",1)
				ANSWER("Look, I got work to do. Please don`t hassle me. Are you my hookup for the delivery mission?",1)
				ANSWER("Sorry to bother you. I`m looking for someone else.",4)
				ANSWER("My bad, I thought you were someone else.",4)
				ANSWER("Oops, wrong person. Sorry to waste your time.",4)
			else
				SAY("Hey babe! Why you mess my groove?")
				SAY("Whatchu need YT in slowspace for?")
				SAY("You with the cops, chumbata?!")
				SAY("You had better have a damn good reason for bothering me.")
				SAY("You got ten seconds talktime fore I rearrange your face.")
				SAY("Hey baby, need a guide? I show you things, anything you need. I know where everything is... everything you want, chumbata.")
		
				ANSWER("I signed up for a delivery mission on the net. Are you the person I was supposed to meet?",1)
				ANSWER("I am here about a delivery I`m working. Are you the contact?",1)
				ANSWER("Look, I got work to do, don`t hassle me. Are you my hookup for the delivery mission?",1)
				ANSWER("Sorry to bother you. I`m looking for someone else.",4)
				ANSWER("My bad, I thought you were someone else.",4)
				ANSWER("Oops, wrong person. Sorry to waste your time.",4)
			end
	NODE(1)
		GIVEQUESTITEM()
		SAY("Good good! Been sittin' here too long, rez? Doing job no fun, even if it is for Breed good. They tell me tell you %NPC_NAME(2), give you package, and tell you package person prolly in %NPC_WORLD(). Laterlike.")
		SAY("Score major, been waiting for you too long. They give me this package, tell me to give it to you. You supposed to take it to %NPC_NAME(2) in %NPC_WORLD(). You get there and back real fast, I might even give you the creds they gave me to pay you.")
		SAY("Here is your box. Take it to %NPC_NAME(2), should be in %NPC_WORLD(). And Runner, if I you then I make it there and back utter netime like, rez? Else I gonna go on a shoppin' spree, and it ain`t gonna be my money.")
		SAY("Breed need this package in different place. It not important enough for our time, so we call you. Take it to %NPC_NAME(2) in %NPC_WORLD(), and there might be a few creds waiting when you get back.")
		SAY("Ah, expendable here! Okay, you get paid if you put this package in %NPC_NAME(2)`s hand. Message say start looking in %NPC_WORLD(), maybe you be lucky and find there, no? Creds wait here till you get back, cya Runner.")
		SAY("Good, sheeptype finally decide to drop by. Got one package here, going to %NPC_NAME(2). Info they hit me with say look in %NPC_WORLD(). Now hurry back, me has better things to do than sit round here.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(1)
			if (result==0) then
				SAY("Leave now time! Me be needin' lone time now, rez? Jacked into new V Club broadcast, mucho caliente.")
				SAY("Breed tell me not to give you creds till I get flashed confirmation code. No code in sight, so go finish job.")
				SAY("Look, you ain`t the only business I got. Leave or I buzz some big friends.")
				ENDDIALOG()
			else
				GIVEMONEY()
				SAY("Sai ho! Deliverator returns. Code got flashed, so %REWARD_MONEY() credits dropped in your account. See you round, Runner!")
				SAY("Gaaaaaaah! Why you turn up just when V Club go ultra meltdown! Here, take %REWARD_MONEY() creds and leave me 'lone!")
				SAY("Back from hot an heavy run? Big bad warrior make it through delivery! Chance not, you must be elite major. I hope %REWARD_MONEY() creds enough to keep your ultra delivery appetite at bay!")
				SAY("Package either get there or you got fast heavy hacker crew. Here %REWARD_MONEY() credits for work, and be sure check back if you need more job. Breed always too busy!")
				SAY("Look this, you ain`t total only business I run. Go do job or big crew with big guns be here flat nothing... Oh, there code for delivery pop up. Guess you not rad fried after all. Make your account %REWARD_MONEY() creds bigger now. Thanks for delivering package!")
				SAY("Thanks much, code got sent in steps before you. Here`s %REWARD_MONEY() creds for the job. Try not to spend it on anything Reza man owns. Besides, the Black Dragon or Tsunami could probably hook you up with some feel goods.")
				ACTIVATEDIALOGTRIGGER(2)
				ENDDIALOG()
			end
	NODE(3)
		TAKEQUESTITEM()
			if (result==0) then
				SAY("Go back and get the package. Scrash major, these new Runners are stupid!")
				SAY("I see one stupid Runner, but no visual on any package. Go get it!")
				SAY("The job was to bring the package to me. Now go find my damn delivery.")
				ENDDIALOG()
			else	
				SAY("Great, guess those anarchists got organized long enough to get this package shipped. Thanks for the delivery, and you`ll have to go back to them to get paid. Sorry.")
				SAY("Fast time you make on this package. Got it here real chop chop. Thanks for rush, now lemme get back business side. Prolly want to get back to the creds anyway, eh?")
				SAY("Been waiting on this longtime. Thanks for dropping it by. Be sure to tell %NPC_NAME(1) greets when you step back for your credits too.")
				SAY("Major cool! %NPC_NAME(1) send you? Great, then this uber special package. Ha! Love to stay and scroll Runner, but place to go and people to see now that this delivery came.")
				SAY("That delivery? Perfection total! %NPC_NAME(1) prolly has cred or two for you. Get in gear and I send the code while you transferin'.")
				SAY("Ho! Crazy party tonight with present you bring! Shift to whole new plane wild ride. Credits waiting with contact. Now let me get busy ready with plans. Gotta make sure this one insane.")
				ACTIVATEDIALOGTRIGGER(1)
				SETNEXTDIALOGSTATE(5)
				ENDDIALOG()
			end
	NODE(4)
		SAY("You best get yourself gone! Breed is number uno gang, take down anyone that get in our way.")
		SAY("Ha! You better run fast Runner, anarchy comin flat nothing!")
		SAY("Fixer tell me come out here and sit. I follow to the letter, but still not seen the right Runner yet. This job mucho boring, total scan time!")
		ENDDIALOG()
	NODE(5)
		SAY("What the hell do you want here? I got the packet, now go back to %NPC_NAME(0) to recieve your reward.")
		SAY("Thanks for delivering this package. Now go back to %NPC_NAME(0) to recieve your reward.") 
		ENDDIALOG()
end
