--new
function DIALOG()
--Trigger
--Triggernumber,Type,Person
--0,D,Matt
--1,D,Torben
--2,D,Mazzaro

--Startnode, Person
--0
--50,Matt Tronstett
--100,Torben
--150,Mazzaro
--Items -> none

-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("Es gibt gute Neuigkeiten. Die CityAdmin hat beschlossen eine neuartige Strahlenwaffe in Auftrag zu geben. Tangent ist daf�r nat�rlich vorbestimmt und ist auch in die engere Wahl gekommen. ")

		ANSWER("WEITER",1)
	NODE(1)
		SAY("Wobei es allerdings unverst�ndlich ist, warum Tangent als auch BioTech jetzt in der Entscheidungsphase stehen. Es ist doch offensichtlich, dass all das Know How hier bei uns zu finden ist. ")

		ANSWER("WEITER",2)
	NODE(2)
		SAY("Immerhin besch�ftigt sich Tangent einzig und allein mit der Produktion und Erfindung von Waffen. Nichtsdestotrotz hat die CityAdmin aus unerfindlichen Gr�nden beschlossen BioTech auch f�r diesen Auftrag in Betracht zu ziehen.")

		ANSWER("Aber BioTech d�rfte doch f�r Tangent kein Problem sein. Tangent hat ja sozusagen Heimvorteil.",3)
	NODE(3)
		SAY("Aber nat�rlich. Das ist allen klar. Nur anscheinend hat BioTech wieder schmutzige Mittel benutzt, um diesen Auftrag auch angeboten zu bekommen.")

		ANSWER("Mir ist noch nicht ganz klar, wie entschieden wird, wer den Zuschlag f�r diesen Auftrag erh�lt.",4)
	NODE(4)
		SAY("Innerhalb einer befristeten Zeit, sollen beide Firmen einen Prototypen herstellen. Der bessere erh�lt dann den Auftrag. Soweit die Theorie. Aber ich tippe nicht auf einen fairen Wettkampf.")

		ANSWER("WEITER",5)
	NODE(5)
		SAY("Wenn BioTech dahinter steckt, haben sie sicher etwas hinterh�ltiges geplant.")

		ANSWER("Aber gegen solche Mittel hat Tangent doch sicher schon effektive Vorkehrungen getroffen, oder?",6)
	NODE(6)
		SAY("BioTech soll es nur versuchen, sie werdenschon sehen, was sie davon haben. Aber jetzt zu etwas anderem. Tangent, oder besser gesagt Daimon Jordan, wollte unbedingt einen bestimmten Strahlenexperten im Entwicklungsteam mit dabei haben.")

		ANSWER("WEITER",7)
	NODE(7)
		SAY("Das kleine Problem ist jedoch, dass dieser Experte schon vor einem halben Jahr in den Ruhestand getreten ist. Tangent hat dabei an sie gedacht ihn zur�ckzuholen.")

		ANSWER("WEITER",8)
	NODE(8)
		SAY("Sie sollen ihm ein Angebot �berbringen, wieder Teil des Teams zu sein. Vielleicht m�ssen sie auch etwas ihre �berredungsk�nste spielen lassen.")

		ANSWER("Ich kann es ja immerhin versuchen. Wo finde ich den Experten?",9)
		ANSWER("Ich kann diese Aufgabe im Moment noch nicht �bernehmen, f�rchte ich.",11)
	NODE(9)
		SAY("Matt Tronstett ist sein Name. Laut unseren Informationen, h�lt er sich zur Zeit in Point Red auf. Sie wissen schon, in den Wastelands, Sektor B 07.")

		ANSWER("WEITER",10)
	NODE(10)
		SAY("Wenn sie es geschafft haben, ihn zu �berreden, m�chte Mazzaro gerne noch einmal mit ihnen reden.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(12)
		ENDDIALOG()
		
	NODE(11)
		SAY("Es w�re zwar eine wichtige Aufgabe, aber sie m�ssen sie ja nicht �bernehmen.")
		ENDDIALOG()
	NODE(12)
		SAY("Haben sie Tronstett schon �berzeugen k�nnen? Er lebt in Point Red in den Wastelands. Wenn sie alles erledigt haben, sprechen sie mit Mazzaro.")
		ENDDIALOG()


-----------------------------------------------------
--Matt Tronstett

	NODE(50)
		SAY("Nein, ich kaufe nichts. Verschwinde, du scheiss Runner!")

		ANSWER("Ahem, ich komme von Tangent. Sie sind Mr Tronstett?",51)
	NODE(51)
		SAY("Tangent? Ja, ich erinnere mich an Tangent. Sorry, dass ich so harsch war. Aber ich erlebe es nicht mehr oft, dass jemand  etwas anderes von mir will, als mir irgendeinen Ramsch zu verkaufen. Oder schlimmer noch, mich umbringen will.")

		ANSWER("Um ehrlich zu sein, will ich ihnen genau das Gegenteil davon anbieten. Tangent schickt mich, da ihre aussergew�hnlichen F�higkeiten f�r ein neues Projekt erw�nscht w�ren.",52)
	NODE(52)
		SAY("Und? Soll ich mich jetzt geehrt f�hlen?")

		ANSWER("Das ist ein einmaliges Angebot, Mr Tronstett. Von einer der m�chtigsten Firmen in Neocron. Ber�hrt sie das �berhaupt nicht?",53)
	NODE(53)
		SAY("Du! Was weisst du schon. Ich habe meine Finger jahrelang wund gearbeitet. Ich hatte ein grosses Ziel vor Augen. Ich habe jede freie Minute damit verbracht an Projekten f�r die Firma zu arbeiten.")

		ANSWER("WEITER",54)
	NODE(54)
		SAY("Ich war der gr�sste Verfechter von Tangent. Die Waffen, die hergestellt wurden, gaben Menschen wieder die Freiheit. Die Freiheit sich in den Wastelands sicher bewegen zu k�nnen.")

		ANSWER("WEITER",55)
	NODE(55)
		SAY("Niemand w�rde mehr so verletzbar sein und sich in irgendeinem Loch verkriechen m�ssen. Hoffnung. Ach, alles nur Mist. Weisst du, ich habe eines erkannt. Und als ich es erkannt habe, da bin ich ausgestiegen.")

		ANSWER("Was haben sie erkannt?",56)
	NODE(56)
		SAY("Tangent hat �berhaupt gar kein Interesse an den Menschen. Nicht das kleinste bischen. Tangent ist eine riesige Maschine, dessen Zahnr�der alles zermalmen, was sich ihr in den Weg stellt. Es ist zu einem Biest geworden.")

		ANSWER("WEITER",57)
	NODE(57)
		SAY("Manchmal denke ich, es hat einen eigenen Willen. Nicht mal Daimon kann dieses Biest richtig beherrschen. Auch wenn Daimon Jordan nicht mehr w�re, so w�rde dem Biest ein neuer Kopf wachsen und es w�rde einfach weiter machen.")

		ANSWER("WEITER",58)
	NODE(58)
		SAY("Es ist wie eine Hydra. Schlag einen Kopf ab, und es wird st�rker. Unaufhaltsam und kalt.")

		ANSWER("Mir ist klar, das sie anscheinend schlechte Erfahrungen mit Tangent gemacht haben. Ich kann ihnen versichern, dass dies aber nur ein Einzelfall war.",59)
	NODE(59)
		SAY("Du bist ganz sch�n naiv, Runner. Ach, heutzutage bin ich ja schon ganz zufrieden, manchmal meinen alten Freund in dem kleinen Restaurant in der Pepper Park Subway Station zu treffen und �ber alte Zeiten zu plaudern. Torben und ich haben schon viel durchgemacht. Er hatte mir immer mit Rat und Tat beigestanden.")

		ANSWER("W�rden sie unter Umst�nden auf ihren Freund h�ren, wieder bei Tangent zu arbeiten? Vielleicht sollte ich ja versuchen euren Freund zu �berzeugen. Er versteht sicher, dass es das beste f�r sie w�re.",60)
	NODE(60)
		SAY("Wie? Was habt ihr gesagt?")

		ANSWER("Ach, ich habe nur laut gedacht. Auf Wiedersehen, Mr Tronstett.",61)
	NODE(61)
		SAY("Gut, auf Wiedersehen, Runner.")
		SETNEXTDIALOGSTATE(62)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
		
	NODE(62)
		SAY("Nein, auch wenn sie mich noch einmal fragen, ich bin immer noch nicht interessiert. Na, dass muss ich Torben erz�hlen, wenn ich ihn das n�chste mal in der Pepper Park subway Station sehe.")
		ENDDIALOG()
		

-----------------------------------------------------
--Torben

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Kenne ich sie irgendwoher? Lassen sie mich in Ruhe.")
			ENDDIALOG()
		else
			SAY("Hallo Runner, wo ist das Problem?")

			ANSWER("Ich habe geh�rt, sie kennen einen gewissen Tronstett? Matt Tronstett?",101)
		end
	NODE(101)
		SAY("Ja, nat�rlich kenne ich den, er ist einer meiner besten Freunde. Ich habe ihn damals bei einem Gemeinschaftsprojekt zwischen NEXT und Tangent kennengelernt. Ich arbeite n�mlich f�r NEXT m�ssen sie wissen. Ein sehr gewissenhafter Mensch.")

		ANSWER("Ja, auf jeden Fall. W�rden sie ihm empfehlen, mal wieder f�r Tangent zu arbeiten? Ich habe viele gute Dinge �ber ihn geh�rt. Da w�re es doch schade, jetzt sein Talent in den Wastelands vergammeln zu lassen, oder?",102)
	NODE(102)
		SAY("Er l�sst sich ziemlich h�ngen, das gebe ich zu. Er war damals, als er bei Tangent aufh�rte sehr desillusioniert. Ich denke er hat einfach erkannt, dass er alleine nichts �ndern kann. Aber ich w�rde ihm nie zu etwas raten, was er nicht selbst auch will.")

		ANSWER("Nein, nein, nat�rlich nicht. Aber ein Arbeitsplatz bei Tangent w�re ein sicherer und gut bezahlter Job. Und dort kann ihr Freund auch dem nachgehen, was er am liebsten macht.",103)
	NODE(103)
		SAY("Sie wollen mich doch nicht etwa dazu �berreden, meinem Freund Matt etwas einzureden, oder?")

		ANSWER("Doch, genau das. Sehen sie nicht, dass es das beste f�r ihn w�re? Er wird nicht mehr j�nger und die Wastelands w�rden wahrscheinlich bald sein Leben fordern. Aber bei Tangent w�re er sicher.",104)
	NODE(104)
		SAY("Nein, wirklich, Matt soll machen, was er f�r richtig h�lt. Wenn man mir den Job anbieten w�rde, w�rde ich ihn nehmen. Aber so, nein danke.")

		ANSWER("Als letztes k�nnte ich h�chstens versuchen, ihnen einen kleinen Bonus anzubieten. Um es ihnen leichter zu machen ihren Freund zu �berzeugen .",105)
	NODE(105)
		SAY("F�r was f�r einen halten sie mich ?! Ich verkaufe doch nicht meinen Freund.")

		ANSWER("Vielleicht 5000? Ich kann ja mal mit einem der Directors of Operation von Tangent sprechen.",106)
	NODE(106)
		SAY("5000 ?? Nun gut. Es k�nnte ihm wohl nicht schaden auf seine alten Tage noch etwas zu arbeiten. Ich werde es empfehlen solange sie an meinen Bonus denken. Ansonsten werde ich es ihm einfach wieder ausreden. Gehen sie wieder zu ihrem Auftraggeber zzur�ck, ich k�mmere mich schon darum.")
		SETNEXTDIALOGSTATE(107)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()

	NODE(107)
		SAY("Ich habe ihr Angebot doch schon akzeptiert, was gibt es denn noch zu besprechen? Gehen sie zur�ck zu ihrer Firma und stellen sie sicher, dass ich das Geld auch bekomme.")
		ENDDIALOG()
		

-----------------------------------------------------
--Mazzaro

	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Ja? Ich verstehe, aber kommen sie erst zu mir, wenn sie den Auftrag erf�llt haben, ja?")
			ENDDIALOG()	
		else
			SAY("Ahh, ich kann mir schon fast ihren Namen merken, so gut machen sie ihre Sache. Haben sie Torstett �berzeugen k�nnen?")

			ANSWER("Nun, es war nicht ganz leicht. Ich habe einem gewissen Torben 5000 Credits versprochen, damit er Tronstett von Tangents Vorschlag �berzeugt.",151)
		end
	NODE(151)
		SAY("Sie haben ihm Geld von Tangent versprochen? Ohne irgendeine R�cksprache? Das ist sehr leichtsinnig. Aber falls Matt Tronstett wieder f�r uns arbeiten sollte, so ist es ein kleiner Preis.")

		ANSWER("WEITER",152)
	NODE(152)
		SAY("In diesem Falle zahlen wir diese Summe. Ist es denn auch sicher, dass Torstett wieder hier arbeiten wird?")

		ANSWER("Es sollte alles in Ordnung gehen. Er hatte mir gesagt, er vertraue dem Rat seines  Freundes.",153)
	NODE(153)
		SAY("Gut gemacht. Sie sind wirklich mit allen Wassern gewaschen, so scheint es mir. Daf�r haben sie diese 2000 Credits auch verdient. Damit wird diese Strahlenwaffe schnell entwickelt sein, denke ich.")

		ANSWER("WEITER",154)
	NODE(154)
		SAY("Halten sie sich bereit und in Top Form, denn ich denke, Tangent Technologies wird bald schon wieder etwas f�r sie haben.")
		EPICRUNFINISHED(4,1)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()

end