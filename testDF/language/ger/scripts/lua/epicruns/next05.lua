--new
function DIALOG()

--Trigger
--Triggernumber,Type,Person
--
--0,D,Benji
--1,D,Max
--2,D,MAson



--Startnode, Person
--0 Human Resource
--50 Benji NEXT
--100 Max
--150 Dennis Karsten
--200 Mason

-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("NEXT hätte sie dieses Mal gerne als Testfahrer für ein Experimental Fahrzeug gehabt. Mason hatte es ihnen gegenüber vielleicht auch schon erwähnt. Sie sollen sich den Schlüssel dazu bei dem Techniker Benji am Desert Race Track im Sektor G 11 abholen und das Fahrzeug auf Herz und Nieren in der umliegenden Wüste testen.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()
		
	NODE(1)
		SAY("Melden sie sich einfach bei dem NEXT Techniker Benji am Desert Race Track. Danach können sie die Ergebnisse dann Mason hier im HQ mitteilen.")
		ENDDIALOG()
		


-----------------------------------------------------
--Benji NEXT

	NODE(50)
		SAY("Ihr müsst dann der Testfahrer sein, habe ich recht?")
		
		ANSWER("Ja, das bin ich. Ich brauche nur noch den Schlüssel. Was ist es denn für ein Fahrzeug?",51)
	NODE(51)
		SAY("Nun ja, es ist ein stark modifizierter Track Buggy. Im besonderen ist die Legierung, die für die Panzerung verwendet wurde eine Neuentwicklung. Eigentlich ein Raumfahrtprodukt. Das macht dieses experimentelle Gefährt sehr robust. Aber wegen dem Schlüssel... kommt ihr etwas zu spät.")
		
		ANSWER("WEITER",52)
	NODE(52)
		SAY("Als ich hier draussen auf euch gewartet habe, sind hier plötzlich ein paar von diesen unangenehmen Black Dragon aufgetaucht. Sie drohten mich zu erschiessen, falls ich ihnen den Schlüssel nicht aushändige. Mir blieb gar keine andere Wahl, als ihnen den Schlüssel zu geben.")
		
		ANSWER("Der Schlüssel geklaut? Und da bleiben sie soo ruhig? Nicht zu fassen.",53)
	NODE(53)
		SAY("Was soll ich denn tun? Soll ich mich vielleicht erschiessen lassen, nur damit sie mir dann den Schlüssel abnehmen? Ich denke nicht. Aber wartet... ich glaube einer der Typen hat den Anführer Richard genannt. Vielleicht hilft das weiter.")
		
		ANSWER("Das war doch dieser Kerl in der Outzone Sektor 03.",54)
	NODE(54)
		SAY("Vielleicht könnt ihr ihm den Schlüssel noch abnehmen, wenn ihr euch beeilt. Ihr könnt danach ruhig wieder zum NEXT HQ zurück, die Testfahrt wird eh abgeblasen. Vielleicht könnt ihr den Schlüssel dann wieder an Mason geben...")
		
		ANSWER("Offensichtlich muss ich nun wieder hinter einem Black Dragon her.Ich habe sie in keiner guten Erinnerung. Verlauft euch nicht auf dem Rückweg.",55)
	NODE(55)
		SAY("Keine Angst, ich kenne mich hier bestens aus.")
		SETNEXTDIALOGSTATE(56)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
		
	NODE(56)
		SAY("Viel Glück bei eurem Vorhaben. Aber die Outzone Sektor 03 wäre wirklich kein Ort für mich...")
		ENDDIALOG()
		



-----------------------------------------------------
--Richard

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Verpiss dich, Runner.")
			ENDDIALOG()
		else
			SAY("Es geschehen noch Zeichen und Wunder. Dieser NEXT Clown kommt doch tatsächlich zu mir, damit ich ihn noch ein bischen malträtieren kann.")
		
			ANSWER("Du rückst den Schlüssel für das Experimental Fahrzeug besser gleich heraus.",101)
		end
	NODE(101)
		SAY("Ha ha. Sehr gut, du rückst den Schlüssel besser gleich heraus... das war ja fast filmreif. Auch wenn ich den Schlüssel hätte, so würde ich ihn dir nicht geben. NEXT wird eh nicht mehr lange sein, ProtoPharm wird NEXT schlucken. Und zwar mit Haut und Haaren.")
		
		ANSWER("WEITER",102)
	NODE(102)
		SAY("Da bleibt nichts mehr übrig, ehrlich. Und den Schlüssel für dieses nette Fahrzeug ist in den sicheren Händen von Mr Karsten. Du kannst ihn im PussyClub finden, aber ich bezweifle, dass du dorthin gehen wirst können. Robben vielleicht. Ahahaha.")
		
		ANSWER("So, du scheinst also wieder nur kämpfen zu wollen.",103)
	NODE(103)
		SAY("Ja, ich liebe den Kampf !!!")
		ATTACK()
		SETNEXTDIALOGSTATE(104)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
	NODE(104)
		SAY("Solange ich es verhindern kann, wirst du den Pussy Club nie erreichen.")
		ATTACK()
		ENDDIALOG()

-----------------------------------------------------
--Dennis Karsten

	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Amüsiert euch schön, hier im Club.")
			ENDDIALOG()
		else
			SAY("Sei willkommen in diesem Sumpf des Verbrechens und fleischlicher Gelüste. Was führt einen so bekannten Runner hierher, in die Höhle des Löwen?")
		
			ANSWER("Ihr habt den Schlüssel für ein Fahrzeug, dass NEXT gehört. Händigt ihn mir aus und wir vergessen die Sache.",151)
		end
	NODE(151)
		SAY("So einfach wird das leider nicht, mein unwissender kleiner Runner. Auch wenn du die Systemadministratorin vor dem sicheren Tod bewahrt hast, wird es sich doch aufs selbe hinaus laufen. NEXT wird zu einem kleinen Teil von ProtoPharm. Und es gibt keinen Ausweg, das ist das beste daran. Und natürlich habe ich den Schlüssel hier.")
		
		ANSWER("Was redet ihr für einen Scheiss?! NEXT wird sich nie von ProtoPharm ...",152)
	NODE(152)
		GIVEITEM(9106)
		SETNEXTDIALOGSTATE(153)
		SAY("Hier hast du erst einmal den Schlüssel, ich bin ja kein normaler Dieb. Aber... ich hasse NEXT! Sie sind Schuld an all dem Übel hier in Neocron! NEXT wird untergehen, ob es dir passt oder nicht!")
		
		ANSWER("Nicht solange ich das verhindern kann.",153)
	NODE(153)
		SAY("Genug, jetzt werde ich dir dein vorlautes Maul stopfen !!!")
		ATTACK()
		ENDDIALOG()
		

-----------------------------------------------------
--Mason

	NODE(200)
		TAKEITEM(9106)
		if(result==0)then
			SAY("Ich habe gleich eine wichtige Direkt Konferenz mit unserer Chefetage. Versuchen sie es später noch einmal.")
			ENDDIALOG()
		else
			SAY("Benji hatte mir schon berichtet, dass ihr die Black Dragon auf eigene Faust verfolgt habt. Beeindruckend. Ich hätte nicht gedacht euch wiederzusehen.")
		
			ANSWER("Das ist nicht alles, ich habe auch den Schlüssel wieder.",201)
		end
	NODE(201)
		SAY("Ihr habt auch den Schlüssel wieder? Dann gab es einen Kampf? Wer hat denn den Schlüssel an sich genommen gehabt?")
		
		ANSWER("Ein gewisser Dennis Karsten. Total verrückt, der Kerl.",202)
	NODE(202)
		SAY("Karsten? Ach, ich glaube mich zu erinnern. Er arbeitete schon immer bei ProtoPharm. Seit einem Ereignis, an dem NEXT zumindest eine Teilschuld hat, ist er dem Wahnsinn verfallen. Auf jeden Fall stelle ich mir das so vor. Er hatte eine Schwester. Die Hatemails die er uns schrieb, lassen darauf schliessen, dass er sie innigst liebte.")
		
		ANSWER("WEITER",203)
	NODE(203)
		SAY("Jedoch kam sie bei einem Unfall mit einem unserer City Gleiter ums Leben. Ich denke, er hatte dies NEXT nie verziehen. Aber die Leute sollten selbst wissen, was für ein Risiko sie eingehen, wenn sie unsere Produkte nutzen. Ich hoffe er hat euch nicht zu stark verletzt?")
		
		ANSWER("Es geht. Dieser Karsten, als auch Max von den Black Dragon, beide haben von einer bevorstehenden Übernahme von NEXT durch ProtoPharm geredet. Das ist beunruhigend.",204)
	NODE(204)
		SAY("Ich werde mich jetzt nicht in diese Diskussion verstricken. Wir wissen, dass ProtoPharm sehr aktiv war in der letzten Zeit. Ein Blick auf die Aktienanteile in Händen von loyalen NEXT Freunden schwindet. Aber es gibt keine einfache Lösung für dieses Problem. Wir arbeiten daran. Ich denke aber, ich kann euch 10.000 Credits für die Wiederbeschaffung des Experimental Fahrzeugs als Belohnung geben. ")
		
		ANSWER("WEITER",205)
	NODE(205)
		SAY("Auch wenn dies bedeutet, dass ihr nun um die Testfahrt betrogen worden seid. Die Techniker werden aber mit Sicherheit alle Einstellungen noch einmal prüfen wollen, bevor eine zweite Testfahrt gemacht werden kann. Wenn wir dann ein Mittel gegen ProtoPharm gefunden haben, werden wir euch, als loyalen NEXT angehörigen, wieder brauchen. Eure Taten blieben nicht unbeachtet, dass kann ich euch versichern.")
		
		ANSWER("Nun, im Moment scheine ich sehr viel Kontakt nur mit euch zu haben...",206)
	NODE(206)
		GIVEMONEY(50000)
		SAY("In der Tat, aber ich habe vor kurzem ein Gespräch mit Mr Diggers gehabt. Er hält recht viel von ihnen und sagte mir, er sei gespannt, wie sie sich weiterhin schlagen würden. So, es gibt viel vorzubereiten und ich muss mich nun wieder den Geschäften widmen.")
		EPICRUNFINISHED(3,4)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
	  
end