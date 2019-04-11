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
		SAY("Es hat sich wieder eine M�glichkeit ergeben, wieder etwas f�r NEXT zu tun. Es ist nicht ganz leicht zu erkl�ren, da viele Leute innerhalb Neocrons geteilte Meinungen �ber die Fallen Angels haben. Viele Meinungen st�tzen sich dabei auf Unwahrheiten und Vorurteile und nur wenige k�nnen objektiv Gr�nde angeben, die gegen die Fallen Angels sprechen. ")
		
		ANSWER("WEITER",1)
	NODE(1)
		SAY("Trotzdem haben die FallenAngels ein eher angespanntes Verh�ltnis zur CityAdmin. Da ist es schade, dass sie  ein enormes technisches Know How besitzen, von dem viele profitieren k�nnten. NEXT bildet sich ein Urteil �ber Vereinigungen nur anhand des Potentials und der Aktionen der Vereinigung. Dabei werden Vorurteile nicht bedacht. Genau das ist auch hier der Fall.")
		
		ANSWER("Ja, aber wo soll das alles jetzt hinf�hren? Hat NEXT etwa Verbindungen zu den Fallen Angels?",2)

	NODE(2)
		SAY("Genau dies ist der Punkt. Offiziell haben wir keine Verbindung zu ihnen. Wir sind jedoch nicht gewillt, immense Resourcen in die Forschung zu stecken um etwas zu erforschen, was es schon gibt. NEXT muss in dieser Beziehung allerdings sehr vorsichtig vorgehen. Falls dies Publik w�rde und mit Fakten untermauert werden k�nnte, w�re das sicherlich ein ziemlicher Prestige Verlust. ")
		
		ANSWER("WEITER",3)
	NODE(3)
		SAY("NEXT ist trotz der Gefahren gewillt, einen gewissen Kontakt aufrecht zu erhalten. Wir haben erst vor kurzem einen Austausch von Informationen zugestimmt, aber wir suchten noch die richtige Person, um diesen Auftrag auszuf�hren.")
		
		ANSWER("Das heisst wohl, dass ihr die richtige Person in mir gefunden habt, richtig?",4)
		ANSWER("Falls ihr dabei an mich gedacht habt, ich habe momentan keine Zeit.",8)

	NODE(4)
		SAY("Sehr scharfsinnig, aus ihnen k�nnte noch einmal etwas werden. Sie wissen also wo die Einrichtung der Fallen Angels liegt?")
		
		ANSWER("Tech Haven wird es genannt, oder t�usche ich mich da?",5)
	NODE(5)
		SAY("Nein, das ist wohl war. Und tats�chlich w�rden es manche wohl f�r das technische Paradies halten. Warum? Nun, das werden sie sehen, wenn sie dort ankommen. Es liegt in den Wastelands und die Geschichte die dahinter steckt ist auch recht interessant, jedoch m�chte ich sie nicht langweilen. NEXT w�rde sie mit der Aufgabe nach Tech Haven schicken, sich dort mit einem gewissen Elias zu treffen. Er sollte sie in einem der Eing�nge zu Tech Haven erwarten.")
		
		ANSWER("WEITER",6)

	NODE(6)
		SAY("Es wurde uns zugesagt, er habe die Vollmacht, f�r die Fallen Angels zu sprechen, obwohl er das gerne aufgrund der momentanen politisch heilklen Situation verleugnet. H�ren sie sich an, was er zu sagen hat. Er wird ihnen auch einen Steuerungschip geben, den sie zu Mr Mason bringen sollten. Ich denke, sie haben ihn schon kennengelernt.")
		
		ANSWER("Ja, ich werde mich dann mal auf den Weg machen.",7)
	NODE(7)
		SAY("Viel Gl�ck und passen sie bei der Durchquerung der Wastelands auf sich auf.")
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
		
		ANSWER("Wie ich angezogen bin ist ja wohl v�llig irrelevant. Ich komme im Auftrag von NEXT, wie abgemacht.",51)
	NODE(51)
		SAY("Ich hatte erwartet zumindest einen richtigen Employee von NEXT hier empfangen zu d�rfen. Sie sind ja nur ein einfacher Runner.")
		
		ANSWER("So ist das also? Tja, wie es aussieht haben sie keine andere Wahl, als mit mir vorlieb nehmen zu m�ssen.",52)
	NODE(52)
		SAY("Wenn es denn sein muss. Haben sie �berhaupt die ben�tigte Expertise auf den Gebieten, um die es hier geht?")
		
		ANSWER("Seid unbesorgt, ich bin gut vorbereitet. Und falls ich ihnen nicht reiche, m�ssen diese Gespr�che wohl um ein paar Monate verz�gert werden. Daf�r Sorge ich schon.",53)
	NODE(53)
		SAY("Ist ja schon gut. Dann fange ich mal an. Aber soll ich ihnen zuerst von der Cryotechnik erz�hlen? Ja, ich denke da fangen wir an. Aber sie wissen schon, was die Cryotechnik ist, nicht wahr?")
		
		ANSWER("Damit k�nnen Menschen auf eine fast unbegrenzte Zeit im Winterschlaf gehalten werden, richtig?",54)
	NODE(54)
		SAY("Ja, richtig, es ist besonders nutzbringend in der Raumfahrt und ist schon seit langer Zeit bekannt. Uns ist es bei den Fallen Angels gelungen ist die Leistung der Cryotechnik noch einmal zu erh�hen.")
		
		ANSWER("WEITER",55)
	NODE(55)
		SAY("Im Endeffekt hat dies den Vorteil, dass Personen die aus einem sehr langen Cryo Schlaf aufwachen nicht mehr an K�ltebrand oder �hnlichen Krankheiten leiden werden. Man dachte sich, dass NEXT vielleicht daran interessiert sein w�rde.")
		
		ANSWER("Ich k�nnte mir das schon vorstellen, immerhin hat NEXT auch sehr viel mit Raumfahrt zu tun. Aber ich kann nichts definitives dazu sagen.",56)
	NODE(56)
		SAY("So etwas habe ich mir schon gedacht, lieber aufgrund der Politik mal abwarten, auf Nummer sicher gehen. Naja, ich habe die Daten �ber einen gesicherten Channel auch an eure Labore weitergeleitet. Entscheidet euch wann ihr wollt.")
		
		ANSWER("Es war doch ausserdem noch die Rede von einem Steuerchip, oder hatte ich da etwas falsch verstanden?",57)
	NODE(57)
		SAY("Nein, in der Tat, das war auch der urspr�ngliche Grund f�r dieses Treffen. Die Fallen Angels haben einen Prototypen eines neuen Steuerungschips fertig gestellt. Er funktioniert effizienter und einige Probleme des Vorg�ngermodells wurden ausgemerzt. Er sollte gut zu dem restlichen Experimental Fahrzeug passen. Hier, ich habe den Chip bei mir, nehmen sie ihn. Die Bezahlung wird, denke ich wie �blich erfolgen.")
		
		ANSWER("Was f�r ein Experimental Fahrzeug?",58)
	NODE(58)
		GIVEITEM(9101)
		SETNEXTDIALOGSTATE(59)
		SAY("Ich denke das ist noch ein Geheim Projekt, ich kann leider nicht mehr dar�ber sagen. Viel Gl�ck weiterhin.")
		
		ANSWER("Ich h�tte gerne ein bischen mehr �ber Tech Haven erfahren.",59)
	NODE(59)
		SAY("*seufz* Na gut. Tech Heaven wurde f�r die Zwecke der Fallen Angels erbaut, 2633, wenn ich mich recht entsinne. Seit dem sind jedoch die Angels durch politischen Druck gezwungen worden Tech-.Haven zu verlassen und sich im Dome of York neu anzusiedeln. Tech Haven wird seitdem als neutraler Handelsposten unter der f�hrung von einigen unabh�ngigen Fallen Angel Mitgliedern genutzt.")
		
		ANSWER("WEITER",60)
	NODE(60)
		SAY("Diese Splittergruppe der Fallen Angels versucht ihre Verbindungen zu anderen Fraktionen zu legitimieren indem sie den Profit in den Vordergrund stellen. Aber das geheime Labor in den tiefen des Techhavens spricht wohl f�r Ihre eigenen Ziele. Wenn Sie mehr �ber Tech Haven wissen wollen fragen Sie mal dort nach. So, ich habe jetzt keine Zeit mehr, f�rchte ich. Gehen sie zur�ck nach Neocron.")
		SETNEXTDIALOGSTATE(61)
		ENDDIALOG()
		
	NODE(61)
		SAY("H�ren sie, wir haben hier sehr viel zu tun, gehen sie am besten zu ihrer Firma zur�ck.")
		ENDDIALOG()
		

