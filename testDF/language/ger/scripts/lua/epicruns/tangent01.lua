--new
function DIALOG()
--Trigger
--Triggernumber,Type,Person
--0,D,Next Direx
--1,D,Diamond Direx
--2,D,Figaro spielt die Drogen aus
--3,D,Mazzaro


--Startnode, Person
--0 Human Resource
--50 NEXT Director of Operations
--100 Diamond Director of Operations
--150 Figaro Black Dragon
--200 Mazzaro
--Items -> none

-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("Willkommen, Runner! Wir freuen uns, mal ein neues Gesicht hier zu sehen. Tangent war den Leuten schon immer sehr verbunden. Natürlich auf eine spezielle Art und Weise.")

		ANSWER("WEITER",1)
	NODE(1)
		SAY("Wir geben jedem die Mittel eine eigene Realität zu erschaffen. Damit spreche ich natürlich von den verschiedenen Waffenprodukten von Tangent. Sie können sich ja vorstellen, dass diese besonders hier in Neocron sehr beliebt sind. Selbst ich habe eine Tangent Assault Rifle in meinem Appartement.")

		ANSWER("Ich bin froh, endlich mal einer Fraktion anzugehören, die sich realistisch um die Menschen kümmert.",2)
	NODE(2)
		SAY("Natürlich, das ist eines unserer obersten Ziele. Jeder Kunde ist uns sehr wichtig und es wird einiges getan um Tangent Produkte jedem bekannt zu machen. ")

		ANSWER("WEITER",3)
	NODE(3)
		SAY("Aber natürlich konzentriert Tangent sich hauptsächlich auf die verschiedensten Aspekte der Waffenproduktion. Vielleicht sollte ich ihnen kurz etwas über die Firma erzählen, damit sie einen besseren Überblick haben..")

		ANSWER("Darum wollte ich sie gerade bitten. ",4)
	NODE(4)
		SAY("Tangent Technologies existiert seit 2748. Damals gab es eine Abspaltung vom Mutterkonzern BioTech, da Tangent Industries einfach zu gross wurde um immer noch Teil von BioTech zu sein. ")

		ANSWER("WEITER",5)
	NODE(5)
		SAY("Seitdem hat Tangent seinen einstigen Mutterkonzern bei weitem überflügelt. Dadurch, dass wir uns auf Waffen spezialisieren, konnten wir viele lukrative Aufträge mit der CityAdmin abschliessen.")

		ANSWER("WEITER",6)
	NODE(6)
		SAY("Durch die Abgabe von Waffen an die Bürger von Neocron ist nun ausserdem eine weitere beständige Einnahmequelle gegeben. Ja, und obwohl BioTech keine Mittel ungenutzt lässt, um Tangent von dieser Spitzenposition zu entfernen, streben wir nach immer höheren Zielen.")

		ANSWER("BioTech behindert aktiv die Bemühungen von Tangent?",7)
	NODE(7)
		SAY("Ja, in der Tat. Dabei schrecken sie noch nicht einmal vor Gewalt zurück. Offiziell bestreiten sie es natürlich. Sie haben aber Kontakte zu den Tsunamis und investieren immense Mittel, um diese gegen Tangent aufzustacheln. ")

		ANSWER("WEITER",8)
	NODE(8)
		SAY("Aber diese lächerlichen Versuche können uns natürlich nicht am erreichen unserer Ziele behindern. Da wir gerade von Zielen reden. Ihr seid sicher bereit, eine kleine Aufgabe für Tangent zu übernehmen, nicht wahr?")

		ANSWER("Ja, natürlich. Und ich dachte schon ich müsste gar nichts tun, für das Appartement , dass ihr mir gestellt habt.",9)
	NODE(9)
		SAY("Oh, seien sie versichert, dass das Appartement zur Gänze euch gehört. Tangent betrachtet diesen ersten Auftrag einfach als Gefallen, den ihr uns tut. Gegen ein kleines Entgeld natürlich.")

		ANSWER("Gegen Bezahlung ist es natürlich immer am angenehmsten, worum geht es denn überhaupt?",10)
		ANSWER("Ich fühle mich für eine Aufgabe noch nicht bereit.",23)
	NODE(10)
		SAY("Es ist recht einfach. Für eine so grosse Firma, wie Tangent eine ist, sind natürlich wichtige Beziehungen notwendig. Diese halten die wichtigen Projekte am laufen.")

		ANSWER("WEITER",11)
	NODE(11)
		SAY("Zu den wichtigsten Partnern gehören dabei NEXT und Diamond Real Estate. NEXT arbeitet offensichtlich mit uns zusammen, um ihre Fahrzeuge auch mit den entsprechenden Waffensystemen auszurüsten. ")

		ANSWER("WEITER",12)
	NODE(12)
		SAY("Das dies natürlich auch in unserem Interesse liegt, ist wohl offensichtlich. Diamond Real Estate dahingegen hat mit uns diverse Abmachungen getroffen um Sicherheitssysteme für ihre Immobilien zu entwickeln.")

		ANSWER("WEITER",13)
	NODE(13)
		SAY("Mit Diamond besteht schon lange eine fruchtbare und angenehme Geschäftsbeziehung.")

		ANSWER("Ja, ich habe schon erwartet, dass solche Verträge existieren. Stimmt es nicht, dass Tangent auch die CopBots mit Waffen ausstattet?",14)
	NODE(14)
		SAY("Ja, in der Tat. CityAdmin hat Tangent natürlich die Ausstattung der CopBots überlassen. Tangent ist immerhin der grösste unabhängige Waffenfabrikant. Dies ist nicht nur besonders lukrativ, nein, es ist auch eine sehr veratwortungsvolle Aufgabe.")

		ANSWER("WEITER",15)
	NODE(15)
		SAY("Tangent hat dabei auf die Effizienz der Waffen ein besonderes Augenmerk gelegt. So sollen die CopBots doch ihre Arbeit möglichst gut ausführen, damit die unschuldigen Bürger Neocrons auch gut schlafen können.")

		ANSWER("Das hört sich sehr beeindruckend an. Aber sie wollten doch auch noch etwas über den Auftrag sagen, nicht?",16)
	NODE(16)
		SAY("Immer mit der Ruhe. Warten sie ab, bis ich zuende gesprochen habe. Die kleine Aufgabe für euch, führt euch zu NEXT, Diamond Real Estate und in den Pepper Park, eine verruchte und schmutzige Gegend. Seht euch in dieser gesetzlosen Gegend besonders vor.")

		ANSWER("WEITER",17)
	NODE(17)
		SAY("Als erstes solltet ihr NEXT besuchen und den dortigen Director of Operations diese wichtigen Dokumente hier überreichen. Sie behandeln sehr genau, wie unsere Waffensysteme sich in einem ausführlichen Test mit der Hovertechnologie von NEXT geschlagen haben. ")

		ANSWER("WEITER",18)
	NODE(18)
		SAY("Danach gehen sie bitte zum Diamond Real Estate Hauptquartier. Dort gebt ihr diese andere Sendung ab. Ich weiss leider nicht in welcher Diamond Filiale sich der Broker aufhält, der die Lieferung bekommen soll. Diamond hat ein HQ, eine Filliale in der CityAdmin und weitere auf den Strassen von Neocron. ")

		ANSWER("WEITER",19)
	NODE(19)
		SAY("Sie enthält ein paar spezielle Spirituosen. Merkt euch das, man muss sich seine Beziehungen immer wieder durch kleine Aufmerksamkeiten sicher stellen.")

		ANSWER("Sie haben auch noch etwas über den Pepper Park gesagt, worum handelt es sich dabei?",20)

