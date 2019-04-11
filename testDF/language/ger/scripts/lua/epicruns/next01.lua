--new
function DIALOG()

--Trigger
--Triggernumber,Type,Person
--
--0,D,BioTech
--1,D,Mason



--Startnode, Person
--0 Human Resource
--50 Biotech direx of operations
--100 Mason

-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("Willkommen, wir hier bei NEXT freuen uns immer auf neue Zug�nge. Ich hoffe ihr Appartement befindet sich in einem akzeptablen Zustand? Wie sie vielleicht Wissen besch�ftigt NEXT sich mit allem was zur Fortbewegung dient. Fast alle Arten von Fahrzeugen, die man in und um Neocron herum sehen kann, sind in den Werkshallen von NEXT entstanden.")
		
		ANSWER("WEITER",1)
	NODE(1)
		SAY("Vom Hoverbike, �ber die Subways bis zu Raumschiffen kann NEXT alles produzieren. Aber damit NEXT auf diesem Sektor konkurrenzlos bleibt sind wir geradezu verpflichtet unsere guten Gesch�ftsbeziehungen zu allen anderen Firmen zu pflegen. W�rden sie uns dabei etwas unter die Arme greifen, oder haben sie sich noch nicht eingelebt?")
		
		ANSWER("Ja, ich denke, ich kann NEXT helfen.",2)
		ANSWER("Im Moment passt es mir leider �berhaupt nicht.",9)
	NODE(2)
		SAY("Hervorragend. Leute wie sie brauchen wir. Es geht um eine m�gliche Kooperation bei einem grossen Projekt zwischen uns und BioTech. Nat�rlich ist das nicht die einzige Firma zu der wir Beziehungen pflegen, ganz vorne mit dabei ist Tangent und nat�rlich die CityAdmin. ")
		
		ANSWER("WEITER",3)
	NODE(3)
		SAY("Teilweise kann man wohl von der CityAdmin auch schon fast behaupten, sie sei eine Firma. Das l�ngerfristige Ziel dieser Beziehungen ist es, endlich wieder ein Tor zu den Sternen zu �ffnen, genauer gesagt Irata III. Der Leiter von NEXT, Craig Diggers, ist sehr darauf bedacht, das Raumfahrtprogramm wiederzubeleben.")
		
		ANSWER("Hat dies einen besonderen Grund?",4)
	NODE(4)
		SAY("Mr. Diggers erlitt damals einen schrecklichen Unfall. Sein Traum war es den gro�en Trek nach Irata III zu begleiten. Doch er verlor in  einem Unfall beide Beine und verpasste das Raumschiff. Seit diesem Unfall hat er diese Sehnsucht nach diesem Paradies Planeten Irata III nie ablegen k�nnen.")
		
		ANSWER("WEITER",5)
	NODE(5)
		SAY("�brigens wurden damals nach dem Unfall beide Beine durch k�nstliche ersetzt und jetzt raten sie, wer diese Beine zur Verf�gung gestellt hatte. BioTech! Ja, vermutlich ist dies auch der Grund, warum nun ein Raumfahrt Programm mit ihrer Hilfe entwickelt werden soll. Mr Diggers f�hlt sich BioTech wohl immer noch etwas verbunden.")
		
		ANSWER("Ein Raumfahrtprogramm mit BioTech? Ich dachte, BioTech stellt nur Implantate und organische Hilfsmechanik her.",6)
	NODE(6)
		SAY("Ja, das vermuten sehr viele heutzutage, aber in Wirklichkeit befasste sich BioTech mit vielerlei verschiedenen Forschungssparten. Das beste Beispiel ist Tangent. Tangent war n�mlich fr�her nur die Waffenabteilung von BioTech. Sp�ter wurde diese Abteilung aber so gross, dass sie sich von BioTech als eigene Firma trennen konnte. Aber nun zum Gesch�ft.")
		
		ANSWER("WEITER",7)
	NODE(7)
		GIVEITEM(9100)
		SETNEXTDIALOGSTATE(8)
		SAY("Diese Dokumente hier sind Kopien von bereits unterzeichneten Vertr�gen f�r BioTech. Dort warten sie wahrscheinlich schon darauf. Indem sie diese Vertr�ge �berbringen, werden sie uns nicht nur einen Gefallen erweisen. Sondern sie werden uns dadurch auch ihren Willen demonstrieren, etwas von Anfang bis Ende durchzuf�hren. Dies k�nnte der Anfang einer wunderbaren Karriere sein, also lassen sie sich nicht selbst im Stich.")
		
		ANSWER("Gut, ich werde diesen Auftrag �bernehmen, wohin muss ich?",8)
	NODE(8)
		SAY("Sie wenden sich mit den Dokumenten direkt an den Director of Operations im Chez Sypher in VR1. Sie sollten ihn ohne weiteres finden k�nnen, ach ja, bevor ich es vergesse, wenden sie sich nach der �berbringung der Dokumente an Mr Mason. Er ist Vize Direktor von NEXT und findet sich auch hier im Geb�ude. Viel Gl�ck.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(10)
		ENDDIALOG()
		
	NODE(9)
		SAY("Dann nehmen sie sich etwas Zeit und kommen wieder, wenn sie bereit sind.")
		ENDDIALOG()
		
	NODE(10)
		SAY("Haben sie das Paket schon im Via Rosso 1 beim Director of Operations abgeliefert? Wenn ja, reden sie mit Mason hier im Eingangsbereich. Er ist eine sehr wichtige Pers�nlichkeit hier.")
		ENDDIALOG()
		


-----------------------------------------------------
--BioTech direx of operations

	NODE(50)
		TAKEITEM(9100)
		if(result==0)then
			SAY("Kommen sie wegen der Lieferung von NEXT? Aber wo ist dann diese Lieferung?")
			ENDDIALOG()
		else
			SAY("Es wurde mir bereits angek�ndigt, dass die Dokumente geliefert werden sollen. Haben sie sie auch present? Dann geben sie sie mir einfach.")
		
			ANSWER("Hier bitte, diese Dokumente besiegeln dann wohl diesen Vertrag.",51)
		end
	NODE(51)
		SAY("Ja, in der Tat, diese gemeinsamen Tests sollten es uns erm�glichen auf lange Sicht hinaus ein Raumschiff zu erschaffen, das weitaus besser als etliche Vorg�ngermodelle ist. ")
		
		ANSWER("WEITER",52)
	NODE(52)
		SAY("F�r ein so grosses Projekt m�ssen sich Firmen allerdings zwangsl�ufig zusammenschliessen. Ein Raumschiff beinhaltet so viele verschiedene Technologien, dass eine einzige Firma dieses Projekt gar nicht vervollst�ndigen k�nnte. ")
		
		ANSWER("Das kann ich mir denken. Auf Wiedersehen.",53)
	NODE(53)
		SAY("Halten sie die Ohren steif, in der Zukunft wird noch einiges auf Neocron zukommen, da bin ich mir sicher.")
		SETNEXTDIALOGSTATE(54)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
		
	NODE(54)
		SAY("Ich habe das Paket doch schon angenommen. Ich muss jetzt wieder zur�ck zur Arbeit. Sie sollten wohl auch besser zu NEXT zur�ckkehren.")
		ENDDIALOG()



-----------------------------------------------------
--Mason

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Kommen sie doch etwas sp�ter wieder, ich habe momentan keine Zeit. Vielleicht haben sie ja noch etwas zu erledigen.")
			ENDDIALOG()
		else
			SAY("Ich denke, wir haben uns zuvor noch nicht gesehen, ich bin Mason, meines Zeichens Vize Direktor hier im NEXT HQ. Vermutlich werden unsere Wege sich auch noch �fters kreuzen. Was bringt sie zu mir?")
		
			ANSWER("Ich habe wichtige Dokumente im BioTec HQ abgegeben. Dabei soll es sich wohl um eine Zusammenarbeit zwischen NEXT und BioTec handeln.",101)
		end
	NODE(101)
		GIVEMONEY(2000)
		SETNEXTDIALOGSTATE(102)
		SAY("Richtig, ich erinnere mich. Waren diese Dokumente nicht schon geliefert worden? Das wurde aber auch h�chste Zeit. Sie haben diese Dokumente dann gerade zur rechten Zeit noch abgeliefert. Daf�r ist eine kleine Belohnung wohl auch angebracht. Hier sind 2000 Credits. ")
		
		ANSWER("Danke, es war mir ein Vergn�gen.",102)
	NODE(102)
		SAY("Hier bei NEXT gibt es immer genug zu tun. Wir haben es �ber einen langen Zeitraum hinweg geschafft uns einen guten Ruf zu verschaffen. Von der Gr�ndung im Jahre 2723 bis zum den heutigen Tage. Aber neben der Pflege unseres guten Rufs gibt es nat�rlich auch noch etliche andere wichtige Aufgaben.")
		
		ANSWER("WEITER",103)
	NODE(103)
		SAY("Ich empfehle ihnen wieder herzukommen, wenn sie sich noch etwas mehr Ansehen bei NEXT verschafft haben. Dann k�nnen wir sie n�mlich mit einem weiteren Auftrag betrauen. Am besten reden sie dann mit einem Human Resource Director. Auf Wiedersehen.(n�chste Mission ab Level 20)")
		EPICRUNFINISHED(3,0)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
		

end