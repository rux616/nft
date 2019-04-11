--new
--Diamond Real Estate
--
--Trigger
--Triggernumber,Type,Person
--0,D,CA Employee 50
--1,1, Matt 150
--2,2, Human Resource 200
--3
--
--Startnode, Person
--0, Human Resource Director
--50, CityAdmin Employee 131
--100, Human Resource Director
--150, Matt Tronstett 1626
--200, Human Resource Director
--250,
--
--Items
--Dokumente f�r Diamond 9350

function DIALOG()
--------------------------------------------------------------------
--Human Resource Director
--0
	
	NODE(0)
		SAY("Einen produktiven Tag. Ich denke sie sind hier um wieder etwas f�r Diamond zu tun, richtig?")

		ANSWER("Sie haben es erraten. Ich denke ich habe mich sehr gut vorbereitet.",1)
		ANSWER("Um ehrlich zu sein, ich denke ich bin noch nicht bereit.",4)
	NODE(1)
		SAY("Das trifft sich gut. Wie sie ja wissen haben wir immer gr�ssere Probleme mit den �bergriffen dieser Schl�ger Gruppen. Nat�rlich werden diese alle von den Black Dragons geschickt, daran besteht kein Zweifel. Danmund selbst hat sich nun bem�ht mit den CityMercs einen Vertrag zum Schutze unserer Wohnungen auszuarbeiten. Es wurde ein Meeting arrangiert in der N�he einer verlassenen Sendestation in den Wastelands.")

		ANSWER("Das wurde auch bitter n�tig. Es kann doch auf keinen Fall so weitergehen.",2)
	NODE(2)
		SAY("Genau richtig, f�r dieses Meeting werden allerdings noch ein paar Dokumente ben�tigt, die in doppelter Ausf�hrung die Abmachungen deutlich macht. Wenn sie bereit sind, w�re es gut, wenn sie diese bei der CityAdmin abholen. Sie werden dort noch auf ihre Rechtsg�ltigkeit gepr�ft.")

		ANSWER("Ich mache mich sofort auf den Weg.",3)
	NODE(3)
		SAY("Gut, vergessen sie nicht mir dann diese Dokumente wiederzubringen. CityAdmin sollte alles f�r sie vorbereitet haben")
		STARTMISSION()
		SETNEXTDIALOGSTATE(100)
		ENDDIALOG()
	NODE(4)
		SAY("Gut, aber lassen sie sich nicht zu viel Zeit.")
		ENDDIALOG()
		