--Spieler bekommt zwei Pakete
	NODE(20)
		GIVEITEM(9150)
		GIVEITEM(9151)
		SAY("Das ist nicht so wichtig. Besuchen sie dort nur mal einen Mann namens Figaro. Er wird ihnen einige Dinge geben, die sie einfach nur hierher zurückbringen sollen. Ist das soweit klar?")

		ANSWER("Aber ja, ich wollte es ja auch nur aus Neugierde wissen.",21)
	NODE(21)
		SAY("Neugierde ist sparsam eingesetzt ein Segen, aber zuviel davon kann auch sehr grossen Schaden verursachen. Geht nun und vergesst nicht, das Päckchen, dass ihr bekommt zu Mazzaro in der Chefetage zu bringen.")

		ANSWER("WEITER",22)
	NODE(22)
		SAY("Sonst wird er sehr ungehalten sein und das wollen wir schliesslich verhindern..")
		STARTMISSION()
		SETNEXTDIALOGSTATE(24)
		ENDDIALOG()


	NODE(23)
		SAY("Dann bereiten sie sich vor und kommen einfach später noch einmal wieder.")
		ENDDIALOG()

	NODE(24)
		SAY("Sie sollten diese Lieferung schon zu Ende bringen, falls sie es bei Tangent zu etwas bringen wollen. Falls sie den Diamond Broker nicht finden können, versuchen sie es doch mal in einer anderen Diamond Filiale. Gehen sie zu Mazzaro nachdem sie fertig sind.")
		ENDDIALOG()
		

