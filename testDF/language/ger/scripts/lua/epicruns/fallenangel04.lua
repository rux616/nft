--new
--Fallen Angel Muster
--
--Trigger
--Triggernumber,Type,Person
--0,D,cONSTANTINE
--1,D,Gregory
--2,D,Figaro
--3,D,Constantine(200)
--
--Startnode, Person
--0, Personal Director
--50, Constantine 1640
--100, Gregory Parkins	1608	
--150, Figaro 1624
--200, Constantine
--250,
--
--
--Missionbase Eintrag
--NPC0	NPC1	NPC2	NPC3	TRG0	VAL01	VAL02	VAL03	TRG1	VAL01	VAL02	VAL03	TRG2	VAL01	VAL02	VAL03	TRG3	VAL01	VAL02	
--1640	1608	1624	0	3	0	0	0	3	1	1	0	3	2	2	0	3	0	3	
--START	START	START	START
--50	100	150 	0

--Items
----703-Destrosol, 720-Whiteflash, 721-Destrosol
--Grimm Id Cube 9301

function DIALOG()
--------------------------------------------------------------------
-- Personal Director
--0
	
	NODE(0)
		SAY("Constantine hat mich darüber informiert, dass sie gerne mit ihnen sprechen würde. Es handelt sich anscheinend um eine Person die sie gut kennen.")

		ANSWER("Ich werde sie umgehend aufsuchen.",1)
		ANSWER("Im Moment geht es bei mir leider nicht...",2)
	NODE(1)
		SAY("Tun sie das. Mehr Neuigkeiten gibt es im Moment auch nicht.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(3)
		ENDDIALOG()
	
	NODE(2)
		SAY("Hmm, nun gut. Aber lassen sie sie nicht zu lange warten.")
		ENDDIALOG()
	NODE(3)
		SAY("Wollten sie nicht mit Constantine im Forschungstrakt reden?")

		ENDDIALOG()
--------------------------------------------------------------------
-- Constantine
--50
	NODE(50)
		SAY("Da bist du ja endlich. Ich wollte dringend mit dir über Grimm sprechen. Mich haben die vielen Fehlschläge, die du in der letzten Zeit hattest stutzig gemacht.")

		ANSWER("Nicht nur dich haben sie stutzig gemacht. Dessen kannst du dir sicher sein.",51)
	NODE(51)
		SAY("Was heisst das? Erzähl mir doch noch mal, was genau dich stutzig gemacht hat.")

		ANSWER("Nun, als ich das treffen mit dem ProtoPharm Angestellten hatte, ließ dieser aus versehen fallen, dass ich von den Fallen Angels komme. Aber woher sollte er das wissen? Später stellte sich dann heraus, dass die ProtoPharm Chemikalie verseucht war. Aber da ist noch etwas.",52)
	NODE(52)
		SAY("Nur heraus damit, ich beginne zu verstehen, was du meinst.")

		ANSWER("Als ich von diesem grobschlächtigen Max in der Outzone fast getötet worden wäre, hatte dieser mir noch mitgeteilt, dass er für Crahn arbeitet. Jetzt frage ich dich aber, warum hat er sich erst meinen ID Cube angesehen, bevor er mich angegriffen hat?",53)
	NODE(53)
		SAY("Es war also eine Falle. Er musste sicher gehen, dass du es auch wirklich bist. Er wollte vermeiden, den falschen umzubringen.")

		ANSWER("Richtig, und der einzige, der ausser dir noch wusste, dass ich eine bestimmte Chemikalie suchte war Grimm.",54)
	NODE(54)
		SAY("Das klingt alles sehr überzeugend, aber das Grimm dir gegenüber unfreundlich ist, ist kein Beweis. Er ist eigentlich jedem gegenüber unfreundlich. Falls er es aber wahr, dann muss er irgendwelche Spuren hinterlassen haben.")

		ANSWER("Das klingt einleuchtend, aber wenn ich wüsste, wo ich anfangen sollte zu suchen, dann hätte ich das schon getan.",55)
	NODE(55)
		SAY("Möglicherweise kannst du noch etwas von diesem Rick Boujard herausbekommen. Vielleicht musst du ja einfach auch ein paar Überredungskünste anwenden.")

		ANSWER("Einen Versuch ist es wohl wert, wenn mir danach dann nicht bei jedem Schritt ein Knüppel zwischen die Beine geworfen wird.",56)
	NODE(56)
		SAY("Ich werde unterdessen versuchen etwas über das Netz heraus zu bekommen, ja? Komm später noch einmal hierher, wenn du diesen ProtoPharm Typen gehörig in die Mangel genommen hast.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()
		
	

--------------------------------------------------------------------
-- Rick Boujard
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Jetzt reicht es aber bald, sie können hier doch nicht einfach rein und raus spazieren, wie sie wollen!")
			ENDDIALOG()
		else
			SAY("Ich habe jetzt keine Zeit. Wie sind sie hier überhaupt reingekommen? Moment mal ...Sie kommen mir irgendwoher bekannt vor.")

			ANSWER("Allerdings, darauf können sie wetten. Ich habe eine Chemikalie bei ihnen abgeholt, erinnern sie sich.",101)
		end
	NODE(101)
		SAY("Sie sind das! Was wollen sie von mir? Ich dachte sie hätten ihre Chemikalie jetzt schon bekommen. Ende der Geschichte.")

		ANSWER("Wussten sie, dass die Chemikalie die ich von ihnen bekommen habe verseucht war?",102)
	NODE(102)
		SAY("Ich weiss nicht wovon sie reden, tut mir leid. Ich habe ihnen eine vollständig reine Version der Chemikalie ausgehändigt. Was sie danach damit gemacht haben, interessiert mich nicht.")

		ANSWER("Wer hat die Chemikalie verseucht? Oder wer hat ihnen den Auftrag gegeben, mir damit das Leben schwer zu machen?",103)
	NODE(103)
		SAY("Was glauben sie, was ich hier den ganzen Tag tue? Glauben sie mein Job ist es Leute wie sie zu verarschen?")

		ANSWER("Ich weiss nur, dass die Chemikalie verseucht war. Und ich möchte endlich wissen, wer dahinter steckt.",104)
	NODE(104)
		SAY("Gut, ich sag ihnen was. Für einen kleinen Preis von 5 000 Credits sage ich ihnen, von wem ich diese Chemikalie habe, in Ordnung?")

		ANSWER("Geht klar, mehr will ich ja auch gar nicht wissen.",105)
	NODE(105)
		TAKEMONEY(5000)
		if(result==0)then
			SAY("Ich will zuerst mal Kohle sehen.")	
			ENDDIALOG()
		else
			SAY("Also folgendes. Es war ein gewisser Black Dragon Dealer. Sein Name ist Figaro, ein ziemlich verschlagener Kerl. Er hat mir diese Chemikalie gegeben und gab mir ein paar Instruktionen. Meines Wissens war die Chemikalie aber in Ordnung.")

			ANSWER("Ich versteh nicht wie sie als Angestellter eine solche Chemikalie von einem Black Dragon kaufen müssen.",106)
		end
	NODE(106)
		SAY("Muss ich nicht, es war ein Deal, der auch diese Chemikalie umfasste und jetzt lassen sie mich in Ruhe.")
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(107)
		ENDDIALOG()
		
	NODE(107)
		SAY("Suchen sie nach Figaro im Pepper Park, er kann ihnen vielleicht mehr sagen.")

		ENDDIALOG()

--------------------------------------------------------------------
-- Figaro
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Mann, ich würde dir ja gerne mit ein paar Drogen aushelfen, aber ich habe nicht mehr so viele übrig.")
			ENDDIALOG()
		else
			SAY("Hey, Runner! Du siehst aus, als ob du’s nötig hättest. Na, wie sieht’s aus, Lust auf ein paar Drogen?")

			ANSWER("Du hast es erraten, was gibt es denn heute im Angebot?",152)
			ANSWER("Nein, ich bin nicht hier um mich mit Drogen vollzudröhnen.",151)
		end
	NODE(151)
		SAY("Schade eigentlich, ich habe gerade angefangen dich zu mögen. Und jetzt verpiss dich, jemand der keine Drogen kauft ist mir zu verdächtig.")
		ENDDIALOG()

	NODE(152)
		SAY("Ich habe hier nur das Beste vom Besten. X-Strong, für all diejenigen, die ihren Erzfeind mal so richtig zusammenschlagen wollen. Oder das absolut Beste für die ganz schnellen unter uns, Whiteflash. Oder falls du Probleme mit der Konzentration hast, versuch doch einfach mal Destrosol. Ist zwar eigentlich ein Mittel für Psioniker, aber ich garantiere dir, du bist total frisch danach.")

		ANSWER("Ich nehme Whiteflash.",153)
		ANSWER("Ich nehme X-Strong.",154)
		ANSWER("Ich nehme Destrosol.",155)
--703-Destrosol, 720-Whiteflash, 721-Destrosol
	NODE(153)
		TAKEMONEY(500)
		if(result==0)then
			SAY("Kein Geld, kein vergnügen.")
			ENDDIALOG()
		else
			GIVEITEM(720)
			SAY("Eine sehr gute Wahl. Ich geb es dir zu einem speziellen Preis, da du hier neu bist, ja? Und falls du mal wieder so etwas brauchst, nur zu. Du weißt ja, wo ich stehe.")

			ANSWER("Ich hab da noch ne Frage, wenn ich schon mal hier bin.",156)
		end
	NODE(154)
		TAKEMONEY(500)
		if(result==0)then
			SAY("Kein Geld, kein vergnügen.")
			ENDDIALOG()
		else
			GIVEITEM(721)
			SAY("Eine sehr gute Wahl. Ich geb es dir zu einem speziellen Preis, da du hier neu bist, ja? Und falls du mal wieder so etwas brauchst, nur zu. Du weißt ja, wo ich stehe.")

			ANSWER("Ich hab da noch ne Frage, wenn ich schon mal hier bin.",156)
		end
	NODE(155)
		TAKEMONEY(500)
		if(result==0)then
			SAY("Kein Geld, kein vergnügen.")
			ENDDIALOG()
		else
			GIVEITEM(703)
			SAY("Eine sehr gute Wahl. Ich geb es dir zu einem speziellen Preis, da du hier neu bist, ja? Und falls du mal wieder so etwas brauchst, nur zu. Du weißt ja, wo ich stehe.")

			ANSWER("Ich hab da noch ne Frage, wenn ich schon mal hier bin.",156)
		end
	NODE(156)
		SAY("Aber natürlich, für gute Freunde habe ich doch immer ein offenes Ohr. Worum geht es?")

		ANSWER("Nun, wie soll ich sagen… ich habe da einen Freund bei ProtoPharm. Du kennst ihn wahrscheinlich, Rick Boujard ist sein Name. ",157)
	NODE(157)
		SAY("Ja, der Name ist mir nicht ganz unbekannt. Was ist mit ihm?")

		ANSWER("Er hat eine Lieferung von einem ganz speziellen Stoff bekommen. Nun, ja, er hat ihn aber schon weitergegeben und braucht jetzt noch mehr von dem Zeug.",158)
	NODE(158)
		SAY("Oh Mann. Nein, das kann ich nicht machen. Ich hab das Zeug als Sonderlieferung von Tangent bekommen. Irgendso ein Kerl namens Miles. Frag mich nicht warum, aber sie haben gut bezahlt. Ich kann dir aber noch andere Drogen besorgen falls du Lust hast.")

		ANSWER("Danke, ich probiere lieber erst mal die aus, die ich gerade bekommen habe.",159)
	NODE(159)
		SAY("Ist gut. Geht in Ordnung. Und falls du mal wieder nen Schub brauchst, du weißt ja…")
		ACTIVATEDIALOGTRIGGER(2)
		SETNEXTDIALOGSTATE(160)
		ENDDIALOG()
		
	NODE(160)
		SAY("Tut mir leid, Freund, keine Drogen mehr übrig.")

		ENDDIALOG()


--------------------------------------------------------------------
--Constantine
--200
	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Bist du der Spur von Rick Boujard im El Farid Dorf schon nachgegangen?")
			ENDDIALOG()	
		else
			SAY("Ich habe mich schon gefragt ob alles geklappt hat. Hast du etwas herausfinden können?")

			ANSWER("Nun, ich habe zumindest herausgefunden, dass die verseuchte Chemikalie anscheinend von Tangent stammt.",201)
		end
	NODE(201)
		SAY("Hast du auch Beweise dafür? Dann hätten wir auch etwas in der Hand.")

		ANSWER("Leider konnte ich nur den Namen des Tangent Boten in Erfahrung bringen. Er heisst Fargo Miles.",202)
	NODE(202)
		SAY("Na, dass ist doch immerhin etwas. Vielleicht hilft uns das weiter im Zusammenhang mit dem, was ich herausfinden konnte. Grimm hat nämlich laut den Aufzeichnungen den Dome in der letzten Zeit mehrmals verlassen.")

		ANSWER("Ja, aber wie soll uns das weiterhelfen? ",203)
	NODE(203)
		SAY("Ganz einfach, ich habe zwei Emails abfangen können, die zu Tangent und Crahn geschickt worden sind. Glücklicherweise hat Grimm vergessen, die System History zu löschen. In den Emails ist von einem Treffpunkt die Rede, an dem er relevante Daten stationieren wird.")

		ANSWER("Das bedeutet Grimm hat Crahn und Tangent Informationen zukommen lassen? Also stimmt es doch! Deshalb traf ich Schritt und Tritt auf Widerstand.",204)
	NODE(204)
		SAY("Ja, so muss es gewesen sein. Nur im Moment haben wir nur Vermutungen, da die Emails nicht Aussagekräftig genug sind und wir nicht wissen, wo dieser Treffpunkt sein könnte.")

		ANSWER("Dann ist dies also eine Sackgasse…",205)
		ANSWER("Was ist, wenn es Überwachungsvideos gibt, die uns helfen könnten?",206)
		ANSWER("Was ist mit den Daten, die Grimm von Tech Haven mitgenommen hat?",208)
	NODE(205)
		SAY("Dann müssen wir wohl aufgeben, was?")

		ENDDIALOG()
	NODE(206)
		SAY("Wie meinst du das?")

		ANSWER("Nun, wenn Neocron Überwachungsvideos von Fargo Miles besitzt, könnten wir einfach die Stelle suchen, wo er die Informationen von Grimm bekommt. Oder wo er sie an dem Treffpunkt abholt.",207)
	NODE(207)
		SAY("Wird schon erledigt. Du kannst in ein paar Minuten wieder zurückkommen. Dann habe ich hoffentlich was gefunden…")
		SETNEXTDIALOGSTATE(209)
		ENDDIALOG()
		
	NODE(208)
		SAY("Keine Chance, die Aufzeichnungen sind inzwischen alle gelöscht.")

		ANSWER("Dann muss er seinen Plan recht gut umgesetzt haben.",204)


	NODE(209)
		SAY("Es hat lange genug gedauert. Leider konnte ich nicht direkt die Daten der NCPD benutzen, aber ich habe Glück gehabt und ein Video gefunden, welches wohl in der Sherman Bay gedreht worden ist. Laut der ID ist es Fargo Miles, aber ich kann mir nicht ganz sicher sein.")

		ANSWER("Zeigt es denn, wo genau dieser Treffpunkt ist? Irgendein Merkmal welches uns weiterhilft?",210)
	NODE(210)
		SAY("Hmm, ich glaubte einige Empfangsschüsseln erkannt zu haben. Fargo ist dort zielstrebig auf eine Sicherheitskiste zugegangen und hat dort etwas herausgenommen. Allerdings endete da der Video Ausschnitt. Aber es war mit Sicherheit in dieser Kiste.")

		ANSWER("Sherman Bay war es also… Ich denke ich werde dort wohl mal persönlich nachsehen müssen.",211)
	NODE(211)
		SAY("Viel Glück dabei, ich denke ich werde nicht mehr viel über das Netz erreichen können, ich habe schon alles ausprobiert. Sag mir aber Bescheid, wenn du etwas gefunden hast.")
		SETNEXTDIALOGSTATE(212)
		ENDDIALOG()
--Spieler besucht und findet dort im Dungeon eine Hack Box, in dem er einen
--Datacube mit belastendem Material findet.
-- Grimm ID Cube

	NODE(212)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Wir brauchen noch eine Spur. Wir haben nicht genug Informationen. Hast du schon mit Rick Boujard gesprochen?")
			ENDDIALOG()
		else
			TAKEITEM(9301)
			if(result==0)then
				SAY("Hast du schon in der Sherman Bay gesucht?")
				ENDDIALOG()
			else	
				SAY("Schon zurück? Hat sich etwas Neues ergeben?")

				ANSWER("Allerdings, wir haben die ganze Zeit richtig vermutet. Grimm hat mich an Crahn und Tangent verkauft. Es steht alles auf diesem Datacube.",213)
			end
		end
	NODE(213)
		SAY("Dann haben wir endlich die Beweise, die wir brauchen um ihm das Handwerk zu legen. Gib mir den Datacube und ich werde ihn an den Forscherrat weiterleiten.")

		ANSWER("Hier bitte, ich hoffe, dass wir nun endlich diesem Spuk ein Ende bereiten können.",214)
	NODE(214)
		SAY("Ich denke der Forscherrat wird noch etwas Zeit brauchen, um die Informationen ausgiebig zu beurteilen. Jetzt heißt es also erst einmal warten. Tut mir leid, aber ich bin nicht bereit, dass Forschungsprojekt zu starten, bevor diese ganze Sache nicht geklärt ist. Es wäre nicht nur für dich gefährlich. Aber man kann die Zeit ja trotzdem dazu nutzen um sich fortzubilden, richtig? (nächste Mission Level 40)")
		EPICRUNFINISHED(14,3)
		ACTIVATEDIALOGTRIGGER(3)
		ENDDIALOG()
	

end