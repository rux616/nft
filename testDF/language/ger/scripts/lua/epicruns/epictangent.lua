--new
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

	CANDOEPICRUN(4,0)
-- Pr�fen ob bereits eine Mission l�uft
		if (result==-6) then
			SAY("Bevor ich sie hier aufhalte, beenden sie mal lieber ihre laufenden Missionen.")
			ENDDIALOG()
			-- now prevent any other node to come through
			state = -1
		end
-- Fraktion wird �berpr�ft
		if(result==-1)then 
			SAY("Sie geh�ren leider nicht unserer Fraktion an. Bitte verschwenden sie nicht weiter meine Zeit. Es sei denn, sie w�rden gerne unserer Fraktion beitreten?")
			
			ANSWER("Genau deswegen bin ich hier, ich w�rde gerne ihrer Fraktion beitreten.",301)
			ANSWER("Nein, kein Interesse. Bis dann...",300)
		else
-- Alle Missionen erf�llt? wird gepr�ft
			CANDOEPICRUN(4,0)
			if(result==-2)then
				SAY("Es tut mir leid, aber die einzige M�glichkeit wie sie uns noch helfen k�nnten ist, einen Clan zu gr�nden, der uns unterst�tzt.")
				ENDDIALOG()
			else
-- Abfrage ob Skillevel stimmt und dann ob die Mission schon erf�llt wurde
				CANDOEPICRUN(4,0)
				if(result==-5)then
					SAY("Sie sind im Moment nicht erfahren genug, kommen sie sp�ter wieder. (n�chste Mission Level 10)")
					ENDDIALOG()
				else
						CANDOEPICRUN(4,0)
				        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------2
						CANDOEPICRUN(4,1)
						if(result==-5)then
							SAY("Sie sind im Moment nicht erfahren genug, kommen sie sp�ter wieder. (n�chste Mission Level 20)")
							ENDDIALOG()
						else
								CANDOEPICRUN(4,1)
				        		if(result==-4)then
-------------------------------------------------------------------------------------------------------------------3
						CANDOEPICRUN(4,2)
						if(result==-5)then
							SAY("Sie sind im Moment nicht erfahren genug, kommen sie sp�ter wieder. (n�chste Mission Level 30)")
							ENDDIALOG()
						else
								CANDOEPICRUN(4,2)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------4
						CANDOEPICRUN(4,3)
						if(result==-5)then
							SAY("Sie sind im Moment nicht erfahren genug, kommen sie sp�ter wieder. (n�chste Mission Level 35)")
							ENDDIALOG()
						else
								CANDOEPICRUN(4,3)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------5
						CANDOEPICRUN(4,4)
						if(result==-5)then
							SAY("Sie sind im Moment nicht erfahren genug, kommen sie sp�ter wieder. (n�chste Mission Level 40)")
							ENDDIALOG()
						else
								CANDOEPICRUN(4,4)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------6
						CANDOEPICRUN(4,5)
				if(result==-5)then
					SAY("Sie sind im Moment nicht erfahren genug, kommen sie sp�ter wieder. (n�chste Mission Level 45)")
					ENDDIALOG()
				else
								CANDOEPICRUN(4,5)
				        if(result==-4)then
						SAY("Es tut mir leid, aber die einzige M�glichkeit wie sie uns noch helfen k�nnten ist, einen Clan zu gr�nden, der uns unterst�tzt.")
						ENDDIALOG()
					else
--Mission 6 wird hier gestartet
						SAY("Sie sind schon sehr bekannt bei Tangent. Und nicht nur bei Tangent, das geht sogar schon soweit, dass ich jemanden auf offener Strasse von euch reden h�rte.")

						ANSWER("Vielen Dank, aber ich tue nur meine Arbeit.",250)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------6
					else
--Mission 5 wird hier gestartet
						SAY("Sie kommen gerade rechtzeitig. Es ist etwas unvorhergesehenes geschehen. Man hat unsere Forschungsanlage sabotiert und einige Subsysteme des Netzwerks gehackt. Chester Cohor konnte zum Gl�ck gerade noch die ID der Hacker scannen.")

						ANSWER("WEITER",200)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------5
					else
--Mission 4 wird hier gestartet
						SAY("Wir haben ihren Verbindungsmann von BioTech benachrichtigt und Interesse an dem Blueprint angek�ndigt. Wir haben nat�rlich versucht, ihm ein geeignetes Angebot zu machen, aber...")

						ANSWER("Er hat es ausgeschlagen? Der Blueprint ist schon verkauft?",150)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------4
					else
