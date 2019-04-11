--new
--Fallen Angel 05
--
--Trigger
--Triggernumber,Type,Person
--0,D,Constantine(50) 1640
--1,D,Feng(100) 1641
--2,D,Constantine(150)
--
--
--Startnode, Person
--0, Personal Director
--50, Constantine 1640
--100, Feng 1641
--150, Constantine
--200,
--250,
--
--
--Missionbase Eintrag
--NPC0	NPC1	NPC2	NPC3	TRG0	VAL01	VAL02	VAL03	TRG1	VAL01	VAL02	VAL03	TRG2	VAL01	VAL02	VAL03	TRG3	VAL01	VAL02	
--1640	1641	0	0	3	0	0	0	3	1	1	0	3	0	2	0	0	0	0	
--START	START	START	START
--50	100	0 	0

--Items
-- BioTech Hacking Cpu 2 2234 Blueprint
-- Element T (Node 106) 9302
-- Forschungsimplantat (Node 153) 9305

function DIALOG()
--------------------------------------------------------------------
--Personal Director
--0
	
	NODE(0)
		SAY("Wir haben Neuigkeiten bezüglich der verräterischen Informationen, die sie uns über Grimm gegeben haben. Der Forscherrat hat sich die Daten gründlich durchgesehen und entschieden Grimm nun unter 24 Stunden Überwachung zu stellen und seinen Dienstgrad herabzustufen.")

		ANSWER("Das ist doch nicht fair, man sollte diesen Grimm verbannen. Ich wäre fast drauf gegangen wegen seiner Machenschaften. ",1)
	NODE(1)
		SAY("Die Betonung liegt hierbei auf fast. Da aber kein grosser Schaden entstanden ist und die Informationen, die er weitergegeben hat recht genereller Natur waren, wurde entschieden ihm nur einen Warnschuss vor den Bug zu versetzen.")

		ANSWER("Diesem Urteil muss ich mich dann wohl beugen. ",2)
	NODE(2)
		SAY("Ausserdem wurden weitere Forschungsgelder bereitgestellt. 35 000 Credits sind für ihr autonomes Forschungsprojekt bewilligt worden. Ihre Technik Assistentin hat mich ausserdem gebeten ihnen mitzuteilen, dass alle notwendigen Vorbereitungen getroffen worden sind und sie eigentlich loslegen können.")

		ANSWER("Gut, ich werde mich sofort darum kümmern.",3)
		ANSWER("Ich werde mich erst später darum kümmern können.",4)
	NODE(3)
		SAY("Viel Erfolg.")
		SETNEXTDIALOGSTATE(5)
		STARTMISSION()
		ENDDIALOG()
		
	NODE(4)
		SAY("Das ist ihre Entscheidung.")
		ENDDIALOG()

	NODE(5)
		SAY("Wollten sie nicht mit der technischen Assistentin Constantine sprechen?")
		ENDDIALOG()

	