-----------------------------------------------------
--Mason

	NODE(100)
		TAKEITEM(9101)
		if(result==0)then
			SAY("Bringen sie den Steuerungschip sofort zu mir, wenn sie ihn haben.")
			ENDDIALOG()
		else
			SAY("Haben sie den Chip bekommen k�nnen?")
		
			ANSWER("Ja, obwohl der Fallen Angel Kontakt ziemlich hochn�sig war.",101)
		end
	NODE(101)
		SAY("Das sieht ihnen �hnlich. Aber solange sie gute Waren liefern kann mir das egal sein. Dieser Chip wird es unserer neuen Fahrzeug Generation erm�glichen, noch schneller auf etwaige Hindernisse reagieren zu k�nnen und die Steuerung vereinfachen. Fahrzeuge sind die Zukunft! Nicht Irata III wie Mr Digger immer sagt. ")
		
		ANSWER("WEITER",102)
	NODE(102)
		SAY("Hier gibt es doch alles, was man sich w�nschen kann, man muss es sich nur nehmen. Und dieser ganze Irata III Mist, bedeutet auch nur, dass die Menschheit noch ein weiteres Paradies in eine radioaktiv verstrahlte Ein�de verwandeln wird.")
		
		ANSWER("Aber kann es nicht sein, dass Irata III wirklich so wunderbar ist, wie alle sagen?",103)
	NODE(103)
		SAY("Lassen sie sich eines sagen, Irata III mag wunderbar sein und doch sage ich, hier liegt die Zukunft. Abgesehen davon, dass die Menschheit es nicht verdient hat, noch einen blauen Planeten in die H�nde zu bekommen, gibt es hier alles, was wir brauchen. Und wenn wir es hier nicht schaffen, so ist es nur eine Frage der Zeit, bis Irata III das selbe Schicksal erleidet. Das ist alles was ich zu diesem Thema zu sagen habe.")
		
		ANSWER("Sie scheinen recht bitter zu sein.",104)
	NODE(104)
		GIVEMONEY(5000)
		SAY("Bitter? Ach, es ist schon zu lange her, als dass ich dar�ber verbittert sein k�nnte. Es hat mir nur die Augen ge�ffnet, mir die Wirklichkeit gezeigt. Ich m�chte nicht mehr dar�ber reden. NEXT wird sie auch weiterhin noch brauchen k�nnen, also bringen sie sich mal in Form. Hier sind 5000 Credits als Belohnung.")
		EPICRUNFINISHED(3,1)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
		
end