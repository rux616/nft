--************************
--name   : SINGLE_AS_TT_02.lua
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
		GENDERCHECK()
			if (result==1) then
				SAY("Kann ich Ihnen mit irgendetwas helfen, Sir?")
				SAY("Suchen Sie etwas wobei ich behilflich sein könnte, Sir? Tangent bietet eine grosse Auswahl der besten Produkte.")
				SAY("Ich bin sicher ein Tangent Verkaufs rep könnte Ihnen bei jedem Problem das Sie haben behilflich sein. Ich bin etwas beschäftigt im Moment.")
				SAY("Suchen Sie etwas bestimmtes? Ich habe nichts bei mir, aber ich kann Ihnen den Weg zum nächsten Tangent Laden beschreiben.")
				SAY("Hör zu Alter, ich hab ein Ding am laufen. Du willst wirklich nicht in der Gegend sein wenn es passiert. Verstanden?")
				SAY("Mann, ich bin kein Tangent Verkäufer. Geh zu einem unserer Geschäfte, falls Du irgendwelche Dienste brauchst.")

				ANSWER("Ich bin nicht daran interessiert irgendwas zu kaufen. Etwas zu benutzen ist mehr mein Stil. Bist du mein Kontaktmann?",2)
				ANSWER("Ganz ruhig, alles was ich will sind ein paar Informationen. Bist du der Kontakt für einen Tangent black op?",2)
				ANSWER("Ich bin im Moment nicht an Shopping interessiert. Vielleicht etwas Munition später, falls du verstehst was ich meine. Bist du der Kontakt?",2)
				ANSWER("Sorry, ich dachte du bist jemand anderer. Muss wohl zu viel Zeit vor den Term Bildschirmen verbracht haben.",1)
				ANSWER("Whups, falsche Person. Ich muss wirklich diese boosts reduzieren.",1)
				ANSWER("Ich denke ich bin irgendwo falsch abgebogen. Bis später.",1)

			else
				SAY("Kann ich irgendwie helfen Ma'am?")
				SAY("Suchen Sie etwas wobei ich behilflich sein könnte, Ma'am? Tangent bietet eine grosse Anzahl der besten Produkte.")
				SAY("Ich bin sicher ein Tangent Verkaufs rep könnte Ihnen bei jedem Problem das sie haben behilflich sein. Ich bin etwas beschäftigt im Moment.")
				SAY("Suchen Sie etwas bestimmtes? Ich habe nichts bei mir, aber ich kann Ihnen den Weg zum nächsten Tangent Laden beschreiben.")
				SAY("Hör zu, ich hab ein Ding am laufen. Du willst wirklich nicht in der Gegend sein wenn es passiert. Verstanden?")
				SAY("Lady, ich bin kein Tangent Verkäufer. Geh zu einem unserer Geschäfte, falls du irgendwelche Dienste brauchst.")

				ANSWER("Ich bin nicht daran interessiert irgendwas zu kaufen. Etwas zu benutzen ist mehr mein Stil. Bist du mein Kontaktmann?",2)
				ANSWER("Ganz ruhig, alles was ich will sind ein paar Informationen. Bist du der Kontakt für einen Tangent black op?",2)
				ANSWER("Ich bin im Moment nicht an Shopping interessiert. Vielleicht etwas Munition später, falls du verstehst was ich meine. Bist du der Kontakt?",2)
				ANSWER("Sorry, ich dachte du bist jemand anderer. Muss wohl zu viel Zeit vor den Term Bildschirmen verbracht haben.",1)
				ANSWER("Whups, falsche Person. Ich muss wirklich diese boosts reduzieren.",1)
				ANSWER("Ich denke ich bin irgendwo falsch abgebogen. Bis später.",1)
			end
	NODE(1)	
		SAY("Tut mir Leid das zu hören. Aber vergiss trotzdem nicht dem nächsten Tangent Shop einen Besuch abzustatten.")
		SAY("Echt? Gut, Sie sahen eh nicht so aus wie die Sorte mit der ich gerne zusammen arbeiten würde.")
		SAY("Ich kann immer die Passanten von den Runners unterscheiden. Schönen Tag noch, Freund.")
		ENDDIALOG()
	NODE(2)
		GENDERCHECK()
			if (result==1) then
				SAY("Perfekt, dann müssen Sie derjenige sein auf den ich gewartet habe. Sie wären erstaunt wie viele Leute nur anhalten um zu reden. Wie auch immer, vor ein paar Stunden hat Tangent Aufklaerung ein gewisses Ziel in %NPC_WORLD(1) lokalisiert das eigentlich schon Tot sein sollte. Es scheint auch ein neuer Name registriert zu sein, %NPC_NAME(1). Intel nimmt an dass ein Hacker Credits bekam um ihn zu aendern, aber seien Sie versichert dass es das Ziel ist. Sie werden bezahlt um seinen Status auf tot zu aendern. Verstanden?")
				SAY("Ja, ich bin der Kontaktmann den Sie treffen sollten. Tangent hat mich hierher geschickt um einen Namen und einen Ort weiterzugeben: %NPC_NAME(1), haelt sich wahrscheinlich in %NPC_WORLD(1) auf. Es ist ein schneller und schmutziger Job. Geh rein, identifiziere das Ziel, verdiene das Geld und dann zurueck hierher. Oh, falls ich sehen sollte dass Sie auf dem Weg zurueck verfolgt werden bin ich weg.")
				SAY("Gut, ich schaetze Sie sind der Runner. Und, ja, ich bin der Intel Affe den Sie hier treffen sollten. Hier ist der Job. Tangent will einen gewissen frueheren Mitarbeiter, %NPC_NAME(1), aus dem Verkehr gezogen haben. Gehen Sie nach %NPC_WORLD(1) und finden Sie das Ziel. Dann tun Sie wofuer wir Sie bezahlen... ohne zuviel Aufmerksamkeit zu erregen. Nachdem Sie mich dann wiedergefunden haben bekommen Sie ihre Bezahlung.")
				SETNEXTDIALOGSTATE(3)
				ENDDIALOG()
			else
			        SAY("Perfekt, dann müssen Sie die Lady sein auf die ich gewartet habe. Sie wären erstaunt wie viele Leute nur anhalten um zu reden. Wie auch immer, vor ein paar Stunden hat Tangent Aufklaerung ein gewisses Ziel in %NPC_WORLD(1) lokalisiert das eigentlich schon Tot sein sollte. Es scheint auch ein neuer Name registriert zu sein, %NPC_NAME(1). Intel nimmt an dass ein Hacker Credits bekam um ihn zu aendern, aber seien Sie versichert dass es das Ziel ist. Sie werden bezahlt um seinen Status auf tot zu aendern. Verstanden?")
				SAY("Ja, ich bin der Kontaktmann den Sie treffen sollten. Tangent hat mich hierher geschickt um einen Namen und einen Ort weiterzugeben: %NPC_NAME(1), haelt sich wahrscheinlich in %NPC_WORLD(1) auf. Es ist ein schneller und schmutziger Job. Geh rein, identifiziere das Ziel, verdiene das Geld und dann zurueck hierher. Oh, falls ich sehen sollte dass Sie auf dem Weg zurueck verfolgt werden bin ich weg.")
				SAY("Gut, ich schaetze Sie sind der Runner. Und, ja, ich bin der Intel Affe den Sie hier treffen sollten. Hier ist der Job. Tangent will einen gewissen frueheren Mitarbeiter, %NPC_NAME(1), aus dem Verkehr gezogen haben. Gehen Sie nach %NPC_WORLD(1) und finden Sie das Ziel. Dann tun Sie wofür wir Sie bezahlen... ohne zuviel Aufmerksamkeit zu erregen. Nachdem Sie mich dann wiedergefunden haben bekommen Sie ihre Bezahlung.")
				SETNEXTDIALOGSTATE(3)
				ENDDIALOG() 
			end
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				SAY("Niemand zieht sich aus unseren Vertraegen zurück. Nur weil wir eine Firma sind heisst das nicht, dass wir nicht Mittel und Wege haben Leute verschwinden zu lassen. Gehen und erledigen Sie den Job.")
				SAY("Ja? Ich sagte Ihnen alles was Sie wissen müssen. Nun gehen Sie oder wir suchen jemand anders der den Job übernimmt.")
				SAY("Hoeren Sie zu, Auftraege wie diese sind äusserst delikat für Firmen, also wäre es besser Sie erledigen Ihren Job und fragen nicht so viel.")
				ENDDIALOG()
			else
				GENDERCHECK()
					if (result==1) then
						SAY("Ich muss sagen, ich mag Ihre Arbeit. Sie haben womoeglich eine Zukunft bei Tangent. Und vertrauen Sie mir, wir haben viel zu bieten. Aber lassen Sie uns dieses Geschaeft zuerst abschliessen, %REWARD_MONEY() Credits waren es, oder nicht? Okay, Sie finden sie auf Ihrem Konto. Es war eine Freude mit Ihnen zu arbeiten.")
						SAY("Excellente Arbeit, einige unserer Informanten berichteten uns von Ihrem Erfolg. Hier sind %REWARD_MONEY() Credits, Sie verdienen sie. Besuchen Sie Tangent, auch wenn Sie mehr Ausruestung benötigen. Ich bin sicher wir können etwas für Sie finden.")
						SAY("Das war ein netter Run, Freund. Oh, vertrauen Sie mir, wir haben unsere Mittel und Wege, Dinge zu erfahren. Das ist eine der ersten Lektionen für Firmen: Irgendjemand sieht immer zu. Wie auch immer, ich habe gerade %REWARD_MONEY() Credits auf ihr Konto überwiesen. Sie sollten jeden Moment verfuegbar sein. Sie sollten sich mit Tangent in Verbindung setzen für weitere Auftraege. Wir haben nicht so viele Auftraege in dieser Richtung wie einige andere Gruppen, aber ich bin sicher wir werden Ihre Dienste wieder brauchen koennen.")
						ACTIVATEDIALOGTRIGGER(1)
						ENDDIALOG()
					else
						SAY("Ich muss sagen, ich mag Ihre Arbeit, Lady. Sie haben womoeglich eine Zukunft bei Tangent. Und vertrauen Sie mir, wir haben viel zu bieten. Aber lassen Sie uns dieses Geschaeft zuerst abschliessen, %REWARD_MONEY() Credits waren es, oder nicht? Okay, Sie finden sie auf Ihrem Konto. Es war eine Freude mit Ihnen zu arbeiten.")
						SAY("Excellente Arbeit, einige unserer Informanten berichteten uns von Ihrem Erfolg. Hier sind %REWARD_MONEY() Credits, Sie verdienen sie. Besuchen sie Tangent, auch wenn sie mehr Ausrüstung benoetigen. Ich bin sicher wir können etwas für Sie finden.")
						SAY("Das war ein netter Run, Baby. Oh, vertrauen Sie mir, wir haben unsere Mittel und Wege, Dinge zu erfahren. Das ist eine der ersten Lektionen für Firmen: Irgendjemand sieht immer zu. Wie auch immer, ich habe gerade %REWARD_MONEY() Credits auf Ihr Konto ueberwiesen. Sie sollten jeden Moment verfuegbar sein. Sie sollten sich mit Tangent in Verbindung setzen für weitere Auftraege. Wir haben nicht so viele Auftraege in dieser Richtung wie einige andere Gruppen, aber ich bin sicher wir werden Ihre Dienste wieder brauchen koennen.")
						ACTIVATEDIALOGTRIGGER(1)
						ENDDIALOG()
					end
			end
end
