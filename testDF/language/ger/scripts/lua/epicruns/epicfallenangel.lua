--new
--Tsunami

function DIALOG()
NODE(0)
--CANDOEPICRUN(factionid. epicmissionid)
--EPICMISSIONERROR_WRONGFACTION		-1
--EPICMISSIONERROR_FULLYACCOMPLISHED	-2
--EPICMISSIONERROR_MISSIONMISSIONS		-3
--EPICMISSIONERROR_ALREADYFINISHED		-4
--EPICMISSIONERROR_WRONGSKILLLEVEL		-5
--EPICRUNFINISHED(factionid. epicmissionid)
--STARTMISSION( missionid aus missionbase def)

	CANDOEPICRUN(14,0)
-- Pr�fen ob bereits eine Mission l�uft
		if (result==-6) then
			SAY("Bevor ich sie hier aufhalte, beenden sie mal lieber ihre laufenden Missionen.")
			ENDDIALOG()
			-- now prevent any other node to come through
			state = -1
		end
-- Fraktion wird �berpr�ft
		if(result==-1)then 
			SAY("Sie geh�ren leider nicht unserer Fraktion an. Bitte verschwenden sie nicht weiter meine Zeit. Es sei denn. sie w�rden gerne unserer Fraktion beitreten?")
			
			ANSWER("Genau deswegen bin ich hier. ich w�rde gerne ihrer Fraktion beitreten.",301)
			ANSWER("Nein. kein Interesse. Bis dann...",300)
		else
-- Alle Missionen erf�llt? wird gepr�ft
			CANDOEPICRUN(14,0)
			if(result==-2)then
				SAY("Es tut mir leid. aber die einzige M�glichkeit wie sie uns noch helfen k�nnten ist. einen Clan zu gr�nden. der uns unterst�tzt.")
				ENDDIALOG()
			else
-- Abfrage ob Skillevel stimmt und dann ob die Mission schon erf�llt wurde
				CANDOEPICRUN(14,0)
				if(result==-5)then
					SAY("Sie sind im Moment nicht erfahren genug. kommen sie sp�ter wieder. (n�chste Mission Level 10)")
					ENDDIALOG()
				else
						CANDOEPICRUN(14,0)
				        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------2
						CANDOEPICRUN(14,1)
						if(result==-5)then
							SAY("Sie sind im Moment nicht erfahren genug. kommen sie sp�ter wieder. (n�chste Mission Level 20)")
							ENDDIALOG()
						else
								CANDOEPICRUN(14,1)
				        		if(result==-4)then
-------------------------------------------------------------------------------------------------------------------3
						CANDOEPICRUN(14,2)
						if(result==-5)then
							SAY("Sie sind im Moment nicht erfahren genug. kommen sie sp�ter wieder. (n�chste Mission Level 30)")
							ENDDIALOG()
						else
								CANDOEPICRUN(14,2)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------4
						CANDOEPICRUN(14,3)
						if(result==-5)then
							SAY("Sie sind im Moment nicht erfahren genug. kommen sie sp�ter wieder. (n�chste Mission Level 35)")
							ENDDIALOG()
						else
								CANDOEPICRUN(14,3)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------5
						CANDOEPICRUN(14,4)
						if(result==-5)then
							SAY("Sie sind im Moment nicht erfahren genug. kommen sie sp�ter wieder. (n�chste Mission Level 40)")
							ENDDIALOG()
						else
								CANDOEPICRUN(14,4)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------6
						CANDOEPICRUN(14,5)
				if(result==-5)then
					SAY("Sie sind im Moment nicht erfahren genug. kommen sie sp�ter wieder. (n�chste Mission Level 45)")
					ENDDIALOG()
				else
								CANDOEPICRUN(14,5)
				        if(result==-4)then
						SAY("Es tut mir leid. aber die einzige M�glichkeit wie sie uns noch helfen k�nnten ist. einen Clan zu gr�nden. der uns unterst�tzt.")
						ENDDIALOG()
					else
--Mission 6 wird hier gestartet
		SAY("Ich denke sie sollten Constantine wieder besuchen. Die finale Phase ihre Projektes scheint anzulaufen und da sie dieses Projekt immerhin leiten�")

		ANSWER("Ich w�nschte es w�re so. aber Constantine nimmt mir sehr viel der Arbeit ab. Da bleibt kaum noch etwas f�r mich �brig.",251)

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------6
					else
--Mission 5 wird hier gestartet
		SAY("Wir haben Neuigkeiten bez�glich der verr�terischen Informationen. die sie uns �ber Grimm gegeben haben. Der Forscherrat hat sich die Daten gr�ndlich durchgesehen und entschieden Grimm nun unter 24 Stunden �berwachung zu stellen und seinen Dienstgrad herabzustufen.")

		ANSWER("Das ist doch nicht fair. man sollte diesen Grimm verbannen. Ich w�re fast drauf gegangen wegen seiner Machenschaften. ",201)

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------5
					else
