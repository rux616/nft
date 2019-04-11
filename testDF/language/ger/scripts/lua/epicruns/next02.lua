--new
function DIALOG()

--Trigger
--Triggernumber,Type,Person

--0,D,Mason



--Startnode, Person
--0 Human Resource
--50 Elias
--100 Mason

-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("Es hat sich wieder eine Möglichkeit ergeben, wieder etwas für NEXT zu tun. Es ist nicht ganz leicht zu erklären, da viele Leute innerhalb Neocrons geteilte Meinungen über die Fallen Angels haben. Viele Meinungen stützen sich dabei auf Unwahrheiten und Vorurteile und nur wenige können objektiv Gründe angeben, die gegen die Fallen Angels sprechen. ")
		
		ANSWER("WEITER",1)
	NODE(1)
		SAY("Trotzdem haben die FallenAngels ein eher angespanntes Verhältnis zur CityAdmin. Da ist es schade, dass sie  ein enormes technisches Know How besitzen, von dem viele profitieren könnten. NEXT bildet sich ein Urteil über Vereinigungen nur anhand des Potentials und der Aktionen der Vereinigung. Dabei werden Vorurteile nicht bedacht. Genau das ist auch hier der Fall.")
		
		ANSWER("Ja, aber wo soll das alles jetzt hinführen? Hat NEXT etwa Verbindungen zu den Fallen Angels?",2)

	NODE(2)
		SAY("Genau dies ist der Punkt. Offiziell haben wir keine Verbindung zu ihnen. Wir sind jedoch nicht gewillt, immense Resourcen in die Forschung zu stecken um etwas zu erforschen, was es schon gibt. NEXT muss in dieser Beziehung allerdings sehr vorsichtig vorgehen. Falls dies Publik würde und mit Fakten untermauert werden könnte, wäre das sicherlich ein ziemlicher Prestige Verlust. ")
		
		ANSWER("WEITER",3)
	NODE(3)
		SAY("NEXT ist trotz der Gefahren gewillt, einen gewissen Kontakt aufrecht zu erhalten. Wir haben erst vor kurzem einen Austausch von Informationen zugestimmt, aber wir suchten noch die richtige Person, um diesen Auftrag auszuführen.")
		
		ANSWER("Das heisst wohl, dass ihr die richtige Person in mir gefunden habt, richtig?",4)
		ANSWER("Falls ihr dabei an mich gedacht habt, ich habe momentan keine Zeit.",8)

	NODE(4)
		SAY("Sehr scharfsinnig, aus ihnen könnte noch einmal etwas werden. Sie wissen also wo die Einrichtung der Fallen Angels liegt?")
		
		ANSWER("Tech Haven wird es genannt, oder täusche ich mich da?",5)
	NODE(5)
		SAY("Nein, das ist wohl war. Und tatsächlich würden es manche wohl für das technische Paradies halten. Warum? Nun, das werden sie sehen, wenn sie dort ankommen. Es liegt in den Wastelands und die Geschichte die dahinter steckt ist auch recht interessant, jedoch möchte ich sie nicht langweilen. NEXT würde sie mit der Aufgabe nach Tech Haven schicken, sich dort mit einem gewissen Elias zu treffen. Er sollte sie in einem der Eingänge zu Tech Haven erwarten.")
		
		ANSWER("WEITER",6)

	NODE(6)
		SAY("Es wurde uns zugesagt, er habe die Vollmacht, für die Fallen Angels zu sprechen, obwohl er das gerne aufgrund der momentanen politisch heilklen Situation verleugnet. Hören sie sich an, was er zu sagen hat. Er wird ihnen auch einen Steuerungschip geben, den sie zu Mr Mason bringen sollten. Ich denke, sie haben ihn schon kennengelernt.")
		
		ANSWER("Ja, ich werde mich dann mal auf den Weg machen.",7)
	NODE(7)
		SAY("Viel Glück und passen sie bei der Durchquerung der Wastelands auf sich auf.")
		SETNEXTDIALOGSTATE(9)
		STARTMISSION()
		ENDDIALOG()
		

	NODE(8)
		SAY("Man kann es ja einmal versuchen, kommt wieder, falls ihr euch anders entschieden habt.")
		ENDDIALOG()
		
	NODE(9)
		SAY("Habt ihr euch schon mit Elias in Tech Haven getroffen?")
		ENDDIALOG()
		



