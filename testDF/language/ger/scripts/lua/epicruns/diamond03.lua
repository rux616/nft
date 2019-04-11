--new
--Diamond Real Estate
--
--Trigger
--Triggernumber,Type,Person
--0,D, Simmons 50
--1,D, Simmons 150
--2,D, Simmons 250
--3,D, Human Resource Director 300
--
--Startnode, Person
--0, Human Resource Director
--50, Simmons 1628
--100, Crazy Dillan 1633
--150, Simmons
--200, Max Delavare 1614
--250, Simmons
--300, Human resource Director
--
--Items
--Paket mit Wohnungsschl�sseln. 100 Crazy 9351
--CATHRINE ID CUBE 9355

function DIALOG()
--------------------------------------------------------------------
--Human Resource Director
--0
	
	NODE(0)
		SAY("Hallo, wie sie sich denken k�nnen, hat sich auch inzwischen wieder eine Menge getan. Die Black Dragon lassen nicht locker und solange der Vertrag mit den CityMercs noch nicht in Kraft tritt, verlieren wir mehr und mehr Kunden. Die neueste Masche ist es, dass verschiedene Leute aus unserem Konflikt Kapital schlagen. ")

		ANSWER("Kann das sein? Die sind ja wie die Aasgeier.",1)
	NODE(1)
		SAY("Einige unabh�ngige Immobilienmakler nutzen die Bl�sse, die wir uns geben m�ssen um ihre Wohnungen zu einem erh�hten Preis abzugeben. Das ist nat�rlich eine untragbare Situation wie sie verstehen werden.")

		ANSWER("Ich kann mir gut vorstellen, dass dies schlecht f�rs Gesch�ft ist. Aber was soll man dagegen tun?",2)
	NODE(2)
		SAY("Diamond ist sehr erpicht darauf, diese Immobilien Makler f�r einen Job bei Diamond zu interessieren. Damit w�ren auch zwei Fliegen mit einer Klappe geschlagen worden. Wir h�tten nicht nur mehr Verk�ufer und Wohnungen, sondern w�rden diese doch recht unliebsame Konkurrenz auch aus dem Weg haben.")

		ANSWER("Das klingt einleuchtend. H�re ich da vielleicht eine Aufgabe f�r mich heraus?",3)
		ANSWER("Wenn das auf eine Aufgabe f�r mich hinausl�uft, dann muss ich im Moment leider ablehnen.",5)
	NODE(3)
		SAY("Ich wollte ihnen gerade anbieten, dass sie es doch versuchen k�nnten, einen dieser Immobilien Haie davon zu �berzeugen unseren Reihen beizutreten. �ber Bezahlungen kann man nat�rlich auch sp�ter noch verhandeln.")

		ANSWER("Versuchen kann man es ja mal. Solche Einzelg�nger lassen sich aber normalerweise schwer von so etwas �berzeugen.",4)
	NODE(4)
		SAY("Falls sie es trotzdem schaffen sollten, wird ihnen Diamond einen Bonus geben. Also viel Gl�ck, es ist ein gewisser Simmons im Pepper Park Sektor 02. Es war ein Treffen in einem der Restaurants dort geplant. So viele gibt es dort ja nun auch nicht, sie werden es schon finden.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(300)
		ENDDIALOG()
	NODE(5)
		SAY("Wie sie meinen, aber diese Auftr�ge sind nicht immer verf�gbar.")
		ENDDIALOG()
--------------------------------------------------------------------
-- Simmons
--50
	NODE(50)
		SAY("Sind sie von Diamond?")

		ANSWER("Falls sie Simmons sind, ja. Ich hatte ein treffen mit ihnen hier, ich hoffe sie haben ein wenig Zeit?",51)
	NODE(51)
		SAY("Sind sie sicher, dass sie von Diamond kommen?")

		ANSWER("Sie scheinen mir sehr misstrauisch zu sein, ich versichere ihnen ich bin derjenige, den sie erwarten.",52)
	NODE(52)
		SAY("Nun gut, ich habe immer das Gef�hl verfolgt zu werden. Hier im Pepper Park, jede Nacht h�rt man die Plasma Entladungen und Schreie. Ich sage ihnen, wenn man hier nicht st�ndig auf der Hut ist, kann man sich gleich eingraben lassen.")

		ANSWER("Na, na, na es gibt doch immer noch die GenReps.",53)
	NODE(53)
		SAY("Sie meinen ich soll nach meinem Tod einen Klon von mir erstellen lassen? Hah, sind sie naiv. Stellen sie sich doch mal vor, sie sterben in irgendeiner schmutzigen Gasse und ein Klon wird dann von ihnen erstellt. Ich frage sie, wo sind sie dann, im Klon oder sind sie vielleicht eher immer noch tot?")

		ANSWER("Da haben sie recht, dar�ber w�rde es sich lohnen nachzudenken.",54)
	NODE(54)
		SAY("Deswegen habe ich ja auch versucht, einen harmlosen Job nebenher zu machen. Immobilien klingt f�r jeden so harmlos, doch heutzutage ist es ein Krieg, sage ich. Ich sehe schon �berall Black Dragons stehen, die jederzeit bereit sind, mir mein Lebenslicht auszublasen. Tsunami sind genauso schlimm, aber die haben immerhin nichts mit Immobilien zu tun.")

		ANSWER("Genau deswegen bin ich hier. Diamond will ihnen ein Angebot machen.",55)
	NODE(55)
		SAY("Mir? Ein Angebot? Ist das eine Falle?")

		ANSWER("Nein, auf keinen Fall, Diamond ist im Moment sehr daran interessiert sie anzuwerben.",56)
	NODE(56)
		SAY("Ich? Ich soll f�r Diamond arbeiten? Das ist im Moment unm�glich, wirklich.")

		ANSWER("Wirklich schade. Falls sie es sich dennoch �berlegen�",57)
	NODE(57)
		SAY("Warten sie! Ich hab�s mir �berlegt, ich trete euch bei� unter einer Bedingung!")

		ANSWER("Das klingt viel versprechend, schiessen sie los.",58)
	NODE(58)
		SAY("Also, es gibt ein kleines Problem mit� gewissen Leuten. Und zwar stecke ich im Moment in so einer Art Zwangslage.")

		ANSWER("Brauchen sie Geld? Ich bin mir sicher das Diamond�",59)
	NODE(59)
		SAY("Nein, nein, es ist nicht Geld. Oder ja, es ist Geld, aber ich brauche dringend Hilfe. Wenn sie mir helfen, dann trete ich Diamond bei, ja?")

		ANSWER("Wieso? Wof�r brauchen sie �berhaupt Hilfe?",60)
	NODE(60)
		SAY("Es ist... Es geht um meine Frau. Sie wurde von einigen Schl�gertypen entf�hrt. Der Anf�hrer war ein gewisser Max, mehr weiss ich auch nicht. Sie haben mir gedroht, dass sie sie umbringen werden, wenn ich ihnen nicht alle Wohnungsschl�ssel aush�ndige. Es ist schrecklich, ich bin den ganzen Tag schon wie gel�hmt, ich kann nicht mehr essen. Ich w�sste nicht was ich tue wenn ihr wirklich was zustossen w�rde.")

		ANSWER("Das ist wahrlich unglaublich. Ich werde mein bestes tun um sie zu unterst�tzen. Was gibt es zu tun?",61)
	NODE(61)
		SAY("Ich habe einen bekannten, der einige Wohnungsschl�ssel f�r mich aufbewahrt. Die Entf�hrer haben mir ein Ultimatum gesetzt und ich kann deshalb nicht alle Schl�ssel von �berall her holen. W�rden sie bitte die Schl�ssel von meinem Freund besorgen? Ich benachrichtige ihn, dass sie kommen werden.")

		ANSWER("Wo finde ich ihn denn?",62)
	NODE(62)
		SAY("Er ist etwas eigen, genauer gesagt ist er Anarchy Breed und wartet vor den Toren Neocrons. Sein Name ist crazy Dillan. Ich erwarte sie dann hier wieder.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()	

--------------------------------------------------------------------
-- Crazy Dillan
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Geld oder Leben!")
			ATTACK()
			ENDDIALOG()
		else
			SAY("Jo, Runner! Was ne �berraschung. Geld oder Leben? Ich warne dich, ich hab mindestens schon 10 mal ein Genrep von mir selbst gemacht� ich habe also keine Angst mehr zu sterben.")

			ANSWER("Ganz ruhig, Simmons schickt mich.",101)
		end
	NODE(101)
		SAY("Mann, sag das doch gleich. Verdammter Wahnsinn was die mit seinem M�dchen anstellen. Wenn diese Schl�ger jemals in mein Territorium kommen w�rden, w�rde ich ihnen wohl die H�lle auf Erden bereiten.")

		ANSWER("Wer immer das auch ist, sie scheinen total skrupellos zu sein.",102)
	NODE(102)
		GIVEITEM(9351)
		SAY("Dann worauf wartest du hier noch, nimm diese Keys und dann mach dich wieder zur�ck zu Simmons. Das hier ist nicht eines von diesen bescheuerten Spielchen, Runner, das hier ist so real wie es hier nur geht.")
		
		SETNEXTDIALOGSTATE(103)
		ENDDIALOG()
		
		
	NODE(103)
		SAY("Beeil dich, Runner. Das hier ist wichtig, Simmons erwartet deine R�ckkehr sicher schon.")
		ENDDIALOG()

	
--------------------------------------------------------------------
--Simmons
--150
	NODE(150)
--Schl�ssel
		TAKEITEM(9351)
		if(result==0)then
			SAY("Bitte, ich brauche diese Schl�ssel sehr dringend. Crazy Dillan vor dem Haupteingang zu Neocron wird auch schon auf sie warten.")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(151)
			SAY("Gut, gut, sie haben die Schl�ssel? Dann schlage ich vor, sie besuchen Max im Outzone Sektor 5. Ein schrecklicher Ort, sehr gef�hrlich, aber ich mache hier nicht die Regeln. W�rden sie das tun, ja?")

			ANSWER("Moment, warum gehen sie nicht selbst? Immerhin ist es ihre Frau.",151)
		end
	NODE(151)
		SAY("Ich... sagen wir mal so... ich habe schlechte Erfahrungen in der Outzone gemacht.")

		ANSWER("Schlechte Erfahrungen?! Das ist ihre Frau, Mann!",152)
	NODE(152)
		SAY("NA GUT !! ICH HABE EINE VERDAMMTE ANGST DAVOR!! Reicht ihnen das jetzt? Sind sie zufrieden? Dann gehen sie bitte zu Max und erl�sen sie Cathrine.")

		ANSWER("Na gut, aber vergessen sie ihre Abmachung nicht.",153)
	NODE(153)
		SAY("Danke, vielen dank. Sie sind eine grosse Hilfe. Ich werde hier auf sie beide warten.")
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(250)
		ENDDIALOG()

		
	

--------------------------------------------------------------------
-- Max Delavare
--200
	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Komm schon, lass mich in Ruhe. Verschwinde!")
			ENDDIALOG()
		else
			SAY("Was ist dein Anliegen Runner? Verirrt oder bist du der Bote?")

			ANSWER("Ich soll die Wohnungsschl�ssel hier abgeben und im Austausch Catherine von hier wegf�hren.",201)
		end
	NODE(201)
		SAY("Ahh, dann hat sich der Sack endlich entschieden zu zahlen, was? He, ich wette der macht sich vor Angst schon in die Hose. Aber ich muss schon sagen, s�� war die kleine ja schon� jetzt aber her mit den Schl�sseln, sonst geht�s dir an den Kragen.")

		ANSWER("Moment, was heisst hier *war*? Was habt ihr getan?!",202)
	NODE(202)
		GIVEITEM(9355)
		SETNEXTDIALOGSTATE(203)
		SAY("Jetzt bepiss dich nicht gleich, du kannst sie teilweise irgendwo im Industrial Sektor 01 finden. Hier ist ihr ID Cube. Also her mit dem Zeug oder ich muss dich leider t�ten.")

		ANSWER("Nein, nicht solange ich Cathrine nicht gesund und munter gesehen habe bekommst du gar nichts.",203)
	NODE(203)
		SAY("Dann werde ich mir die Schl�ssel einfach nehmen.")
		SETNEXTDIALOGSTATE(204)
		ENDDIALOG()

	NODE(204)
		SAY("Stirb endlich!")
		ENDDIALOG()

--------------------------------------------------------------------
-- Simmons
--250
	NODE(250)
		TAKEITEM(9355)
--CATHRINE ID CUBE
		if(result==0)then
			SAY("Treffen sie sich bitte mit Max in der Outzone 5 und bringen sie mir meine Cathrine wieder. Finden sie wenigstens irgendetwas �ber sie heraus. Ein Zeichen, ein Gegenstand, egal was.")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(251)
			SAY("Moment, jetzt mach mir keine Angst, wo ist Cathrine?")
		
			ANSWER("Ich kann es selbst nicht genau verstehen, ich habe nur diesen Datacube gefunden, auf dem wohl ein paar Eintr�ge von ihr sind.",251)
		end
	NODE(251)
		SAY("Mein Gott! Nein, nein, nein... wie ist so etwas nur m�glich...")
		
		ANSWER("Es tut mir leid, ich lasse sie jetzt lieber alleine...",252)
	NODE(252)
		TAKEITEM(9351)
		if(result==0)then
			SAY("Meine arme Cathrine... was soll ich jetzt nur tun?... was...")
			ACTIVATEDIALOGTRIGGER(2)
			SETNEXTDIALOGSTATE(253)
			ENDDIALOG()
		else
			SAY("Meine arme Cathrine... was soll ich jetzt nur tun?... was...")
			ACTIVATEDIALOGTRIGGER(2)
			SETNEXTDIALOGSTATE(253)
			ENDDIALOG()
		end
	NODE(253)
		SAY("Lassen sie mich in Ruhe. Im Moment kann ich nicht reden... mit niemandem. Gehen sie zu ihrer Firma zur�ck.")
		ENDDIALOG()
--------------------------------------------------------------------
-- Human Resource Director
--300

	NODE(300)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Versuchen sie Simmons, den Immobilienhai zu �berzeugen auf unsere Seite zu kommen. Sie k�nnen ihn im Pepper Park 03 finden.")
			ENDDIALOG()
		else
			SAY("Ah, da sind sie ja wieder. Haben sie ihn �berzeugen k�nnen?")
		
			ANSWER("Ich m�chte nicht so gerne dar�ber reden. Der Mann hat im Moment schon genug durchgemacht. ",301)
		end
	NODE(301)
		SAY("Es scheint f�r alle eine recht harte Zeit zu sein... nun gut, vielleicht werden wir es sp�ter noch einmal versuchen. Diamond wird ihnen dann noch einmal eine Chance geben. Vielleicht sollten sie ihre �berredungsk�nste etwas trainieren.(n�chste Mission Level 35)")
		EPICRUNFINISHED(2,2)
		ACTIVATEDIALOGTRIGGER(3)
		ENDDIALOG()


end