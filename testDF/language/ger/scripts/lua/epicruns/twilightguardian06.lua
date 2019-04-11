--new
--Twilight Guardian
--
--Trigger
--Triggernumber,Type,Person
--0,D,50
--1,PVP VS CA, 150
--2,
--3,D,DONNOVAN 200
--
--Startnode, Person
--0, Contact Person
--50, JADE 2265
--100, BECKERT 1637
--150, JADE
--200, JADE
--250, donnovan 2262
--300, Blight 2260
--
--NPC0	NPC1	NPC2	NPC3	TRG0	VAL01	VAL02	VAL03	TRG1	VAL01	VAL02	VAL03	TRG2	VAL01	VAL02	VAL03	TRG3	VAL01	VAL02	
--2265	1637	2262	2260	3	0	0	0	9	1	1	10	1	3	0	0	3	2	3		
--START	START	START	START
--50	100	250	300
--
--Items
--

function DIALOG()
--------------------------------------------------------------------
--Contact Person
--0
	
	NODE(0)
		SAY("Mir ist da zu Ohren gekommen, du wärst auf dem Weg diesem Neokorps zu zeigen wo es lang geht. Stimmt das?")

		ANSWER("So ist der Plan.",1)
	NODE(1)
		SAY("Mann, meinen Segen hast du auf jeden Fall. Jade erwartet dich schon in der Outzone Sektor 4. Mach sie alle.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)
		SAY("Ich weiss, du kannst es. Jade ist in der Outzone Sektor 4.")

		ENDDIALOG()

--------------------------------------------------------------------
--JADE
--50
	NODE(50)
		SAY("Willkommen, wenn alles läuft wie geplant, können wir bald schon wieder raus aus dieser dreckigen Outzone. Ich hoffe du hast dich gut vorbereitet, denn das wird kein Zuckerschlecken.")

		ANSWER("Ansonsten wäre ich nicht hier, Jade.",51)
	NODE(51)
		SAY("Gut, ich habe lange darauf hingearbeitet, also versau es mir nicht. Es gibt einen Kontaktmann in der Ancient Loba Village, er ist zwar kein Vertrauenswürdiger Typ, aber bis jetzt haben seine Infos noch immer gestimmt. Ich habe einen Deal mit ihm. Er  liefert uns das wie und wo des Neokorps und wir geben ihm einen ganzen Batzen Credits.")

		ANSWER("Soweit ist das klar. Also, wo ist die Kohle? ",52)
	NODE(52)
		SAY("Das wäre doch wirklich zu einfach gewesen, oder? Die musst du schon selbst besorgen. Es war abgemacht, ihm 10000 Neocron Credits zu zahlen. Aber es ist doch ein kleiner Preis um dem grossen Reza einen Strich durch die Rechnung zu machen, oder nicht?")

		ANSWER("Hrmph, gut, aber nur, weil ich Reza nicht ausstehen kann.",53)
	NODE(53)
		SAY("Der Kontaktmann befindet sich in der Ancient Loba Village.  Wir werden unseren Plan genauer ausarbeiten, wenn wir erst einmal seine Informationen haben. Sein Name ist Beckert.")
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()


--------------------------------------------------------------------
--BECKERT
--100
	NODE(100)

			SAY("Shht, ich bin gerade dabei… Verdammt, jetzt habe ich die Frequenz verloren. Schon das dritte Mal an diesem elenden Tag. Nun gut, was solls. Also, was ist?")

			ANSWER("Ich denke du kennst Jade? Es gab da eine Abmachung.",101)
	
	NODE(101)
		SAY("Oh, na klar. Ich bekomme viele Credits und ihr bekommt etwas aus meiner ganz persönlichen Sammlung. Hast du das Geld?")

		ANSWER("Hier bitte, zähl ruhig nach, wenn du mir nicht traust. 10 000 Credits, wie abgemacht.",102)
	NODE(102)
		SAY("Schön, schön, ich warne dich aber gleich, die Information ist sehr gefährlich. Sie könnte dich dein Leben kosten. ")

		ANSWER("Ha, guter Witz, es hätte mich alleine schon mein Leben kosten können, hier heraufzukommen. So weit in den Wastelands war ich selten.",103)
	NODE(103)
		SAY("Mag sein, aber dieser Ort hat einen Vorteil. Er ist weit von Neocrons Fängen entfernt. Willst du nun hören, was ich zu sagen habe?")

		ANSWER("Klar, schieß los.",104)
	NODE(104)
		SAY("Ich habe einige Gespräche abhören können und mir ist dabei zufällig zu Ohren gekommen, wo sich der Chef des Neokorps zur Zeit aufhält. Wenn das nichts ist. Ich weiß ja, dass ihr Twilight Guardian ganz scharf drauf seid ihn in die Finger zu kriegen.")

		ANSWER("Und wo? Sprich, Mann, wo ist er?",105)
	NODE(105)
		SAY("Ist ja gut, er befindet sich gleich hinter dem Haupttor von Neocron. Dort gibt es ein paar Geschäfte wo er gerne einkauft. Sein Name ist Blight, mehr weiss ich aber auch nicht. Hat mich gefreut mit euch Geschäfte zu machen. Geht zu Jade zurück, sie wird auf diese Information sicher schon warten.")
		SETNEXTDIALOGSTATE(106)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
	NODE(106)
		SAY("Versuchs beim Haupttor zu Neocron. Dahinter gibt es ein paar Geschäfte, wo sich die gesuchte Person manchmal aufhält. Berichte Jade am besten gleich davon.")

		ENDDIALOG()

--------------------------------------------------------------------
--JADE
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("In der Ancient Loba Village gibt es jemanden, der uns Informationen geben kann.")
			ENDDIALOG()
		else
			SAY("Und? Was hat er an Informationen ausgespuckt?")

			ANSWER("Wir wissen jetzt, wo der Führer des Neokorps einkaufen geht. Hilft uns das weiter? Kann man dem Informanten überhaupt trauen?",151)
		end
	NODE(151)
		SAY("In dieser Welt muss man ab und zu mal ein Risiko eingehen. Außerdem ist das unsere beste Spur. Wie siehts aus? Bist du bereit?")

		ANSWER("Klar, lass mich diesen Sack persönlich aufmischen.",152)
	NODE(152)
		SAY("Nein, sorry, aber das will ich zuerst doch selbst versuchen. Allerdings brauche ich dich um eine Ablenkung zu organisieren. Bringe 1 CityAdmin Runner um, die ungefähr deinen Fähigkeiten entsprechen. Ich werde dann den Tumult nutzen, um diesen Blight zu eliminieren.")

		ANSWER("Nun gut, du kannst den Kerl gleich hinter dem Haupttor von Neocron finden. Dort gibt es einige Geschäfte, wo er gerne einkauft.",153)
	NODE(153)
		SAY("Danke, das vergesse ich dir nicht so schnell. Wirt treffen uns wieder hier, wenn alles vorüber ist, einverstanden? Also gut, machen wir uns ans Werk.")
		SETNEXTDIALOGSTATE(154)
		ENDDIALOG()

--SPIELER KILLT 1 CITYADMIN RUNNER

	NODE(154)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Töte zur Ablenkung einen CityAdmin Runner. Das wird mir hoffentlich die Ablenkung verschaffen, die ich brauche. Aber keine Zivilisten, Wachen oder Angestellte, verstanden? Die haben zu wenig Bedeutung.")
			ENDDIALOG()
		else
			SAY("Es tut mir leid, ich konnte ihn nicht töten. Ich bin nicht mal an den Storm Bots vorbeigekommen. ")

			ANSWER("Bist du etwa verletzt?",155)
		end
	NODE(155)
		SAY("Nein, nur ein Kratzer, aber ich habe versagt.")

		ANSWER("Dann werde ich es wohl persönlich noch einmal versuchen müssen. ",156)
	NODE(156)
		SAY("Das ist Wahnsinn, er ist doch jetzt schon vorgewarnt. Du wirst nur in deinen Tod laufen.")

		ANSWER("Manchmal muss man in dieser Welt ein Risiko eingehen. Keine Angst, ich werde wiederkommen.",157)
	NODE(157)
		SAY("Wenn das wirklich dein Wunsch ist, dann pass aber wenigstens auf. Es ist wirklich gefährlich.")

		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()

--SPIELER KILLT NEOKORPS MANN
--------------------------------------------------------------------
--JADE
--200
	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Ich dachte du wolltest versuchen, den Neokorps Führer zu eliminieren? Außerhalb der Neocron Hauptleitung.")
			ENDDIALOG()
		else
			SAY("Du hast es wirklich geschafft? Du hast ihn umgebracht?")

			ANSWER("Es war ein heftiger Kampf, aber am Ende hat er einen Fehler gemacht. Er hatte mich unterschätzt.",201)
		end
	NODE(201)
		SAY("Wahnsinn, damit hast du ein grosses Problem einfach so aus der Welt geschafft. Das wird dir so schnell niemand vergessen. Wir sollten hier aber nicht mehr so lange herumstehen, ich bin sicher, dass schon bald die Hölle losbrechen wird. Man sieht sich vielleicht mal wieder. Donnovan wird dir die Belohnung geben können.")
		SETNEXTDIALOGSTATE(202)
		ENDDIALOG()
	NODE(202)
		SAY("Du kannst dir deine Belohnung bei Donnovan abholen.")

		ENDDIALOG()
--------------------------------------------------------------------
--DONNOVAN
--250

	NODE(250)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Ja, es gibt eine Belohnung auf den Kopf des Neokorps Anführers. Also streng dich an.")
			ENDDIALOG()
		else
			ISMISSIONTARGETACCOMPLISHED(1)
			if(result==0)then
				SAY("Jade in Outzone Sektor 4 hat alle Informationen über diese Neocron Elite Truppe.")
				ENDDIALOG()
			else
				SAY("Du bist ein excellentes Vorbild für uns alle geworden. Von ganz unten angefangen und in enorm kurzer Zeit so viel schon erreicht und überlebt. Beeindruckend. Aber das alles wird von dem Tod des Neokorps Führers Blight noch übertroffen. Ich würde sagen, du wärst sogar schon bereit, einen eigenen Clan zu führen.")
	
				ANSWER("Das wäre eine Idee wert. Aber es wurde etwas von einer Belohnung gesagt…",251)
			end
		end
	NODE(251)		
		SAY("In der Tat, hier sind 80 000 Credits. Da siehst du, wie viel uns das alles Wert ist. Nimm erst einmal eine Auszeit und dann kannst du dir ja überlegen, ob du einen Clan gründen willst um den Krieg gegen Reza zu unterstützen. Ich kann dir leider nichts mehr beibringen. Viel Glück weiterhin und gib Reza ruhig ein paar Alpträume.")
		ANSWER("Darauf kannst du Gift nehmen. Dann werde ich mich mal an die Arbeit machen.",252)
	NODE(252)
		GIVEMONEY(80000)
		SAY("Bevor du gehst, erinnerst du dich an den Auftrag mit den Fallen Angels? Nun, sie haben unser Produkt fertig gestellt und man kann es nun benutzen. Es sind eine spezielle Art von Handgranaten, sie haben die Typenbezeichnung Freedom Strike. Du kannst so viele davon haben, wie du willst. Aber die Lieferungen der Fallen Angels dauern immer etwas länger, daher würde ich mit Wartezeiten rechnen. Sprich einfach mal mit Heff, er wird diese Granaten dann nämlich austeilen.")
		ACTIVATEDIALOGTRIGGER(3)
		EPICRUNFINISHED(15,5)
		ENDDIALOG()
--------------------------------------------------------------------
--Blight
--300
	NODE(300)
		SAY("You're lucky that I am currently off duty. Otherwise I would have you executed for interrupting my every morning shopping tour.")
		ENDDIALOG()
end