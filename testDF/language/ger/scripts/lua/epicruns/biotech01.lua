--new
function DIALOG()
--Trigger
--Triggernumber,Type,Person
--0,D,Thompson
--
--1,D,Protopharm
--2,D,Human Resource


--Startnode, Person
--0 Human Resource
--50 Thompson
--100 BioTech Human Resource
--150 Protopharm
--200 BT Human Resource

-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("Ahh, ich wurde schon informiert, dass ein paar Runner neu zu uns gestossen sind. BioTech freut sich nat�rlich immer um eine wertvolle Erweiterung f�r die eigenen Reihen.")
		
		ANSWER("WEITER",1)
	NODE(1)
		SAY("Normalerweise w�rde sie auch ein Director of Operations pers�nlich begr�ssen, aber dieser ist zur Zeit in einer wichtigen Besprechung mit dem derzeitigen Leiter von BioTech, Seymour Jordan. Sie verstehen sicherlich, dass man einen solchen Termin nicht leicht verschieben kann, oder?")
		
		ANSWER("Das ist nat�rlich Schade, aber ich verstehe es. Was f�r Aufgaben erwarten mich denn jetzt �berhaupt?",2)
	NODE(2)
		SAY("So haben wir das gerne, zielstrebig und auf das wichtige konzentriert. Als ein neues Mitglied von BioTech wurde ihnen ein Appartement bereits zur Verf�gung gestellt. Als Gegenleistung werden nur Loyalit�t und die Erf�llung einiger spezieller Auftr�ge erwartet. Aber dazu sp�ter mehr. Mit BioTech haben sie auf jeden Fall die richtige Wahl getroffen.")
		
		ANSWER("WEITER",3)
	NODE(3)
		SAY("Vielleicht erst einmal etwas zum Hintergrund von BioTech. BioTech hat seit der Gr�ndung im Jahre 2638 in vielen Bereichen mitgewirkt und hat sich nun fast g�nzlich auf die Herstellung von Implantaten aller Art konzentriert.")
		
		ANSWER("WEITER",4)
	NODE(4)
		SAY("Was nicht heisst, dass BioTech Raumschiffbau, Medikamente oder Waffen nicht auch genau so im Repertoire hat. Um genau zu sein, wurde das erste interstellare Raumschiff, die Avenger, damals auch von Biotech entwickelt.")
		
		ANSWER("Ja, davon habe ich auch schon geh�rt.",5)
	NODE(5)
		SAY("Zur�ck zum praktischen. BioTech h�tte gerne, dass sie sich mit einem Pressesprecher der CityAdmin treffen und ihm als Neuank�mmling hier bei BioTech ein paar Fragen beantworten. Das wird wohl auch nicht besonders lange dauern und wird ihnen auch einen kleinen finanziellen Bonus einbringen.")
		
		ANSWER("Das klingt gut. ich denke, dass bekomme ich auf die Reihe.",6)
		ANSWER("Ich f�rchte im Moment kann ich das nicht.",7)
	NODE(6)
		SAY("Sehr gut, sie k�nnen ihn im Plaza Distrikt 02 finden. Es wurde ein treffen in einem dortigen Restaurant arrangiert. Kommen sie danach doch noch einmal zur�ck, um mir einen kurzen Bericht zu geben.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(100)
		ENDDIALOG()
		
	NODE(7)
		SAY("Sie k�nnen es sich jederzeit noch anders �berlegen.")
		ENDDIALOG()


-----------------------------------------------------
--Thompson

	NODE(50)
		SAY("Hallo, hallo, sie sind von Biotech hierher geschickt worden, nehme ich an?")
		
		ANSWER("Ja, das ist richtig, und sie sind von der CityAdmin.",51)

	NODE(51)
		SAY("Sehr scharfsinnig, Thompson ist mein Name. Mein Tag ist voll gepackt mit Terminen, also, wollen sie gleich anfangen? Ich m�chte darauf hinweisen, dass dieses Gespr�ch aufgezeichnet wird, aber das wird ja sowieso fast alles hier in Neocron.")
		
		ANSWER("Das ist doch ziemlich beunruhigend, wenn wirklich alles aufgezeichnet wird.",52)
		
	NODE(52)
		SAY("Keine Angst, es gibt immer noch Orte wo selbst die CityAdmin keine Augen und Ohren hat. Auch wenn Mr Reza das wohl gerne �ndern w�rde.")
		
		ANSWER("Naja, dann fangen wir gleich an, worum ging es hier genau?",53)
	NODE(53)
		SAY("Ich bin dabei einen Bericht und Statistiken �ber verschiedene Runner aufzustellen, wobei die verschiedenen Fraktionen dann miteinander verglichen werden.")
		
		ANSWER("WEITER",54)
	NODE(54)
		SAY("Allerdings k�nnen sie sich vorstellen, dass das eine Mammutaufgabe ist. Ich bin mir nicht mal sicher, ob dieses Gespr�ch hier jemals ver�ffentlicht wird. Nun, aber ich ben�tige deswegen eben ein paar Antworten von ihnen.")
		
		ANSWER("Wenn das alles ist, dann fragen sie nur...",55)
	NODE(55)
		SAY("Gut, was hat sie dazu bewogen, sich BioTech anzuschliessen? War es der Professionalismus der Firma, die Gr�sse oder etwas anderes?")
		
		ANSWER("Ich denke es war von allem ein wenig, aber ich interessiere mich auf jeden Fall sehr f�r die Produktpalette von BioTech.",56)
	NODE(56)
		SAY("Danke, haben sie schon negative Erfahrungen mit BioTech gemacht? Ist ihnen vielleicht seltsames Verhalten der Mitarbeiter aufgefallen? Oder gewisse Unstimmigkeiten?")
		
		ANSWER("Nein, nicht das ich w�sste, aber das d�rfte ja normalerweise auch nicht vorkommen.",57)
	NODE(57)
		SAY("Haben sie schon Verbindungen oder Beziehungen zu BioTech Angestellten ? Oder sind schon eine Liebesbeziehung eingegangen?")
		
		ANSWER("Also, das finde ich hat nun wirklich nichts mehr mit der Umfrage zu tun...",58)
	NODE(58)
		SAY("Wie sie meinen. Haben BioTech Angestellte ihres Wissens nach Beziehungen zur Unterwelt oder zu kriminellen Vereinigungen?")
		
		ANSWER("Ich denke das reicht jetzt aber langsam. Ihre Fragen haben nichts mehr mit Statistiken zu tun, sie wollen mich nur �ber die Firma aushorchen!",59)
	NODE(59)
		SAY("Vorsicht, Runner. Die CityAdmin hat es nicht n�tig jemanden auszuhorchen und die CityAdmin ist vor jeder Kritik erhaben. Diese Umfrage ist ja immerhin auch auf v�llig freier Basis.")
		
		ANSWER("WEITER",60)
	NODE(60)
		SAY("Ich korrigiere mich. Wenn sie erst einmal an dieser Umfrage teilnehmen, dann bringt ihnen ein Abbruch der Fragen einen Eintrag in ihrer Datei ein.")
		
		ANSWER("Verdammt. Aber was bezweckt ihr dann mit diesen Fragen? Ist das eure Art den Mist in der Gesellschaft aufzudecken? Ich denke nicht, dass ich noch weitere ihrer Fragen beantworten werde.",62)
	NODE(62)
		SAY("Haben sie diese Ger�chte der letzten Zeit nicht mitbekommen? Es gibt Anschuldigungen gegen Mitarbeiter von BioTech, die sich nicht dem Gesetz gem�ss verhalten haben. Es wurden bereits einige Exekutionen von den CopBots durchgef�hrt.")
		
		ANSWER("WEITER",63)
	NODE(63)
		SAY("Nat�rlich haben diese Kriminellen diese Strafe auch verdient, immerhin arbeiteten sie gegen das grossartige System in Neocron.")
		
		ANSWER("WEITER",64)
	NODE(64)
		SAY("Die CityAdmin versucht lediglich ein genaueres Bild von der Lage zu bekommen. BioTech ist genauso anf�llig f�r zwielichtige Subjekte, wie jede andere Firma auch.")
		
		ANSWER("Aber das waren doch nur Ger�chte, oder?",65)
	NODE(65)
		SAY("Ger�chte hin oder her, dass spielt hier keine Rolle! Da sie sich aber entschieden haben nicht alle Fragen zu beantworten und dazu auch noch meine Authorit�t in Frage gestellt haben, wird ihnen ein Eintrag in ihrer Akte nicht erspart bleiben. ")
		
		ANSWER("WEITER",66)
	NODE(66)
		SAY("Weiterhin seien sie gewarnt! die CityAdmin liebt zwar ihre B�rger, aber es wird auch verlangt, dass sie Regeln befolgen. Wenn diese Regeln gebrochen werden, so gibt es nur eine Strafe. Den Tod. Und in ihrem Falle, Runner, sind sie gerade knapp an dem ihrigen vorbeigestrichen.")
		
		ANSWER("Ich habe doch gar nichts getan...",67)
	NODE(67)
		SAY("Die Autorit�t eines CityAdmin Angestellten in Frage zu stellen ist Grund genug... Gehen sie jetzt.")
		SETNEXTDIALOGSTATE(68)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()

	NODE(68)
		SAY("Ich habe ihnen nichts mehr zu sagen. Kehren sie zu ihrer Firma zur�ck. Ich bin mir sicher sie wollen all das hier berichten.")
		ENDDIALOG()
		



-----------------------------------------------------
--Human Resource Director

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)	
		if(result==0)then
			SAY("Haben sie das Interview schon abgeschlossen? Es soll irgendwo im Plaza Distrikt stattfinden.")
			ENDDIALOG()
		else
			SAY("Einen produktiven Tag Runner.")
		
			ANSWER("Ja, das w�re wohl sinnvoll gewesen, mich produktiv zu besch�ftigen. Die Zeit mit dem Presse Menschen von der CityAdmin h�tte ich mir schenken k�nnen.",101)
		end
	NODE(101)
		SAY("Ganz ruhig und sprechen sie nicht in diesem Ton von der CityAdmin, immerhin besch�tzt sie hier jeden und alles.")
		
		ANSWER("Bah, daf�r gibt es aber auch nur eine Strafe. Den Tod.",102)
	NODE(102)
		SAY("H�ren sie damit auf, sie k�nnen eh nichts an dem System �ndern. Akzeptieren sie es.")
		
		ANSWER("Wird nicht leicht sein, aber ich war schon immer ein �berlebensk�nstler. Also wird mich die CityAdmin auch nicht aus der Bahn werfen.",103)
	NODE(103)
		SAY("Gut. Was haben sie denn von dem CityAdmin Interview erfahren, dass sie so aufgebracht hat?")
		
		ANSWER("Es fing ganz harmlos an, aber dann wurden die Fragen immer spezifischer. Mit der Zeit wurde mir klar, dass die Fragen nur �ber die Mitarbeiter und den Zustand von BioTech gingen.",104)
	NODE(104)
		SAY("Wirklich? Das ist seltsam... Wurde gesagt, warum solche Fragen gestellt wurden?")
		
		ANSWER("Er hatte etwas �ber Ger�chte �ber BioTech fallen lassen, die in letzter Zeit die Runde machten.",105)
	NODE(105)
		SAY("Ger�chte, ja, davon habe ich auch geh�rt? Ich hatte mir aber nicht gedacht, dass diese Ger�chte selbst die CityAdmin schon erreicht haben. Obwohl ich doch auch das eine oder andere geh�rt habe.")
		
		ANSWER("Es gibt diese Ger�chte wirklich? Aber warum sind diese so gef�hrlich, dass die CityAdmin darauf gleich CopBots ansetzt?",106)
	NODE(106)
		SAY("Tja, die NCPD und die CityAdmin gehen normalerweise auf Nummer sicher und dabei gehen sie auch allen Ger�chten nach. Ger�chten, die Neocron schaden k�nnten. In einem solchen Fall findet aber zuerst eine Beobachtung der Person statt, bevor sie gestellt wird.")
		
		ANSWER("Das scheint mir auch sinnvoll zu sein, man kann doch niemanden wegen eines Ger�chts exekutieren.",107)
	NODE(107)
		SAY("Ja, es ist �brigens noch eine Aufgabe hereingekommen, Runner! Falls sie interessiert sind, k�nnen sie das �bernehmen. Es geht um eine kleine Lieferung zu ProtoPharm, unserem wichtigster Partner bei der Herstellung von Implantaten. BioTech entwickelt die Implantate best�ndig weiter und arbeitet dabei sehr eng mit ProtoPharm zusammen.")
		
		ANSWER("WEITER",108)
	NODE(108)
		SAY("Die Medikamente, die dabei hergestellt werden, sind sehr wichtig um verschiedene Abwehrreaktionen und K�rperfunktionen zu kontrollieren. Falls diese Medikamente also nicht wirksam sind, k�nnen Symptome wie das abstossen eines Implantats, heftiges Fieber, Kr�mpfe, ja bis hin zum Wahnsinn auftreten.")
		
		ANSWER("Ich wusste nie, dass Implantate so gef�hrlich sind.",109)
	NODE(109)
		SAY("Genau das ist es ja, sie sind es nicht! Eben durch die Zusammenarbeit mit ProtoPharm. Ausserdem wird jedes Implantat ausgiebig getestet. ")
		
		ANSWER("WEITER",110)
	NODE(110)
		SAY("Meistens werden diese Testimplantate in Mutanten oder bestimmte Critter in den Wastelands implantiert und diese werden dann �ber einen gewissen Zeitraum beobachtet. Das bedeutet also, dass BioTech Implantate immer eine sichere Wahl sind.")
		
		ANSWER("Da habe ich mich dann ja genau der richtigen Fraktion angeschlossen. Ich bin f�r diese Mission bereit.",111)
	NODE(111)
		GIVEITEM(9200)
		SAY("Sch�n dies zu h�ren. Falls sie dazu bereit sind, k�nnen sie also dieses Paket an ProtoPharm liefern. Es enth�lt eine Reihe von Zahlen, die die Tests an Mutanten spezifizieren und auswerten. F�r ihre Bezahlung suchen sie mich einfach noch einmal auf.")
		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()


