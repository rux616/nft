--new
--Twilight Guardian
--
--Trigger
--Triggernumber,Type,Person
--0,D,Mrs Sung
--1,D,johnson
--2,D,JADE
--3,D,TOVALL
--
--Startnode, Person
--0, Contact Person
--50, Mrs Sung 2254
--100, JOHNSON 2253 
--150, TOVALL 2263
--200, JADE 2265
--250, TOVALL 
--
--NPC0	NPC1	NPC2	NPC3	TRG0	VAL01	VAL02	VAL03	TRG1	VAL01	VAL02	VAL03	TRG2	VAL01	VAL02	VAL03	TRG3	VAL01	VAL02	
--2254	2253	2263	2265	3	0	0	0	3	1	1	0	3	3	2	0	3	2	3		
--START	START	START	START
--50	100	150	200
--Items
--CASHCUBE
--PAKET FÜR JADE
--TECH WAFFE

function DIALOG()
--------------------------------------------------------------------
--Contact Person
--0
	
	NODE(0)
		SAY("Mir wurde von Donnovan mitgeteilt, wo dieses Neokorps - Treffen abgehalten wird. Es ist Sektor A06 oder zumindest dort unten an der Küste. Tut mir leid, ich kann mir Zahlen so schlecht merken. Dein Hauptziel ist es, den Anführer des Neokorps zu erledigen. Du sollst danach noch eine kleine Zahlung an der Kontaktmann überbringen, du weißt ja selbst am besten wo der zu finden ist. Ausserdem wollte Tovall dich nach all dem Trouble auch noch mal privat unter vier Augen sprechen. Alles klar?")

		ANSWER("Ich glaube ja…",1)
	NODE(1)
		GIVEITEM(9483)
--CASHCUBE
		SAY("Dann ist ja gut, sieh zu, dass du den Anführer des Neokorps kräftig in den Arsch trittst. Dort unten gibt es einige Sendestationen, versuch es bei denen zuerst.")

		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)
		SAY("Das Ziel ist in A06 und der Kontaktmann erwartet noch den Cashcube. Danach wollte Tovall auch noch mal mit dir reden. Vielleicht findest du ja auch jemanden, der dir mehr verrät.")

		ENDDIALOG()

--------------------------------------------------------------------
--Mrs Sung
--50
	NODE(50)
		SAY("Suchen sie jemanden bestimmten?")

		ANSWER("Hmm, um ehrlich zu sein, suche ich eine Gruppe von Leuten, die hier ein Treffen abhalten sollten. ",51)
	NODE(51)
		SAY("Ahh, dann sind sie also derjenige, den ich erwartet habe. Sie sind direkt in unsere Falle getappt. Ich hoffe sie haben sich schon auf ihr Ende vorbereitet?")

		ANSWER("Ich verstehe nicht…",52)
	NODE(52)
		SAY("...")
		ATTACK()
		SETNEXTDIALOGSTATE(53)
		ENDDIALOG()
		
	NODE(53)
		SAY("...")
		ATTACK()
		ENDDIALOG()

--------------------------------------------------------------------
--JOHNSON
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Sie bringen mir jetzt schon das Geld? Besuchen sie erst einmal Sektor A06 und eliminieren sie den Neokorps Anführer.")
			ENDDIALOG()
		else
			SAY("Sie? Sie haben die Falle überlebt? Aber es war doch alles bis ins Detail geplant!! ")

			ANSWER("Dann bist du also doch ein Verräter. Du kamst mir gleich verdächtig vor.",101)
		end
	NODE(101)
		SAY("Verdammt, von so einem Dreckschwein wie dir, lasse ich mich doch nicht duzen. Ihr Twilight Guardian verdient nichts Besseres als den Tod. Und ich werde bei dir gleich mal anfangen.")

		ANSWER("Mehr habe ich von einem Reza Sklaven auch nicht erwartet.",102)
	NODE(102)
		SAY("...")

		ATTACK()
		SETNEXTDIALOGSTATE(103)
		ENDDIALOG()
	NODE(103)
		SAY("...")
		ATTACK()
		ENDDIALOG()
