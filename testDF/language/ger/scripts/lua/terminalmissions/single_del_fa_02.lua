--************************
--name   : SINGLE_DEL_FA_02.lua
--ver    : 0.1
--author : Ferron
--date   : 2004/09/08
--lang   : de
--desc	 : terminal mission
--npc    :
--************************
--changelog:
--2004/09/08(0.1): recheck(Ferron)
--YYYY/MM/DD(0.0)
--************************

function DIALOG()

	NODE(0)
		SAY("Willkommen, ich arbeite fuer die Fallen Angels. Wie kann ich dienlich sein?")
		SAY("Wie kann ich dir helfen, Freund?")
		SAY("Was kann ich fuer dich tun, Runner?")
		SAY("Brauchst du irgend etwas?")
		
		ANSWER("Ich war eben an den Terminals, ihr habt ne Lieferung, richtig? Ich erledige das fuer euch.",1)
		ANSWER("Ich war eben am Terminal, sah den Job und dachte, hey das klingt nach einem Job fuer mich.",1)
		ANSWER("Schon gut. Ich glaube nicht, dass ich hier sein sollte.",3)
	NODE(1)
		GIVEQUESTITEM(91)
		SAY("Nur der freie Geist kann die Gesellschaft befreien, aus diesem Grunde produzieren wie im Moment Flugblaetter um den Buergern Neocrons aufzuzeigen, was alles schieflaeuft in der Stadt. Bitte bring dieses Paket mit Flugblaettern nach %NPC_WORLD(1) und uebergib es dort %NPC_NAME(1). Bitte sei vorsichtig und vergiss nicht, danach zu mir zurueckzukommen um dein Geld abzuholen.")
		SAY("Runner, begib dich sofort nach %NPC_WORLD(1) und stelle sicher, dass %NPC_NAME(1) dieses Paket bekommt. Im paket befinden sich jede Menge Flugblaetter, welch unser Agent unter der Bevoelkerung verteilen wird. Beeil dich, Runner, und kehre danach zu mir zurueck.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(1)
			if (result==0) then
				SAY("Bitte geh und erledige deine Arbeit, Runner.")
				SAY("Es ist wichtig, dass das Paket unseren Agenten in %NPC_WORLD(1) erreicht, beeil dich also bitte.")
				SAY("Ich habe zu tun, wir sprechen uns wieder, wenn du deine Arbeit erledigt hast.")
				SAY("Du weisst was zu tun ist! Also tu es auch!")
				ENDDIALOG()
			else
				SAY("Das ging ja schnell, hier sind deine %REWARD_MONEY() Credits.")
				SAY("Gute Arbeit. Du hast dir die %REWARD_MONEY() Credits redlich verdient.")
				SAY("Exzellent. Hier ist die %REWARD_MONEY() Credits Belohnung fuer den Job.")
				ACTIVATEDIALOGTRIGGER(2)
				ENDDIALOG()
			end
	NODE(3)
		TAKEQUESTITEM(91)
			if (result==0) then
				SAY("Ich warte immer noch auf das Paket...")
				SAY("Koenntest du dich bitte etwas beeilen und mir das Paket bringen?")
				SAY("Kein Paket dabei? Ich brauche es aber wirklich dringend.")
				ENDDIALOG()
			else	
				SAY("Das Paket von den Angels, richtig? %NPC_NAME(0) gibt dir dann das Geld.")
				SAY("Gut. %NPC_NAME(0) wartet schon mit den Credits auf dich.")
				SAY("Danke. %NPC_NAME(0) wird dich dann bezahlen.")
				SAY("Wurde aber langsam Zeit. Dachte schon, ich muesste bis zum juengsten Tag warten. %NPC_NAME(0) wartet mit dem Geld auf dich.")
				SAY("Mann, hast du lange gebraucht. %NPC_NAME(0) hat mich gerade angerufen und sagte du solltest dann zu ihm zurueckkommen und dir dein Geld abholen.")
				ACTIVATEDIALOGTRIGGER(1)	
				SETNEXTDIALOGSTATE(5)
				ENDDIALOG()
			end
        NODE(4)
		SAY("Auf Wiedersehen.")
		SAY("Ich bin gerade sehr beschaeftigt. Komm spaeter wieder.")
		SAY("Komm wieder, wenn du weisst, was du eigentlich willst. Tschuess.")
		SAY("Ich habe zu tun. Tschuess.")
		ENDDIALOG()
	NODE(5)
		SAY("Hey was machst Du noch hier? Los geh zu %NPC_NAME(0) um deine Belohnung abzuholen.")
		ENDDIALOG()
		
end
	
	
















































