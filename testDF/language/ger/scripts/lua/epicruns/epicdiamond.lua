--new
--BioTech

function DIALOG()
NODE(0)
--CANDOEPICRUN(factionid, epicmissionid)
--EPICMISSIONERROR_WRONGFACTION		-1
--EPICMISSIONERROR_FULLYACCOMPLISHED	-2
--EPICMISSIONERROR_MISSIONMISSIONS		-3
--EPICMISSIONERROR_ALREADYFINISHED		-4
--EPICMISSIONERROR_WRONGSKILLLEVEL		-5
--EPICRUNFINISHED(factionid, epicmissionid)
--STARTMISSION( missionid aus missionbase def)

	CANDOEPICRUN(2,0)
-- Fraktion wird �berpr�ft
		if(result==-1)then 
			SAY("Sie geh�ren leider nicht unserer Fraktion an. Bitte verschwenden sie nicht weiter meine Zeit. Es sei denn, sie w�rden gerne unserer Fraktion beitreten?")
			
			ANSWER("Genau deswegen bin ich hier, ich w�rde gerne ihrer Fraktion beitreten.",301)
			ANSWER("Nein, kein Interesse. Bis dann...",300)
		else
-- Alle Missionen erf�llt? wird gepr�ft
			CANDOEPICRUN(2,0)
			if(result==-2)then
				SAY("Es tut mir leid, aber die einzige M�glichkeit wie sie uns noch helfen k�nnten ist, einen Clan zu gr�nden, der uns unterst�tzt.")
				ENDDIALOG()
			else
-- Abfrage ob Skillevel stimmt und dann ob die Mission schon erf�llt wurde
				CANDOEPICRUN(2,0)
				if(result==-5)then
					SAY("Sie sind im Moment nicht erfahren genug, kommen sie sp�ter wieder. (n�chste Mission Level 10)")
					ENDDIALOG()
				else
						CANDOEPICRUN(2,0)
				        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------2
						CANDOEPICRUN(2,1)
						if(result==-5)then
							SAY("Sie sind im Moment nicht erfahren genug, kommen sie sp�ter wieder. (n�chste Mission Level 20)")
							ENDDIALOG()
						else
								CANDOEPICRUN(2,1)
				        		if(result==-4)then
-------------------------------------------------------------------------------------------------------------------3
						CANDOEPICRUN(2,2)
						if(result==-5)then
							SAY("Sie sind im Moment nicht erfahren genug, kommen sie sp�ter wieder. (n�chste Mission Level 30)")
							ENDDIALOG()
						else
								CANDOEPICRUN(2,2)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------4
						CANDOEPICRUN(2,3)
						if(result==-5)then
							SAY("Sie sind im Moment nicht erfahren genug, kommen sie sp�ter wieder. (n�chste Mission Level 35)")
							ENDDIALOG()
						else
								CANDOEPICRUN(2,3)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------5
						CANDOEPICRUN(2,4)
						if(result==-5)then
							SAY("Sie sind im Moment nicht erfahren genug, kommen sie sp�ter wieder. (n�chste Mission Level 40)")
							ENDDIALOG()
						else
								CANDOEPICRUN(2,4)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------6
						CANDOEPICRUN(2,5)
				if(result==-5)then
					SAY("Sie sind im Moment nicht erfahren genug, kommen sie sp�ter wieder. (n�chste Mission Level 45)")
					ENDDIALOG()
				else
								CANDOEPICRUN(2,5)
				        if(result==-4)then
						SAY("Es tut mir leid, aber die einzige M�glichkeit wie sie uns noch helfen k�nnten ist, einen Clan zu gr�nden, der uns unterst�tzt.")
						ENDDIALOG()
					else
--Mission 6 wird hier gestartet
		SAY("Ich habe jetzt endlich eine definitive Meldung von Eric Danmund h�chstpers�nlich. Er hat dies anscheinend zu einem Ausnahmefall gemacht und ist zu einer tempor�ren Zusammenarbeit mit den Tsunamis bereit. Das alles ist aber h�chst geheim und sie erfahren es nur, weil sie gezeigt haben, dass sie unser Vertrauen verdient haben. Sind sie bereit, dabei zu helfen Diamond von dieser Plage der Black Dragon zu befreien?")

		ANSWER("Darauf k�nnen sie wetten.",251)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------6
					else
