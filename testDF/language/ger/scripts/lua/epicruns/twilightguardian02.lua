--new
--Twilight Guardian
--
--Trigger
--Triggernumber,Type,Person
--0,D,Heff 2264
--1,D,Tovall 2263 
--2,D,Elias 1613
--3,D,Donnovan 2262
--
--Startnode, Person
--0, Contact Person
--50, Heff 2264
--100, TOVALL 2263
--150, DONNOVAN 2262
--200, ELIAS 1613
--250, DONNOVAN
--
--NPC0	NPC1	NPC2	NPC3	TRG0	VAL01	VAL02	VAL03	TRG1	VAL01	VAL02	VAL03	TRG2	VAL01	VAL02	VAL03	TRG3	VAL01	VAL02	
--2264	2263	2262	1613	1	0	0	0	1	1	0	0	3	3	2	0	3	2	3	
--START	START	START	START
--50	100	150	200
--Items
--PAKET FÜR ELIAS 150

function DIALOG()
--------------------------------------------------------------------
--Contact Person
--0
	
	NODE(0)
		SAY("Hast du schon gehört, wir haben wieder eine Waffenproduktion  der CityAdmin lahm gelegt. Der Kampf dauert zwar länger als wir dachten, aber Reza hat überhaupt keine Unterstützung in der Bevölkerung. Also hat er gar keine Chance auf lange Sicht.")

		ANSWER("Gibt es etwas Neues von Donnovan? Ich habe nämlich trainiert und denke ich bin vorbereitet für was auch immer da kommen mag.",1)
	NODE(1)
		SAY("Ja, ich erinnere mich. Er sagte, du solltest dich mal gegen Heff und Tovall beweisen. Ein wenig training gegen echte Gegner kann dir nicht schaden. Heff kannst du auch irgendwo hier herumstreunen sehen. Beide sind in der Nähe des Hauptquartiers zu finden. Bis vor kurzem hatte er noch in Neocron gearbeitet. Er musste jedoch fliehen um den Häschern der NCPD zu entgehen. Viel Glück dabei. Donnovan erwartet dich danach. Er ist sich sicher, dass du es schaffen wirst. ")
		
		STARTMISSION()
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
		
	NODE(2)
		SAY("Such dir einen aus, gegen den du kämpfen willst. Ich würde Heff als erstes wählen.")
		ENDDIALOG()
--------------------------------------------------------------------
--Heff
--50
	NODE(50)
		SAY("Hey, immer mit der Ruhe. Ich soll dann also gegen dich kämpfen, richtig? Und du bist sicher, dass du das verträgst? Übrigens, ich bin Heff, ich komm sozusagen gerade erst von Neocron. Hab da mit einer Lady namens Jade zusammengearbeitet. Doch als diese Geheimsektion uns dazwischen gefunkt hat, habe ich sie beim Rückzug aus den Augen verloren. Wenn ich diesen Reza mal in die Finger bekommen sollte, dann…")

		ANSWER("Das wird Tovall sicher interessieren, aber wollten wir jetzt nicht kämpfen?",51)
	NODE(51)
		SAY("Klar, was immer du willst. Also los.")
		SETNEXTDIALOGSTATE(52)
		ATTACK()
		ENDDIALOG()
	NODE(52)
		SAY("Willst du schon wieder kämpfen? Nun gut, dieses Mal ist es aber kein Training mehr.")
		ATTACK()
		ENDDIALOG()

--------------------------------------------------------------------
--TOVALL
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Mir wurde schon gesagt, dass ich heute einem Frischling eine Lektion erteilen darf.")
			ENDDIALOG()
		else
			SAY("Und, gibt’s was Neues? Ich höre hier überall Gerüchte, aber mir sagt ja niemand etwas genaues. ")

			ANSWER("Hmm, Heff hatte gesagt, dass er Jade bei der Flucht aus Neocron aus den Augen verloren hatte.",101)
		end
	NODE(101)
		SAY("Das bedeutet immerhin, dass noch Hoffnung besteht. Ich war schon drauf und dran das schlimmste anzunehmen. Aber du bist sicherlich nicht hier um mit mir über Jade zu reden, oder?")

		ANSWER("Nein, wirklich nicht. Donnovan hat mich zu ein paar Trainingseinheiten mit dir verdonnert. Und ich werde keine Rücksicht auf dich nehmen.",102)
	NODE(102)
		SAY("Har, ha. Sehr gut, dann muss ich ja auch keine auf dich nehmen.")
		SETNEXTDIALOGSTATE(103)
		ATTACK()
		ENDDIALOG()
		
	NODE(103)
		SAY("Du hast wohl noch nicht genug, was? Dieses Mal wirds aber ernst.")
		ATTACK()
		ENDDIALOG()

