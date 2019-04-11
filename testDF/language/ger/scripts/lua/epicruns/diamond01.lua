--new
--Diamond Real Estate
--
--Trigger
--Triggernumber,Type,Person
--0,D,Thompson 50
--1,D,Foster 100
--2,D,Jenna 150
--3,D,Resource 200
--
--Startnode, Person
--0, Human Resource Director
--50, Thompson 1638
--100, Foster 1632
--150,Jenna 1629
--200,Human Resource Director
--250,
--
--Items
--

function DIALOG()
--------------------------------------------------------------------
--Human Resource Director
--0
	
	NODE(0)
		SAY("Ahh, willkommen bei Diamond. Wir haben nat�rlich schon ein wenig von ihrer Laufbahn verfolgt und einige Leute waren so beeindruckt, dass wir ihnen nun auch einen Auftrag anvertrauen k�nnen, f�r den es etwas Fingerspitzengef�hl erfordert. ")

		ANSWER("Na, das h�re ich doch gerne.",1)
		ANSWER("Ich denke ich sollte mich besser vorbereiten, bevor ich einen Auftrag annehme.",5)
	NODE(1)
		SAY("Nun, wie sie ja wissen, haben wir einige Schwierigkeiten mit diesen gemeingef�hrlichen Black Dragon. Das sind r�cksichtslose Schl�ger und kriminelle, die generell vor nichts zur�ckschrecken um ihre Ziele zu erreichen. Seit der Umwandlung von Diamond in eine private Firma 2046 ist der Konflikt mit den Black Dragon das �rgste Problem, welches Diamond sich je widmen musste.")

		ANSWER("Wieso? Was haben sie denn davon? Diamond handelt doch nur in Immobilien.",2)
	NODE(2)
		SAY("Ja, genau. Black Dragon hat sich aber nun auch in den Kopf gesetzt den Immobilien Markt zu beherrschen. In der Pepper Park Gegend musste Diamond den Betrieb schon herunterfahren, da die Black Dragon uns unsere Kundschaft brutal vertreibt. Selbst Eric Danmund, der Chef von Diamond hat die Situation f�r ernst erkl�rt.")

		ANSWER("Das ist ja alles sch�n und gut, aber wollten sie mir nicht eine Aufgabe �bergeben?",3)
	NODE(3)
		SAY("Nat�rlich, es ist aber trotzdem nie schlecht etwas �ber den Hintergrund zu wissen. Viele wissen schon gar nicht mehr, dass fast alle Neocron Wohnungen und Shops Diamond geh�ren. Tja, bis auf das Problem mit den Black Dragon. In der letzten Zeit ist es besonders schlimm. Sie haben schon einige unserer Kunden vergrault. Wir w�rden sie gerne zu zwei verschiedenen Personen schicken um zu versuchen es ihnen auszureden, ihre Vertr�ge mit uns zu k�ndigen. Offenbar sind sie gewaltsam �berredet worden. Schauen sie danach auch einmal bei der NCPD rein und vergewissern sie sich, dass sie auch etwas gegen diese Frechheiten der Black Dragon unternehmen.")

		ANSWER("Wohin soll ich dann gehen? Ich werde mein bestes versuchen.",4)
	NODE(4)
		SAY("Einen nun ehemaligen Mieter k�nnen sie im Plaza 2 Sektor finden. Er wollte sich mit ihnen dort in Gariots Diner treffen. Der andere hat sich im ViaRosso 3 Sektor mit ihnen verabredet. Falls sie danach noch Zeit haben, dann sehen sie dort gleich noch im NCPD Hauptquartier vorbei. Danach k�nnten sie mir noch kurz Bericht erstatten.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()
		
	NODE(5)
		SAY("Tun sie das. Man sollte immer vorbereitet sein. Kommen sie wieder sobald sie meinen, dass sie sich genug vorbereitet haben.")
		ENDDIALOG()

--------------------------------------------------------------------
--Thompson
--50
	NODE(50)
		SAY("Hallo, sind sie der Diamond Vertreter? ")

		ANSWER("Ja, tut mir leid, wenn ich etwas sp�t komme aber ich wurde recht kurzfristig vorbereitet.",51)
	NODE(51)
		SAY("Dann wissen sie also noch nicht, was diese Hunde mit uns getan haben?")

		ANSWER("Nein, tut mir leid. ",52)
	NODE(52)
		SAY("Sie haben die T�r aufgebrochen nachdem sie die Alarmanlage ausgeschaltet haben. Dann haben sie uns mit ihren Waffen in eine Ecke unserer Wohnung getrieben, w�hrend sie Seelenruhig unsere Schr�nke ausger�umt haben und mit all unseren Kleidungsst�cken ein Feuer auf unserem Esstisch machten. Als sie dann endlich gingen, haben sie uns mit Gewalt gedroht, falls wir die Wohnung nicht verkaufen w�rden.")

		ANSWER("Das ist ja schrecklich. Haben sie der NCPD schon alles erz�hlt?",53)
	NODE(53)
		SAY("Ja und sie sagten mir, sie seien Machtlos, da die beschriebenen Gangster nirgendwo aufzufinden sind. Es tut mir leid, aber ich kann unter diesen Umst�nden den Vertrag mit Diamond nur abbrechen. Unsere kleine Jasmin weicht schon jetzt keinen Schritt mehr von ihrer Mutter ohne in Tr�nen auszubrechen.")

		ANSWER("Ich verstehe. Unter diesen Umst�nden w�rde wohl jeder so handeln. Aber falls sie es sich trotzdem noch anders �berlegen...",54)
	NODE(54)
		SAY("Danke f�r das Angebot. Wir haben immer nur gute Erfahrungen mit Diamond gemacht, aber so kann ich nicht weitermachen.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(55)
		ENDDIALOG()
		
	NODE(55)
		SAY("Meine Entscheidung steht fest, ich kann das einfach meinem Kind nicht antun.")
		ENDDIALOG()



--------------------------------------------------------------------
--fOSTER
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("St�ren sie mich nicht beim Essen. Wir waren erst etwas sp�ter verabredet.")
			ENDDIALOG()
		else

			SAY("Ich bin gerade fertig mit essen, sie sind doch der Vertreter von Diamond, richtig? Sie k�nnen sich ja noch etwas bestellen.")

			ANSWER("Vielen Dank, aber im Moment habe ich keinen Hunger. Ich bin hier, um Diamond f�r sie wieder interessanter zu machen.",101)
		end
	NODE(101)
		SAY("Wenn sie sich da mal nicht auf einem verlorenen Posten befinden. Ich will meinen Vertrag nicht mit Diamond verl�ngern. ")

		ANSWER("Nat�rlich respektiere ich ihre Entscheidung, aber k�nnten sie mir auch ein paar Gr�nde nennen?",102)
	NODE(102)
		SAY("Ich m�chte nicht wirklich dar�ber sprechen� es ist eher pers�nlicher Natur.")

		ANSWER("Falls es diese Schl�ger waren, so versichere ich ihnen, dass alles m�gliche getan wird.",103)
	NODE(103)
		SAY("Alles m�gliche sagen sie! Aber das ist mir nicht genug! Wie wollen sie denn verhindern, dass so etwas nicht wieder passiert?!")

		ANSWER("Unsere Sicherheitsexperten werden schon daf�r sorgen�",104)
	NODE(104)
		SAY("Mann, was glauben sie denn, was ihre tollen Sicherheitsexperten tun k�nnen, wenn sechs ausgewachsene verdammte Tanks in deine Bude st�rmen und dich dazu zwingen den ganzen Inhalt deines Cryoschranks runterzuw�rgen?!! Ich muss immer noch Pillen schlucken wegen dieses Vorfalls! Da, jetzt wissen sie wie es aussieht. Zufrieden?!")

		ANSWER("Sie haben recht, dass sollte nicht so sein. Am besten ich gehe h�chstpers�nlich noch mal zur NCPD.",105)
	NODE(105)
		SAY("Nur zu, versuchen sie ihr Gl�ck. Hat bei mir auch schon nichts gebracht. Aber meinen Vertrag k�ndige ich auf jeden Fall. Tut mir leid.")
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(106)
		ENDDIALOG()
		
	NODE(106)
		SAY("Ich denke nicht, dass ich meine Meinung noch �ndern werde. Guten Tag.")
		ENDDIALOG()
--------------------------------------------------------------------
--Jenna
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Wenden sie sich an einen NCPD Angestellten f�r Fragen.")
			ENDDIALOG()
		else
			SAY("Was ist ihr Begehr, B�rger?")

			ANSWER("Ich bin von Diamond und unsere Kunden haben grosse Probleme mit Schl�gertrupps, die sie zwingen ihre Wohnungen zu verkaufen. Gewaltsam m�chte ich sagen.",151)
		end
	NODE(151)
		SAY("Ja, da wurden uns einige F�lle gemeldet. 36 um genau zu sein. Allerdings sind nicht genug Informationen vorhanden um dieser Sache nachzugehen. Es tut mir leid.")

		ANSWER("Wie bitte? So viele? Und alle T�terbeschreibungen sind total umsonst? Was soll denn das hier bitte sein?",152)
	NODE(152)
		SAY("Die T�terbeschreibungen tauchen nirgendwo in unseren Aufzeichnungen auf. Laut unseren Daten existieren sie nicht. Gerade so, als ob sie nicht in Neocron registriert w�ren. Deshalb vermuten wir zwar, dass die Black Dragon dahinter stecken, aber es konnten nur ein paar pr�ventiv Exekutionen ausgef�hrt werden.")

		ANSWER("Pr�ventiv Exekutionen? Aber die NCPD�",153)
	NODE(153)
		SAY("Es tut mir leid, B�rger. Es tun alle hier ihr bestes. Mehr kann ich ihnen auch nicht sagen�")
		ACTIVATEDIALOGTRIGGER(2)
		SETNEXTDIALOGSTATE(154)
		ENDDIALOG()

	NODE(154)
		SAY("Die NCPD tut immer ihr bestes um den Frieden hier in Neocron zu bewahren.")	
		ENDDIALOG()
--------------------------------------------------------------------
-- Human Resource Director
--200
	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Vergessen sie nicht immer sch�n freundlich zu sein. Der eine wartet im Plaza Sektor 2 und der andere in ViaRosso 03. Sie werden sie dort jeweils in einem Restaurant finden.")
			ENDDIALOG()
		else
			SAY("Da sind sie ja schon wieder, das ging ja doch recht fix. Sie scheinen ein sehr zielstrebiger Mitarbeiter zu sein, was?")

			ANSWER("Zielstrebig ist gut gesagt. Die Kunden wurden alle von Schl�gern aus ihren Wohnungen vergrault.",201)
		end
	NODE(201)
		SAY("Haben sie sie �berzeugen k�nnen, wieder zu uns zur�ck zu kommen?")

		ANSWER("Leider nicht und es ist nicht verwunderlich. Sie haben wahrlich einiges mitgemacht. Selbst die NCPD steht vor einem R�tsel.",202)
	NODE(202)
		GIVEMONEY(1000)
		SAY("Das sind sehr unangenehme Nachrichten. Ich werde sie wohl h�chstpers�nlich nach oben weiterleiten m�ssen. Eric Danmund sollte selbst davon h�ren. F�r sie habe ich hier aber erst einmal ein kleines Entgelt f�r ihre Arbeit. Falls sie wollen, k�nnen sie ja ihre F�higkeiten noch weiter ausbauen und uns dann sp�ter f�r einen weiteren Auftrag wieder besuchen. (n�chste Mission Level 20)")
		EPICRUNFINISHED(2,0)
		ACTIVATEDIALOGTRIGGER(3)
		ENDDIALOG()

end