--Mission 3 wird hier gestartet
					SAY("Sie kommen gerade rechtzeitig. Das Projekt f�r diese Strahlenwaffe macht Fortschritte. Es konnten sogar schon einige Tests an verschiedenen Materialien durchgef�hrt werden. Alles sehr �berzeugend. Nur ist Tangent das alleine nat�rlich nicht genug.")

					ANSWER("WEITER",100)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------3
							else
--Mission 2 wird hier gestartet
						SAY("Es gibt gute Neuigkeiten. Die CityAdmin hat beschlossen eine neuartige Strahlenwaffe in Auftrag zu geben. Tangent ist daf�r nat�rlich vorbestimmt und ist auch in die engere Wahl gekommen. ")

						ANSWER("WEITER",50)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------2
					else
--Mission 1 wird hier gestartet
						SAY("Willkommen, Runner! Wir freuen uns, mal ein neues Gesicht hier zu sehen. Tangent war den Leuten schon immer sehr verbunden. Nat�rlich auf eine spezielle Art und Weise.")

						ANSWER("WEITER",11)
						
					end
				end			
			end
		end

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 1

	NODE(11)
		SAY("Wir geben jedem die Mittel eine eigene Realit�t zu erschaffen. Damit spreche ich nat�rlich von den verschiedenen Waffenprodukten von Tangent. Sie k�nnen sich ja vorstellen, dass diese besonders hier in Neocron sehr beliebt sind. Selbst ich habe eine Tangent Assault Rifle in meinem Appartement.")

		ANSWER("Ich bin froh, endlich mal einer Fraktion anzugeh�ren, die sich realistisch um die Menschen k�mmert.",12)
	NODE(12)
		SAY("Nat�rlich, das ist eines unserer obersten Ziele. Jeder Kunde ist uns sehr wichtig und es wird einiges getan um Tangent Produkte jedem bekannt zu machen. ")

		ANSWER("WEITER",13)
	NODE(13)
		SAY("Aber nat�rlich konzentriert Tangent sich haupts�chlich auf die verschiedensten Aspekte der Waffenproduktion. Vielleicht sollte ich ihnen kurz etwas �ber die Firma erz�hlen, damit sie einen besseren �berblick haben..")

		ANSWER("Darum wollte ich sie gerade bitten. ",14)
	NODE(14)
		SAY("Tangent Technologies existiert seit 2748. Damals gab es eine Abspaltung vom Mutterkonzern BioTech, da Tangent Industries einfach zu gross wurde um immer noch Teil von BioTech zu sein. ")

		ANSWER("WEITER",15)
	NODE(15)
		SAY("Seitdem hat Tangent seinen einstigen Mutterkonzern bei weitem �berfl�gelt. Dadurch, dass wir uns auf Waffen spezialisieren, konnten wir viele lukrative Auftr�ge mit der CityAdmin abschliessen.")

		ANSWER("WEITER",16)
	NODE(16)
		SAY("Durch die Abgabe von Waffen an die B�rger von Neocron ist nun ausserdem eine weitere best�ndige Einnahmequelle gegeben. Ja, und obwohl BioTech keine Mittel ungenutzt l�sst, um Tangent von dieser Spitzenposition zu entfernen, streben wir nach immer h�heren Zielen.")

		ANSWER("BioTech behindert aktiv die Bem�hungen von Tangent?",17)
	NODE(17)
		SAY("Ja, in der Tat. Dabei schrecken sie noch nicht einmal vor Gewalt zur�ck. Offiziell bestreiten sie es nat�rlich. Sie haben aber Kontakte zu den Tsunamis und investieren immense Mittel, um diese gegen Tangent aufzustacheln. ")

		ANSWER("WEITER",18)
	NODE(18)
		SAY("Aber diese l�cherlichen Versuche k�nnen uns nat�rlich nicht am erreichen unserer Ziele behindern. Da wir gerade von Zielen reden. Ihr seid sicher bereit, eine kleine Aufgabe f�r Tangent zu �bernehmen, nicht wahr?")

		ANSWER("Ja, nat�rlich. Und ich dachte schon ich m�sste gar nichts tun, f�r das Appartement , dass ihr mir gestellt habt.",19)
	NODE(19)
		SAY("Oh, seien sie versichert, dass das Appartement zur G�nze euch geh�rt. Tangent betrachtet diesen ersten Auftrag einfach als Gefallen, den ihr uns tut. Gegen ein kleines Entgeld nat�rlich.")

		ANSWER("Gegen Bezahlung ist es nat�rlich immer am angenehmsten, worum geht es denn �berhaupt?",20)
		ANSWER("Ich f�hle mich f�r eine Aufgabe noch nicht bereit.",33)
	NODE(20)
		SAY("Es ist recht einfach. F�r eine so grosse Firma, wie Tangent eine ist, sind nat�rlich wichtige Beziehungen notwendig. Diese halten die wichtigen Projekte am laufen.")

		ANSWER("WEITER",21)
	NODE(21)
		SAY("Zu den wichtigsten Partnern geh�ren dabei NEXT und Diamond Real Estate. NEXT arbeitet offensichtlich mit uns zusammen, um ihre Fahrzeuge auch mit den entsprechenden Waffensystemen auszur�sten. ")

		ANSWER("WEITER",22)
	NODE(22)
		SAY("Das dies nat�rlich auch in unserem Interesse liegt, ist wohl offensichtlich. Diamond Real Estate dahingegen hat mit uns diverse Abmachungen getroffen um Sicherheitssysteme f�r ihre Immobilien zu entwickeln.")

		ANSWER("WEITER",23)
	NODE(23)
		SAY("Mit Diamond besteht schon lange eine fruchtbare und angenehme Gesch�ftsbeziehung.")

		ANSWER("Ja, ich habe schon erwartet, dass solche Vertr�ge existieren. Stimmt es nicht, dass Tangent auch die CopBots mit Waffen ausstattet?",24)
	NODE(24)
		SAY("Ja, in der Tat. CityAdmin hat Tangent nat�rlich die Ausstattung der CopBots �berlassen. Tangent ist immerhin der gr�sste unabh�ngige Waffenfabrikant. Dies ist nicht nur besonders lukrativ, nein, es ist auch eine sehr veratwortungsvolle Aufgabe.")

		ANSWER("WEITER",25)
	NODE(25)
		SAY("Tangent hat dabei auf die Effizienz der Waffen ein besonderes Augenmerk gelegt. So sollen die CopBots doch ihre Arbeit m�glichst gut ausf�hren, damit die unschuldigen B�rger Neocrons auch gut schlafen k�nnen.")

		ANSWER("Das h�rt sich sehr beeindruckend an. Aber sie wollten doch auch noch etwas �ber den Auftrag sagen, nicht?",26)
	NODE(26)
		SAY("Immer mit der Ruhe. Warten sie ab, bis ich zuende gesprochen habe. Die kleine Aufgabe f�r euch, f�hrt euch zu NEXT, Diamond Real Estate und in den Pepper Park, eine verruchte und schmutzige Gegend. Seht euch in dieser gesetzlosen Gegend besonders vor.")

		ANSWER("WEITER",27)
	NODE(27)
		SAY("Als erstes solltet ihr NEXT besuchen und den dortigen Director of Operations diese wichtigen Dokumente hier �berreichen. Sie behandeln sehr genau, wie unsere Waffensysteme sich in einem ausf�hrlichen Test mit der Hovertechnologie von NEXT geschlagen haben. ")

		ANSWER("WEITER",28)
	NODE(28)
		SAY("Danach gehen sie bitte zum Diamond Real Estate Hauptquartier. Dort gebt ihr diese andere Sendung ab. Ich weiss leider nicht in welcher Diamond Filiale sich der Broker aufh�lt, der die Lieferung bekommen soll. Diamond hat ein HQ, eine Filliale in der CityAdmin und weitere auf den Strassen von Neocron. ")

		ANSWER("WEITER",29)
	NODE(29)
		SAY("Sie enth�lt sin paar spezielle Spirituosen. Merkt euch das, man muss sich seine Beziehungen immer wieder durch kleine Aufmerksamkeiten sicher stellen.")

		ANSWER("Sie haben auch noch etwas �ber den Pepper Park gesagt, worum handelt es sich dabei?",30)