-----------------------------------------------------
--NEXT Director of Operations
	NODE(50)
		TAKEITEM(9150)
		if(result==0)then
			SAY("Ja? Es gibt viel zu tun. Deswegen habe ich auch keine Zeit für so etwas.")
			ENDDIALOG()
		else
			SAY("Ja? Machen sie schnell, es gibt viel zu tun.")

			ANSWER("Man hat mir dieses Paket mit Dokumenten für sie gegeben. Ich komme von Tangent.",51)
		end
	NODE(51)
		SAY("Gut, ich wurde schon benachrichtigt. So, habe jetzt auch schon Tangent eine Nachricht geschickt, dass ich das Paket erhalten  habe. Und sie? Fangen gerade erst bei Tangent an?")

		ANSWER("Ja, ich hoffe noch weit in meiner Karriere zu kommen.",52)
	NODE(52)
		SAY("Guter Mann. Tangent ist eine gute Firma. Excellente Waffen. Wir hatten schon immer eine angenehme Geschäftsbeziehung. Einen produktiven Tag auch weiterhin noch.")
		SETNEXTDIALOGSTATE(53)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
		
	NODE(53)
		SAY("Ich kann mich nicht mit solchen Kleinigkeiten beschäftigen.")
		ENDDIALOG()
		

-----------------------------------------------------
--Diamond Director of Operations
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Sie haben hier nichts zu schaffen, gehen sie.")
			ENDDIALOG()
		else
			TAKEITEM(9151)
			if(result==0)then
				SAY("Sie haben hier nichts zu schaffen, gehen sie.")
				ENDDIALOG()
			else
				SAY("Ja? Sie haben eine Lieferung für Diamond Real Estate nehme ich an?")

				ANSWER("Ja, so kann man sagen, es ist eine kleine Aufmerksamkeit.",101)
			end
		end
	NODE(101)
		SAY("Wirklich? Na, das ist ja sehr zuvorkommend von ... ah, da steht es ja, Tangent! Ihr Wartungsservice ist sehr proffessionell. Respekt. Aber, was ist das? Das kann doch nicht ...")

		ANSWER("Ist etwas verkehrt?",102)
	NODE(102)
		SAY("Nein, nicht wirklich. Oder besser gesagt, überhaupt nicht. In diesem Päckchen ist eine Flasche Wein. Eine ganz besondere.  Dieser Wein, mein lieber Runner, ist der feinste Wein, den man sich vorstellen kann.")

		ANSWER("WEITER",103)
	NODE(103)
		SAY("Er ist zur Abwechslung mal nicht sythetisch hergestellt worden. Er ist immens viel Wert. Richten sie Tangent ein dankeschön von mir aus.")
		SETNEXTDIALOGSTATE(104)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
	
	NODE(104)
		SAY("Fragen sie einen unserer Angestellten, ich habe besseres zu tun.")
		ENDDIALOG()		

-----------------------------------------------------
--Figaro Black Dragon
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Ich hab nichts für dich.")
			ENDDIALOG()
		else
			SAY("Hey, Runner! Schöner Tag heute, nicht? Ich hätte aber etwas, was ihn noch schöner machen würde...")

			ANSWER("Mann, das ist ja eine Gegend hier.",151)
		end
	NODE(151)
		SAY("Ja, ja, manche halten es für das Paradies auf Erden. Ich gehöre auch dazu. Also, was für einen Stoff willst du?")

		ANSWER("Stoff? Ich bin hier im Auftrag von Tangent. Ich sollte hier etwas abholen...",152)
	NODE(152)
		SAY("Ach, dann bist du der Runner, der die Lieferung abholen soll? Hehehee. Das sind ganz schön harte Drogen, wenn du mich fragst. Aber ist schon klar, dass man so etwas braucht.")

		ANSWER("WEITER",153)
	NODE(153)
		SAY("Besonders wenn man sein ganzes Leben lang schon von diesem Zeug abhängt. Aber ich gebe zu, dass Damion Jordan einen guten Geschmack hat.")

		ANSWER("Das darf doch nicht wahr sein? Drogen, die für Jordan bestimmt sind? Wir sprechen hier aber schon von dem Leiter von Tangent, oder nicht?",154)
	NODE(154)
		SAY("Ja, ja, genau der! Du hast das noch nicht gesteckt bekommen? Damion ist schon lange ein sehr guter Kunde hier.")

		ANSWER("WEITER",155)
	NODE(155)
		SAY("Wir könnten wahrscheinlich schon alleine von dem Zeug über die Runden kommen, dass er uns abkauft. Was der an Drogen zu sich nimmt ist unglaublich...")

		ANSWER("Wie ist das geschehen? Dafür gab es doch sicher einen triftigen Grund...",156)
	NODE(156)
		SAY("Was weiss ich denn? Der Typ ist schon immer auf Drogen abgefahren und die Black Dragon haben dadurch einen guten Draht zu ihm. Wir machen ihm auch einen speziellen Preis.")

		ANSWER("WEITER",157)
	NODE(157)
		SAY("So richtig angefangen hat er damit, als Robert Jordan BioTech an seinen jüngeren Bruder Seymoure gegeben hat. Vielleicht hat er insgeheim gehofft, alles für sich zu bekommen. ")

		ANSWER("WEITER",158)
	NODE(158)
		SAY("Wer weiss? Aber was rede ich, der feine Runner will sicherlich lieber wieder in die sichere Innenstadt nicht wahr?")

		ANSWER("Ich erfülle hier nur einen Auftrag.",159)

