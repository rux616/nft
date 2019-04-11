--new
--Fallen Angel02
--
--Trigger
--Triggernumber,Type,Person
--0,D,Grimm (50)
--1,D,Constantine (100)
--2,D,Boujard (150)
--3,D, Constantine (200)
--
--Startnode, Person
--0, Personal Director 
--50, Grimm (Forschungstrakt) 1639
--100, Constantine (Forschungstrakt)1640
--150, Rick Boujard (El Farid Village)1608
--200, Constantine1640
--
--
--Missionbase Eintrag
--NPC0	NPC1	NPC2	NPC3	TRG0	VAL01	VAL02	VAL03	TRG1	VAL01	VAL02	VAL03	TRG2	VAL01	VAL02	VAL03	TRG3	VAL01	VAL02	
--1639	1640	1608		3	0	0	0	3	1	1	0	3	2	2	0	3	1	3	
--START	START	START	START
--50	100	150

--Items
----Chemikalienkonzentrat 9300

function DIALOG()
--------------------------------------------------------------------
--Personal Director
--0

	NODE(0)
		SAY("Ihre Registrierung ist nun vollständig abgeschlossen. Hier ist ihr ID Cube.")
		
		ANSWER("Ein ID Cube? Wozu ist der gut?",1)
	NODE(1)
		SAY("Der ID Cube enthält ihre persönlichen Daten und zeichnet sie als Mitglied der Fallen Angels aus. Netürlich gibt es ausserdem noch eine digitale Kopie ihrer wichtigsten persönlichen Daten. Aber nun zu etwas wichtigerem. Nach Analyse ihrer persönlichen Daten, hat der Forscherrat beschlossen, ihnen ein autonomes Forschungsprojekt zuzuweisen.")
		
		ANSWER("Ein Forscherprojekt für mich? Vielen Dank, aber was genau bedeutet das und was ist meine Aufgabe dabei?",2)
		ANSWER("Ich glaube nicht, dass ich dieser Aufgabe schon gewachsen bin. Tut mir leid.",5)
	NODE(2)
		SAY("Sie bekommen ein Forschungsprojekt, dass sie selbständig erforschen sollen. Die Liste der verschiedenen wählbaren Projekte ist dabei allerdings begrenzt, da es natürlich mit unseren Zielen übereinstimmen soll. Immerhin stellen wir ihnen einen Mitarbeiter zur Verfügung, der ihnen so weit es geht zur Hand gehen wird.")
		
		ANSWER("Das hört sich sehr gut an. Aber wo soll ich denn anfangen?",3)
	NODE(3)
		SAY("Der Forscherrat hat Grimm in der Laborsektion die entsprechenden Anweisungen gegeben. Er wird ihnen sagen können, welcher Mitarbeiter ihnen zur Seite stehen wird. Viel Erfolg wünsche ich. Ihre Forschungsergebnisse werden entscheiden, welchen Rang sie hier bekleiden werden.")
		SETNEXTDIALOGSTATE(4)
		STARTMISSION()
		ENDDIALOG()
		
	NODE(4)
		SAY("Grimm wird ihnen weitere Weisungen geben können. Er ist in den Forschungsebenen des HQs.")
		
		ENDDIALOG()
	NODE(5)
		SAY("Ist schon in Ordnung, wenn sie sich der Aufgabe noch nicht gewachsen fühlen.")
		
		ENDDIALOG()