--Mission 5 wird hier gestartet
		SAY("Da sie ja anscheinend ein Naturtalent sind, wollen wir sie gerne wieder f�r einen Auftrag. Mit den Verlusten, die uns die BlackDragon jeden Tag zuf�gen, k�nnen wir es uns einfach nicht erlauben, noch mehr Leute zu verlieren. Viele Angestellte hier f�rchten schon um ihren Arbeitsplatz und ich bin da keine Ausnahme.")
		
		ANSWER("Ist es wirklich schon so schlimm? Ich habe in der letzten Zeit �berhaupt nicht viel davon mitbekommen.",201)
		ANSWER("Ich habe noch dringend andere Dinge zu erledigen.",207)			
					end
				end	
-------------------------------------------------------------------------------------------------------------------5
					else
--Mission 4 wird hier gestartet
		SAY("Wenn sie jetzt bereit sind, dann k�nnen sie es ja noch einmal versuchen. Ich w�rde ihnen nahe legen, diesen Immobilien Makler Simmons noch einmal aufzusuchen. Er hat sich dank ihres Einsatzes entschieden, auf unsere Seite zu kommen. Er erschien sehr bestimmt und wusste, was er wollte.")
		
		ANSWER("Hat er den Verlust seiner Frau so schnell verwunden?",151)
		ANSWER("Es tut mir leid, aber ich bin noch nicht f�r einen weiteren Auftrag bereit.",152)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------4
					else
--Mission 3 wird hier gestartet
		SAY("Hallo, wie sie sich denken k�nnen, hat sich auch inzwischen wieder eine Menge getan. Die Black Dragon lassen nicht locker und solange der Vertrag mit den CityMercs noch nicht in Kraft tritt, verlieren wir mehr und mehr Kunden. Die neueste Masche ist es, dass verschiedene Leute aus unserem Konflikt Kapital schlagen.")
		
		ANSWER("Kann das sein? Die sind ja wie die Aasgeier.",101)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------3
							else
--Mission 2 wird hier gestartet
		SAY("Einen produktiven Tag. Ich denke sie sind hier um wieder etwas f�r Diamond zu tun, richtig?")
		
		ANSWER("Sie haben es erraten. Ich denke ich habe mich sehr gut vorbereitet.",51)
		ANSWER("Um ehrlich zu sein, ich denke ich bin noch nicht bereit.",54)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------2
					else