--Spieler bekommt massig Drogen

	NODE(159)
		GIVEITEM(9152)
		SAY("Falls du auch mal das verlangen nach Drogen hast, hier im Pepper Park bekommt man so ziemlich alles...")
		SETNEXTDIALOGSTATE(160)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
		
	NODE(160)
		SAY("Hey, ich hab dir doch schon alle Drogen gegeben, die ich bei mir hatte. Und du willst immer noch mehr? Nicht heute.")
		ENDDIALOG()
		
-----------------------------------------------------
--Mazzaro
	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Kommen sie erst wieder, wenn sie ihre Aufgabe erledigt haben.")
			ENDDIALOG()
		else
			SAY("Kommen sie, setzen sie sich doch, wenn sie wollen. Sie sind einer unserer neuen Runner und haben schon den ersten Run durchgeführt, oder?")

			ANSWER("Ja, hier ist das Paket... ähh, mit den Drogen.",201)
		end
	NODE(201)
		TAKEITEM(9152)
		if(result==0)then
			SAY("Wo ist das Paket?")
			ENDDIALOG()
		else
			SAY("Das ist schade, jetzt haben sie sicher einen falschen Eindruck von Tangent bekommen, oder? Eigentlich sollte der Überbringer nicht über den Inhalt des Pakets informiert sein. Das gebietet eigentlich schon die Diskretion.")

			ANSWER("Ich mache mir schon so meine Gedanken, was es mit den Drogen auf sich hat.",202)
		end
	NODE(202)
		SAY("Ich denke, ich werde ihnen den Hintergrund erläutern. Daimon Jordan, unser Anführer, hat ein kleines Drogen Problem. So weit ist das alles ja auch schon bekannt, zumindest wird das überall gemunkelt. Fakt ist, wenn man erst einmal Drogen genommen hat, braucht man immer wieder welche.")

		ANSWER("WEITER",203)
	NODE(203)
		SAY("Ist doch klar, oder? Nur als Leiter eines solchen Konzerns kann man es sich nicht leisten auf der Strasse mit Drogen in der Hand gesehen zu werden. Was soll man in einer solchen Situation tun? Man schickt einen Runner, der sie einem holt. Das ist alles. Mehr gibt es dazu nicht zu sagen.")

		ANSWER("Ich frage mich sowieso, warum Drogen so viele Leute fasziniert.",204)
	NODE(204)
		SAY("Gute Arbeit auf jeden Fall. Die Lieferungen sind sicher angekommen. Ich wollte dieses spezielle Paket nur persönlich annehmen, um keine Gerüchte aufkommen zu lassen. Ich hoffe ich kann mich auf sie verlassen?")

		ANSWER("Aber klar. Ich weiss ein Geheimnis zu bewahren.",205)
	NODE(205)
		GIVEMONEY(1000)
		SAY("Sehr gut, als kleine Belohnung für diese Lieferungen sind hier 1000 Credits. Sie haben den ersten Schritt zu einer glänzenden Karriere hier bei Tangent gemacht. ")

		ANSWER("WEITER",206)
	NODE(206)
		SAY("Jetzt aber blos nicht innehalten. Je mehr sie bei uns angesehen sind, desto eher bekommen sie noch wichtige Aufträge zugewiesen. Also, bis zum nächsten Mal.")
		EPICRUNFINISHED(4,0)
		ACTIVATEDIALOGTRIGGER(3)
		ENDDIALOG()

end