--------------------------------------------------------------------
-- Constantine
--50
	NODE(50)
		SAY("Einen produktiven Tag, wir haben uns ja einige Zeit schon nicht mehr gesehen. Du hast also meine Nachricht bekommen, dass nun alle Daten da sind, die wir benötigen?")

		ANSWER("Ja, das habe ich. Ich warte jetzt ja auch schon lange genug darauf endlich die Forschung beginnen zu können.",51)
	NODE(51)
		SAY("Sehr gut, ich habe alle Daten, die die BioAbteilung bis jetzt über dieses Projekt gesammelt hat und wir benötigen allerdings noch ein, zwei Kleinigkeiten.")

		ANSWER("Das habe ich mir schon fast gedacht. Dann schieß mal los. Es gibt keinen Grund, warum wir noch länger warten sollten.",52)
	NODE(52)
		SAY("Wir brauchen noch einen Blueprint von einer BioTech Hacking CPU 2. Diese weist nämlich eine sehr sinnvolle Struktur für unser Projekt auf und der Vorteil ist, dass es sie schon gibt.")

		ANSWER("So weit, so gut. Was wäre denn, wenn ich nicht so gut im Researchen bin? ",53)
	NODE(53)
		SAY("Dann könntest du ja einfach einen anderen Researcher ansprechen, bei den Fallen Angels gibt es ja immerhin genug. Aber ich war noch nicht ganz fertig.")

		ANSWER("Noch mehr benötigte Gegenstände?",54)
	NODE(54)
		SAY("Ja, leider. Es werden noch einige Mineralien gebraucht, die wir aber im Moment nur über die Twilight Guardian bekommen können. Immerhin halten sie einige Minenkomplexe besetzt und haben daher auch alles auf Lager, was wir so brauchen könnten.")

		ANSWER("Was ist es denn so besonderes, was wir benötigen?",55)
	NODE(55)
		SAY("Nun, wir brauchen eine gewisse Metalllegierung, die Halbleiterqualitäten aufweist. Im Moment können wir diese Legierung nur durch Recyclen erstellen. Dazu benötigt man das Element T, welches von den Twilight Guardian in geringen Mengen verkauft wird, und Trisol, welches man recyclen kann oder vielleicht sogar kaufen.")

		ANSWER("Das ist so weit klar. Vielleicht kümmere ich mich erst einmal um den Blueprint.",56)
	NODE(56)
		SAY("Geht in Ordnung. Wenn du diesen hast, kannst du ihn mir geben und händige ihn an die BioAbteilung aus.  Ich kann dir dann ja noch einmal sagen, was du für den Halbleiter benötigst.")
		SETNEXTDIALOGSTATE(57)
		ENDDIALOG()


