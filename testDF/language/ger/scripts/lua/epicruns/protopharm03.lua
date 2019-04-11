--new
--ProtoPharm

--
--Trigger
--Triggernumber,Type,Person
--0,D,GEORGE 50
--1,D,ELIAS 150
--2,D,GEORGE 300
--3
--
--Startnode, Person
--0, Human Resource Director
--50, GEORGE
--100, PAT 1642
--150, ELIAS 1613
--200, GEORGE 1647
--250, MICHAIL 1646
--300, GEORGE
--Items
--6 Snow White 818

function DIALOG()
--------------------------------------------------------------------
--Human Resource Director
--0
	
	NODE(0)
		SAY("Was kann ich für sie tun? ")

		ANSWER("Hat George eine Nachricht für mich hinterlassen?",1)
	NODE(1)
		SAY("Lassen sie mich kurz nachsehen. Ja, er lässt ihnen ausrichten, dass die Daten nun entschlüsselt sind und er sie am üblichen Treffpunkt erwartet.")
		SETNEXTDIALOGSTATE(2)
		STARTMISSION()
		ENDDIALOG()
		
	NODE(2)
		SAY("George wartet am üblichen Treffpunkt auf sie.")
		ENDDIALOG()

--------------------------------------------------------------------
--GEORGE
--50
	NODE(50)
		SAY("Ich habe wichtiges zu berichten. Es duldet keinen Aufschub. Die entschlüsselten Daten weisen darauf hin, dass eine Produktionszelle unter dem ProtoPharm Schutzmantel in der Tawkeen Village aufgebaut wurde. ")

		ANSWER("Ist es denn keine ProtoPharm Produktionszelle? ",51)
	NODE(51)
		SAY("Die Akten sind eindeutig, was das angeht. Es sind ProtoPharm Angestellte, ohne Zweifel, aber dennoch ist es keine autorisierte Aktion. Und jetzt raten sie wofür dieser ganze Aufwand betrieben wird.")

		ANSWER("Es muss im Zusammenhang mit Spirula stehen.",52)
	NODE(52)
		SAY("Richtig, es wird befürchtet, dass sie es wagen werden, die Droge Spirula in grosser Zahl auf den Markt zu werfen. Das wäre eine Katastrophe, wenn dies zu ProtoPharm zurückverfolgt würde. Sie müssen selbst zur Tawkeen Village reisen und sich vor Ort von der Lage überzeugen. Sie haben schon das letzte Mal bewiesen, dass sie zuverlässig sind, ich verlasse mich auf sie. Passen sie auf, die Wastelands sind kein angenehmer Ort.")
		SETNEXTDIALOGSTATE(200)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
	

--------------------------------------------------------------------
--PAT
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Es ist gefährlich für jemanden wie dich hier in den Wastelands herumzustreifen. Pass lieber auf.")
			ENDDIALOG()
		else
			SAY("Was suchst du hier? Hier gibt’s nicht genug um jemanden wie dich zu interessieren, also mach dich besser aus dem Staub.")

			ANSWER("Ich hoffe ich störe nicht, aber ich suche nach einem ProtoPharm Lager hier in der Nähe. ",101)
		end
	NODE(101)
		SAY("ProtoPharm? Ja, da waren hier ne ganze Menge. Jede Menge Zelte, technisches Zeug und sogar zwei Panzer. Aber du bist zu spät, die sind schon seit gestern nicht mehr hier.")

		ANSWER("Verdammt! Haben sie vielleicht fallen gelassen, wohin sie sich wenden wollten?",102)
	NODE(102)
		SAY("Immer mit der Ruhe. Nein, ich habe keine Ahnung wo sie hin wollten. Ich war nie nah genug an Finster dran, um etwas genaueres zu erfahren.")

		ANSWER("Finster? Finster war im Lager? Sie haben ihn echt gesehen?",103)
	NODE(103)
		SAY("Klar, der ist hier immer unterwegs gewesen. ich denke nicht, dass dieser auch nur einen Tag hier geschlafen hat. Er war immer auf den Beinen. Er hat sich auch mit verschiedenen Besuchern unterhalten. ")

		ANSWER("Ja? Und was waren das für Besucher?",104)
	NODE(104)
		SAY("Ich bin mir nicht sicher. Aber dir scheint das ganze hier recht wichtig zu sein. Ich werde dir sagen mit wem er sich getroffen hat, allerdings nur gegen etwas im Austausch dafür.")

		ANSWER("Wenn dein Preis nicht zu hoch ist, kann man darüber reden.",105)
	NODE(105)
		SAY("Credits, Runner, beherrschen die Welt. Also hat meine Information auch einen Preis in Credits. 1000 Credits sollten genug sein.")

		ANSWER("Das ist eindeutig zu viel für eine solche simple Antwort.",106)
	NODE(106)
		SAY("Nun gut, alternativ kannst du mir auch ein paar Snow White Getränke bringen. Sagen wir 6. Wie du willst.")
		SETNEXTDIALOGSTATE(107)
		ENDDIALOG()
		