--------------------------------------------------------------------
--Grimm
--50
	NODE(50)
		SAY("Sie schon wieder, ich hoffe sie haben einen guten Grund mich von der Arbeit abzuhalten.")
		
		ANSWER("Allerdings. Sie sollen mir angeblich weiterhelfen können, um mein autonomes Forschungsprojekt zum Start zu verhelfen.",51)
	NODE(51)
		SAY("Man hat ihnen tatsächlich ein autonomes Forschungsprojekt zugewiesen?! Bei mir hat es drei Jahre gedauert, bis ich ein eigenes Projekt erforschen durfte! Zeigen sie mir ihren ID Cube, ich kann es nicht glauben.")
		
		ANSWER("Bitte sehr. Es ist alles vom Forscherrat selbst genehmigt worden.",52)
	NODE(52)
		SAY("Das ist ja eine bodenlose Frechheit, dass ist eindeutig ein Fehler. Ich werde den verantwortlichen zur Rechenschaft ziehen.")
		
		ANSWER("Jetzt hören sie mal zu, mir wurde diese Aufgabe von einem Personal Director gegeben und ich sehe nicht ein, warum ich nicht gleich anfangen kann.",53)
	NODE(53)
		SAY("Nun gut, sie wollen einen autonomen Forschungsauftrag, dann werden sie ihn auch bekommen. Aber wagen sie es nicht mich da mit hineinzuziehen. Ich teile ihnen Constantine als technische Assistentin zu. Machen sie das beste daraus, aber sie werden wahrscheinlich eh jämmerlich versagen.")
		
		ANSWER("Sie können meinetwegen glauben, was sie wollen. Auf Wiedersehen.",54)
	NODE(54)
		SAY("Machen sie nur den kleinsten Fehler und es ist aus mit den Forschungsauftrag, hören sie?!")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(55)
		ENDDIALOG()
		
	NODE(55)
		SAY("Seien sie sich lieber im klaren darüber, dass ich ein Auge auf sie werfen werde.")
		
		ENDDIALOG()