--Mission 1 wird hier gestartet
		SAY("Ahh, willkommen bei Diamond. Wir haben nat�rlich schon ein wenig von ihrer Laufbahn verfolgt und einige Leute waren so beeindruckt, dass wir ihnen nun auch einen Auftrag anvertrauen k�nnen, f�r den es etwas Fingerspitzengef�hl erfordert.")
		
		ANSWER("Na, das h�re ich doch gerne.",11)
		ANSWER("Ich denke ich sollte mich besser vorbereiten, bevor ich einen Auftrag annehme.",16)
						
					end
				end			
			end
		end

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 1
	NODE(11)
		SAY("Nun, wie sie ja wissen, haben wir einige Schwierigkeiten mit diesen gemeingef�hrlichen Black Dragon. Das sind r�cksichtslose Schl�ger und kriminelle, die generell vor nichts zur�ckschrecken um ihre Ziele zu erreichen. Seit der Umwandlung von Diamond in eine private Firma 2046 ist der Konflikt mit den Black Dragon das �rgste Problem, welches Diamond sich je widmen musste.")
		
		ANSWER("Wieso? Was haben sie denn davon? Diamond handelt doch nur in Immobilien.",12)
	NODE(12)
		SAY("Ja, genau. Black Dragon hat sich aber nun auch in den Kopf gesetzt den Immobilien Markt zu beherrschen. In der Pepper Park Gegend musste Diamond den Betrieb schon herunterfahren, da die Black Dragon uns unsere Kundschaft brutal vertreibt. Selbst Eric Danmund, der Chef von Diamond hat die Situation f�r ernst erkl�rt.")
		
		ANSWER("Das ist ja alles sch�n und gut, aber wollten sie mir nicht eine Aufgabe �bergeben?",13)
	NODE(13)
		SAY("Nat�rlich, es ist aber trotzdem nie schlecht etwas �ber den Hintergrund zu wissen. Viele wissen schon gar nicht mehr, dass fast alle Neocron Wohnungen und Shops Diamond geh�ren. Tja, bis auf das Problem mit den Black Dragon. In der letzten Zeit ist es besonders schlimm. Sie haben schon einige unserer Kunden vergrault. Wir w�rden sie gerne zu zwei verschiedenen Personen schicken um zu versuchen es ihnen auszureden, ihre Vertr�ge mit uns zu k�ndigen. Offenbar sind sie gewaltsam �berredet worden. Schauen sie danach auch einmal bei der NCPD rein und vergewissern sie sich, dass sie auch etwas gegen diese Frechheiten der Black Dragon unternehmen.")
		
		ANSWER("Wohin soll ich dann gehen? Ich werde mein bestes versuchen.",14)
	NODE(14)
		SAY("Einen nun ehemaligen Mieter k�nnen sie im Plaza 2 Sektor finden. Er wollte sich mit ihnen dort in Gariots Diner treffen. Der andere hat sich im ViaRosso 3 Sektor mit ihnen verabredet. Falls sie danach noch Zeit haben, dann sehen sie dort gleich noch im NCPD Hauptquartier vorbei. Danach k�nnten sie mir noch kurz Bericht erstatten.")
		STARTMISSION(3582)
		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()

	NODE(15)
		SAY("Vergessen sie nicht immer sch�n freundlich zu sein. Der eine wartet im Plaza Sektor 2 und der andere in ViaRosso 03. Sie werden sie dort jeweils in einem Restaurant finden.")
		ENDDIALOG()
	NODE(16)
		SAY("Tun sie das. Man sollte immer vorbereitet sein. Kommen sie wieder sobald sie meinen, dass sie sich genug vorbereitet haben.")
		ENDDIALOG()
		
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 2
	NODE(51)
		SAY("Das trifft sich gut. Wie sie ja wissen haben wir immer gr�ssere Probleme mit den �bergriffen dieser Schl�ger Gruppen. Nat�rlich werden diese alle von den Black Dragons geschickt, daran besteht kein Zweifel. Danmund selbst hat sich nun bem�ht mit den CityMercs einen Vertrag zum Schutze unserer Wohnungen auszuarbeiten. Es wurde ein Meeting arrangiert in der N�he einer verlassenen Sendestation in den Wastelands.")
		
		ANSWER("Das wurde auch bitter n�tig. Es kann doch auf keinen Fall so weitergehen.",52)

	NODE(52)
		SAY("Genau richtig... f�r dieses Meeting werden allerdings noch ein paar Dokumente ben�tigt, die in doppelter Ausf�hrung die Abmachungen deutlich macht. Wenn sie bereit sind, w�re es gut, wenn sie diese bei der CityAdmin abholen. Sie werden dort noch auf ihre Rechtsg�ltigkeit gepr�ft.")
		
		ANSWER("Ich mache mich sofort auf den Weg.",53)
	NODE(53)
		SAY("Gut, vergessen sie nicht mir dann diese Dokumente wiederzubringen. Der CityAdmin Angestellte sollte alles f�r sie vorbereitet haben.")
		STARTMISSION(3583)
		SETNEXTDIALOGSTATE(100)
		ENDDIALOG()
	NODE(54)
		SAY("Gut, aber lassen sie sich nicht zu viel Zeit.")
		ENDDIALOG()		


