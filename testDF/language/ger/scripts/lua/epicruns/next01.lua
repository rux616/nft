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
		SAY("Willkommen, wir hier bei NEXT freuen uns immer auf neue Zugänge. Ich hoffe ihr Appartement befindet sich in einem akzeptablen Zustand? Wie sie vielleicht Wissen beschäftigt NEXT sich mit allem was zur Fortbewegung dient. Fast alle Arten von Fahrzeugen, die man in und um Neocron herum sehen kann, sind in den Werkshallen von NEXT entstanden.")
		
		ANSWER("WEITER",1)
	NODE(1)
		SAY("Vom Hoverbike, über die Subways bis zu Raumschiffen kann NEXT alles produzieren. Aber damit NEXT auf diesem Sektor konkurrenzlos bleibt sind wir geradezu verpflichtet unsere guten Geschäftsbeziehungen zu allen anderen Firmen zu pflegen. Würden sie uns dabei etwas unter die Arme greifen, oder haben sie sich noch nicht eingelebt?")
		
		ANSWER("Ja, ich denke, ich kann NEXT helfen.",2)
		ANSWER("Im Moment passt es mir leider überhaupt nicht.",9)
	NODE(2)
		SAY("Hervorragend. Leute wie sie brauchen wir. Es geht um eine mögliche Kooperation bei einem grossen Projekt zwischen uns und BioTech. Natürlich ist das nicht die einzige Firma zu der wir Beziehungen pflegen, ganz vorne mit dabei ist Tangent und natürlich die CityAdmin. ")
		
		ANSWER("WEITER",3)
	NODE(3)
		SAY("Teilweise kann man wohl von der CityAdmin auch schon fast behaupten, sie sei eine Firma. Das längerfristige Ziel dieser Beziehungen ist es, endlich wieder ein Tor zu den Sternen zu öffnen, genauer gesagt Irata III. Der Leiter von NEXT, Craig Diggers, ist sehr darauf bedacht, das Raumfahrtprogramm wiederzubeleben.")
		
		ANSWER("Hat dies einen besonderen Grund?",4)
	NODE(4)
		SAY("Mr. Diggers erlitt damals einen schrecklichen Unfall. Sein Traum war es den großen Trek nach Irata III zu begleiten. Doch er verlor in  einem Unfall beide Beine und verpasste das Raumschiff. Seit diesem Unfall hat er diese Sehnsucht nach diesem Paradies Planeten Irata III nie ablegen können.")
		
		ANSWER("WEITER",5)
	NODE(5)
		SAY("Übrigens wurden damals nach dem Unfall beide Beine durch künstliche ersetzt und jetzt raten sie, wer diese Beine zur Verfügung gestellt hatte. BioTech! Ja, vermutlich ist dies auch der Grund, warum nun ein Raumfahrt Programm mit ihrer Hilfe entwickelt werden soll. Mr Diggers fühlt sich BioTech wohl immer noch etwas verbunden.")
		
		ANSWER("Ein Raumfahrtprogramm mit BioTech? Ich dachte, BioTech stellt nur Implantate und organische Hilfsmechanik her.",6)
	NODE(6)
		SAY("Ja, das vermuten sehr viele heutzutage, aber in Wirklichkeit befasste sich BioTech mit vielerlei verschiedenen Forschungssparten. Das beste Beispiel ist Tangent. Tangent war nämlich früher nur die Waffenabteilung von BioTech. Später wurde diese Abteilung aber so gross, dass sie sich von BioTech als eigene Firma trennen konnte. Aber nun zum Geschäft.")
		
		ANSWER("WEITER",7)
	NODE(7)
		GIVEITEM(9100)
		SETNEXTDIALOGSTATE(8)
		SAY("Diese Dokumente hier sind Kopien von bereits unterzeichneten Verträgen für BioTech. Dort warten sie wahrscheinlich schon darauf. Indem sie diese Verträge überbringen, werden sie uns nicht nur einen Gefallen erweisen. Sondern sie werden uns dadurch auch ihren Willen demonstrieren, etwas von Anfang bis Ende durchzuführen. Dies könnte der Anfang einer wunderbaren Karriere sein, also lassen sie sich nicht selbst im Stich.")
		
		ANSWER("Gut, ich werde diesen Auftrag übernehmen, wohin muss ich?",8)
	NODE(8)
		SAY("Sie wenden sich mit den Dokumenten direkt an den Director of Operations im Chez Sypher in VR1. Sie sollten ihn ohne weiteres finden können, ach ja, bevor ich es vergesse, wenden sie sich nach der Überbringung der Dokumente an Mr Mason. Er ist Vize Direktor von NEXT und findet sich auch hier im Gebäude. Viel Glück.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(10)
		ENDDIALOG()
		
	NODE(9)
		SAY("Dann nehmen sie sich etwas Zeit und kommen wieder, wenn sie bereit sind.")
		ENDDIALOG()
		
	NODE(10)
		SAY("Haben sie das Paket schon im Via Rosso 1 beim Director of Operations abgeliefert? Wenn ja, reden sie mit Mason hier im Eingangsbereich. Er ist eine sehr wichtige Persönlichkeit hier.")
		ENDDIALOG()
		


-----------------------------------------------------
--BioTech direx of operations

	NODE(50)
		TAKEITEM(9100)
		if(result==0)then
			SAY("Kommen sie wegen der Lieferung von NEXT? Aber wo ist dann diese Lieferung?")
			ENDDIALOG()
		else
			SAY("Es wurde mir bereits angekündigt, dass die Dokumente geliefert werden sollen. Haben sie sie auch present? Dann geben sie sie mir einfach.")
		
			ANSWER("Hier bitte, diese Dokumente besiegeln dann wohl diesen Vertrag.",51)
		end
	NODE(51)
		SAY("Ja, in der Tat, diese gemeinsamen Tests sollten es uns ermöglichen auf lange Sicht hinaus ein Raumschiff zu erschaffen, das weitaus besser als etliche Vorgängermodelle ist. ")
		
		ANSWER("WEITER",52)
	NODE(52)
		SAY("Für ein so grosses Projekt müssen sich Firmen allerdings zwangsläufig zusammenschliessen. Ein Raumschiff beinhaltet so viele verschiedene Technologien, dass eine einzige Firma dieses Projekt gar nicht vervollständigen könnte. ")
		
		ANSWER("Das kann ich mir denken. Auf Wiedersehen.",53)
	NODE(53)
		SAY("Halten sie die Ohren steif, in der Zukunft wird noch einiges auf Neocron zukommen, da bin ich mir sicher.")
		SETNEXTDIALOGSTATE(54)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
		
	NODE(54)
		SAY("Ich habe das Paket doch schon angenommen. Ich muss jetzt wieder zurück zur Arbeit. Sie sollten wohl auch besser zu NEXT zurückkehren.")
		ENDDIALOG()



-----------------------------------------------------
--Mason

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Kommen sie doch etwas später wieder, ich habe momentan keine Zeit. Vielleicht haben sie ja noch etwas zu erledigen.")
			ENDDIALOG()
		else
			SAY("Ich denke, wir haben uns zuvor noch nicht gesehen, ich bin Mason, meines Zeichens Vize Direktor hier im NEXT HQ. Vermutlich werden unsere Wege sich auch noch öfters kreuzen. Was bringt sie zu mir?")
		
			ANSWER("Ich habe wichtige Dokumente im BioTec HQ abgegeben. Dabei soll es sich wohl um eine Zusammenarbeit zwischen NEXT und BioTec handeln.",101)
		end
	NODE(101)
		GIVEMONEY(2000)
		SETNEXTDIALOGSTATE(102)
		SAY("Richtig, ich erinnere mich. Waren diese Dokumente nicht schon geliefert worden? Das wurde aber auch höchste Zeit. Sie haben diese Dokumente dann gerade zur rechten Zeit noch abgeliefert. Dafür ist eine kleine Belohnung wohl auch angebracht. Hier sind 2000 Credits. ")
		
		ANSWER("Danke, es war mir ein Vergnügen.",102)
	NODE(102)
		SAY("Hier bei NEXT gibt es immer genug zu tun. Wir haben es über einen langen Zeitraum hinweg geschafft uns einen guten Ruf zu verschaffen. Von der Gründung im Jahre 2723 bis zum den heutigen Tage. Aber neben der Pflege unseres guten Rufs gibt es natürlich auch noch etliche andere wichtige Aufgaben.")
		
		ANSWER("WEITER",103)
	NODE(103)
		SAY("Ich empfehle ihnen wieder herzukommen, wenn sie sich noch etwas mehr Ansehen bei NEXT verschafft haben. Dann können wir sie nämlich mit einem weiteren Auftrag betrauen. Am besten reden sie dann mit einem Human Resource Director. Auf Wiedersehen.(nächste Mission ab Level 20)")
		EPICRUNFINISHED(3,0)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
		

end