-----------------------------------------------------
--Protopharm Employee

	NODE(150)
		TAKEITEM(9200)
		if(result==0)then
			SAY("Es tut mir leid, Runner, ich habe sehr viel zu tun. Versuchen sie es sp�ter noch einmal.")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(151)
			SAY("Einen produktiven Tag, Runner, was w�nschen sie? Falls sie ProtoPharm Produkte erstehen wollen, wenden sie sich bitte an einen der H�ndler.")
		
			ANSWER("Nein, ich bin hier, um eine Lieferung abzugeben. Es sind Testauswertungen von BioTech Implantaten.",151)
		end
	NODE(151)
		SAY("Gut, geben sie mir einfach diese Lieferung. Ich best�tige diese Lieferung dann sofort. Ihr Gesicht kenne ich noch nicht. Sie arbeiten sicher noch gar nicht solange f�r BioTech, habe ich recht?")
		
		ANSWER("Ja, das haben sie gut erkannt. Aber ich finde mich schon recht gut zurecht.",152)
	NODE(152)
		SAY("Freut mich, mit BioTech gab es bisher noch immer eine sehr angenehme Zusammenarbeit. Einen produktiven Tag noch.")
		SETNEXTDIALOGSTATE(153)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
		
	NODE(153)
		SAY("Sie haben das Paket schon abgegeben. Falls sie noch etwas w�nschen, wenden sie sich bitte an den Verkauf oder kehren sie zu ihrer Firma zur�ck.")
		ENDDIALOG()
		


-----------------------------------------------------
--Human Resource Director

	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Sie haben das Paket ja noch gar nicht bei ProtoPharm abgegeben. Beeilen sie sich und kommen sie dann wieder zur�ck.")
			ENDDIALOG()

		else
			GIVEMONEY(2000)
			SETNEXTDIALOGSTATE(201)
			SAY("Ah, da sind sie ja wieder. Die Best�tigung der Lieferung ist schon geschehen. Hier, ihr Lohn f�r die Lieferung und das kleine Interview. 2000 Credits sind laut Firmenregulation 318 f�r solche Dinge vorgesehen. Und denken sie daran, je beliebter sie hier bei BioTech sind und je mehr Leute bei BioTech ein Wort f�r sie einlegen, desto eher bekommen sie noch einen Auftrag zugesprochen.")
			EPICRUNFINISHED(5,0)
			ACTIVATEDIALOGTRIGGER(2)
			ENDDIALOG()	
		end

	NODE(201)
		SAY("Go away")
		ENDDIALOG()

end