------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 3
	NODE(101)
		SAY("Einige unabh�ngige Immobilienmakler nutzen die Bl��e, die wir uns geben m�ssen um ihre Wohnungen zu einem erh�hten Preis abzugeben. Das ist nat�rlich eine untragbare Situation wie sie verstehen werden.")
		
		ANSWER("Ich kann mir gut vorstellen, dass dies schlecht f�rs Gesch�ft ist. Aber was soll man dagegen tun?",102)
	NODE(102)
		SAY("Diamond ist sehr erpicht darauf, diese Immobilien Makler f�r einen Job bei Diamond zu interessieren. Damit w�ren auch zwei Fliegen mit einer Klappe geschlagen worden. Wir h�tten nicht nur mehr Verk�ufer und Wohnungen, sondern w�rden diese doch recht unliebsame Konkurrenz auch aus dem Weg haben.")
		
		ANSWER("Das klingt einleuchtend. H�re ich da vielleicht eine Aufgabe f�r mich heraus?",103)
		ANSWER("Wenn das auf eine Aufgabe f�r mich hinausl�uft, dann muss ich im Moment leider ablehnen.",105)
	NODE(103)
		SAY("Ich wollte ihnen gerade anbieten, dass sie es doch versuchen k�nnten, einen dieser Immobilien Haie davon zu �berzeugen unseren Reihen beizutreten. �ber Bezahlungen kann man nat�rlich auch sp�ter noch verhandeln.")
		
		ANSWER("Versuchen kann man es ja mal. Solche Einzelg�nger lassen sich aber normalerweise schwer von so etwas �berzeugen.",104)
	NODE(104)
		SAY("Falls sie es trotzdem schaffen sollten, wird ihnen Diamond einen Bonus geben. Also viel Gl�ck, es ist ein gewisser Simmons im Pepper Park Sektor 02. Es war ein Treffen in einem der Restaurants dort geplant. So viele gibt es dort ja nun auch nicht, sie werden es schon finden.")
		STARTMISSION(3584)
		SETNEXTDIALOGSTATE(300)
		ENDDIALOG()
	NODE(105)
		SAY("Wie sie meinen, aber diese Auftr�ge sind nicht immer verf�gbar.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 4
	NODE(151)

		SAY("Davon hat er nichts erz�hlt, aber er hat nach ihnen verlangt und war �berzeugt davon, dass er etwas gegen die Black Dragon tun kann. Und die machen uns unheimlich viel Schwierigkeiten in der letzten Zeit. Er ben�tigt ihre Hilfe bei seinem Vorhaben.  Da sie ihn ja anscheinend aber doch davon �berzeugen konnten bei uns zu arbeiten, ist hier ihre versprochene Pr�mie von 8000 credits. Sie bekommen sie, wenn sie diese Aufgabe zuende gebracht haben. Vergeuden sie nun aber nicht noch mehr Zeit. Sie finden Simmons wieder im Pepper Park 02 in dem Restaurant.")
		STARTMISSION(3585)
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()

	NODE(152)
		SAY("Das ist schade, aber sie sollten es sich trotzdem noch einmal �berlegen.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 5
NODE(201)
		SAY("Dann geh�ren sie zu den wenigen Gl�cklichen, die von diesen �bergriffen noch nicht betroffen worden sind. Die Black Dragon versuchen mit einer Kombination von Drohungen und tats�chlicher Gewalt unsere Kunden abzuwerben. Inzwischen wissen wir auch, was f�r eine Taktik sie verfolgen.")
		
		ANSWER("Warum ist es dann so schwer, dem ganzen einen Riegel vorzuschieben?",202)

	NODE(202)
		SAY("Die Twilight Guardian erledigen all die Drecksarbeit f�r die Black Dragon. Das ist auch der Grund, warum die Spuren nie zu den Black Dragon zur�ckf�hren. Aber es gibt keinerlei Beweise daf�r. Abgesehen davon unternimmt die NCPD eh schon alles, was in ihrer Macht steht.")
		
		ANSWER("Ich hoffe es sind noch nicht zu viele Leute abgewandert.",203)
	NODE(203)
		SAY("Das ist unser grosses Problem. Im Vertrauen gesagt, bricht hier alles langsam in sich zusammen. Die Kunden fliehen Scharenweise und niemand m�chte mehr Diamond Immobilien kaufen. Ich m�chte sie nicht erschrecken, aber genau deswegen brauchen wir auch alle Hilfe, die wir bekommen k�nnen.")
		
		ANSWER("Aber was ist mit dem Vertrag mit den CityMercs?",204)
	NODE(204)
		SAY("Wenn der endlich in Aktion treten w�rde, w�ren wir auf der sicheren Seite. Aber wegen einer Klausel im Vertrag kann dieser noch nicht in Kraft treten. Deshalb werden hier alle Kr�fte mobilisiert um die Zeit bis dahin �berleben zu k�nnen.")

		ANSWER("Es scheint, ich sollte wirklich meinen Teil f�r diese Sache tun. Was ist �berhaupt meine Aufgabe dabei?",205)
		
	NODE(205)
		SAY("Sie sollen Foster in ViaRosso 03 besuchen. Ich habe hier in meinen Akten eine Notiz, dass sie diese Personschon kennen, richtig?")

		ANSWER("Ja, aber er hat seinen Vertrag mit Diamond ja schon gek�ndigt. Er hatte ein paar schreckliche Erlebnisse.",206)
		
	NODE(206)
		SAY("Gut, gut., dass sie ihn schon kennen. Wir wollen n�mlich, dass sie ihm einen Anreiz geben, wieder einen Vertrag bei uns aufzunehmen. Tun sie, was immer sie f�r notwendig halten. Denken sie daran, Diamond ben�tigt sie dringend.")

		STARTMISSION(3586)
		SETNEXTDIALOGSTATE(300)
		ENDDIALOG()
	NODE(207)
		SAY("Kommen sie wieder, wenn sie genug Interesse daf�r aufbringen.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 6
	NODE(251)
		SAY("Etwas anderes hatte ich von ihnen auch nicht erwartet. Sie sollen erst einmal diese Dokumente mit einer verschl�sselten Antwort zu ihrem Tsunami Kontaktmann bringen, ich hoffe sie wissen noch wer das war.")

		ANSWER("Aber nat�rlich, ich mache mich sofort auf den Weg.",252)
	NODE(252)
		GIVEITEM(9353)
--Dokumente
		SAY("Dann vergessen sie nicht, sie werden wohl nicht nur als Bote f�r uns eintreten m�ssen. Sie werden direkt daran beteiligt sein, uns hier zu helfen bis der Vertrag mit den CityMercs in Aktion tritt. Ganz Diamond dr�ckt ihnen die Daumen, auch wenn dieses Unternehmen Top Secret ist.")

		STARTMISSION(3587)
		SETNEXTDIALOGSTATE(300)
		ENDDIALOG()
----------------------------------------------------
----------------------------------------------------
--FRAKTIONSWECHSEL
	NODE(300)
		SAY("Dann st�ren sie mich nicht weiter.")
		ENDDIALOG()

	NODE(301)
		GETFACTIONSYMPATHY(2)
		if(result>49)then
			SAY("Das h�ren wir gerne. Laut unserer Daten haben sie auch eine reine Weste. Nun gut, die Aufnahmegeb�hr betr�gt 300 000 Credits.")
	
			ANSWER("Das ist aber eine ganz sch�ne Summe.",302)
		else
			SAY("Verschwinden sie lieber, mit Abschaum wie ihnen m�chten wir nichts zu tun haben.")
			ENDDIALOG()
		end
	NODE(302)
		SAY("Wenn es ihnen nicht so viel Wert ist, dann wissen wir zumindest, dass sie nicht wirklich vorhaben, l�ngere Zeit bei uns zu verbringen.")

		ANSWER("Nun gut, ich bezahle es.",303)
		ANSWER("Das k�nnt ihr gleich vergessen, soviel Geld will ich daf�r nicht ausgeben.",300)
	NODE(303)
		TAKEMONEY(300000)
		if(result==0)then
			SAY("Besch�mend, dass sie die finanziellen Mittel nicht aufbringen k�nnen, finden sie nicht?")
			ENDDIALOG()
		else
			CHANGEFACTION(2)
			SAY("Willkommen bei Diamond.")
			ENDDIALOG()
		end

end