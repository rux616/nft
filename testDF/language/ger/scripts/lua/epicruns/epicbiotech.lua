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

	CANDOEPICRUN(5,0)
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
			CANDOEPICRUN(5,0)
			if(result==-2)then
				SAY("Es tut mir leid, aber die einzige M�glichkeit wie sie uns noch helfen k�nnten ist, einen Clan zu gr�nden, der uns unterst�tzt.")
				ENDDIALOG()
			else
-- Abfrage ob Skillevel stimmt und dann ob die Mission schon erf�llt wurde
				CANDOEPICRUN(5,0)
				if(result==-5)then
					SAY("Sie sind im Moment nicht erfahren genug, kommen sie sp�ter wieder. (n�chste Mission Level 10)")
					ENDDIALOG()
				else
						CANDOEPICRUN(5,0)
				        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------2
						CANDOEPICRUN(5,1)
						if(result==-5)then
							SAY("Sie sind im Moment nicht erfahren genug, kommen sie sp�ter wieder. (n�chste Mission Level 20)")
							ENDDIALOG()
						else
								CANDOEPICRUN(5,1)
				        		if(result==-4)then
-------------------------------------------------------------------------------------------------------------------3
						CANDOEPICRUN(5,2)
						if(result==-5)then
							SAY("Sie sind im Moment nicht erfahren genug, kommen sie sp�ter wieder. (n�chste Mission Level 30)")
							ENDDIALOG()
						else
								CANDOEPICRUN(5,2)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------4
						CANDOEPICRUN(5,3)
						if(result==-5)then
							SAY("Sie sind im Moment nicht erfahren genug, kommen sie sp�ter wieder. (n�chste Mission Level 35)")
							ENDDIALOG()
						else
								CANDOEPICRUN(5,3)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------5
						CANDOEPICRUN(5,4)
						if(result==-5)then
							SAY("Sie sind im Moment nicht erfahren genug, kommen sie sp�ter wieder. (n�chste Mission Level 40)")
							ENDDIALOG()
						else
								CANDOEPICRUN(5,4)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------6
						CANDOEPICRUN(5,5)
				if(result==-5)then
					SAY("Sie sind im Moment nicht erfahren genug, kommen sie sp�ter wieder. (n�chste Mission Level 45)")
					ENDDIALOG()
				else
								CANDOEPICRUN(5,5)
				        if(result==-4)then
						SAY("Es tut mir leid, aber die einzige M�glichkeit wie sie uns noch helfen k�nnten ist, einen Clan zu gr�nden, der uns unterst�tzt.")
						ENDDIALOG()
					else
--Mission 6 wird hier gestartet
		SAY("Begeben sie sich zu McMillan. Er hatte sehr aufgeregt geklungen, als er nach ihnen fragte.")
		STARTMISSION(3557)
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------6
					else
--Mission 5 wird hier gestartet
		SAY("Es ist so einfach nicht mehr hinnehmbar. T�glich kommt eine neue Flut von Ger�chten in das Netz und versucht ganz BioTech zu �berschwemmen. Wir k�nnen aber nichts gegen so viele einzelne Hacker machen.")
		
		ANSWER("WEITER",201)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------5
					else
--Mission 4 wird hier gestartet
		SAY("Es gibt schlechte Neuigkeiten. Die Menge an belastendem Material im Netz hat dramatisch zugenommen und ganz im vertrauen, es hat schon einige Mitarbeiter erwischt. Es wird allerh�chste Zeit, dass diese Hetzkampagne aufh�rt. ")
		
		ANSWER("WEITER",151)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------4
					else
--Mission 3 wird hier gestartet
		SAY("BioTech h�tte ihnen gerne eine neue Aufgabe �bergeben. Es geht dabei um den Inhalt des Datacubes, den sie uns beschafft haben. Es gab dort ein paar Aufschlussreiche Informationen. Es wurden dort einige Decknamen von Personen genannt, die offensichtlich Informationen direkt von innerhalb BioTechs erhalten. ")
		
		ANSWER("Dann gibt es also jemanden, der all diese Geheimnisse ausplaudert? Ich dachte diese Ger�chte w�ren auch nur Ger�chte und nicht wahre Geschichten.",101)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------3
							else
--Mission 2 wird hier gestartet
		SAY("Ich habe schon von ihren ehrgeizigen Bem�hungen geh�rt, sich bei BioTech beliebt zu machen. Nun, bis jetzt scheint es ja zu funktionieren. Ich darf ihnen einen weiteren Auftrag �bergeben. Erinnern sie sich daran, dass Ger�chte �ber BioTech in Neocron kursiert sind?")
		
		ANSWER("WEITER",51)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------2
					else
