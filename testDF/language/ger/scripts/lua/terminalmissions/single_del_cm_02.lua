--************************
--name   : SINGLE_DEL_CM_02.lua
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
		SAY("Sei gegruesst, Runner. Bist du wegen des Botenjobs hier")
		SAY("Hmm? Wir haben da eine Lieferung zu erledigen. Interessiert?")
		SAY("Wenn du der richtige Mann bist, haben die CityMercs eine Lieferung fuer dich.")
		SAY("Hey, Runner! Wir brauchen einen Boten.")
		SAY("Ich warte bereits seit Stunden auf einen geeigneten Mann fuer diesen Job.")
		
		ANSWER("In den Terms steht, ihr habt einen Job, irgendwas mit einer Lieferung. Ich bin interessiert.",1)
		ANSWER("Ich bin der Bote, auf den du wartest.",1)
		ANSWER("Ich besitze alle Faehigkeiten fuer diesen Job.",1)
		ANSWER("Hier stinkts, ich verschwinde.",3)
		ANSWER("Ich kenne dich ueberhaupt nicht, tschuess.",3)
	NODE(1)
		GIVEQUESTITEM(91)
		SAY("Dieses Paket muss %NPC_NAME(1) gebracht werden. Er haelt sich derzeit in %NCP_WORLD(1) auf. Bewegung, Runner!")
		SAY("Das ist ein wichtiges Paket. Bring es %NPC_NAME(1) in %NCP_WORLD(1). Dann komm wieder zu mir. Das sind deine Befehle, wegtreten.")
		SAY("Sektion 2 braucht unsere Unterstuetzung bei der Planung ihrer Strategien. Stelle einen Kontakt zu %NPC_NAME(1) in %NCP_WORLD(1) her und gib ihm dieses Paket. Komm danach wieder her.")
		SAY("CityMerc bietet dir eine einmalige Gelegenheit. Schaff dieses Paket zu %NPC_NAME(1) in %NCP_WORLD(1). Wenn du das Paket erfolgreich abgeliefert hast, sollst Du von mir deine Bezahlung bekommen.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(1)
			if (result==0) then
				SAY("Du hast deine Befehle!")
				SAY("Irgendwelche Fragen? Ich schlage vor du erledigst deine Arbeit.")
				SAY("Das ist kein Spiel, und wir spassen nicht. Erledige den Job, oder du kannst die Belohnung vergessen.")
				SAY("Ich habe mir schon gedacht, dass du beim ersten Mal nicht richtig zugehoert hast. Bring %NPC_NAME(1) in %NCP_WORLD(1) das Paket und komme danach wieder her.")
				ENDDIALOG()
			else
				SAY("Mein Befehl lautet, dir diese %REWARD_MONEY() Credits als Bezahlung fuer deine Dienste zu ueberreichen. Das ist alles, Runner, wegtreten.")
				SAY("Ich hoerte du haettest den Job erledigt. Gut gemacht, Soldat. Hier sind deine %REWARD_MONEY() Credits. Die CityMercs benoetigen deine Dienste nicht laenger, bis bald.")
				SAY("Ah ja, deine Belohnung, richtig? %REWARD Credits wurden auf dein Konto ueberwiesen.")
				SAY("Deine Faehigkeiten sind ausserordentlich. Das Paket hat sein Ziel sicher erreicht. %REWARD_MONEY() Credits wurden auf dein Konto ueberwiesen.")
				SAY("Gut gemacht. %REWARD_MONEY() Credits wurden auf dein Konto ueberwiesen.")
				SAY("Gute Arbeit, Runner, hier sind deine %REWARD Credits.")
				ACTIVATEDIALOGTRIGGER(2)
				ENDDIALOG()
			end
	NODE(3)
		  TAKEQUESTITEM(91)
	                if (result==0) then
	                	SAY("Paket verloren, Runner? Wie unschoen. Hol es wieder und bring es mir.")
	                	SAY("Die CityMercs werden erst zufrieden sein, wenn du mir das Pakte gebracht hast.")
	                	SAY("Dieses Verhalten kann ich nicht akzeptieren. Entweder bringst du mir dieses Paket oder du kannst die Bezahlung vergessen.")
	                	SAY("Warum bist du hergekommen? Ohne das Paket ist deine Anwesenheit nicht erforderlich.")
				ENDDIALOG()
			else
				SAY("Gut gemacht Runner. Du kannst dir deine Belohnung bei %NPC_NAME(0) abholen.")
				SAY("%NPC_NAME(0) wird sich um deine Bezahlung kuemmern. Diese Paket wird den CityMercs gute Dienste leisten.")
				SAY("Das wurde aber auch Zeit. %NPC_NAME(0) wird sich um deine Belohnung kuemmern.")
				SAY("%NPC_NAME(0) wird sehr zufrieden mit deiner Leistung sein. Er kuemmert sich auch um die Bezahlung, kehre wieder zu ihm zurueck.")
				SAY("Danke fuer die schnelle Lieferung. Frage %NPC_NAME(0) nach der Bezahlung.")
				ACTIVATEDIALOGTRIGGER(1)
				SETNEXTDIALOGSTATE(5)
				ENDDIALOG()
			end
	NODE(4)
		SAY("Du solltest nicht hier sein, richtig.")
		SAY("Die CityMercs bezahlen mich nicht fuers rumlabern. Verschwinde, Runner.")
		SAY("Verschwinde, es wollen mich noch andere Leute sprechen.")
		ENDDIALOG()
	NODE(5)
		SAY("Hey was machst Du noch hier? Los geh zu %NPC_NAME(0) um deine Belohnung abzuholen.")
		ENDDIALOG()
end	
