--************************
--name   : SINGLE_DEL_TG_01.lua
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
		SAY("Ok, du scheinst mir ein schneller Runner zu sein; du bist doch wegen dem Botenjob hier, oder?")
		SAY("Was hat solange gedauert? Bist du der Runner?")
		SAY("Hey Junge, meine Auftragsliste ist groesser als Reza´s Ego, also hau ab. Oh! Es sei denn, du bist wegen dem Botenjob hier.")
		SAY("Hallo, du bist doch nicht etwa der Runner, oder?")
		SAY("Hi, ich hoffe du bist dieser verdammte Runner oder mein Chef reisst mir den Arsch auf.")
		SAY("Du siehst mir wie ein typischer Lieferjunge aus, du kommst doch wegen dem Job, oder?")
		
		ANSWER("Yeah, Ich bin der Runner. Gib mir einfach das Paket und die Lieferadresse und schon bin ich wieder weg.",1)
		ANSWER("Bingo. Zeig mir die Fracht und nenn mir die Details.",1)
		ANSWER("Ja, ich komme wegen dem Job. Gib mir einfach das Paket und die Adresse.",1)
		ANSWER("Tschuldigung, dafuer bin ich der Falsche.",4)
		ANSWER("Such dir jemand anderen, ich hab dafür keine Zeit.",4)
		ANSWER("Wie? Ich liefere nicht aus.",4)
	NODE(1)
		GIVEQUESTITEM(91)
		SAY("Groovy. Hier ist deine Fracht; bring sie so schnell wie moeglich zu %NPC_NAME(1) in %NPC_WORLD(1). Danach komm hierher zurueck und hol dir die Bezahlung ab. Und Chummer, wenn du uns reinlegen willst, sei sicher, dass die Guardians nie ein Gesicht vergessen.")
		SAY("Ha! Ihr neuen Runner denkt auch, bloss weil ihr mal nen Job erfolgreich beendet habt, koennt ihr euch hier auffuehren wie ein FragDuke4.0. Lass mich dir etwas sagen - das einzige, was du damit erreichst, ist ein One-Way-Trip mit dem GenRep. Ich hab schon fuer Neocron gekaempft als du noch in die Windeln gemacht hast. Also lass dieses NetShow Gehabe... verstanden? Gluecklicherweise wirst du bei dem Job kaum Probleme kriegen. Nimm das Paket und bring es zu %NPC_NAME(1) in %NPC_WORLD(1). Danach komm zurueck um dein Geld abzuholen. Einfach genug?")
		SAY("Ein leichter Job. %NPC_NAME(1) wartet auf dich in %NPC_WORLD(1). Alles was du tun musst, ist, das Paket dort abzuliefern. Danach kannst du dir hier die Bezahlung abholen. Und denk nichtmal daran, es woanders zu verkaufen. Reza gehoeren vielleicht die Strassen, aber nicht an jeder Ecke steht ein CobBOT.")
		SAY("Die Guardians brauchen mehr Leute wie dich, die uns helfen. Okay, es gibt da jemanden mit Namen %NPC_NAME(1), arbeitet in %NPC_WORLD(1). Bring das Paket dort hin. Die Bezahlung wartet hier auf dich, wenn du fertig bist.")
		SAY("Okay, der Addresse auf dem Paket zufolge soll es zu %NPC_NAME(1) gebracht werden. Schau dich in %NPC_WORLD(1) um und finde den Adressaten, um das Paket abzuliefern. Danach hol dir bei mir deine Credits ab. Und wenn das Paket nicht innerhalb einer Stunde am Zielort ist, lassen wir deinen Namen durch unsere Doppelagenten bei den CityAdmins auf die Liste der zur Fahndung ausgeschriebenen Guardians setzten.")
		SAY("Das Paket ist heiß. Beweg deinen Arsch nach %NPC_WORLD(1) und pass auf, als ob ein WarBOT hinter dir her waere. Finde dort %NPC_NAME(1) und liefere die Fracht ab. Denk dran, die Sache ist extrem wichtig. Wenn du die Lieferung ueberlebst, kannst du dir der Großzuegigkeit der Guardians gewiss sein. Komm einfach wieder vorbei und ich werde dir einen entsprechenden Ausgleich für die Arbeit zahlen.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(1)
			if (result==0) then
				SAY("Schau, als ich das letzte mal das Paket gesehen hab, hatte es keine eigenen Beine, also liefer es endlich ab!")
				SAY("Was zum Teufel machst du noch hier? Das Paket muss geliefert werden, also mach endlich deinen Job!")
				SAY("Der Club Veronique kann warten! Liefer endlich das verdammte Paket ab!")
				ENDDIALOG()
			else				
				SAY("Puh, das war mir eine grosse Hilfe. Nimm die %REWARD_MONEY() Credits für die Umstaende, die es gemacht hat. Danke, dass du den Guardians geholfen hast, Chummer.")
				SAY("Endlich kann ich meinem Boss sagen, dass die Sache erledigt ist! Hier sind die %REWARD_MONEY() Credits für den Job. Ich wuerde mich gern noch weiter mit dir unterhalten, aber ich habe zu tun.")
				SAY("Gut, wieder ein Job erledigt. %REWARD_MONEY() Creds wurden soeben auf dein Konto ueberwiesen. Jetzt muss ich weiter arbeiten. Die Revolution läuft nicht von allein.")
				SAY("Grossartig. Vielleicht hoert mein Vorgesetzter jetzt endlich auf, mich zu nerven. Ach ja, hier sind die %REWARD_MONEY() Credits für den Job. Freiheit fuer die Menschen!")
				SAY("Wie versprochen, hier sind die %REWARD_MONEY() Credits. Danke für deine Hilfe bei den Guardians. Ich denke, du kannst jetzt ruhiger schlafen, weil du etwas gegen das Monster Lioon, getan hast.")
				SAY("Das hat ja gedauert, es waere schneller da gewesen, wenn ich einen gelaehmten Zwerg arrangiert haette. Aber Geschaeft ist Geschaeft - %REWARD_MONEY() Credits werden deinem Konto gutgeschrieben. Nun geh mir aus den Augen!!")
				ACTIVATEDIALOGTRIGGER(2)
				ENDDIALOG()
			end
	NODE(3)
		TAKEQUESTITEM(91)
			if (result==0) then
				SAY("Wo bleibt das verdammte Paket? Nerv mich nicht, solange du es nicht hast.")
				SAY("Schau, ich brauche dieses Paket, also beeil dich endlich, bevor ich dir ein weiteres Loch in deinen Kopf brenne!")
				SAY("Ich habe keine Ahnung, was du hier fuer eine Nummer abziehst, aber das ist hier nicht das NeoFrag, also bring mir endlich dieses verdammte Paket, bevor ich ausraste!")
				ENDDIALOG()
			else	
				SAY("Treffer! Darauf hab ich gewartet. Danke fuer die Lieferung mein Freund. Ich denke, %NPC_NAME(0) wird dir fuer die Hilfe etwas Geld zahlen.")
				SAY("Perfekt. Genau das hab ich noch gebraucht. Danke fuer die Lieferung. %NPC_NAME(0) wird dir den Lohn dafuer auszahlen.")
				SAY("Ah, dass muss das Paket von %NPC_NAME(0) sein. Danke fuer die Hilfe. Ich muss zurueck an die Arbeit; es gibt viel zu tun. Oh, und ich glaube, da warten ein paar Credits bei dem alten Schuft auf dich.")
				SAY("Hallo, wer sind Sie? Oh, das Paket. Wow, und das in dieser kurzen Zeit. Aber egal, ich denke, du hast noch genug anders zu tun als mit mir zu reden. %NPC_NAME(0) sollte die Belohnung fuer dich haben.")
				SAY("Der Lieferbote! Du glaubst nicht, wie lange ich schon auf dieses Paket warte, also musst du mich jetzt entschuldigen. Ich habe keine Zeit, weiter mit dir zu reden. Du musst ja auch wieder zu %NPC_NAME(0) zurueck, um die Bezahlung entgegen zunehmen.")
				SAY("Warum hat das so lange gedauert? Egal, jetzt ist es ja endlich hier, auch wenn ich im Zoo schon schnellere Schildkroeten gesehen habe - mit zusammen gebundenen Beinen. %NPC_NAME(0) hat trotzdem die Credits fuer dich.")
				ACTIVATEDIALOGTRIGGER(1)	
				SETNEXTDIALOGSTATE(5)
				ENDDIALOG()
			end
	NODE(4)
		SAY("Na toll. Alle Minute nervt mich irgendeiner, aber niemand will wirklich helfen.")
		SAY("Gut, wenn du deine Meinung geaendert hast, findest du mich hier.")
		SAY("Gut, aber jetzt verschwinde aus meinen Augen, bevor ich mich erinnere, wo ich meine Pistole hingelegt habe.")
		ENDDIALOG()
	NODE(5)
		SAY("Hey was machst Du noch hier? Los geh zu %NPC_NAME(0) um Deine Belohnung abzuholen.")
		ENDDIALOG()
	
end