--Mission 4 wird hier gestartet
		SAY("Constantine hat mich dar�ber informiert. dass sie gerne mit ihnen sprechen w�rde. Es handelt sich anscheinend um eine Person die sie gut kennen.")

		ANSWER("Ich werde sie umgehend aufsuchen.",151)
		ANSWER("Im Moment geht es bei mir leider nicht...",152)
					end
				end	
-------------------------------------------------------------------------------------------------------------------4
					else
--Mission 3 wird hier gestartet
		SAY("Grimm m�chte mit ihnen reden. Er klang recht aufgebracht und suchte sie schon �berall. Jedoch mit uns wollte er noch nicht reden. Wissen sie vielleicht worum es geht?")

		ANSWER("Nein ich habe leider auch keinen blassen Schimmer.",101)
		ANSWER("Ich habe noch etwas dringendes zu erledigen...",103)


						
					end
				end	
-------------------------------------------------------------------------------------------------------------------3
							else
--Mission 2 wird hier gestartet
		SAY("Ihre Registrierung ist nun vollst�ndig abgeschlossen. Hier ist ihr ID Cube.")
		
		ANSWER("Ein ID Cube? Wozu ist der gut?",51)


						
					end
				end	
-------------------------------------------------------------------------------------------------------------------2
					else
--Mission 1 wird hier gestartet
		SAY("Willkommen. es sind noch ein paar Formalit�ten zu erledigen. sie werden also ihren ID Cube  erst sp�ter bekommen k�nnen. Offiziell geh�ren sie nun zu uns. den Fallen Angels. Mit der Mitgliedschaft bei uns haben sie automatisch auch einige neue Pflichten bekommen. Wir sind ja schliesslich nicht zum faulenzen hier heraus gekommen. Wenn sie sich so weit schon eingelebt haben. k�nnten sie sofort schon etwas tun.")
		
		ANSWER("Selbstverst�ndlich. Ich bin ja auch genau deswegen hier. da ich h�rte. hier g�be es ein paar neue Aufgaben f�r mich.",11)

						
					end
				end			
			end
		end

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--FA 1
	NODE(11)
		SAY("Das h�ren wir hier gerne. Wie sie vielleicht wissen. ist jedes Mitglied der Fallen Angels ja auch gleichzeitig ein Forscher. Da wir aber ihre Qualit�ten noch nicht genau analysiert haben. wird es wohl das Beste sein. wenn wir sie erst einmal anderweitig nutzbringend einsetzen. Sylvia Bennet hat einige wichtige Dokumente herausgegeben mit den neusten Ergebnissen bez�glich unserer Forschung. Diese sind aber noch nicht alle ausgeteilt worden. W�ren sie dazu bereit. ein solches Dokument zu �berbringen?")
		
		ANSWER("Nun gut. auch wenn ich ja eigentlich kein Botenjunge bin. Wohin soll ich diese denn bringen?",12)
		ANSWER("Ich glaube nicht. dass ich jetzt schon so eine Aufgabe �bernehmen kann.",14)
	NODE(12)
		SAY("Es gibt einen speziellen Forschungstrakt hier. Dort wird unter anderem erforscht, wie die Radioaktivit�t und die Umwelt wieder Menschenfreundlicher gemacht werden kann. Eigentlich wird dort alles erforscht. was wichtig ist. Sie k�nnen sich auf dem Weg dorthin ja noch etwas umsehen. Alle Fallen Angel Installationen sind auf jeden Fall Sehenswert. ")
		
		ANSWER("Keine Sorge. ich werde das Paket sicher �berbringen.",13)
	NODE(13)
		GIVEITEM(9307)
		SAY("Betrachten sie diesen Job als kleines Zubrot. Also, bringen sie dieses Paket einfach zu Grimm und gr�ssen sie ihn von mir.")
		STARTMISSION(3576)
		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()
	NODE(14)
		SAY("Dann gew�hnen sie sich erst einmal richtig ein und kommen dann einfach wieder. wenn sie sich danach f�hlen.")
		ENDDIALOG()

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--FA 2
	NODE(51)
		SAY("Der ID Cube enth�lt ihre pers�nlichen Daten und zeichnet sie als Mitglied der Fallen Angels aus. Net�rlich gibt es ausserdem noch eine digitale Kopie ihrer wichtigsten pers�nlichen Daten. Aber nun zu etwas wichtigerem. Nach Analyse ihrer pers�nlichen Daten. hat der Forscherrat beschlossen. ihnen ein autonomes Forschungsprojekt zuzuweisen.")
		
		ANSWER("Ein Forscherprojekt f�r mich? Vielen Dank. aber was genau bedeutet das und was ist meine Aufgabe dabei?",52)
		ANSWER("Ich glaube nicht. dass ich dieser Aufgabe schon gewachsen bin. Tut mir leid.",55)
	NODE(52)
		SAY("Sie bekommen ein Forschungsprojekt. dass sie selbst�ndig erforschen sollen. Die Liste der verschiedenen w�hlbaren Projekte ist dabei allerdings begrenzt. da es nat�rlich mit unseren Zielen �bereinstimmen soll. Immerhin stellen wir ihnen einen Mitarbeiter zur Verf�gung. der ihnen so weit es geht zur Hand gehen wird.")
		
		ANSWER("Das h�rt sich sehr gut an. Aber wo soll ich denn anfangen?",53)
	NODE(53)
		SAY("Der Forscherrat hat Grimm in der Laborsektion die entsprechenden Anweisungen gegeben. Er wird ihnen sagen k�nnen. welcher Mitarbeiter ihnen zur Seite stehen wird. Viel Erfolg w�nsche ich. Ihre Forschungsergebnisse werden entscheiden. welchen Rang sie hier bekleiden werden.")
		STARTMISSION(3577)
		SETNEXTDIALOGSTATE(4)
		ENDDIALOG()
	NODE(55)
		SAY("Ist schon in Ordnung. wenn sie sich der Aufgabe noch nicht gewachsen f�hlen.")
		
		ENDDIALOG()

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--FA 3
	NODE(101)
		SAY("Suchen sie ihn lieber schnell auf. nicht das etwas schlimmes passiert ist. ")
		STARTMISSION(3578)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()		
	NODE(102)
		SAY("Haben sie schon Grimm im forschungstrakt besucht? Es klang recht wichtig.")
		ENDDIALOG()
		
	NODE(103)
		SAY("Nun. wie sie meinen. aber das wird Grimm sicher sauer aufstossen.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--FA 4
	NODE(151)
		SAY("Tun sie das. mehr Neuigkeiten gibt es im Moment auch nicht.")
		STARTMISSION(3579)
		SETNEXTDIALOGSTATE(3)
		ENDDIALOG()
	
	NODE(152)
		SAY("Hmm. nun gut. Aber lassen sie sie nicht zu lange warten.")
		ENDDIALOG()
	NODE(153)
		SAY("Wollten sie nicht mit Constantine im Forschungstrakt reden?")

		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--FA 5
	NODE(201)
		SAY("Die Betonung liegt hierbei auf fast. Da aber kein grosser Schaden entstanden ist und die Informationen. die er weitergegeben hat recht genereller Natur waren. wurde entschieden ihm nur einen Warnschuss vor den Bug zu versetzen.")

		ANSWER("Diesem Urteil muss ich mich dann wohl beugen. ",202)
	NODE(202)
		SAY("Ausserdem wurden weitere Forschungsgelder bereitgestellt. 35 000 Credits sind f�r ihr autonomes Forschungsprojekt bewilligt worden. Ihre Technik Assistentin hat mich ausserdem gebeten ihnen mitzuteilen. dass alle notwendigen Vorbereitungen getroffen worden sind und sie eigentlich loslegen k�nnen.")

		ANSWER("Gut. ich werde mich sofort darum k�mmern.",203)
		ANSWER("Ich werde mich erst sp�ter darum k�mmern k�nnen.",204)
	NODE(203)
		SAY("Viel Erfolg.")
		STARTMISSION(3580)
		SETNEXTDIALOGSTATE(5)
		ENDDIALOG()
		
	NODE(204)
		SAY("Das ist ihre Entscheidung.")
		ENDDIALOG()

	NODE(205)
		SAY("Wollten sie nicht mit der technischen Assistentin Constantine sprechen?")
		ENDDIALOG()		
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--FA 6
	NODE(251)
		SAY("Ich w�nschte ich h�tte einmal in meinem Leben einen solchen Job. Viel Erfolg. Vielleicht sollten sie noch wissen. dass der Forscherrat einen Bonus in Form eines Geldpreises auf die Fertigstellung ihres Projektes veranschlagt hat.")
		STARTMISSION(3581)
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()
	NODE(252)
		SAY("Sie sollten wirklich mit Constantine die finale Phase ihres Projektes durchsprechen.")
		ENDDIALOG()
----------------------------------------------------
----------------------------------------------------
--FRAKTIONSWECHSEL
	NODE(300)
		SAY("Dann st�ren sie mich nicht weiter.")
		ENDDIALOG()

	NODE(301)
		GETFACTIONSYMPATHY(14)
		if(result>49)then
			SAY("Das h�ren wir gerne. Laut unserer Daten haben sie auch eine reine Weste. Nun gut. die Aufnahmegeb�hr betr�gt 300 000 Credits.")
	
			ANSWER("Das ist aber eine ganz sch�ne Summe.",302)
		else
			SAY("Verschwinden sie lieber. mit Abschaum wie ihnen m�chten wir nichts zu tun haben.")
			ENDDIALOG()
		end
	NODE(302)
		SAY("Wenn es ihnen nicht so viel Wert ist. dann wissen wir zumindest. dass sie nicht wirklich vorhaben. l�ngere Zeit bei uns zu verbringen.")

		ANSWER("Nun gut. ich bezahle es.",303)
		ANSWER("Das k�nnt ihr gleich vergessen. soviel Geld will ich daf�r nicht ausgeben.",300)
	NODE(303)
		TAKEMONEY(300000)
		if(result==0)then
			SAY("Besch�mend. dass sie die finanziellen Mittel nicht aufbringen k�nnen. finden sie nicht?")
			ENDDIALOG()
		else
			CHANGEFACTION(14)
			SAY("Willkommen bei den Fallen Angels.")
			ENDDIALOG()
		end
end