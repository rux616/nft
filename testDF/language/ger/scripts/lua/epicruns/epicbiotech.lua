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
-- Prüfen ob bereits eine Mission läuft
		if (result==-6) then
			SAY("Bevor ich sie hier aufhalte, beenden sie mal lieber ihre laufenden Missionen.")
			ENDDIALOG()
			-- now prevent any other node to come through
			state = -1
		end
-- Fraktion wird überprüft
		if(result==-1)then 
			SAY("Sie gehören leider nicht unserer Fraktion an. Bitte verschwenden sie nicht weiter meine Zeit. Es sei denn, sie würden gerne unserer Fraktion beitreten?")
			
			ANSWER("Genau deswegen bin ich hier, ich würde gerne ihrer Fraktion beitreten.",301)
			ANSWER("Nein, kein Interesse. Bis dann...",300)
		else
-- Alle Missionen erfüllt? wird geprüft
			CANDOEPICRUN(5,0)
			if(result==-2)then
				SAY("Es tut mir leid, aber die einzige Möglichkeit wie sie uns noch helfen könnten ist, einen Clan zu gründen, der uns unterstützt.")
				ENDDIALOG()
			else
-- Abfrage ob Skillevel stimmt und dann ob die Mission schon erfüllt wurde
				CANDOEPICRUN(5,0)
				if(result==-5)then
					SAY("Sie sind im Moment nicht erfahren genug, kommen sie später wieder. (nächste Mission Level 10)")
					ENDDIALOG()
				else
						CANDOEPICRUN(5,0)
				        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------2
						CANDOEPICRUN(5,1)
						if(result==-5)then
							SAY("Sie sind im Moment nicht erfahren genug, kommen sie später wieder. (nächste Mission Level 20)")
							ENDDIALOG()
						else
								CANDOEPICRUN(5,1)
				        		if(result==-4)then
-------------------------------------------------------------------------------------------------------------------3
						CANDOEPICRUN(5,2)
						if(result==-5)then
							SAY("Sie sind im Moment nicht erfahren genug, kommen sie später wieder. (nächste Mission Level 30)")
							ENDDIALOG()
						else
								CANDOEPICRUN(5,2)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------4
						CANDOEPICRUN(5,3)
						if(result==-5)then
							SAY("Sie sind im Moment nicht erfahren genug, kommen sie später wieder. (nächste Mission Level 35)")
							ENDDIALOG()
						else
								CANDOEPICRUN(5,3)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------5
						CANDOEPICRUN(5,4)
						if(result==-5)then
							SAY("Sie sind im Moment nicht erfahren genug, kommen sie später wieder. (nächste Mission Level 40)")
							ENDDIALOG()
						else
								CANDOEPICRUN(5,4)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------6
						CANDOEPICRUN(5,5)
				if(result==-5)then
					SAY("Sie sind im Moment nicht erfahren genug, kommen sie später wieder. (nächste Mission Level 45)")
					ENDDIALOG()
				else
								CANDOEPICRUN(5,5)
				        if(result==-4)then
						SAY("Es tut mir leid, aber die einzige Möglichkeit wie sie uns noch helfen könnten ist, einen Clan zu gründen, der uns unterstützt.")
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
		SAY("Es ist so einfach nicht mehr hinnehmbar. Täglich kommt eine neue Flut von Gerüchten in das Netz und versucht ganz BioTech zu überschwemmen. Wir können aber nichts gegen so viele einzelne Hacker machen.")
		
		ANSWER("WEITER",201)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------5
					else
--Mission 4 wird hier gestartet
		SAY("Es gibt schlechte Neuigkeiten. Die Menge an belastendem Material im Netz hat dramatisch zugenommen und ganz im vertrauen, es hat schon einige Mitarbeiter erwischt. Es wird allerhöchste Zeit, dass diese Hetzkampagne aufhört. ")
		
		ANSWER("WEITER",151)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------4
					else
--Mission 3 wird hier gestartet
		SAY("BioTech hätte ihnen gerne eine neue Aufgabe übergeben. Es geht dabei um den Inhalt des Datacubes, den sie uns beschafft haben. Es gab dort ein paar Aufschlussreiche Informationen. Es wurden dort einige Decknamen von Personen genannt, die offensichtlich Informationen direkt von innerhalb BioTechs erhalten. ")
		
		ANSWER("Dann gibt es also jemanden, der all diese Geheimnisse ausplaudert? Ich dachte diese Gerüchte wären auch nur Gerüchte und nicht wahre Geschichten.",101)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------3
							else
