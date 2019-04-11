--************************
--name   : SINGLE_DEL_CM_01.lua
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
		SAY("Rede, bist du wegen der Lieferung hier?")
		SAY("Willst du nur hier herumstehen oder bist du wegen des Jobs hier?")
		SAY("Was willst du von den CityMercs?")
		SAY("Hey. Bist du der Bote?")
		SAY("Hallo, wir haben einen Job, falls du interessiert bist.")
		
		ANSWER("Ich hoerte, die CityMercs haetten eine Lieferung. Wenn das so ist, bin ich euer Runner.",1)
		ANSWER("Ich bin wegen des Botenjobs gekommen, hab da was im Terminal gelesen...",1)
		ANSWER("Ihr habt eine Lieferung zu erledigen, richtig? Ich bin euer Mann.",1)
		ANSWER("Hm, du bist nicht die Person, nach der ich gesucht habe.",3)
		ANSWER("Ich sollte garnicht hier sein. Tschuess.",3)
	NODE(1)
	   	GIVEQUESTITEM(91)
		SAY("Geh nach %NCP_WORLD(1) und suche einen gewissen %NPC_NAME(1). Er braucht diese neue Ruestung, da er seine letzte in einem Feuergefecht verloren hat. Wir haben zu viel zu tun, als dass wir jemanden von uns schicken koennten.") 
		SAY("Das Zeug hier muss einem gewissen %NPC_NAME(1) geliefert werden. Im Moment arbeitet er in %NCP_WORLD(1) an einem heiklen Job. Es ist vielleicht nicht ganz ungefaehrlich fuer dich, aber dafuer bezahlen wir dich schliesslich, nicht wahr? Komm danach wegen der Bezahlung zu mir zurueck.")
		SAY("Tu und einen Gefallen, Runner, und bring unserem Mann in %NCP_WORLD(1) dieses Paket. Sein Name ist %NPC_NAME(1) und an deiner Stelle wuerde ich mich beeilen. Komm danach wegen der Bezahlung wieder zu mir zurueck.")
		SAY("Ein Runner, der sich nicht zu fein fuer einen einfachen Botenjob ist, gefaellt mir. Bringe %NPC_NAME(1) in %NPC_WORLD(1) dieses Paket. Ich warte hier mit deinem Geld, sobald du fertig bist.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(1)
			if (result==0) then
				SAY("Sein Name ist %NPC_NAME(1) und er ist in %NCP_world(1) zu finden. Geh zu ihm und gib ihm das Paket, ganz einfach.")
				SAY("Keine Ausreden. %NPC_NAME(1) braucht das Paket, beeil dich.")
				SAY("Ich dachte du waerst dir ueber die Wichtigkeit der Lieferung im Klaren. Nun geh und erledige deinen Job, sonst verliere ich langsam mein Vertrauen in deine Faehigkeiten.")
				SAY("Warum schleppst du immer noch dieses Paket mit dir herum? Komm wieder, wenn du es abgeliefert hast.")
				ENDDIALOG()
			else
				SAY("Anscheinend ist %NPC_NAME(1) mit der Lieferung zufrieden. Hier ist deine Belohnung, %REWARD_MONEY() Credits.")
				SAY("Gute Arbeit, Runner. Die CityMercs danken dir. Die %REWARD_MONEY() Credits wurden auf dein Konto ueberwiesen.")
				SAY("Gut gemacht. Die CityMercs haben fuer diesen Job %REWARD_MONEY() Credits ausgeschrieben, die nun dir gehoeren.")
				SAY("Du hast dir ja ganz schoen viel Zeit gelassen. Naja, Hauptsache, das Paket ist gut angekommen. Hier sind deine %REWARD_MONEY() Credits.")
				SAY("Schon wieder zurueck, Runner? Gut, sehr gut. Hier ist deine Belohnung, %REWARD_MONEY() Credits sollten ausreichen, denke ich. Nun verschwinde, ich bin sehr beschaeftigt.")
				SAY("Sektion 3 der CityMercs hat mich darueber informiert, dass das Paket gut angekommen ist. Unsere Angestellten dort sollten nun alles haben. Die %REWARD_MONEY() Credits wurden auf dein Konto eingezahlt.")
				ACTIVATEDIALOGTRIGGER(2)
				ENDDIALOG()
			end
	NODE(3)
	         TAKEQUESTITEM(91)
	                if (result==0) then
	                        SAY("Das soll wohl ein Witz sein, ich brauche das Paket DRINGEND. Mach hin, und bring es mir so schnell wie moeglich.")
	                        SAY("Ja, klar. Du hast es verloren, ja? Die Ausreden kenne ich. Bring mir endlich das verdammte Paket.")
	                        SAY("Solange ich die neuen Teile nicht habe, kann ich meine Arbeit nicht fortsetzen. Das gefaellt mir nicht. Beeil dich und bring mir endlich das Paket.")
	                        SAY("Du taugst nicht gerade viel als Botenjunge, kannst du ueberhaupt irgend etwas? Ich verliere langsam die Geduld. Komm erst wieder, wenn du das Paket hast.")
				ENDDIALOG()
			else
				SAY("Wurde auch langsam Zeit, dass ich das Paket der CityMercs bekomme. Ich dachte schon, sie haetten mich vergessen. Ich bin sicher dass %NPC_NAME(0) eine nette Belohnung fuer dich bereithaelt.")
				SAY("Wieder ein Paket. Erst kommt eins, dann noch eins... Jedesmal mehr Arbeit fuer mich. %NPC_NAME(0) hat deine Credits. Du beeilst dich besser, das Leben ist kurz.")
				SAY("Wunderbar. Das ist es. Ich warte schon seit Tagen darauf. Endlich habe ich alles, was ich brauche. Ah, ja. %NPC_NAME(0) wartet mit deinem Geld.")
				SAY("See %NPC_NAME(0) for your reward. Now that I have the package I am sure that more and more work is waiting for me. Heavens.")
				SAY("Ich wuerde dich ja auf einen Drink einladen, aber ich will nicht sinnlos Geld verschwenden. Danke fuer die Lieferung. %NPC_NAME(0) sollte dein Geld haben.")
				ACTIVATEDIALOGTRIGGER(1)	
				SETNEXTDIALOGSTATE(5)
				ENDDIALOG()
			end
	NODE(4)
		SAY("Hoer auf, mich zu belaestigen Runner.")
		SAY("Komm zurueck, wenn du mit den CityMercs Geschaefte machen willst.")
		SAY("Verstehe. Egal, es gibt genug andere Runner, die besser fuer diesen Job geeignet sind.")
		ENDDIALOG()
	NODE(5)
		SAY("Hey was machst Du noch hier? Los geh zu %NPC_NAME(0) um deine Belohnung abzuholen.")
		ENDDIALOG()
end