-----------------------------------------------------
--Elias

	NODE(50)
		SAY("Ich habe sie schon erwartet. Man hat mich netterweise von ihrem kommen unterrichtet. Besonders offiziell sehen sie ja nicht aus.")
		
		ANSWER("Wie ich angezogen bin ist ja wohl völlig irrelevant. Ich komme im Auftrag von NEXT, wie abgemacht.",51)
	NODE(51)
		SAY("Ich hatte erwartet zumindest einen richtigen Employee von NEXT hier empfangen zu dürfen. Sie sind ja nur ein einfacher Runner.")
		
		ANSWER("So ist das also? Tja, wie es aussieht haben sie keine andere Wahl, als mit mir vorlieb nehmen zu müssen.",52)
	NODE(52)
		SAY("Wenn es denn sein muss. Haben sie überhaupt die benötigte Expertise auf den Gebieten, um die es hier geht?")
		
		ANSWER("Seid unbesorgt, ich bin gut vorbereitet. Und falls ich ihnen nicht reiche, müssen diese Gespräche wohl um ein paar Monate verzögert werden. Dafür Sorge ich schon.",53)
	NODE(53)
		SAY("Ist ja schon gut. Dann fange ich mal an. Aber soll ich ihnen zuerst von der Cryotechnik erzählen? Ja, ich denke da fangen wir an. Aber sie wissen schon, was die Cryotechnik ist, nicht wahr?")
		
		ANSWER("Damit können Menschen auf eine fast unbegrenzte Zeit im Winterschlaf gehalten werden, richtig?",54)
	NODE(54)
		SAY("Ja, richtig, es ist besonders nutzbringend in der Raumfahrt und ist schon seit langer Zeit bekannt. Uns ist es bei den Fallen Angels gelungen ist die Leistung der Cryotechnik noch einmal zu erhöhen.")
		
		ANSWER("WEITER",55)
	NODE(55)
		SAY("Im Endeffekt hat dies den Vorteil, dass Personen die aus einem sehr langen Cryo Schlaf aufwachen nicht mehr an Kältebrand oder ähnlichen Krankheiten leiden werden. Man dachte sich, dass NEXT vielleicht daran interessiert sein würde.")
		
		ANSWER("Ich könnte mir das schon vorstellen, immerhin hat NEXT auch sehr viel mit Raumfahrt zu tun. Aber ich kann nichts definitives dazu sagen.",56)
	NODE(56)
		SAY("So etwas habe ich mir schon gedacht, lieber aufgrund der Politik mal abwarten, auf Nummer sicher gehen. Naja, ich habe die Daten über einen gesicherten Channel auch an eure Labore weitergeleitet. Entscheidet euch wann ihr wollt.")
		
		ANSWER("Es war doch ausserdem noch die Rede von einem Steuerchip, oder hatte ich da etwas falsch verstanden?",57)
	NODE(57)
		SAY("Nein, in der Tat, das war auch der ursprüngliche Grund für dieses Treffen. Die Fallen Angels haben einen Prototypen eines neuen Steuerungschips fertig gestellt. Er funktioniert effizienter und einige Probleme des Vorgängermodells wurden ausgemerzt. Er sollte gut zu dem restlichen Experimental Fahrzeug passen. Hier, ich habe den Chip bei mir, nehmen sie ihn. Die Bezahlung wird, denke ich wie üblich erfolgen.")
		
		ANSWER("Was für ein Experimental Fahrzeug?",58)
	NODE(58)
		GIVEITEM(9101)
		SETNEXTDIALOGSTATE(59)
		SAY("Ich denke das ist noch ein Geheim Projekt, ich kann leider nicht mehr darüber sagen. Viel Glück weiterhin.")
		
		ANSWER("Ich hätte gerne ein bischen mehr über Tech Haven erfahren.",59)
	NODE(59)
		SAY("*seufz* Na gut. Tech Heaven wurde für die Zwecke der Fallen Angels erbaut, 2633, wenn ich mich recht entsinne. Seit dem sind jedoch die Angels durch politischen Druck gezwungen worden Tech-.Haven zu verlassen und sich im Dome of York neu anzusiedeln. Tech Haven wird seitdem als neutraler Handelsposten unter der führung von einigen unabhängigen Fallen Angel Mitgliedern genutzt.")
		
		ANSWER("WEITER",60)
	NODE(60)
		SAY("Diese Splittergruppe der Fallen Angels versucht ihre Verbindungen zu anderen Fraktionen zu legitimieren indem sie den Profit in den Vordergrund stellen. Aber das geheime Labor in den tiefen des Techhavens spricht wohl für Ihre eigenen Ziele. Wenn Sie mehr über Tech Haven wissen wollen fragen Sie mal dort nach. So, ich habe jetzt keine Zeit mehr, fürchte ich. Gehen sie zurück nach Neocron.")
		SETNEXTDIALOGSTATE(61)
		ENDDIALOG()
		
	NODE(61)
		SAY("Hören sie, wir haben hier sehr viel zu tun, gehen sie am besten zu ihrer Firma zurück.")
		ENDDIALOG()
		

