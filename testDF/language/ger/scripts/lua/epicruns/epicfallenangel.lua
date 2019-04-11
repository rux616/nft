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
-- Prüfen ob bereits eine Mission läuft
		if (result==-6) then
			SAY("Bevor ich sie hier aufhalte, beenden sie mal lieber ihre laufenden Missionen.")
			ENDDIALOG()
			-- now prevent any other node to come through
			state = -1
		end
-- Fraktion wird überprüft
		if(result==-1)then 
			SAY("Sie gehören leider nicht unserer Fraktion an. Bitte verschwenden sie nicht weiter meine Zeit. Es sei denn. sie würden gerne unserer Fraktion beitreten?")
			
			ANSWER("Genau deswegen bin ich hier. ich würde gerne ihrer Fraktion beitreten.",301)
			ANSWER("Nein. kein Interesse. Bis dann...",300)
		else
-- Alle Missionen erfüllt? wird geprüft
			CANDOEPICRUN(14,0)
			if(result==-2)then
				SAY("Es tut mir leid. aber die einzige Möglichkeit wie sie uns noch helfen könnten ist. einen Clan zu gründen. der uns unterstützt.")
				ENDDIALOG()
			else
-- Abfrage ob Skillevel stimmt und dann ob die Mission schon erfüllt wurde
				CANDOEPICRUN(14,0)
				if(result==-5)then
					SAY("Sie sind im Moment nicht erfahren genug. kommen sie später wieder. (nächste Mission Level 10)")
					ENDDIALOG()
				else
						CANDOEPICRUN(14,0)
				        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------2
						CANDOEPICRUN(14,1)
						if(result==-5)then
							SAY("Sie sind im Moment nicht erfahren genug. kommen sie später wieder. (nächste Mission Level 20)")
							ENDDIALOG()
						else
								CANDOEPICRUN(14,1)
				        		if(result==-4)then
-------------------------------------------------------------------------------------------------------------------3
						CANDOEPICRUN(14,2)
						if(result==-5)then
							SAY("Sie sind im Moment nicht erfahren genug. kommen sie später wieder. (nächste Mission Level 30)")
							ENDDIALOG()
						else
								CANDOEPICRUN(14,2)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------4
						CANDOEPICRUN(14,3)
						if(result==-5)then
							SAY("Sie sind im Moment nicht erfahren genug. kommen sie später wieder. (nächste Mission Level 35)")
							ENDDIALOG()
						else
								CANDOEPICRUN(14,3)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------5
						CANDOEPICRUN(14,4)
						if(result==-5)then
							SAY("Sie sind im Moment nicht erfahren genug. kommen sie später wieder. (nächste Mission Level 40)")
							ENDDIALOG()
						else
								CANDOEPICRUN(14,4)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------6
						CANDOEPICRUN(14,5)
				if(result==-5)then
					SAY("Sie sind im Moment nicht erfahren genug. kommen sie später wieder. (nächste Mission Level 45)")
					ENDDIALOG()
				else
								CANDOEPICRUN(14,5)
				        if(result==-4)then
						SAY("Es tut mir leid. aber die einzige Möglichkeit wie sie uns noch helfen könnten ist. einen Clan zu gründen. der uns unterstützt.")
						ENDDIALOG()
					else
--Mission 6 wird hier gestartet
		SAY("Ich denke sie sollten Constantine wieder besuchen. Die finale Phase ihre Projektes scheint anzulaufen und da sie dieses Projekt immerhin leiten…")

		ANSWER("Ich wünschte es wäre so. aber Constantine nimmt mir sehr viel der Arbeit ab. Da bleibt kaum noch etwas für mich übrig.",251)

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------6
					else
--Mission 5 wird hier gestartet
		SAY("Wir haben Neuigkeiten bezüglich der verräterischen Informationen. die sie uns über Grimm gegeben haben. Der Forscherrat hat sich die Daten gründlich durchgesehen und entschieden Grimm nun unter 24 Stunden Überwachung zu stellen und seinen Dienstgrad herabzustufen.")

		ANSWER("Das ist doch nicht fair. man sollte diesen Grimm verbannen. Ich wäre fast drauf gegangen wegen seiner Machenschaften. ",201)

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------5
					else
