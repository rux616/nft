--new
--Diamond Real Estate
--
--Trigger
--Triggernumber,Type,Person
--0,PVP, Black Dragon, 50
--1,D, Jenna NCPD, 100
--2,D, Human R, 150
--3
--
--Startnode, Person
--0, Human Resource Director
--50, Simmons 1628
--100, Jenna NCPD 1629
--150, Human Resource Director
--200,
--250,
--
--Items
--belastende Dokumente, 50 9352

function DIALOG()
--------------------------------------------------------------------
--Human Resource Director
--0
	
	NODE(0)
		SAY("Wenn sie jetzt bereit sind, dann k�nnen sie es ja noch einmal versuchen. Ich w�rde ihnen nahe legen, diesen Immobilien Makler Simmons noch einmal aufzusuchen. Er hat sich dank ihres Einsatzes entschieden, auf unsere Seite zu kommen. Er erschien sehr bestimmt und wusste, was er wollte.")

		ANSWER("Hat er den Verlust seiner Frau so schnell verwunden?",1)
		ANSWER("Es tut mir leid, aber ich bin noch nicht f�r einen weiteren Auftrag bereit.",2)
	NODE(1)

		SAY("Davon hat er nichts erz�hlt, aber er hat nach ihnen verlangt und war �berzeugt davon, dass er etwas gegen die Black Dragon tun kann. Und die machen uns unheimlich viel Schwierigkeiten in der letzten Zeit. Er ben�tigt ihre Hilfe bei seinem Vorhaben.  Da sie ihn ja anscheinend aber doch davon �berzeugen konnten bei uns zu arbeiten, ist hier ihre versprochene Pr�mie von 8000 credits. Sie bekommen sie, wenn sie diese Aufgabe zuende gebracht haben. Vergeuden sie nun aber nicht noch mehr Zeit. Sie finden Simmons wieder im Pepper Park 02 in dem Restaurant.")
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()
	NODE(2)
		SAY("Das ist schade, aber sie sollten es sich trotzdem noch einmal �berlegen.")
		ENDDIALOG()
--------------------------------------------------------------------
-- Simmons
--50
	NODE(50)
		SAY("Ich habe noch nicht die Gelegenheit gehabt mich bei ihnen zu bedanken. Selbst, wenn ich einen grossen Verlust erlitten habe, so haben sie doch etwas f�r mich getan. Und ich werde das nicht so schnell vergessen.")

		ANSWER("Es tut mir nur Leid, dass ich nicht mehr tun konnte. ",51)
	NODE(51)
		SAY("Das ist schon in Ordnung, sie tragen keinerlei Schuld dabei. Die einzigen, die f�r diese Grausamkeit zahlen sollen sind die Black Dragon.")

		ANSWER("Ich h�tte nicht gedacht, dass sie diesen Schmerz so schnell �berwinden w�rden.",52)
	NODE(52)
		SAY("Man muss mit seinem Leben einfach weiter machen, oder nicht? Auch wenn sie mir mehr bedeutet hat, als ich in Worte zu fassen vermag. Ich kann doch jetzt nicht einfach innehalten und abwarten bis auch ich sterbe, oder?")

		ANSWER("Das ist schon richtig, aber sie...",53)
	NODE(53)
		SAY("Lassen wir das. Kommen wir zu etwas wichtigerem. Vielleicht habe ich diesen Verlust ja auch noch nicht so �berwunden wie sie denken. Ich habe eine weitere Bitte an sie und ich werde im Austausch daf�r Diamond Informationen gegen die Black Dragon liefern.")

		ANSWER("Dar�ber wurde ich schon informiert. Was ist es genau, wof�r sie meine Hilfe brauchen?",54)
	NODE(54)
		SAY("T�ten sie sie.")

		ANSWER("Ich verstehe nicht.",55)
	NODE(55)
		SAY("T�ten sie einen von diesen Bastarden. Diese leibhaftigen Teufel verdienen es nicht besser. Alle... Alle sollen sie sterben f�r das, was sie Cathrine angetan haben.")

		ANSWER("Ich verstehe ja, dass der Schmerz sehr gross sein muss. Aber ist das der richtige Weg?",56)
	NODE(56)
		SAY("Wirklich? Was soll ich denn tun? Die CityAdmin fragen, ob sie mir wohl bei meiner Rache hilft? Das glauben sie ja selbst nicht. Nein, mein Ziel wird es sein, die Black Dragon in den Untergang zu leiten. Auch wenn ich dabei sterben sollte. Dann w�re ich auch wieder vereint mit meiner Liebsten.")

		ANSWER("Wenn es helfen sollte Diamond etwas Luft zu verschaffen und ihnen gleichzeitig etwas Seelenfrieden zu bescheren, so will ich es versuchen.",57)
	NODE(57)
		SAY("Sehr gut. Wie du ihn umbringst ist mir egal, Hauptsache sie sterben nicht zu schnell. Achte darauf nur einen Runner der Black Dragon zu t�ten, der in etwa deinen F�higkeiten entspricht. Keine Wache oder Personal.")

		ANSWER("Ist klar, dann werde ich mal mein bestes versuchen.",58)
	NODE(58)
		SAY("Kommen sie wieder zu mir, wenn sie einen von ihnen get�tet haben. Bis dahin werde ich auch etwas f�r sie haben, denke ich.")
		SETNEXTDIALOGSTATE(59)
		ENDDIALOG()