--Spieler bekommt zwei Pakete
	NODE(30)
		GIVEITEM(9150)
		GIVEITEM(9151)
		SAY("Das ist nicht so wichtig. Besuchen sie dort nur mal einen Mann namens Figaro. Er wird ihnen einige Dinge geben, die sie einfach nur hierher zur�ckbringen sollen. Ist das soweit klar?")

		ANSWER("Aber ja, ich wollte es ja auch nur aus Neugierde wissen.",31)
	NODE(31)
		SAY("Neugierde ist sparsam eingesetzt ein Segen, aber zuviel davon kann auch sehr grossen Schaden verursachen. Geht nun und vergesst nicht, das P�ckchen, dass ihr bekommt zu Mazzaro in der Chefetage zu bringen.")

		ANSWER("WEITER",32)
	NODE(32)
		SAY("Sonst wird er sehr ungehalten sein und das wollen wir schliesslich verhindern..")
		STARTMISSION(3558)
		SETNEXTDIALOGSTATE(24)
		ENDDIALOG()


	NODE(33)
		SAY("Dann bereiten sie sich vor und kommen einfach sp�ter noch einmal wieder.")
		ENDDIALOG()

	NODE(34)
		SAY("Sie sollten diese Lieferung schon zu Ende bringen, falls sie es bei Tangent zu etwas bringen wollen. Falls sie den Diamond Broker nicht finden k�nnen, versuchen sie es doch mal in einer anderen Diamond Filiale.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 2

	NODE(50)
		SAY("Wobei es allerdings unverst�ndlich ist, warum Tangent als auch BioTech jetzt in der Entscheidungsphase stehen. Es ist doch offensichtlich, dass all das Know How hier bei uns zu finden ist. ")

		ANSWER("WEITER",51)
	NODE(51)
		SAY("Immerhin besch�ftigt sich Tangent einzig und allein mit der Produktion und Erfindung von Waffen. Nichtsdestotrotz hat die CityAdmin aus unerfindlichen Gr�nden beschlossen BioTech auch f�r diesen Auftrag in Betracht zu ziehen.")

		ANSWER("Aber BioTech d�rfte doch f�r Tangent kein Problem sein. Tangent hat ja sozusagen Heimvorteil.",52)
	NODE(52)
		SAY("Aber nat�rlich. Das ist allen klar. Nur anscheinend hat BioTech wieder schmutzige Mittel benutzt, um diesen Auftrag auch angeboten zu bekommen.")

		ANSWER("Mir ist noch nicht ganz klar, wie entschieden wird, wer den Zuschlag f�r diesen Auftrag erh�lt.",53)
	NODE(53)
		SAY("Innerhalb einer befristeten Zeit, sollen beide Firmen einen Prototypen herstellen. Der bessere erh�lt dann den Auftrag. Soweit die Theorie. Aber ich tippe nicht auf einen fairen Wettkampf.")

		ANSWER("WEITER",54)
	NODE(54)
		SAY("Wenn BioTech dahinter steckt, haben sie sicher etwas hinterh�ltiges geplant.")

		ANSWER("Aber gegen solche Mittel hat Tangent doch sicher schon effektive Vorkehrungen getroffen, oder?",55)
	NODE(55)
		SAY("BioTech soll es nur versuchen, sie werdenschon sehen, was sie davon haben. Aber jetzt zu etwas anderem. Tangent, oder besser gesagt Daimon Jordan, wollte unbedingt einen bestimmten Strahlenexperten im Entwicklungsteam mit dabei haben.")

		ANSWER("WEITER",56)
	NODE(56)
		SAY("Das kleine Problem ist jedoch, dass dieser Experte schon vor einem halben Jahr in den Ruhestand getreten ist. Tangent hat dabei an sie gedacht ihn zur�ckzuholen.")

		ANSWER("WEITER",57)
	NODE(57)
		SAY("Sie sollen ihm ein Angebot �berbringen, wieder Teil des Teams zu sein. Vielleicht m�ssen sie auch etwas ihre �berredungsk�nste spielen lassen.")

		ANSWER("Ich kann es ja immerhin versuchen. Wo finde ich den Experten?",58)
		ANSWER("Ich kann diese Aufgabe im Moment noch nicht �bernehmen, f�rchte ich.",60)
	NODE(58)
		SAY("Matt Tronstett ist sein Name. Laut unseren Informationen, h�lt er sich zur Zeit in Point Red auf. Sie wissen schon, in den Wastelands, Sektor B 07.")

		ANSWER("WEITER",59)
	NODE(59)
		SAY("Wenn sie es geschafft haben, ihn zu �berreden, m�chte Mazzaro gerne noch einmal mit ihnen reden.")
		STARTMISSION(3559)
		SETNEXTDIALOGSTATE(12)
		ENDDIALOG()
		
	NODE(60)
		SAY("Es w�re zwar eine wichtige Aufgabe, aber sie m�ssen sie ja nicht �bernehmen.")
		ENDDIALOG()
	NODE(61)
		SAY("Haben sie Tronstett schon �berzeugen k�nnen? Er lebt in Point Red in den Wastelands.")
		ENDDIALOG()

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 3

	NODE(100)
		SAY("Es muss unbedingt in Erfahrung gebracht werden, wieweit BioTech mit ihrer Entwicklung ist. Zu diesem Zweck brauchen wir Runner, die gewillt sind einige Nachforschungen zu betreiben.")

		ANSWER("Nachforschungen? Wie sollen diese denn aussehen?",101)
	NODE(101)
		SAY("Tangent hat Methoden, um an Informationen heranzukommen. Es gibt verschiedene Kontaktleute, die alle k�uflich sind. Es gibt also gen�gend Kontaktleute, die in unsere H�nde spielen.")

		ANSWER("Ist Spionage denn nicht illegal?",102)
	NODE(102)
		SAY("Spionage? Sie haben es anscheinend immer noch nicht gelernt. Tangent macht genau das, was jede andere Firma tut. Und genau deswegen ist Tangent auch noch im Gesch�ft.")

		ANSWER("WEITER",103)
	NODE(103)
		SAY("Sie k�nnen doch nicht wirklich so naiv sein und glauben, dass andere Firmen nicht die selben Methoden anwenden, oder? Diese Aufgabe ist wichtig f�r die Firma. Und insofern es mich betrifft, sind sie entweder f�r oder gegen Tangent. Letzteres w�rde ich ihnen nicht empfehlen.")

		ANSWER("Ich wollte nicht beleidigend wirken, Verzeihung.",104)
	NODE(104)
		SAY("Sehen sie sich um, in dieser Welt gibt es zwei M�glichkeiten. Entweder sie geh�ren einer m�chtigen Fraktion an ... oder sie sollten ihre Lebenserwartung entsprechend verk�rzen. Also, der Kontaktmann befindet sich in der Catlock Bay.")

		ANSWER("WEITER",105)
	NODE(105)
		SAY("Sie k�nnen ihm bis zu 10000 Credits bieten, falls sie die Information f�r wichtig halten. Er ist ein Tsunami mit dem Namen Gruber. Seien sie jedoch auf der Hut.")

		ANSWER("WEITER",106)
	NODE(106)
		SAY("In den Wastelands herrscht keine Ordnung. Bleiben sie nicht zu lange dort draussen, sonst fangen sie sich wom�glich eine Mutation ein. Falls sie etwas herausfinden, melden sie es wieder mir.")
		STARTMISSION(3560)
		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()
	NODE(107)
		SAY("Es ist ihre Wahl, falls sie sich noch einmal anders entscheiden, kommen sie einfach noch einmal wieder.")
		ENDDIALOG()

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 4

	NODE(150)
		SAY("Nein, das nicht. Ich denke er weiss, dass sie von einer grossen und einflussreichen Firma geschickt worden sind. Tangent h�tte wohl fast jeden Preis f�r diese Blueprints bezahlt. Nein, er wollte etwas anderes als Bezahlung haben.")

		ANSWER("WEITER",151)
	NODE(151)
		SAY("Er sagte etwas von einer alten Rechnung, die er noch mit den FallenAngels offen h�tte. Anscheinend hatten diese ihn wegen mangelnder Qualifikationen nicht einstellen wollen.")

		ANSWER("Das ist ja nicht so ungew�hnlich, selbst Tangent ist ja nicht so gut auf die Fallen Angels zu sprechen.",152)
	NODE(152)
		SAY("In der Tat. Aber die Fallen Angels h�tten das Tangent System ja auch nicht hacken m�ssen. Das war ein Chaos. Aber ich schweife ab. Wir wollen sie, um diesem BioTech Kontaktmann seinen Wunsch zu erf�llen.")

		ANSWER("Was genau muss ich dazu tun?",153)
		ANSWER("Ich kann das im Moment nicht tun, tut mir leid.",158)
	NODE(153)
		SAY("Es ist ganz einfach, auch wenn wir normalerweise nicht auf diese Art von Aktion zur�ckgreifen. Ihr trefft euch mit Max, ihr k�nnt ihn in der Outzone im alten Gef�ngnis treffen. Er ist ein alter Hase, wenn es zu solchen Auftr�gen kommt.")

		ANSWER("WEITER",154)
	NODE(154)
		SAY("Ihr sagt ihm, dass er 10 Fallen Angels Mitglieder umlegen soll. So weit ganz einfach, nicht? Aber sagt ihm auch, dass er keine kleinen Fische umbringen soll, sondern die Erfahrenen ins Visier nehmen soll.")

		ANSWER("Wenn es Tangent nutzt, dann tue ich das. Immerhin haben die Fallen Angels ja uns zuerst angegriffen. Aber ich habe meine Bedenken...",155)
	NODE(155)
		SAY("Lasst mich euch eins sagen, mit dieser Einstellung kommt man nicht weit. F�r Tangent muss man auch mal gewillt sein, K�pfe rollen zu lassen. Kommen sie, Tangent produziert Waffen.")

		ANSWER("WEITER",156)
	NODE(156)
		SAY("Und wof�r? Genau. Nicht um damit L�cher in den Himmel zu schiessen. Das Wohl der Firma ist mehr Wert als so ein paar mutierte Fallen Angels.")

		ANSWER("Ist ja gut , ich �bernehme den Auftrag, aber ich finde, dass ein Blueprint kein Menschenleben wert ist.",157)
	NODE(157)
		SAY("Diese Einsch�tzung �berlassen sie vielleicht dann doch der F�hrungsetage. Treffen sie sich zuerst mit Max, er ist Black Dragon und im alten Gef�ngnis in der Outzone zu finden. Mazzaro will sie nach dem Auftrag auch sehen.")
		STARTMISSION(3561)
		SETNEXTDIALOGSTATE(10)
		ENDDIALOG()
		
	NODE(158)
		SAY("Wie sie wollen, aber verlassen sie sich nicht darauf, dass Tangent ewig Auftr�ge f�r sie parat h�lt.")
		ENDDIALOG()
		
	NODE(159)
		SAY("Sie haben ihren Auftrag. Besuchen sie Max im Outzone Gef�ngnis und wenn dieser dann die Fallen Angels get�tet hat, bekommen sie einen Blueprint von Benjamin im Industrial 02.")

		ENDDIALOG()

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 5

	NODE(200)
		SAY("�berhaupt nicht �berraschend ist dabei, dass die Hacker BioTech Mitglieder sind. Allerdings haben wir keinerlei Handfeste Beweise, da die relevanten Daten durch den Hack Angriff besch�digt worden sind. Auch unsere Forschung wurde um Tage zur�ckgesetzt.")

		ANSWER("Das h�tte man sich doch denken k�nnen, dass BioTech mit denselben Mitteln arbeitet wie Tangent.",201)
	NODE(201)
		SAY("Das mag schon sein, aber sie untersch�tzen dabei die Komplexit�t solcher Systeme und Versuchsaufbauten. Diese k�nnen n�mlich durch selbst geringste Einfl�sse stark gest�rt werden. Auch war  man gerade dabei, das Netzwerk umzukonfigurieren. Immer noch als Reaktion auf die Hack Attacke der Fallen Angels.")

		ANSWER("Was wurde nun von Tangent daraufhin beschlossen? Irgendeine Antwort muss doch darauf erfolgen.",202)
	NODE(202)
		SAY("Ja, in der Tat. Die Konsequenz ist, dass wir auch Mitglieder von BioTech direkt angreifen werden. Das soll nat�rlich als Warnung gelten. Da ihr schon das letzte Mal so eine grosse Kompetenz bei einer solchen Mission bewiesen habt werdet ihr diese Aufgabe �bernehmen")

		ANSWER("Es ist nicht so, dass ich mich um solche Auftr�ge gerissen habe. Aber ich tue es.",204)
		ANSWER("Ich denke hier muss ich passen.",207)
	NODE(204)
		SAY("Ja, noch etwas. Die Tsunamis haben anscheinend auch ihre Finger im Spiel. Sie sollten deswegen noch einmal mit Figaro sprechen. Wir geben ihnen freie Hand, welche Handlungsweise sie ihm gegen BioTech empfehlen. H�ren sie sich an, was den Black Dragons m�glich ist und entscheiden sie entsprechend. ")

		ANSWER("WEITER",205)
	NODE(205)
		SAY("Auch hat ihr Kontakt, Benjamin, ausdr�cklich darauf bestanden mit ihnen zu verhandeln. Seine Worte waren, Feinde, die ich kenne sind mir lieber als unbekannte Feinde. Er hat es geschafft einen Teil des Prototypen der BioTech Strahlen Kanone zu entwenden und hat zugesagt es uns zu verkaufen.")

		ANSWER("Ich bin ja inzwischen ganz sch�n gefragt. Aber wen genau soll ich jetzt umbringen?",209)
	NODE(206)
		SAY("Ihre Erfolge sprechen sich eben doch herum, nicht wahr? Es gibt viel zu tun, packen sie es an. Zuerst sollten sie Figaro besuchen und nachdem sie ein BioTech Mitglied geflatlined haben, wartet Benjamin noch auf sie.")
		STARTMISSION(3562)
		SETNEXTDIALOGSTATE(8)
		ENDDIALOG()


	NODE(207)
		SAY("Wenn sie es sich noch anders �berlegen, z�gern sie nicht uns zu kontaktieren.")
		ENDDIALOG()
		
	NODE(208)
		SAY("Sie haben doch ihren Auftrag schon, machen sie sich an die Arbeit. Treffen sie sich mit Figaro in Pepper 03 und Benjamin in Industrial 02. Ach ja, vergessen sie nicht zwei BioTechs als Warnung umzulegen.")
		ENDDIALOG()

	NODE(209)	
		SAY("Der Auftrag ist es, 2 Runner von BioTech zu t�ten. Dabei d�rfen diese keine Angestellten, Wachen oder offizielle Vertreter sein, sondern nur Runner.")
		
		ANSWER("Und ich kann dann irgendeinen Runner flatlinen, egal welchen?",210)
	NODE(210)
		SAY("Nur, wenn diese sich auf deinem Niveau befinden oder dein Niveau �bersteigen. Ansonsten k�nnen wir es nicht gelten lassen.")

		ANSWER("WEITER",206)
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 6

	NODE(250)
		SAY("Bescheidenheit steht ihnen nicht. Sie k�nnen ruhig mal Stolz sein, auf das, was sie getan haben. Aber deswegen haben wir sie nicht angefordert.")

		ANSWER("So viel dachte ich mir schon, es gibt einen Notfall?",252)
	NODE(252)
		SAY("Nicht ganz. Es geht um die finale Testreihe der Strahlenwaffe. Dabei ist alles schon fertig und die letzten Messungen m�ssten bald gemacht sein. Allerdings hat BioTech es trotz unserer Bem�hungen geschafft, ihre Waffe auch fast bis zur Fertigstellung zu entwickeln. ")

		ANSWER("WEITER",253)
	NODE(253)
		SAY("Tangent kann es sich nicht erlauben, in direkter Konkurrenz zu verlieren. Deshalb werden wir etwas dagegen unternehmen m�ssen. So klein diese Wahrscheinlichkeit auch ist zu verlieren.")

		ANSWER("Und dabei haben sie an mich gedacht? Nun gut, was stellt sich Tangent denn so vor?",254)
	NODE(254)
		SAY("Dieser finale Testlauf sollte am besten mit allen Mitteln unterbrochen werden. Hatten sie nicht auch belastendes Material von ihrem Kontakt bekommen? Falls sie dieses noch besitzen sollten sie es auch einsetzen.")

		ANSWER("Ja, ich habe belastendes Material von einer gewissen Andressa. Ich denke sie wird sich irgendwo in der N�he des BioTech Hauptquartiers herum treiben.",255)
	NODE(255)
		SAY("Dann setzen sie es ein, alles was BioTech schadet ist gut f�r Tangent.")
		STARTMISSION(3563)
		SETNEXTDIALOGSTATE(6)
		ENDDIALOG()
		
	NODE(256)
		SAY("Beeilen sie sich, uns l�uft die Zeit davon.")
		ENDDIALOG()
----------------------------------------------------
----------------------------------------------------
--FRAKTIONSWECHSEL
	NODE(300)
		SAY("Dann st�ren sie mich nicht weiter.")
		ENDDIALOG()

	NODE(301)
		GETFACTIONSYMPATHY(4)
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
			CHANGEFACTION(4)
			SAY("Willkommen bei Tangent.")
			ENDDIALOG()
		end
end