--------------------------------------------------------------------
--DONNOVAN
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Hast du die Kämpfe mit Heff schon hinter dir?")
			ENDDIALOG()
		else
		
			ISMISSIONTARGETACCOMPLISHED(1)
			if(result==0)then
				SAY("Hast du die Kämpfe mit Tovall schon hinter dir?")
				ENDDIALOG()
			else
		
				SAY("Hrmph, ich hatte keinen Zweifel, dass du es schaffen würdest. Immerhin scheinst du gut trainiert zu haben.  Aber genug davon. Sagen dir die Fallen Angels etwas?")

				ANSWER("Klar, so eine typische Gruppe von wirren Wissenschaftlern. Tech Haven gehört ihnen und hier im Dome läuft man ihnen öfters über den Weg.",151)
			end

		end
	NODE(151)
		SAY("Genau die. Ab und zu wenden wir uns auch an sie, denn obwohl es nur Wissenschaftler sind, so verstehen sie mehr von Technik, Elektronik und dem ganzen Zeug, als ich jemals zu Gesicht bekommen werde. Ich weiss, bis auf die Dome of york Allianz ist eigentlich keine andere Fraktion auf unserer Seite. Man darf nicht vergessen, dass sie alle von Reza abhängig sind.  Ist ja klar, dass sie sich nicht gegen ihn wenden, wenn ihre Existenz davon abhängt. ")

		ANSWER("Ich dachte immer die Fallen Angels wären gegen Gewalt.",152)
	NODE(152)
		GIVEITEM(9481)
--PAKET FÜR ELIAS
		SAY("Klar sind sie das und jetzt nimm dieses Paket und trage es zu ihrem Kontaktmann Elias. Er hat seinen Posten an einem Eingang zu Tech Haven. Aber pass mir ja auf, da draussen in den Wastelands kann es ganz schön gefährlich sein.")
		SETNEXTDIALOGSTATE(250)
		ENDDIALOG()

--------------------------------------------------------------------
--ELIAS
--200
	NODE(200)
		TAKEITEM(9481)
		if(result==0)then
			SAY("Wo haben sie denn nun die dringend erwartete Lieferung von den Guardians?")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(201)
			SAY("Es passiert nicht oft, dass es einen Twilight Guardian in diese Gegend verschlägt. Ich vermute es ist kein Zufall, dass sie hier aufkreuzen. Also, was bringen sie mir.")

			ANSWER("Es ist ein Paket von Donnovan. Ich hoffe sie wissen, was es damit auf sich hat.",201)
		end
	NODE(201)
		SAY("Könnte es das lang erwartete Material sein? Das wäre äusserst wichtig. Zeigen sie es mir.")

		ANSWER("Hier, bitte. Aber ich verstehe nicht, worum handelt es sich denn?",202)
	NODE(202)
		SAY("Das ist leicht erklärt, es sind ein paar spezielle seltene Materialien, die nur in ein paar Minen gefunden werden können. Zufällig gehören diese Minen den Twilight Guardian. Wir sind auf diese Lieferungen angewiesen um bestimmte… ahhh… Experimente durchführen zu können. Also, sie können Donnovan ausrichten, dass wir unseren Teil der Abmachung erfüllen werden. Danke, dass sie den langen Weg auf sich genommen haben.")
		SETNEXTDIALOGSTATE(203)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
		
	NODE(203)
		SAY("Ich werde dafür sorgen, dass das Projekt, welches sie in Auftrag gegeben haben, rechtzeitig fertig wird.")

		ENDDIALOG()
--------------------------------------------------------------------
--DONNOVAN
--250
	NODE(250)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Hast du schon Elias am Eingang von Tech Haven getroffen?")
			ENDDIALOG()
		else
			SAY("Du bist schon zurück? Ich hatte damit gerechnet, dass du dir Tech Haven noch gerne hättest ansehen wollen. Es ist schon ein mächtiger Komplex, den sie dort errichtet haben.")

			ANSWER("Ja, allerdings. Elias schien geradezu begierig das Paket in seine Finger zu bekommen.",251)
		end
	NODE(251)
		GIVEMONEY(8000)
		SAY("Ha, ja, dass sind Wissenschaftler. Die bekommen immer ein Leuchten in ihren Augen, sobald es um etwas für ihre Wissenschaft geht. Danke für die Lieferung, hier hast du ein bischen was zusätzlich. Benutze es für deine Ausrüstung oder versauf es, wie du willst. Wenn du wieder bereit für mehr bist, lass es eine Contact Person wissen.(nächste Mission ab Level 30)")
		ACTIVATEDIALOGTRIGGER(3)
		EPICRUNFINISHED(15,1)
		ENDDIALOG()


end