--SPIELER BEZAHLT
	NODE(107)
		SAY("Wie hast du es nun lieber? Bezahlen oder Getränke?")

		ANSWER("Ich habe sechs Snow White. Machen wir einen Deal.",108)
		ANSWER("Hier hast du das Geld.",109)
	NODE(108)
		TAKEITEMCNT(818,6)
		if(result==0)then
			SAY("Erst sagst du, du hast etwas für mich und dann stehst du mit leeren Händen da.")
			ENDDIALOG()
		else
			SAY("Fair ist fair. Finster hat viele Male mit Fallen Angels gesprochen. Ich habe nicht mitbekommen, worüber sie geredet haben, aber ich habe einen von ihnen erkannt. Elias. Er ist ein Fallen Angel, den man immer am Eingang zu Tech Haven finden kann. Ein zurückhaltender Kerl, aber man kann mit ihm klar kommen. Mehr weiss ich nicht.")
			SETNEXTDIALOGSTATE(110)
			ENDDIALOG()
			
		end
	NODE(109)
		TAKEMONEY(1000)
		if(result==0)then
			SAY("Leider hast du nicht genug. Versuchs später noch mal mit ein bischen mehr Geld.")
			ENDDIALOG()
		else
			SAY("Fair ist fair. Finster hat viele Male mit Fallen Angels gesprochen. Ich habe nicht mitbekommen, worüber sie geredet haben, aber ich habe einen von ihnen erkannt. Elias. Er ist ein Fallen Angel, den man immer am Eingang zu Tech Haven finden kann. Ein zurückhaltender Kerl, aber man kann mit ihm klar kommen. Mehr weiss ich nicht.")
			SETNEXTDIALOGSTATE(110)
			ENDDIALOG()
		end
	NODE(110)
		SAY("Ich habe doch schon gesagt, dass ich nicht mehr weiss, als das dieser Elias ein Fallen Angel ist. Irgendwo am Tech Haven Eingang soll der immer rumhängen.")
		ENDDIALOG()

--------------------------------------------------------------------
--ELIAS
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Sie verstehen sicher, dass ich nicht mit jedem reden kann, der hier vorbeikommt.")
			ENDDIALOG()
		else
			SAY("Sie sind hier auf Gebiet der Fallen Angels. Was kann ich für sie tun?")

			ANSWER("Sie könnten mir ein paar Fragen beantworten.  Ich komme von ProtoPharm und will herausfinden, was Jakob Finsters Pläne sind.",151)
		end
	NODE(151)
		SAY("Das ist eher eine Angelegenheit zwischen Finster und den Fallen Angels, finden sie nicht?")

		ANSWER("Da Finster ProtoPharm ein Ultimatum gestellt hat, ist es sehr wohl meine Angelegenheit und die von ProtoPharm. ",152)
	NODE(152)
		SAY("Nun gut, aber auf manche Details werden sie trotzdem verzichten müssen. Ja, wir haben eine Abmachung mit Finster. Wir haben ihn mehrmals inmitten von seinem Camp getroffen. Er ist ein kalter und berechnender Mensch, der aber zu wissen scheint, was für ein Ziel er hat. Er bot uns Informationen über die Umkehr von Mutationen an. Wie konnten wir da nein sagen? Ein solches Angebot hätte ihm womöglich sogar mehr eingebracht als das er nur unsere Labore mitbenutzen darf. Das war nämlich sein Preis.")

		ANSWER("Aber was bezweckt er damit? Wozu braucht er noch mehr Labore?",153)
	NODE(153)
		SAY("Finster wusste, dass ProtoPharm ihn verfolgt. Er sprach mehrmals davon in unseren treffen. Allerdings scheinen die anderen Arbeiter aus dem Camp auch alles ProtoPharm Angestellte zu sein. Er bat uns auch um eine Kopie der Ceres Disks, allerdings haben wir selbst ja auch kaum Aufzeichnungen daraus. Ich denke, Finster wird sich inzwischen woanders gut versteckt haben. Wir haben schon ein paar Tage lang keinen Kontakt mehr zu ihm.")

		ANSWER("Es scheint klar, dass er an irgendetwas arbeitet. Aber was?",154)
	NODE(154)
		SAY("Wir sind keine Spione, Runner. Wir sind Wissenschaftler, und wenn man uns etwas nicht mitteilen will, dann haben wir besseres zu tun, als Leuten nachzuspionieren. Guten Tag.")
		SETNEXTDIALOGSTATE(155)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
		
	NODE(155)
		SAY("Ich kann nicht den ganzen Tag mit ihnen reden.")
		
		ENDDIALOG()