--------------------------------------------------------------------
-- CityAdmin Employee
--50
	NODE(50)
		SAY("Willkommen bei der CityAdmin, was kann ich f�r sie tun?")

		ANSWER("Ich komme im Auftrag von Diamond und soll ein paar wichtige Dokumente besorgen.",51)
	NODE(51)
		SAY("Einen Moment bitte� ja, ihre Id ist in Ordnung. Das ist eine schreckliche Geschichte, die da vor sich geht. Die CityAdmin versucht nat�rlich so viel Unterst�tzung wie m�glich zu geben. Gerade weil Diamond und CityAdmin nun auch wirklich eng zusammenh�ngen.")

		ANSWER("Wie meinen sie das?",52)
	NODE(52)
		SAY("Nun, Diamond ist ja von der CityAdmin privatisiert worden. Vorher war es eine CityAdmin Untersektion. Doch die CityAdmin hat nat�rlich trotzdem noch grosses Interesse an Diamonds Erfolg und Wohlergehen.")

		ANSWER("Diese Tatsache ist ja nun auch nicht weit verbreitet. Aber ich brauche nun unbedingt diese Dokumente.",53)
	NODE(53)
		GIVEITEM(9350)
		SAY("Ja, richtig. Es geht um einen Vertrag mit den CityMercs, nicht wahr? Viel Erfolg w�nsche ich.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(54)
		ENDDIALOG()
		
	NODE(54)
		SAY("Wollten sie die Dokumente nicht zur�ck zu Diamond bringen?")
		ENDDIALOG()
		

--------------------------------------------------------------------
--Human Resource Director
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Sie sollten doch CityAdmin aufsuchen. Die Dokumente sind sehr wichtig.")
			ENDDIALOG()
		else
			SAY("Gut, dass sie schon wieder da sind, es ist etwas h�chst beunruhigendes geschehen. Die CityMerc Delegation wurde von den Twilight Guardian aufgerieben und nun kann dieses Meeting nicht stattfinden. Wir waren auf so etwas nat�rlich nicht vorbereitet.")

			ANSWER("Und jetzt? Was soll nun getan werden? Gibt es keine andere M�glichkeit?",101)
		end
	NODE(101)
		SAY("Ja, sie k�nnen sich ja vorstellen, dass im Hauptquartier alles drunter und dr�ber gegangen ist, aber wir konnten eine Alternative auftun.")

		ANSWER("Na, da bin ich ja gespannt.",102)
	NODE(102)
		SAY("Die hochrangigen Diamond Angestellten k�nnen nun nicht mehr ohne Gefahr die Reise zur CityMercs Basis machen. Es ist viel sicherer wenn wir einen Mittler benutzen. Eine Person, die in Point Red wohnt. Dazu wollen wir einen Runner anheuern, der sich m�glichst ohne Aufsehen zu erregen dorthin begibt und die Dokumente �bergibt.")

		ANSWER("Warum jemanden anheuern, wenn ich diesen Job eben so gut erledigen kann?",103)
	NODE(103)
		SAY("Nun, daran wurde erst einmal nicht gedacht, da wir keinem Mitglied zumuten wollen, sich in den Wastelands in Gefahr zu begeben. Aber falls sie wirklich Interesse haben,  k�nnen wir ihnen auf jeden Fall die Summe zahlen, die ansonsten der Runner bekommen w�rde.")

		ANSWER("Gut, das sollte nicht zu schwer sein, Point Red ist immerhin nicht weit von Neocron entfernt.",104)
	NODE(104)
		SAY("Viel Gl�ck, der Mittelsmann ist ein gewisser Matt Tronstett, eigentlich ein recht verschrobener Wissenschaftler f�r NEXT. Allerdings lebt er jetzt aus irgendeinem Grund lieber bei Point Red in den Wastelands. Viel Gl�ck, ich werde ihm sofort mitteilen, dass sie auf dem Weg sind.")
		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()		
		

--------------------------------------------------------------------
--Matt Tronstett
--150
	NODE(150)
		TAKEITEM(9350)
		if(result==0)then
			SAY("Sorry, aber ich kaufe nichts von Runnern wie ihnen. Lassen sie mir meine Ruhe.")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(151)
			SAY("Ho, Runner. Was treibt dich denn in diese trostlose Gegend?")

			ANSWER("Ein wichtiger Auftrag. Ich habe ein Packet f�r die CityMercs.",151)
		end
	NODE(151)
		SAY("Ahh, ich verstehe. Viele Leute suchen in letzter Zeit den Schutz der CityMercs. Viel zu viele falls man mich fragt. Bald werden die Mercs steinreich sein, wenn das so weitergeht.")

		ANSWER("Nun, ich hoffe sie sind ihr Geld wert.",152)
	NODE(152)
		SAY("Darauf kannst du dich verlassen, Runner. Es gibt keine besseren harten Jungs, als die CityMercs. Wenn die zuschlagen ist perfekte Organisation angesagt. Allerdings auch viel Wagemut.")

		ANSWER("Dann bin ich ja beruhigt, stellen sie bitte sicher, dass diese Dokumente ihr Ziel erreichen.",153)
	NODE(153)
		SAY("Aber klar, ich weiss was ich tue. Als Wissenschaftler muss man eine gewisse Professionalit�t an den Tag legen. Viel Gl�ck auch weiterhin.")
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(154)
		ENDDIALOG()
		
	NODE(154)
		SAY("Ich werd die Dokumente sicher �bermitteln, keine Angst. Du kannst ja inzwischen einfach zu Diamond zur�ckgehen und deine Leute beruhigen, dass alles in Ordnung ist.")
		ENDDIALOG()

--------------------------------------------------------------------
--Human Resource Director
--200

	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Haben sie Matt Tronstett in Point Red die Dokumente schon �bergeben?")
			ENDDIALOG()
		else
			GIVEMONEY(4000)
			SAY("Herzlichen Gl�ckwunsch, wir haben die Best�tigung schon bekommen. Nun bleibt nur noch abzuwarten, ob die CityMercs die Bedingungen so akzeptieren werden. Sie haben ihren Job gut gemacht, nat�rlich bekommen sie auch die Summe, die sonst einem Runner zugesprochen worden w�re. 4000 credits. Wenn sie so weiter trainieren, werden sicherlich bald wieder welche Jobs f�r sie verf�gbar sein.(n�chste Mission Level 30)")
			ACTIVATEDIALOGTRIGGER(2)
			EPICRUNFINISHED(2,1)			
			ENDDIALOG()
			
		end
	

end