--Mission 2 wird hier gestartet
		SAY("Ich habe schon von ihren ehrgeizigen Bemühungen gehört, sich bei BioTech beliebt zu machen. Nun, bis jetzt scheint es ja zu funktionieren. Ich darf ihnen einen weiteren Auftrag übergeben. Erinnern sie sich daran, dass Gerüchte über BioTech in Neocron kursiert sind?")
		
		ANSWER("WEITER",51)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------2
					else
--Mission 1 wird hier gestartet
		SAY("Ahh, ich wurde schon informiert, dass ein paar Runner neu zu uns gestossen sind. BioTech freut sich natürlich immer um eine wertvolle Erweiterung für die eigenen Reihen.")
		
		ANSWER("WEITER",11)
						
					end
				end			
			end
		end

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 1
	NODE(11)
		SAY("Normalerweise würde sie auch ein Director of Operations persönlich begrüssen, aber dieser ist zur Zeit in einer wichtigen Besprechung mit dem derzeitigen Leiter von BioTech, Seymour Jordan. Sie verstehen sicherlich, dass man einen solchen Termin nicht leicht verschieben kann, oder?")
		
		ANSWER("Das ist natürlich Schade, aber ich verstehe es. Was für Aufgaben erwarten mich denn jetzt überhaupt?",12)
	NODE(12)
		SAY("So haben wir das gerne, zielstrebig und auf das wichtige konzentriert. Als ein neues Mitglied von BioTech wurde ihnen ein Appartement bereits zur Verfügung gestellt. Als Gegenleistung werden nur Loyalität und die Erfüllung einiger spezieller Aufträge erwartet. Aber dazu später mehr. Mit BioTech haben sie auf jeden Fall die richtige Wahl getroffen.")
		
		ANSWER("WEITER",13)
	NODE(13)
		SAY("Vielleicht erst einmal etwas zum Hintergrund von BioTech. BioTech hat seit der Gründung im Jahre 2638 in vielen Bereichen mitgewirkt und hat sich nun fast gänzlich auf die Herstellung von Implantaten aller Art konzentriert.")
		
		ANSWER("WEITER",14)
	NODE(14)
		SAY("Was nicht heisst, dass BioTech Raumschiffbau, Medikamente oder Waffen nicht auch genau so im Repertoire hat. Um genau zu sein, wurde das erste interstellare Raumschiff, die Avenger, damals auch von Biotech entwickelt.")
		
		ANSWER("Ja, davon habe ich auch schon gehört.",15)
	NODE(15)
		SAY("Zurück zum praktischen. BioTech hätte gerne, dass sie sich mit einem Pressesprecher der CityAdmin treffen und ihm als Neuankömmling hier bei BioTech ein paar Fragen beantworten. Das wird wohl auch nicht besonders lange dauern und wird ihnen auch einen kleinen finanziellen Bonus einbringen.")
		
		ANSWER("Das klingt gut. ich denke, dass bekomme ich auf die Reihe.",16)
		ANSWER("Ich fürchte im Moment kann ich das nicht.",17)
	NODE(16)
		SAY("Sehr gut, sie können ihn im Plaza Distrikt 02 finden. Es wurde ein treffen in einem dortigen Restaurant arrangiert. Kommen sie danach doch noch einmal zurück, um mir einen kurzen Bericht zu geben.")
		STARTMISSION(3552)
		SETNEXTDIALOGSTATE(100)
		ENDDIALOG()
		
	NODE(17)
		SAY("Sie können es sich jederzeit noch anders überlegen.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 2
	NODE(51)
		SAY("Nun, dieses Mal sind sie auch im Netz aufgetaucht und machen harte Anschuldigungen gegen zwei BioTech Direktoren. Es ist unbekannt, woher diese Gerüchte stammen und daher brauchen wir mehr Informationen.")
		
		ANSWER("Ich verstehe, dass soll also meine Aufgabe sein. Habe ich recht?",52)
		ANSWER("Wenn das auf einen Auftrag hinausläuft, muss ich leider passen.",55)
	NODE(52)
		SAY("Ja, oder zumindest nicht alleine. Wir haben in ganz Neocron schon Runner mit dem Auftrag losgeschickt Nachforschungen anzustellen. Und genau diesen Auftrag bekommen sie auch. Solche Informationen sind natürlich nicht einfach zu finden, daher müssen ein paar eher ungewöhnliche Methoden angewandt werden.")
		
		ANSWER("WEITER",53)
	NODE(53)
		SAY("Es gibt eine Kontaktperson der Tsunamis, die zugestimmt hat, Auskunft zu erteilen. Allerdings ist es nicht sicher, ob die Tsunami überhaupt etwas davon wissen. Falls sie etwas nützliches erfahren, so berichten sie es am besten McMillan. Er ist ein Director of Operations hier bei BioTech und wurde über alles informiert. ")
		
		ANSWER("Gut, so weit habe ich alles verstanden. Wo kann ich ihn genau treffen, diesen Tsunami Kontaktmann?",54)
	NODE(54)
		SAY("Gut, dass sie fragen. Er ist im Industrial Sektor 02 zu finden. Aber vorsichtig, diese Zonen da draussen sind gefährlich. Sein Name ist Hontoka.")
		STARTMISSION(3553)
		SETNEXTDIALOGSTATE(6)
		ENDDIALOG()		

	NODE(55)
		SAY("Überlegen sie es sich noch einmal. Sie können jederzeit wieder hierher kommen.")
		ENDDIALOG()
		
	NODE(56)
		SAY("Besuchen sie Hontoka im Industrial Sektor 02.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 3
	NODE(101)
		SAY("Diese Geschichten sind auch nicht wahr! Sie wurden stark verändert, um so BioTech mehr Schaden zu können. ")
		
		ANSWER("WEITER",102)
	NODE(102)
		SAY("Allerdings haben wir keinen richtigen Anhaltspunkt gefunden, um jemanden spezielles dabei herausfiltern zu können. Sprich, wir wissen nicht wer all diese Informationen ausgibt. Besonders da es wahrscheinlich mehrere sind.")
		
		ANSWER("Und was kann man dagegen tun?",103)
		ANSWER("Ich kann diesen Auftrag jetzt nicht übernehmen.",107)
	NODE(103)
		SAY("Es ist ein aufwendiger Prozess, aber es wird geplant verdächtige Leute zu überwachen und sie zu überführen. Dazu brauchen wir ihre Hilfe. BioTech will, dass sie eine gewisse Andressa aufsuchen. Sie befindet sich hier im selben Sektor, da sie oft bei Chez Sypher essen geht. Sie arbeitet in unserer Forschungsabteilung und einige ihrer Aktivitäten sind verdächtig.")
		
		ANSWER("So weit kann ich folgen, aber was soll ich dann tun? Soll ich sie einfach fragen, ob sie all diese Informationen weiter gibt?",104)
	NODE(104)
		SAY("Nein, das wäre auch etwas tollpatschig. Sie sollen ihr ein Angebot machen, und wenn sie anbeisst, dann haben wir schon mal eine der Personen gefunden. Bieten sie ihr einfach 50000 Credits an um sie dazu zu bewegen etwas auszuplaudern. Sie müssen sie ja nicht bezahlen.")
		
		ANSWER("Was geschieht mit ihr, falls sie Informationen ausgegeben hat?",105)
	NODE(105)
		SAY("Ich denke mit all dem Wirbel, den es hier gegeben hat, wird man sie zurückstufen. Eine Entlassung würde nur noch mehr unnötigen Schmutz aufwirbeln.")
		
		ANSWER("Gut, ich mache es.",106)
	NODE(106)
		SAY("Sie befindet sich hier im Sektor, sie geht gerne in den Pausen etwas essen.  Berichten sie alles, was sie von ihr erfahren können direkt an Mr McMillan.")
		STARTMISSION(3554)
		SETNEXTDIALOGSTATE(8)
		ENDDIALOG()
		
	NODE(107)
		SAY("Schade. Falls sie es sich anders überlegen, melden sie sich einfach.")
		ENDDIALOG()
		
	NODE(108)
		SAY("Sie haben doch ihren Auftrag schon. Besuchen sie Andressa im Restaurant auf der Rückseite des BioTech Gebäudes.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 4
	NODE(151)
		SAY("Der Besitzer der  Sendestation, ein gewisser Beckert, hat uns wie sie sagten Informationen gesendet. Wir haben nun eine Liste der Leute die diese Station gemietet hatten. Deswegen braucht BioTech sie für einen weiteren Auftrag, falls sie bereit sind.")
		
		ANSWER("Natürlich, diese ganze Sache geht mich genau so an, ich bin ja immerhin auch ein Mitglied.",152)
		ANSWER("Ich denke nicht, dass ich diese Aufgabe übernehmen kann.",156)

	NODE(152)
		SAY("Gut zu hören. Die Liste hebt eine Person hervor, die im fraglichen Zeitraum Zugriff auf die Station hatte. Es handelt sich dabei um einen gewissen Grand, der sich in der Outzone 01 aufhält.")
		
		ANSWER("WEITER",153)
	NODE(153)
		SAY("Wir haben die CityAdmin kontaktiert und es hat sich herausgestellt, dass er ein Neocron weit bekannter Hacker ist. Er gehört keiner Fraktion an und für Geld würde er alles tun.")
		
		ANSWER("Das hört sich ja nicht besonders beruhigend an. Was hilft uns diese Information?",154)

	NODE(154)
		SAY("Sie müssen ihn dazu bringen, die wahren Drahtzieher dieser ganzen Geschichte zu entlarven! Möglicherweise können sie auch den Schaden, den er angerichtet hat, wieder rückgängig machen.")
		
		ANSWER("Geht klar, ich bin schon auf dem Weg. Was für Mittel soll ich anwenden?",155)
		ANSWER("Was ist, wenn ich jemanden umbringen muss?",158)
	NODE(155)
		SAY("Das liegt in ihrem Ermessensbereich. Nutzen sie alle Mittel, die sie zur Verfügung haben. Danach können sie McMillan wieder in Kenntnis über ihre Fortschritte setzen.")
		STARTMISSION(3555)
		SETNEXTDIALOGSTATE(7)
		ENDDIALOG()
		

	NODE(156)
		SAY("Bedauerlich, gerade diese Aufgabe wäre von besonderer Wichtigkeit. Aber ich will sie nicht drängen.")
		ENDDIALOG()
		
	NODE(157)
		SAY("Viel Glück bei ihrem Auftrag. Suchen sie den Hacker in der Outzone 01.")
		ENDDIALOG()

	NODE(158)
		SAY("Sie dürfen dabei keine Angestellten, Wachen oder offizielle Vertreter töten, sondern nur Runner.")
		
		ANSWER("Und ich kann dann irgendeinen Runner flatlinen?",159)
	NODE(159)
		SAY("Nur, wenn dieser sich auf deinem Niveau befinden oder dein Niveau übersteigt. Ansonsten wird es nicht gewertet werden können. Viel Glück bei ihrer Mission.")
		STARTMISSION(3555)
		SETNEXTDIALOGSTATE(7)
		
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 5
NODE(201)
		SAY("BioTech hat beschlossen, sich auf die Suche nach dem Hauptdrahtzieher zu machen. Wenn dieser dann gefunden ist, dann werden diese  Informationen bald damit aufhören ins Netz zu kommen. Ein Biest ohne seinen Kopf stirbt, so ist das schon immer gewesen.")
		
		ANSWER("Das übernehme ich gerne für BioTech, aber wo sollen wir anfangen?",202)
		ANSWER("Wenn sie da an mich denken, muss ich sagen, ich kann dieses Mal nicht.",205)
	NODE(202)
		SAY("Dieser Hacker, Grand, scheint sich in dieser Beziehung hervorragend auszukennen. Sie sollten ihn noch einmal besuchen. Motivieren sie ihn dazu, herauszufinden, wer der Drahtzieher hinter dieser ganzen Geschichte ist.")
		
		ANSWER("Ich denke, das wird ein leichtes sein.",203)
	NODE(203)
		SAY("Sie können ihm auch eine kleine Entschädigungssumme von 10000 Credits anbieten. Das könnte ihn zusätzlich noch motivieren. Das ganze wird natürlich von dem Konzern gesponsort. Viel Glück.")
		
		ANSWER("WEITER",204)
	NODE(204)
		SAY("Falls der Hacker erfolgreich ist, treffen sie sich noch mit McMillan. Er will mit ihnen dann das weitere vorgehen besprechen.")
		STARTMISSION(3556)
		SETNEXTDIALOGSTATE(6)
		ENDDIALOG()
		
	NODE(205)
		SAY("Aber es wäre sehr wichtig für BioTech gewesen. Nun, wie sie wollen. Sie sollten sich aber bewusst sein, dass sie BioTech jetzt ganz schön hängen lassen.")
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
		SAY("Dann stören sie mich nicht weiter.")
		ENDDIALOG()

	NODE(301)
		GETFACTIONSYMPATHY(5)
		if(result>49)then
			SAY("Das hören wir gerne. Laut unserer Daten haben sie auch eine reine Weste. Nun gut, die Aufnahmegebühr beträgt 300 000 Credits.")
	
			ANSWER("Das ist aber eine ganz schöne Summe.",302)
		else
			SAY("Verschwinden sie lieber, mit Abschaum wie ihnen möchten wir nichts zu tun haben.")
			ENDDIALOG()
		end
	NODE(302)
		SAY("Wenn es ihnen nicht so viel Wert ist, dann wissen wir zumindest, dass sie nicht wirklich vorhaben, längere Zeit bei uns zu verbringen.")

		ANSWER("Nun gut, ich bezahle es.",303)
		ANSWER("Das könnt ihr gleich vergessen, soviel Geld will ich dafür nicht ausgeben.",300)
	NODE(303)
		TAKEMONEY(300000)
		if(result==0)then
			SAY("Beschämend, dass sie die finanziellen Mittel nicht aufbringen können, finden sie nicht?")
			ENDDIALOG()
		else
			CHANGEFACTION(5)
			SAY("Willkommen bei BioTech.")
			ENDDIALOG()
		end
end