--Spieler t�tet drei Black Dragon Runner
		
	NODE(59)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Warum haben sie noch keinen Black Dragon Runner get�tet? Finden sie nicht, dass sie es verdient haben?")
			ENDDIALOG()
		else
			SAY("Gut gemacht. Der erste Schritt ist getan. W�hrend sie eine gute Ablenkung waren, konnte ich mir ein paar Namen und belastendes Material aneignen. Das ist mein Beitrag f�r Diamond. Gleichzeitig wird es den Black Dragon schaden. Das ist ja immerhin auch mein Ziel.")

			ANSWER("Jetzt spannen sie mich nicht auf die Folter, was haben sie denn?",60)
		end
	NODE(60)
		SAY("Hier, nehmen sie und tragen sie es zu der NCPD. Die werden dort mit den Namen mehr anfangen k�nnen. Oder sagen wir mal, die Namen und die Personen dazu werden bald schon keinen sicheren Ort mehr innerhalb von Neocron finden.")

		ANSWER("Gut, ich hoffe, dass wird Diamond eine dringend ben�tigte Atempause geben.",61)
	NODE(61)
		GIVEITEM(9352)
		SAY("Bringen sie diese Dokumente hier zur NCPD. �bergeben sie sie an Officer Jenna. Danach wird Diamond vielleicht wieder Verwendung f�r sie haben. Sie k�nnen ja einfach noch den Human Resource Director bei Diamond aufsuchen.")
		SETNEXTDIALOGSTATE(62)
		ENDDIALOG()
	NODE(62)
		SAY("Den Bericht sollten sie wirklich zur NCPD bringen. Danach k�nnen sie wieder den Human Resource Director bei Diamond aufsuchen.")
		ENDDIALOG()

--------------------------------------------------------------------
-- Jenna NCPD
--100
	NODE(100)
		TAKEITEM(9352)
		if(result==0)then
			SAY("Ich habe keine Zeit, B�rger. Verlassen sie diese Installation.")
			ENDDIALOG()			
		else
			SETNEXTDIALOGSTATE(101)
			SAY("Ich vertrete hier das Gesetz und die Ordnung. Fassen sie sich kurz, B�rger. ")

			ANSWER("Ich habe hier einige Hinweise auf ein paar sehr verd�chtige Personen. Sie k�nnten sich mal darum k�mmern.",101)
		end
	NODE(101)
		SAY("Diese Informationen sind konform mit unseren Angaben. Dank ihrer neuen Informationen wird es uns leichter fallen, diese Kriminellen ihrer gerechten Strafe zuzuf�hren. Vielen Dank. Falls sie mehr davon haben sollten sie nicht z�gern es an uns weiterzureichen.")
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(102)
		ENDDIALOG()
		
	NODE(102)
		SAY("Falls sie uns nicht noch weiter helfen wollen, verlassen sie bitte dieses Geb�ude.")

		ENDDIALOG()
--------------------------------------------------------------------
--Human Resource Director
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Haben sie Simmons schon aufgesucht? Wenn er Diamond wirklich helfen kann ist es einen Versuch Wert.")
			ENDDIALOG()			
		else
			SAY("Sie haben da wahrlich einen guten Fang gemacht, dieser neue Mitarbeiter, Simmons, hat sich als wahre Goldgrube entpuppt. Schon jetzt hat er den Black Dragon einen schweren Schlag versetzt. Man m�chte fast glauben, dass er eine pers�nliche Rechnung mit ihnen zu begleichen h�tte. ")

			ANSWER("Oh, glauben sie mir, es ist eine sehr pers�nliche Rechnung.",151)
		end
	NODE(151)
		SAY("Wie dem auch sei, damit habe ich nichts zu tun. Allerdings soll ich ihnen pers�nlich eine Pr�mie in H�he von 15000 Credits �berreichen. Ihre Dienste konnten uns leicht �berzeugen. Vor allen Dingen, dass sie nicht gez�gert haben f�r Diamond auch ihren Kopf zu riskieren hat uns schwer beeindruckt.")

		ANSWER("Ich tue was ich kann.",152)
	NODE(152)
		GIVEMONEY(15000)
		GIVEMONEY(8000)
		SETNEXTDIALOGSTATE(153)
		SAY("Dann machen sie weiter so. Wenn sie weiter so hart trainieren, so werden wir sie wohl �fters einsetzen k�nnen. Aber g�nnen sie sich erst einmal eine kleine Pause. (n�chste Mission Level 40)")
		EPICRUNFINISHED(2,3)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
	
	NODE(153)
		SAY("Go away")
		ENDDIALOG()

end