--Mission 1 wird hier gestartet
		SAY("Ahh, ich wurde schon informiert, dass ein paar Runner neu zu uns gestossen sind. BioTech freut sich nat�rlich immer um eine wertvolle Erweiterung f�r die eigenen Reihen.")
		
		ANSWER("WEITER",11)
						
					end
				end			
			end
		end

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 1
	NODE(11)
		SAY("Normalerweise w�rde sie auch ein Director of Operations pers�nlich begr�ssen, aber dieser ist zur Zeit in einer wichtigen Besprechung mit dem derzeitigen Leiter von BioTech, Seymour Jordan. Sie verstehen sicherlich, dass man einen solchen Termin nicht leicht verschieben kann, oder?")
		
		ANSWER("Das ist nat�rlich Schade, aber ich verstehe es. Was f�r Aufgaben erwarten mich denn jetzt �berhaupt?",12)
	NODE(12)
		SAY("So haben wir das gerne, zielstrebig und auf das wichtige konzentriert. Als ein neues Mitglied von BioTech wurde ihnen ein Appartement bereits zur Verf�gung gestellt. Als Gegenleistung werden nur Loyalit�t und die Erf�llung einiger spezieller Auftr�ge erwartet. Aber dazu sp�ter mehr. Mit BioTech haben sie auf jeden Fall die richtige Wahl getroffen.")
		
		ANSWER("WEITER",13)
	NODE(13)
		SAY("Vielleicht erst einmal etwas zum Hintergrund von BioTech. BioTech hat seit der Gr�ndung im Jahre 2638 in vielen Bereichen mitgewirkt und hat sich nun fast g�nzlich auf die Herstellung von Implantaten aller Art konzentriert.")
		
		ANSWER("WEITER",14)
	NODE(14)
		SAY("Was nicht heisst, dass BioTech Raumschiffbau, Medikamente oder Waffen nicht auch genau so im Repertoire hat. Um genau zu sein, wurde das erste interstellare Raumschiff, die Avenger, damals auch von Biotech entwickelt.")
		
		ANSWER("Ja, davon habe ich auch schon geh�rt.",15)
	NODE(15)
		SAY("Zur�ck zum praktischen. BioTech h�tte gerne, dass sie sich mit einem Pressesprecher der CityAdmin treffen und ihm als Neuank�mmling hier bei BioTech ein paar Fragen beantworten. Das wird wohl auch nicht besonders lange dauern und wird ihnen auch einen kleinen finanziellen Bonus einbringen.")
		
		ANSWER("Das klingt gut. ich denke, dass bekomme ich auf die Reihe.",16)
		ANSWER("Ich f�rchte im Moment kann ich das nicht.",17)
	NODE(16)
		SAY("Sehr gut, sie k�nnen ihn im Plaza Distrikt 02 finden. Es wurde ein treffen in einem dortigen Restaurant arrangiert. Kommen sie danach doch noch einmal zur�ck, um mir einen kurzen Bericht zu geben.")
		STARTMISSION(3552)
		SETNEXTDIALOGSTATE(100)
		ENDDIALOG()
		
	NODE(17)
		SAY("Sie k�nnen es sich jederzeit noch anders �berlegen.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 2
	NODE(51)
		SAY("Nun, dieses Mal sind sie auch im Netz aufgetaucht und machen harte Anschuldigungen gegen zwei BioTech Direktoren. Es ist unbekannt, woher diese Ger�chte stammen und daher brauchen wir mehr Informationen.")
		
		ANSWER("Ich verstehe, dass soll also meine Aufgabe sein. Habe ich recht?",52)
		ANSWER("Wenn das auf einen Auftrag hinausl�uft, muss ich leider passen.",55)
	NODE(52)
		SAY("Ja, oder zumindest nicht alleine. Wir haben in ganz Neocron schon Runner mit dem Auftrag losgeschickt Nachforschungen anzustellen. Und genau diesen Auftrag bekommen sie auch. Solche Informationen sind nat�rlich nicht einfach zu finden, daher m�ssen ein paar eher ungew�hnliche Methoden angewandt werden.")
		
		ANSWER("WEITER",53)
	NODE(53)
		SAY("Es gibt eine Kontaktperson der Tsunamis, die zugestimmt hat, Auskunft zu erteilen. Allerdings ist es nicht sicher, ob die Tsunami �berhaupt etwas davon wissen. Falls sie etwas n�tzliches erfahren, so berichten sie es am besten McMillan. Er ist ein Director of Operations hier bei BioTech und wurde �ber alles informiert. ")
		
		ANSWER("Gut, so weit habe ich alles verstanden. Wo kann ich ihn genau treffen, diesen Tsunami Kontaktmann?",54)
	NODE(54)
		SAY("Gut, dass sie fragen. Er ist im Industrial Sektor 02 zu finden. Aber vorsichtig, diese Zonen da draussen sind gef�hrlich. Sein Name ist Hontoka.")
		STARTMISSION(3553)
		SETNEXTDIALOGSTATE(6)
		ENDDIALOG()		

	NODE(55)
		SAY("�berlegen sie es sich noch einmal. Sie k�nnen jederzeit wieder hierher kommen.")
		ENDDIALOG()
		
	NODE(56)
		SAY("Besuchen sie Hontoka im Industrial Sektor 02.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 3
	NODE(101)
		SAY("Diese Geschichten sind auch nicht wahr! Sie wurden stark ver�ndert, um so BioTech mehr Schaden zu k�nnen. ")
		
		ANSWER("WEITER",102)
	NODE(102)
		SAY("Allerdings haben wir keinen richtigen Anhaltspunkt gefunden, um jemanden spezielles dabei herausfiltern zu k�nnen. Sprich, wir wissen nicht wer all diese Informationen ausgibt. Besonders da es wahrscheinlich mehrere sind.")
		
		ANSWER("Und was kann man dagegen tun?",103)
		ANSWER("Ich kann diesen Auftrag jetzt nicht �bernehmen.",107)
	NODE(103)
		SAY("Es ist ein aufwendiger Prozess, aber es wird geplant verd�chtige Leute zu �berwachen und sie zu �berf�hren. Dazu brauchen wir ihre Hilfe. BioTech will, dass sie eine gewisse Andressa aufsuchen. Sie befindet sich hier im selben Sektor, da sie oft bei Chez Sypher essen geht. Sie arbeitet in unserer Forschungsabteilung und einige ihrer Aktivit�ten sind verd�chtig.")
		
		ANSWER("So weit kann ich folgen, aber was soll ich dann tun? Soll ich sie einfach fragen, ob sie all diese Informationen weiter gibt?",104)
	NODE(104)
		SAY("Nein, das w�re auch etwas tollpatschig. Sie sollen ihr ein Angebot machen, und wenn sie anbeisst, dann haben wir schon mal eine der Personen gefunden. Bieten sie ihr einfach 50000 Credits an um sie dazu zu bewegen etwas auszuplaudern. Sie m�ssen sie ja nicht bezahlen.")
		
		ANSWER("Was geschieht mit ihr, falls sie Informationen ausgegeben hat?",105)
	NODE(105)
		SAY("Ich denke mit all dem Wirbel, den es hier gegeben hat, wird man sie zur�ckstufen. Eine Entlassung w�rde nur noch mehr unn�tigen Schmutz aufwirbeln.")
		
		ANSWER("Gut, ich mache es.",106)
	NODE(106)
		SAY("Sie befindet sich hier im Sektor, sie geht gerne in den Pausen etwas essen.  Berichten sie alles, was sie von ihr erfahren k�nnen direkt an Mr McMillan.")
		STARTMISSION(3554)
		SETNEXTDIALOGSTATE(8)
		ENDDIALOG()
		
	NODE(107)
		SAY("Schade. Falls sie es sich anders �berlegen, melden sie sich einfach.")
		ENDDIALOG()
		
	NODE(108)
		SAY("Sie haben doch ihren Auftrag schon. Besuchen sie Andressa im Restaurant auf der R�ckseite des BioTech Geb�udes.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 4
	NODE(151)
		SAY("Der Besitzer der  Sendestation, ein gewisser Beckert, hat uns wie sie sagten Informationen gesendet. Wir haben nun eine Liste der Leute die diese Station gemietet hatten. Deswegen braucht BioTech sie f�r einen weiteren Auftrag, falls sie bereit sind.")
		
		ANSWER("Nat�rlich, diese ganze Sache geht mich genau so an, ich bin ja immerhin auch ein Mitglied.",152)
		ANSWER("Ich denke nicht, dass ich diese Aufgabe �bernehmen kann.",156)

	NODE(152)
		SAY("Gut zu h�ren. Die Liste hebt eine Person hervor, die im fraglichen Zeitraum Zugriff auf die Station hatte. Es handelt sich dabei um einen gewissen Grand, der sich in der Outzone 01 aufh�lt.")
		
		ANSWER("WEITER",153)
	NODE(153)
		SAY("Wir haben die CityAdmin kontaktiert und es hat sich herausgestellt, dass er ein Neocron weit bekannter Hacker ist. Er geh�rt keiner Fraktion an und f�r Geld w�rde er alles tun.")
		
		ANSWER("Das h�rt sich ja nicht besonders beruhigend an. Was hilft uns diese Information?",154)

	NODE(154)
		SAY("Sie m�ssen ihn dazu bringen, die wahren Drahtzieher dieser ganzen Geschichte zu entlarven! M�glicherweise k�nnen sie auch den Schaden, den er angerichtet hat, wieder r�ckg�ngig machen.")
		
		ANSWER("Geht klar, ich bin schon auf dem Weg. Was f�r Mittel soll ich anwenden?",155)
		ANSWER("Was ist, wenn ich jemanden umbringen muss?",158)
	NODE(155)
		SAY("Das liegt in ihrem Ermessensbereich. Nutzen sie alle Mittel, die sie zur Verf�gung haben. Danach k�nnen sie McMillan wieder in Kenntnis �ber ihre Fortschritte setzen.")
		STARTMISSION(3555)
		SETNEXTDIALOGSTATE(7)
		ENDDIALOG()
		

	NODE(156)
		SAY("Bedauerlich, gerade diese Aufgabe w�re von besonderer Wichtigkeit. Aber ich will sie nicht dr�ngen.")
		ENDDIALOG()
		
	NODE(157)
		SAY("Viel Gl�ck bei ihrem Auftrag. Suchen sie den Hacker in der Outzone 01.")
		ENDDIALOG()

	NODE(158)
		SAY("Sie d�rfen dabei keine Angestellten, Wachen oder offizielle Vertreter t�ten, sondern nur Runner.")
		
		ANSWER("Und ich kann dann irgendeinen Runner flatlinen?",159)
	NODE(159)
		SAY("Nur, wenn dieser sich auf deinem Niveau befinden oder dein Niveau �bersteigt. Ansonsten wird es nicht gewertet werden k�nnen. Viel Gl�ck bei ihrer Mission.")
		STARTMISSION(3555)
		SETNEXTDIALOGSTATE(7)
		
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 5
NODE(201)
		SAY("BioTech hat beschlossen, sich auf die Suche nach dem Hauptdrahtzieher zu machen. Wenn dieser dann gefunden ist, dann werden diese  Informationen bald damit aufh�ren ins Netz zu kommen. Ein Biest ohne seinen Kopf stirbt, so ist das schon immer gewesen.")
		
		ANSWER("Das �bernehme ich gerne f�r BioTech, aber wo sollen wir anfangen?",202)
		ANSWER("Wenn sie da an mich denken, muss ich sagen, ich kann dieses Mal nicht.",205)
	NODE(202)
		SAY("Dieser Hacker, Grand, scheint sich in dieser Beziehung hervorragend auszukennen. Sie sollten ihn noch einmal besuchen. Motivieren sie ihn dazu, herauszufinden, wer der Drahtzieher hinter dieser ganzen Geschichte ist.")
		
		ANSWER("Ich denke, das wird ein leichtes sein.",203)
	NODE(203)
		SAY("Sie k�nnen ihm auch eine kleine Entsch�digungssumme von 10000 Credits anbieten. Das k�nnte ihn zus�tzlich noch motivieren. Das ganze wird nat�rlich von dem Konzern gesponsort. Viel Gl�ck.")
		
		ANSWER("WEITER",204)
	NODE(204)
		SAY("Falls der Hacker erfolgreich ist, treffen sie sich noch mit McMillan. Er will mit ihnen dann das weitere vorgehen besprechen.")
		STARTMISSION(3556)
		SETNEXTDIALOGSTATE(6)
		ENDDIALOG()
		
	NODE(205)
		SAY("Aber es w�re sehr wichtig f�r BioTech gewesen. Nun, wie sie wollen. Sie sollten sich aber bewusst sein, dass sie BioTech jetzt ganz sch�n h�ngen lassen.")
		ENDDIALOG()
		
	NODE(206)
		SAY("Haben sie schon den Hacker in der Outzone 01 besucht?")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 6

----------------------------------------------------
----------------------------------------------------
--FRAKTIONSWECHSEL
	NODE(300)
		SAY("Dann st�ren sie mich nicht weiter.")
		ENDDIALOG()

	NODE(301)
		GETFACTIONSYMPATHY(5)
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
			CHANGEFACTION(5)
			SAY("Willkommen bei BioTech.")
			ENDDIALOG()
		end
end