--------------------------------------------------------------------
--GEORGE
--200
	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Haben sie schon die Tawkeen Village besucht? Sie müssen etwas über diese vermeintliche Produktionszelle dort herausfinden.")
			ENDDIALOG()
		else
			SAY("Jetzt gibt es schon Angestellte, die Finster als eine Art Messias betrachten. Ihrer Meinung nach soll er ProtoPharm in eine glänzende neue Zukunft führen. Es gibt wirklich ein paar Spinner. Finster ist kaltgestellt und das im wahrsten Sinne des Wortes und dort wird er auch bleiben. Nun berichten sie, was hat es mit diesem Lager auf sich?")

			ANSWER("Ich kam leider etwas zu spät aber ich konnte trotzdem ein zwei Dinge in Erfahrung bringen. Finster war dort und hat die Führung übernommen. Er hat auch Geschäfte mit den Fallen Angels gemacht.",201)
		end
	NODE(201)
		SAY("Finster war dort? Unmöglich! Finster befindet sich in einer der CryoVaults in Sektor 13. Wenn, dann muss es ein Doppelgänger sein. ")

		ANSWER("Außerdem wurde erwähnt, dass Finster die Ceres Disk Aufzeichnungen sucht.",202)
	NODE(202)
		GIVEITEM(9406)
-- VOLLMACHT
		SAY("Es muss jetzt was unternommen werden. Holen sie mir schnell die CryoVault Unterlagen von Michail. Die Vollmacht habe ich ihnen bereits gegeben.")
		SETNEXTDIALOGSTATE(300)
		ENDDIALOG()
--------------------------------------------------------------------
--MICHAIL
--250	
	NODE(250)
		TAKEITEM(9406)
		if(result==0)then
			SAY("Ich habe leider keine Zeit im Moment.")
			ENDDIALOG()
		else
			SAY("Was gibt es nun schon wieder, ich kann so nicht arbeiten.")
	
			ANSWER("Ich habe die autorisation , die CryoVault Dokumente bezüglich des ehemaligen CEO Jakob Finster abzuholen. ",251)
		end
	NODE(251)
		SAY("Was? Ah, gut, aber hören sie sich erst an, was ich zu sagen habe.")
	
		ANSWER("Spannen sie mich nicht auf die Folter, legen sie los.",252)
	NODE(252)
		SAY("Ich arbeite hier daran,  allen Leuten zu helfen. Ich habe nur diese eine Vision. Die Vision, dass Mutationen eine Sache der Vergangenheit werden. Dass die Welt wieder den Menschen gehört und nicht den Bestien der Wastelands und den Killerrobotern. Die Vision, Medikamente zu entwickeln, die wirklich funktionieren.")
	
		ANSWER("Warum erzählen sie mir das?",253)
	NODE(253)
		GIVEITEM(9407)
--SEKTION 13 DOLUMENTE
		SAY("Ich hoffe, dass sie mich verstehen werden. Ich hoffe sie werden sich einmal daran erinnern. Hier sind die Dokumente, die sie wollten.")
		SETNEXTDIALOGSTATE(254)
		ENDDIALOG()
	NODE(254)
		SAY("Sie haben die Dokumente doch schon, was wollen sie noch?")
		ENDDIALOG()
--------------------------------------------------------------------
--George
--300

	NODE(300)
		TAKEITEM(9407)
		if(result==0)then
			SAY("Ich brauche die CryoVault Unterlagen von Michail in Sektion 13.")
		else
			SAY("Danke. Sie sind sehr zuverlässig.")
		
			ANSWER("Es war ein Kinderspiel.",301)
		end
	NODE(301)
		GIVEMONEY(20000)
		SAY("Moment, Jakob Finster taucht auf dieser Liste ja gar nicht auf. Das ist gar nicht gut, es gab doch ausdrückliche Befehle Finster nicht aus der CryoVault zu entfernen. Ich muss mir dringend ein paar Vollmachten von der Führungsetage besorgen. Hier ist ihre Entlohnung. (nächste Mission Level 35)")
		ACTIVATEDIALOGTRIGGER(2)
		EPICRUNFINISHED(6,2)
		ENDDIALOG()

end