--Spieler besorgt Blueprint von Biotec Hacking CPU 2 (2234)
	NODE(57)
		TAKESPECIALITEMCNT(1507,1,2234,1)
		if(result==0)then
			SAY("Wolltest du nicht erst den Blueprint von einer BioTech Hacking CPU 2 besorgen?")
			ENDDIALOG()
		else
			SAY("Gute Arbeit! Jetzt fehlt uns eigentlich nur noch die Halbleiter Legierung. Sie kann aus Trisol und dem Element T recycled werden. Das Element T kann man nur bei den Twilight Guardian bekommen. Feng Kennet ist im Canyon der Twilight Guardian für den Verkauf zuständig. Er ist zwar ein ziemlich radikaler Kerl, aber im Grunde genommen sehr zuverlässig.")

			ANSWER("Klar, ich kümmere mich darum und dann kann endlich das Implantat vervollständigt werden.",58)
		end
	NODE(58)
		SAY("Ich werde hier alles vorbereiten. Die Konstrukteure drüben in der BioAbteilung warten schon ungeduldig. Sei aber vorsichtig, der Weg zum Twilight Guardian Canyon ist sehr gefährlich.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()


--------------------------------------------------------------------
-- feng
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Hey, Soldat, du solltest dich besser nützlich machen und hier nicht sinnlos in der Gegend herumstehen.")
			ENDDIALOG()
		else
			SAY("He, du, Soldat!")

			ANSWER("Meinen sie mich? Ich bin hier, weil ich mit ihnen reden wollte...",101)
		end
	NODE(101)
		SAY("In dieser Zeit zählen Taten mehr als Worte und jede Sekunde, die wir zögern bedeutet einen Sieg für diesen Diktator Reeza. Wir müssen Handeln, sofort !")

		ANSWER("Aber ich brauch doch nur das Element T von ihnen.",102)
	NODE(102)
		SAY("So ist das also! Dann sag mir doch einmal, bist du für oder gegen Reeza?! Wo liegen deine Loyalitäten?")

		ANSWER("Ich habe zum Glück nicht so viel mit ihm zu schaffen, als Fallen Angel. Klar finde ich nicht so gut was er da in Neocron tut.",104)
		ANSWER("Ich denke, Reeza macht doch einen recht guten Job...",103)
	NODE(103)
		SAY("Waas?! Und das sagst du mir so ins Gesicht?! So etwas hier bei den Twilight Guardian zu sagen!! Verschwinde, oder ich werde dich höchstpersönlich erwürgen.")
		SETNEXTDIALOGSTATE(102)
		ENDDIALOG()
	NODE(104)
		SAY("Ja, du machst es dir ganz schön bequem Soldat. Warte nur, bis Copbots euch die Türen einrennen. Dann wirst auch du sehen, dass man Reezas Diktatur nicht wie ein Geschwür wachsen lassen darf. Man muss es zertreten und auf den Ruinen ein festes neues Fundament für eine glorreiche Zukunft aufbauen.")

		ANSWER("Um noch mal auf das Element T zu sprechen zu kommen...",105)
	NODE(105)
		SAY("Du hast Glück, dass du den Fallen Angels angehörst, ansonsten würde ich dir wohl nicht in tausend Jahren etwas von dem Element T überlassen. Aber da unsere Gegenseitigen Beziehungen sehr fruchtbar und gewinnbringend sind mache ich dir den Freundschaftspreis von 10000 das Stück. Na, ist das ein Wort?")

		ANSWER("Das ist aber ein ganz schön gesalzener Preis, aber wenn es denn sein muss.",106)
	NODE(106)
		TAKEMONEY(10000)
		if(result==0)then
			SAY("Auch wenn wir verbündet sind, heisst das noch lange nicht, dass wir euch Fallen Angeln alles schenken, was ihr haben wollt. Komm wieder, wenn du genug Geld hast.")
			SETNEXTDIALOGSTATE(105)
			ENDDIALOG()
		else
			GIVEITEM(9302)
			SAY("So ist recht, mit deinem Geld gehst du auf Nummer sicher, dass unser gemeinsames Streben nach einem besseren Neocron Schritt für Schritt Realität wird.")
			ACTIVATEDIALOGTRIGGER(1)
			SETNEXTDIALOGSTATE(107)
			ENDDIALOG()
		end
	NODE(107)
		SAY("Du kannst dich jederzeit bei uns einschreiben und den Kampf gegen das Reeza Regime gemeinsam mit uns aufnehmen.")
	
		ENDDIALOG()

--------------------------------------------------------------------
-- Constantine
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if (result==0)then
			SAY("Hast du das Element T schon mit Trisol in das Halbleitermaterial umgewandelt? Das Element T kannst du von Feng im Twilight Guardian Canyon Sektor E 13 bekommen.")
			ENDDIALOG()
		else
			SAY("Das Konstruktionsteam wartet nur noch auf die Teile, wie sieht es aus, können wir anfangen?")

			ANSWER("Ja, ich habe alles dabei. Der Halbleiter war ein gutes Stück arbeit, aber ich habe es.",151)
		end
	NODE(151)
		TAKEITEM(9306)
		if(result==0)then
			SAY("Hast du das Element T schon mit Trisol in das Halbleitermaterial umgewandelt? Das Element T kannst du von Feng im Twilight Guardian HQ bekommen.")
			ENDDIALOG()	
		else
			SAY("Exzellent! Das kann jetzt aber ein bischen dauern. Komm in einer Stunde noch mal zurück, vielleicht sind sie dann schon fertig.")
			SETNEXTDIALOGSTATE(152)
			ENDDIALOG()
		end
	NODE(152)
		SAY("Es tut mir leid, aber ich habe noch kein grünes Licht von dem Konstruktionsteam erhalten, es dauert offensichtlich noch etwas.")
		SETNEXTDIALOGSTATE(153)
		ENDDIALOG()
	NODE(153)
		GIVEMONEY(50000)
		GIVEITEM(9305)
		SAY("Endlich ist es fertig. Hier ist das Implantat und zusätzlich noch weitere Forschungsgelder. 50 000 Credits. Wir sehen uns dann, wenn du für die finale Phase bereit bist, ja? (nächste Mission Level 45)")
		EPICRUNFINISHED(14,4)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
	

end