--------------------------------------------------------------------
--Tovall
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Ich hab jetzt erst noch etwas zu erledigen, sorry.")
			ENDDIALOG()
		else
			SAY("Hey, wir haben uns ja schon länger nicht gesehen. Aber ich habe dir ja gesagt, dass noch Hoffnung besteht. Jade lebt und ihr geht es den Umständen entsprechend. ")

			ANSWER("Toll, im Moment beunruhigt mich aber eher, dass wir Reza auf den Leim gegangen sind. Einer seiner Agenten hat mich in die Irre geführt. ",151)
		end
	NODE(151)
		SAY("Dann ist es dir wohl nicht gelungen den Führer des Neokorps dran zu kriegen? Schau nicht so, Donnovan hat mir von dem Plan erzählt. Ich darf es also wissen.")

		ANSWER("Ja, ich meine nein, ich konnte ihn nicht erwischen, da mir anstatt ihm eine Killerin untergekommen ist. Es war eine Falle.",152)
	NODE(152)
		SAY("Verstehe, dann muss also Plan B herhalten. Hör zu, die Nachricht von Jade hatte auch gesagt, dass sie nah dran ist ein Geheimnis aufzuklären und deshalb auch nicht zurückgekehrt ist. Donnovan wollte schon jemanden losschicken um ihr Unterstützung zu geben, aber ich glaube es hat sich gerade jemand gefunden.")

		ANSWER("Nun gut, aber es sollte besser wichtig sein. Dieser Bastard vom Neokorps soll bloss mal abwarten bis ich ihn in meine Finger bekomme.",153)
	NODE(153)
		GIVEITEM(9480)
--PAKET FÜR JADE
		SAY("Du kannst sie in der Outzone finden, allerdings wechselt sie aus Sicherheitsgründen öfters mal den Standort. Also kann ich dir keine genaue Ortsangabe geben. Outzone Sektor 4 muss genügen. Viel Glück und ach ja, würdest du ihr bitte jetzt mein Paket mitbringen? Danke schon mal.")
		SETNEXTDIALOGSTATE(250)
		ENDDIALOG()

	NODE(154)
		SAY("Sie dürfte noch in der Outzone Sektor 4 zu finden sein. Wo genau, weiss ich nicht.")

		ENDDIALOG()

--------------------------------------------------------------------
--JADE
--200
	NODE(200)
		TAKEITEM(9480)
		if(result==0)then
			SAY("Ich kenne dich nicht, hau ab.")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(201)
			SAY("Endlich, du bist doch von den Twilight Guardian, oder?")

			ANSWER("Ja, ich komme direkt aus den Canyons, ich habe dir sogar etwas mitgebracht.",201)
		end
	NODE(201)
		SAY("Ein Paket von Tovall? Der Typ kann es wohl nicht lassen. Du musst wissen, er ist bis über beide Ohren in mich verknallt, will es aber nicht zugeben. Aber jetzt erst einmal zu etwas anderem.")

		ANSWER("Gut, deswegen bin ich ja auch hier, nicht wahr?",202)
	NODE(202)
		SAY("Ich habe mitbekommen, dass du auch auf der Spur des Neokorps bist. Ich hoffe du weißt, wovon ich rede?")

		ANSWER("Klar weiss ich das, diese Hunde haben uns eine Falle gestellt. Unser Informant war ein Verräter, nur einer von Rezas Schosshunden. ",203)
	NODE(203)
		SAY("Gut, wie dem auch sei. Seitdem das Neokorps angefangen hat jeden einzelnen Guardian in den Mauern von Neocron zu jagen, habe ich einige Spuren verfolgt und habe jetzt nur noch eine Handvoll Möglichkeiten übrig. Das soll bedeuten, dass ich hoffentlich bald weiss, wer der Anführer des Neokorps ist. Aber ich brauche deine Hilfe dazu. Bist du bereit? Ach ja, es wurde auch ein grosses Kopfgeld  auf ihn ausgesetzt. Das hätte ich beinahe vergessen.")

		ANSWER("Nun gut. Einverstanden",204)
	NODE(204)
		SAY("Super, dann lass mich noch einiges vorbereiten bevor wir starten können. Sprich einfach mit einer Contact Person, wenn du bereit bist. Falls du möchtst kannst du dir noch eine Spezialanfertigung von den FallenAngels bei Tovall abholen. Das sollte unsere Aufgabe vereinfachen. Bis dann, ich zähle auf dich.")
		SETNEXTDIALOGSTATE(205)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
		
	NODE(205)
		SAY("Besuch doch mal Tovall, er hat noch etwas für dich.")

		ENDDIALOG()
--------------------------------------------------------------------
--Tovall
--250
	NODE(250)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Sie dürfte noch in der Outzone Sektor 4 zu finden sein. Wo genau, weiss ich nicht.")
			ENDDIALOG()
		else

--tECH wAFFE
			GIVEITEM(9484,255)
			SAY("Die Entwicklung der Fallen Angels steht kurz vor dem Abschluss. Aber bis dahin gibt es noch einiges zu tun. Hier ist ein kleiner Vorgeschmack von dem, was die Fallen Angels für uns vorbereiten.(nächste Mission ab Level 45)")
			EPICRUNFINISHED(15,4)
			ACTIVATEDIALOGTRIGGER(3)
			ENDDIALOG()
		end

end