--Mission 4 wird hier gestartet
		SAY("Constantine hat mich darüber informiert. dass sie gerne mit ihnen sprechen würde. Es handelt sich anscheinend um eine Person die sie gut kennen.")

		ANSWER("Ich werde sie umgehend aufsuchen.",151)
		ANSWER("Im Moment geht es bei mir leider nicht...",152)
					end
				end	
-------------------------------------------------------------------------------------------------------------------4
					else
--Mission 3 wird hier gestartet
		SAY("Grimm möchte mit ihnen reden. Er klang recht aufgebracht und suchte sie schon überall. Jedoch mit uns wollte er noch nicht reden. Wissen sie vielleicht worum es geht?")

		ANSWER("Nein ich habe leider auch keinen blassen Schimmer.",101)
		ANSWER("Ich habe noch etwas dringendes zu erledigen...",103)


						
					end
				end	
-------------------------------------------------------------------------------------------------------------------3
							else
--Mission 2 wird hier gestartet
		SAY("Ihre Registrierung ist nun vollständig abgeschlossen. Hier ist ihr ID Cube.")
		
		ANSWER("Ein ID Cube? Wozu ist der gut?",51)


						
					end
				end	
-------------------------------------------------------------------------------------------------------------------2
					else
--Mission 1 wird hier gestartet
		SAY("Willkommen. es sind noch ein paar Formalitäten zu erledigen. sie werden also ihren ID Cube  erst später bekommen können. Offiziell gehören sie nun zu uns. den Fallen Angels. Mit der Mitgliedschaft bei uns haben sie automatisch auch einige neue Pflichten bekommen. Wir sind ja schliesslich nicht zum faulenzen hier heraus gekommen. Wenn sie sich so weit schon eingelebt haben. könnten sie sofort schon etwas tun.")
		
		ANSWER("Selbstverständlich. Ich bin ja auch genau deswegen hier. da ich hörte. hier gäbe es ein paar neue Aufgaben für mich.",11)

						
					end
				end			
			end
		end

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--FA 1
	NODE(11)
		SAY("Das hören wir hier gerne. Wie sie vielleicht wissen. ist jedes Mitglied der Fallen Angels ja auch gleichzeitig ein Forscher. Da wir aber ihre Qualitäten noch nicht genau analysiert haben. wird es wohl das Beste sein. wenn wir sie erst einmal anderweitig nutzbringend einsetzen. Sylvia Bennet hat einige wichtige Dokumente herausgegeben mit den neusten Ergebnissen bezüglich unserer Forschung. Diese sind aber noch nicht alle ausgeteilt worden. Wären sie dazu bereit. ein solches Dokument zu überbringen?")
		
		ANSWER("Nun gut. auch wenn ich ja eigentlich kein Botenjunge bin. Wohin soll ich diese denn bringen?",12)
		ANSWER("Ich glaube nicht. dass ich jetzt schon so eine Aufgabe übernehmen kann.",14)
	NODE(12)
		SAY("Es gibt einen speziellen Forschungstrakt hier. Dort wird unter anderem erforscht, wie die Radioaktivität und die Umwelt wieder Menschenfreundlicher gemacht werden kann. Eigentlich wird dort alles erforscht. was wichtig ist. Sie können sich auf dem Weg dorthin ja noch etwas umsehen. Alle Fallen Angel Installationen sind auf jeden Fall Sehenswert. ")
		
		ANSWER("Keine Sorge. ich werde das Paket sicher überbringen.",13)
	NODE(13)
		GIVEITEM(9307)
		SAY("Betrachten sie diesen Job als kleines Zubrot. Also, bringen sie dieses Paket einfach zu Grimm und grüssen sie ihn von mir.")
		STARTMISSION(3576)
		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()
	NODE(14)
		SAY("Dann gewöhnen sie sich erst einmal richtig ein und kommen dann einfach wieder. wenn sie sich danach fühlen.")
		ENDDIALOG()

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--FA 2
	NODE(51)
		SAY("Der ID Cube enthält ihre persönlichen Daten und zeichnet sie als Mitglied der Fallen Angels aus. Netürlich gibt es ausserdem noch eine digitale Kopie ihrer wichtigsten persönlichen Daten. Aber nun zu etwas wichtigerem. Nach Analyse ihrer persönlichen Daten. hat der Forscherrat beschlossen. ihnen ein autonomes Forschungsprojekt zuzuweisen.")
		
		ANSWER("Ein Forscherprojekt für mich? Vielen Dank. aber was genau bedeutet das und was ist meine Aufgabe dabei?",52)
		ANSWER("Ich glaube nicht. dass ich dieser Aufgabe schon gewachsen bin. Tut mir leid.",55)
	NODE(52)
		SAY("Sie bekommen ein Forschungsprojekt. dass sie selbständig erforschen sollen. Die Liste der verschiedenen wählbaren Projekte ist dabei allerdings begrenzt. da es natürlich mit unseren Zielen übereinstimmen soll. Immerhin stellen wir ihnen einen Mitarbeiter zur Verfügung. der ihnen so weit es geht zur Hand gehen wird.")
		
		ANSWER("Das hört sich sehr gut an. Aber wo soll ich denn anfangen?",53)
	NODE(53)
		SAY("Der Forscherrat hat Grimm in der Laborsektion die entsprechenden Anweisungen gegeben. Er wird ihnen sagen können. welcher Mitarbeiter ihnen zur Seite stehen wird. Viel Erfolg wünsche ich. Ihre Forschungsergebnisse werden entscheiden. welchen Rang sie hier bekleiden werden.")
		STARTMISSION(3577)
		SETNEXTDIALOGSTATE(4)
		ENDDIALOG()
	NODE(55)
		SAY("Ist schon in Ordnung. wenn sie sich der Aufgabe noch nicht gewachsen fühlen.")
		
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
		SAY("Ausserdem wurden weitere Forschungsgelder bereitgestellt. 35 000 Credits sind für ihr autonomes Forschungsprojekt bewilligt worden. Ihre Technik Assistentin hat mich ausserdem gebeten ihnen mitzuteilen. dass alle notwendigen Vorbereitungen getroffen worden sind und sie eigentlich loslegen können.")

		ANSWER("Gut. ich werde mich sofort darum kümmern.",203)
		ANSWER("Ich werde mich erst später darum kümmern können.",204)
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
		SAY("Ich wünschte ich hätte einmal in meinem Leben einen solchen Job. Viel Erfolg. Vielleicht sollten sie noch wissen. dass der Forscherrat einen Bonus in Form eines Geldpreises auf die Fertigstellung ihres Projektes veranschlagt hat.")
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
		SAY("Dann stören sie mich nicht weiter.")
		ENDDIALOG()

	NODE(301)
		GETFACTIONSYMPATHY(14)
		if(result>49)then
			SAY("Das hören wir gerne. Laut unserer Daten haben sie auch eine reine Weste. Nun gut. die Aufnahmegebühr beträgt 300 000 Credits.")
	
			ANSWER("Das ist aber eine ganz schöne Summe.",302)
		else
			SAY("Verschwinden sie lieber. mit Abschaum wie ihnen möchten wir nichts zu tun haben.")
			ENDDIALOG()
		end
	NODE(302)
		SAY("Wenn es ihnen nicht so viel Wert ist. dann wissen wir zumindest. dass sie nicht wirklich vorhaben. längere Zeit bei uns zu verbringen.")

		ANSWER("Nun gut. ich bezahle es.",303)
		ANSWER("Das könnt ihr gleich vergessen. soviel Geld will ich dafür nicht ausgeben.",300)
	NODE(303)
		TAKEMONEY(300000)
		if(result==0)then
			SAY("Beschämend. dass sie die finanziellen Mittel nicht aufbringen können. finden sie nicht?")
			ENDDIALOG()
		else
			CHANGEFACTION(14)
			SAY("Willkommen bei den Fallen Angels.")
			ENDDIALOG()
		end
end