-----------------------------------------------------
--Mason

	NODE(100)
		TAKEITEM(9101)
		if(result==0)then
			SAY("Bringen sie den Steuerungschip sofort zu mir, wenn sie ihn haben.")
			ENDDIALOG()
		else
			SAY("Haben sie den Chip bekommen können?")
		
			ANSWER("Ja, obwohl der Fallen Angel Kontakt ziemlich hochnäsig war.",101)
		end
	NODE(101)
		SAY("Das sieht ihnen ähnlich. Aber solange sie gute Waren liefern kann mir das egal sein. Dieser Chip wird es unserer neuen Fahrzeug Generation ermöglichen, noch schneller auf etwaige Hindernisse reagieren zu können und die Steuerung vereinfachen. Fahrzeuge sind die Zukunft! Nicht Irata III wie Mr Digger immer sagt. ")
		
		ANSWER("WEITER",102)
	NODE(102)
		SAY("Hier gibt es doch alles, was man sich wünschen kann, man muss es sich nur nehmen. Und dieser ganze Irata III Mist, bedeutet auch nur, dass die Menschheit noch ein weiteres Paradies in eine radioaktiv verstrahlte Einöde verwandeln wird.")
		
		ANSWER("Aber kann es nicht sein, dass Irata III wirklich so wunderbar ist, wie alle sagen?",103)
	NODE(103)
		SAY("Lassen sie sich eines sagen, Irata III mag wunderbar sein und doch sage ich, hier liegt die Zukunft. Abgesehen davon, dass die Menschheit es nicht verdient hat, noch einen blauen Planeten in die Hände zu bekommen, gibt es hier alles, was wir brauchen. Und wenn wir es hier nicht schaffen, so ist es nur eine Frage der Zeit, bis Irata III das selbe Schicksal erleidet. Das ist alles was ich zu diesem Thema zu sagen habe.")
		
		ANSWER("Sie scheinen recht bitter zu sein.",104)
	NODE(104)
		GIVEMONEY(5000)
		SAY("Bitter? Ach, es ist schon zu lange her, als dass ich darüber verbittert sein könnte. Es hat mir nur die Augen geöffnet, mir die Wirklichkeit gezeigt. Ich möchte nicht mehr darüber reden. NEXT wird sie auch weiterhin noch brauchen können, also bringen sie sich mal in Form. Hier sind 5000 Credits als Belohnung.")
		EPICRUNFINISHED(3,1)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
		
end