--------------------------------------------------------------------
--Constantine
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Hallo, vielleicht könnten wir uns später treffen? Ich habe im Moment wirklich keine Zeit.")
		else
			SAY("So sieht man sich wieder. Hat sich schon etwas ergeben? Wurdest du schon einer Abteilung zugewiesen?")
		
			ANSWER("Ja, ich habe einen autonomen Forschungsauftrag bekommen.",101)
		end
	NODE(101)
		SAY("Wirklich? Es geschieht selten, dass ein solcher Auftrag an Neulinge vergeben wird. Dann musst du wohl ziemlich qualifiziert sein, was?")
		
		ANSWER("Nicht der Rede wert. Ich hatte gehofft, da du mir als technische Assistentin zugewiesen worden bist, könntest du mir etwas weiterhelfen.",102)
	NODE(102)
		SAY("Das heisst also, wir arbeiten zusammen an dieser Forschungsarbeit. Ein bischen neidisch bin ich ja schon. Ich hoffe Grimm bekommt davon nichts mit.")
		
		ANSWER("Ich fürchte er war derjenige, der sie mir zugewiesen hat.",103)
	NODE(103)
		SAY("Oh je, dann wird er sich jetzt wohl die Haare ausreissen vor Neid. Ich denke nicht, dass man ihm jetzt entgegentreten sollte.")
		
		ANSWER("Ja, er hat sich ziemlich abfällig mir gegenüber geäussert, aber kommen wir zurück zum Thema.",104)
	NODE(104)
		SAY("In Ordnung. Die autonomen Forschungsprojekte werden immer aus einem Pool von bestimmten notwendigen Informationen vergeben. Hat man dir schon eins zugewiesen?")
		
		ANSWER("Nein, bis jetzt noch nicht.",105)
	NODE(105)
		SAY("Dann heisst das wohl, dass du dir eines aussuchen darfst. Welches darf es denn sein? Momentan sind zwei Projekte zur Auswahl. Ein Felddämpfer für radioaktive Felder und ein Gen Resequencer, der mutierte Gene wieder in den Ursprungszustand bringen kann. ")
		
		ANSWER("Das ist nicht leicht, es sind alle beide sehr interessante und wichtige Gebiete. Vielleicht würde es mir leichter fallen mich zu entscheiden, wenn ich wüsste, was das höhere Ziel dabei ist.",106)
	NODE(106)
		SAY("Das ist schnell erklärt. Ist inzwischen ja auch kein Geheimnis mehr. Es wird hier unten ein Terraformer entwickelt. Bis der allerdings fertig ist, werden noch viele Jahrzehnte vergehen, denke ich. Er soll die Erde wieder in einen blauen Planeten verwandeln können.")
		
		ANSWER("Wenn das so ist, wähle ich den Gen Resequencer",107)
		ANSWER("Wenn das so ist, wähle ich den Felddämpfer als Forschungsarbeit",108)
	NODE(107)
		SAY("Soll mir recht sein, die Hauptarbeit liegt ja eh nicht bei mir. Es gibt allerdings auch einen Weg um diese ganze Arbeit auch leichter zu machen, wenn man gewillt ist, dieser speziellen Sache auch nachzugehen.")
		
		ANSWER("Erzähl mir mehr davon.",109)
	NODE(108)
		SAY("Soll mir recht sein, die Hauptarbeit liegt ja eh nicht bei mir. Es gibt allerdings auch einen Weg um diese ganze Arbeit auch leichter zu machen, wenn man gewillt ist, dieser speziellen Sache auch nachzugehen.")
		
		ANSWER("Erzähl mir mehr davon.",109)
	NODE(109)
		SAY("Nun es gibt hier Baupläne von einem Implantat, welches die eigenen Fähigkeiten vervielfacht. Damit sollte einem eine solche Arbeit doch viel leichter fallen, oder nicht.")
		
		ANSWER("Ja, das hört sich wirklich viel versprechend an. Wo ist der Haken?",110)
	NODE(110)
		SAY("Der Haken an der Sache ist, dass das Design des Implantats noch nicht voll ausgereift ist und daher noch etwas Arbeit investiert werden müsste. Allerdings arbeiten zusätzlich noch andere Abteilungen immer mal wieder an diesem Projekt. Es würde sich glaube ich aber lohnen etwas Arbeit dort hineinzustecken.")
		
		ANSWER("Dann werde ich mal deinem Rat folgen und auch etwas Arbeit investieren.",111)
	NODE(111)
		SAY("Danke sehr. Falls du bereit bist, kannst du auch gleich etwas dafür tun. Ein Mitarbeiter aus einer anderen Sektion hat nämlich genau für dieses Implantat eine Chemikalie bei ProtoPharm bestellt. Natürlich nicht offiziell, da viele Fraktionen in Neocron uns sehr misstrauisch gegenüber stehen. Leider ist dieser aber nun ausgefallen, vielleicht kannst du ja anstatt dessen die Chemikalie aus dem El Farid Dorf holen, hmm?")
		
		ANSWER("Ahh, ich wette du hast mich absichtlich auf dieses Projekt angesetzt, nur damit ich diese Chemikalie abhole, was? Aber na gut, es würde mich eh mal interessieren an was ProtoPharm so arbeitet.",112)
	NODE(112)
		SAY("Sehr gut, rede einfach mit Rick Boujard im El Farid Dorf. Er sollte dir die Chemikalie übergeben können. Ich kann diese danach dann weiterleiten, falls du willst.")
		
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()

--------------------------------------------------------------------
--Rick Boujard
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Bitte verschwinden sie hier, ich warte auf jemanden.")
			ENDDIALOG()
		else
			SAY("He, sie, Runner! Sie können hier doch nicht einfach hereinspazieren!")
		
			ANSWER("Ich soll hier einen gewissen Mr. Boujard treffen. Es geht um einen kleinen Deal.",151)
		end
	NODE(151)
		SAY("Ach, warum sagen sie das nicht gleich? Ich habe schon auf sie gewartet. Das treffen sollte schon vor drei Stunden gewesen sein.")
		
		ANSWER("Unglücklicherweise ist ein Kollege ausgefallen und ich bin für ihn eingesprungen.",152)
	NODE(152)
		SAY("Nun, das macht mich schon etwas stutzig. Können sie sich irgendwie ausweisen. Ich meine, ich habe die Zahlung zwar schon erhalten, aber es handelt sich immerhin um ein nicht überall erhältliches Chemiekonzentrat.")
		
		ANSWER("Ich fürchte nein, es ging alles so schnell. Aber wenn ich nicht der wäre, für den ich mich ausgebe, woher wüsste ich dann von dieser Chemikalie?",153)
--Chemikalienkonzentrat
	NODE(153)
		GIVEITEM(9300)
		SETNEXTDIALOGSTATE(154)
		SAY("Da haben sie nun auch wieder recht. Dann hier bitte, ich hoffe es hilft ihnen bei ihrem Fallen Angel Projekt weiter.")
		
		ANSWER("Was meinen sie denn damit?",154)
	NODE(154)
		SAY("Sie sind nicht von den Fallen Angels? Nein, wie dumm von mir. Vergessen sie einfach, was ich gesagt habe.")
		
		ANSWER("Das ist mir jetzt nicht ganz geheuer.",155)
	NODE(155)
		SAY("Machen sie sich mal keine Sorgen, ich habe nichts gegen die Fallen Angels. Sie haben doch die Chemikalie oder nicht? Nun gehen sie einfach mal wieder.")
		SETNEXTDIALOGSTATE(156)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
		
	NODE(156)
		SAY("Los, verschwinden sie, es muss ja nicht jeder mitbekommen, dass ich ihnen was übergeben habe...")
		
		ENDDIALOG()
--------------------------------------------------------------------
--Constantine
--200
	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Du solltest Rick Boujard in El Farid nach der Chemikalie bitten.")
			ENDDIALOG()
		else
			TAKEITEM(9300)
			if(result==0)then
				SAY("Hast du die Chemikalie schon besorgen können? Sie ist bei einem gewissen Rick Boujard in El Farid zu finden.")
				ENDDIALOG()
			else
				SAY("Schön dich wiederzusehen, ich hoffe die Reise verlief ruhig und sicher. Hast du die Chemikalie.")
			
				ANSWER("Das ist natürlich wieder das erste wonach du fragst. Aber ja, ich habe die Chemikalie.",201)
			end
		end
	NODE(201)
		SAY("Da wird sich die Bio Abteilung aber freuen. Die suchen nämlich schon länger nach dieser Chemikalie.")
		
		ANSWER("Hat das einen bestimmten Grund?",202)
	NODE(202)
		SAY("Ja, ProtoPharm stellt als einzige Firma diese Chemikalie her. In öffentlichen Nachfragen wollten sie diese allerdings nicht an uns verkaufen. Wahrscheinlich haben sie wie viele der Neocron Fraktionen einige Vorurteile uns gegenüber.")
		
		ANSWER("Da fällt mir ein, dass Mr. Boujard wusste, dass ich von den Angels war.",203)
	NODE(203)
		SAY("Das ist schon recht seltsam. Aber was können sie jetzt schon tun? Wir haben ja jetzt die Chemikalie. Mach dir da mal keine Sorgen. Der Forscherrat hat übrigens den ersten Teil des Forschungsetats überwiesen. 4000 Credits. Mehr ist laut offizieller Erklärung nicht machbar, tut mir leid.")
		
		ANSWER("Dann muss ich damit wohl auskommen. Danke trotzdem. Können wir dann nicht gleich mit der Forschung beginnen?",204)
	NODE(204)
		GIVEMONEY(4000)
		SAY("Das wäre schön, nein, ich muss noch viele Daten der verschiedenen Abteilungen sammeln bevor es so richtig los gehen kann. Warum nimmst du dir nicht etwas Auszeit und forschst selbständig etwas weiter? Wenn du noch nicht so viel Erfahrung damit hast, kannst du dich ja auch noch etwas mehr in die Materie vertiefen. (nächste Mission Level 30)")
		EPICRUNFINISHED(14,1)
		ACTIVATEDIALOGTRIGGER(3)
		ENDDIALOG()

end