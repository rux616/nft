--new
--Tsunami

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

	CANDOEPICRUN(11,0)
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
			CANDOEPICRUN(11,0)
			if(result==-2)then
				SAY("Es tut mir leid, aber die einzige Möglichkeit wie sie uns noch helfen könnten ist, einen Clan zu gründen, der uns unterstützt.")
				ENDDIALOG()
			else
-- Abfrage ob Skillevel stimmt und dann ob die Mission schon erfüllt wurde
				CANDOEPICRUN(11,0)
				if(result==-5)then
					SAY("Sie sind im Moment nicht erfahren genug, kommen sie später wieder. (nächste Mission Level 10)")
					ENDDIALOG()
				else
						CANDOEPICRUN(11,0)
				        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------2
						CANDOEPICRUN(11,1)
						if(result==-5)then
							SAY("Sie sind im Moment nicht erfahren genug, kommen sie später wieder. (nächste Mission Level 20)")
							ENDDIALOG()
						else
								CANDOEPICRUN(11,1)
				        		if(result==-4)then
-------------------------------------------------------------------------------------------------------------------3
						CANDOEPICRUN(11,2)
						if(result==-5)then
							SAY("Sie sind im Moment nicht erfahren genug, kommen sie später wieder. (nächste Mission Level 30)")
							ENDDIALOG()
						else
								CANDOEPICRUN(11,2)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------4
						CANDOEPICRUN(11,3)
						if(result==-5)then
							SAY("Sie sind im Moment nicht erfahren genug, kommen sie später wieder. (nächste Mission Level 35)")
							ENDDIALOG()
						else
								CANDOEPICRUN(11,3)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------5
						CANDOEPICRUN(11,4)
						if(result==-5)then
							SAY("Sie sind im Moment nicht erfahren genug, kommen sie später wieder. (nächste Mission Level 40)")
							ENDDIALOG()
						else
								CANDOEPICRUN(11,4)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------6
						CANDOEPICRUN(11,5)
				if(result==-5)then
					SAY("Sie sind im Moment nicht erfahren genug, kommen sie später wieder. (nächste Mission Level 45)")
					ENDDIALOG()
				else
								CANDOEPICRUN(11,5)
				        if(result==-4)then
						SAY("Es tut mir leid, aber die einzige Möglichkeit wie sie uns noch helfen könnten ist, einen Clan zu gründen, der uns unterstützt.")
						ENDDIALOG()
					else
--Mission 6 wird hier gestartet
		SAY("Gut, dass du da bist, Marcel scheint nicht mehr ganz bei Sinnen zu sein. Er will sich gegen das Auge auflehnen, nur weil dieser die Fallen Angels nicht angreifen will. Er möchte die Mercs spalten aber er sieht nicht, dass dies unser Ende bedeuten könnte.")
		
		ANSWER("Ja, ich habe davon gehört.",251)

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------6
					else
--Mission 5 wird hier gestartet
		SAY("Dieses Mal wird es ernst, Soldat. Es scheint so, als ob all unsere alten Feinde aus ihren Löchern gekrochen sind und nun versuchen uns Ärger zu machen. So können wir das aber natürlich nicht einfach hinnehmen, es muss etwas unternommen werden.")
		
		ANSWER("Wer uns bedroht, sollte mit starker Gegenwehr rechnen. Ich bin dabei.",201)
		ANSWER("Ich muss davor noch etwas anderes erledigen.",204)

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------5
					else
--Mission 4 wird hier gestartet
		SAY("Ich sehe, du hast dich schon bis zum White Ribbon hochgearbeitet. Ich habe schon Stimmen gehört, die sagen, Marcel hätte es dir zu leicht gemacht, aber ich finde, du hast es verdient.")
		
		ANSWER("Ich fühle mich bereit für etwas Frühsport. Gibt’s da was für mich zu tun?",151)
		ANSWER("Tut mir leid, ich habe noch ein paar dringende Dinge zu erledigen.",153)
					end
				end	
-------------------------------------------------------------------------------------------------------------------4
					else
--Mission 3 wird hier gestartet
		SAY("Ahh, ein neuer Rookie. Es gibt etwas zu tun für dich. Ein Nein akzeptiere ich als Antwort nicht. Du weißt, was nun für dich auf dem Plan steht?")
		
		ANSWER("Ich nehme an, ich werde nun meinen White Ribbon nun bekommen.",101)


						
					end
				end	
-------------------------------------------------------------------------------------------------------------------3
							else
--Mission 2 wird hier gestartet
		SAY("Was willst du hier, Zivilist?")
		
		ANSWER("Ich habe mich entschieden den CityMercs beizutreten. Ich habe hart trainiert, damit ich die Rookie Prüfung ablegen kann.",51)


						
					end
				end	
-------------------------------------------------------------------------------------------------------------------2
					else
--Mission 1 wird hier gestartet
		SAY("Willkommen bei den City Mercs, Rekrut. Ich hoffe du hast all deine Erinnerungen an dein Leben über Bord geworfen, denn hier wirst du nur Leute sehen, die mit ganzer Seele dabei sind. Der alte Cajun wird dir das bestätigen können. Er ist hier der Boss, aber alle nennen ihn nur das Auge.")
		
		ANSWER("Verstanden. Wann kann ich hier anfangen?",11)
		ANSWER("Ich bin noch nicht dafür bereit.",15)
						
					end
				end			
			end
		end

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--CityMerc 1
	NODE(11)
		SAY("Nun mal nicht so hastig. Bis du einen Red Ribbon tragen darfst, wird noch etwas Zeit vergehen. Es wird sich herausstellen, ob du überhaupt das Zeug dazu hast. Heutzutage melden sich hier eh fast nur Weicheier und Städter an. Die sind dann oft schon nach der ersten Woche am Ende.")
		
		ANSWER("Ist das Leben hier denn wirklich so hart?",12)
	NODE(12)
		SAY("Keine Angst, wenn du die ersten Wochen erst einmal überstanden hast, wird es dir leichter fallen. Und wer weiss, vielleicht überlebst du ja so lange, dass du sogar einen Black Ribbon bekommst.")
		
		ANSWER("Sorry, dass beruhigt mich aber jetzt überhaupt nicht.",13)
	NODE(13)
		SAY("Na gut. Fangen wir langsam an. Sieh dich hier ein bischen um und denk drüber nach. Über dich und ob deine Zukunft mit uns liegen soll. Oh, bevor ich es vergesse, kannst du nicht ein kleines Päckchen mit Medizin Marcel bringen? Die Jungs von seinem Platoon  wurden beim letzten Mal etwas verletzt. Du kannst ihn in Sektor 2 im HQ in einer der diversen Lagerhallen finden. Frag mich nicht warum, aber er scheint es dort unten zu mögen.")
		
		ANSWER("Gut, wenn es sein muss. Was ist denn, wenn ich meine Entscheidung dann getroffen habe?",14)
	NODE(14)
--PAKET MIT MEDIZIN
		GIVEITEM(9452)
		SAY("Du kannst mir dann Bescheid sagen. In der Zukunft kannst du dich dann an jeden unserer Recruitment Officers wenden um Neuigkeiten zu erfahren. Bei uns spricht sich alles ziemlich schnell herum. ")

		STARTMISSION(3608)
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()
	NODE(15)

		SAY("Ist deine Entscheidung. Komm wieder, wenn dus ernst meinst.")
		
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--CityMerc 2
	NODE(51)
		SAY("So? Ich hoffe du hast dich gut im Umgang mit Waffen geübt, denn die Rookie Prüfung kannst du auf keinem anderen Weg ablegen. Sicher bist du schon gespannt, was von dir verlangt wird und ich will dich gar nicht lange auf die Folter spannen. ")
		
		ANSWER("Dann mal los. Ich bin bereit.",52)
		ANSWER("Ich trainiere lieber noch etwas.",53)
	NODE(52)
		SAY("Für die Rookie Prüfung musst du gegen drei Personen kämpfen, die wir auswählen. Es hat einige Zeit gedauert, aber wir glauben, ein paar passende Gegner gefunden zu haben. Der erste Gegner ist Frederick, er ist auch ein Bewerber, wie du es bist. Um weiterzukommen musst du ihn oder einen der anderen besiegen. Dann gibt es noch Claudia und Erik, such dir einen der drei aus. Wenn du einen der drei besiegst, bist du offiziell ein CityMerc Rookie. Komm wieder zu mir, wenn du die Prüfung bestanden hast.")
		STARTMISSION(3609)
		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()
	NODE(53)
		SAY("Entscheide dich besser vorher, was du willst.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--CityMerc 3
	NODE(101)
		SAY("Du stellst dir das so leicht vor, was? Lass dir eins gesagt sein, einen White Ribbon zu bekommen ist eine hohe Auszeichnung. Als Rookie gehörst du zwar schon zu den CityMercs, aber mit dem White Ribbon gehörst du erst wirklich zur Familie. Es sollte dir einiges Wert sein.")
		
		ANSWER("Nun gut, ich werde tun was ich kann. Wo soll ich anfangen?",102)
		ANSWER("Ich glaube ich trainiere noch etwas, ich fühle mich noch nicht bereit für einen solchen Schritt.",105)
	NODE(102)
		SAY("Das lobe ich mir. Am besten du besuchst als erstes Mitchell, er dürfte kurz vor der Military Base in den Wastelands zu finden sein. Er beobachtet die Bewegungen der Warbots und warnt die Military Base wenn es Gefahr gibt. Er ist eigentlich schon ein Black Ribbon, aber er zieht es vor, dort draussen in der Einöde zu sein.")

		ANSWER("Aber es hiess, es gäbe drei Missionen, bei denen ich als Beobachter dabei sein sollte. Was ist mit den anderen.",103)
		
	NODE(103)
		SAY("Tut mir leid, aber ich habe nur diese eine. Aber ich werde Marcel mal fragen, ob er dir etwas organisieren könnte. Er scheint dich eh schon als sein Eigentum zu betrachten. Er weiss sicher noch ein paar Möglichkeiten, aber besuch Mitchell zuerst, ich habe ihm nämlich schon von deinem Besuch berichtet.")
		STARTMISSION(3610)
		SETNEXTDIALOGSTATE(4)
		ENDDIALOG()
	NODE(104)
		SAY("Du kannst Mitchell aussen vor den Toren der Military Base finden. Danach hat Marcel im Sektor 2 der Military Base vielleicht noch etwas für dich.")
		ENDDIALOG()
	NODE(105)
		SAY("Das lobe ich mir. Komm wieder, wenn du dich der Situation gewachsen fühlst.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--CityMerc 4
	NODE(151)
		SAY("Ich denke ja. Marcel hat einen Auftrag an Land gezogen. Von Tangent so viel ich weiss. Am besten du machst dich auf den Weg zu Gerome. Er hat sein Lager vor dem Tech Haven Eingang aufgeschlagen. Er sollte dir eigentlich mehr erzählen können. Ich benachrichtige die Black Ribbons, dass du an dem Fall dran bist.")

		STARTMISSION(3611)		
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(152)
		SAY("Na, wenn du den Fall übernehmen willst, dann musst du dich auch darum kümmern. Gerome ist vor einem der Eingänge nach Tech Haven zu finden.")
		ENDDIALOG()
	NODE(153)
		SAY("Es ist deine Entscheidung, aber denk dran, du bist nun ein CityMerc und du trägst als solcher auch Verantwortung.")

		ENDDIALOG()

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--CityMerc 5
	NODE(201)
		SAY("Sehr gut, dass hört man gerne. Das Problem ist nur, dass sie eine Art Guerilla Taktik anwenden. Jedes Mal, wenn wir unsere Kräfte zusammenziehen um ihnen einen vernichtenden Schlag zu versetzen, dann lösen sich ihre Verbände auf. Deshalb werden wir nun ebenso vorgehen, auch wenn sie das wahrscheinlich erwarten.")

		ANSWER("Das heisst kleine Gruppen von uns attackieren sie an ihren empfindlichen Stellen.",202)
		
	NODE(202)
		SAY("Mir scheint du hast deine Hausaufgaben gemacht. Ja, aber wir werden nur einzelne Soldaten losschicken um sie zu treffen, wo es weh tut. Deine Aufgabe wird sein je zwei Kämpfer von Twilight Guardian und den Black Dragon zu eliminieren. Das wird uns die nötige Zeit geben, einen ordentlichen Gegenschlag zu planen. Dabei wirst du natürlich nicht als einziger losgeschickt.")

		ANSWER("Wird erledigt, muss ich sonst noch auf etwas achten?",3)
	NODE(203)
		SAY("Ja, achte darauf  Krieger zu eliminieren, die ungefähr deiner Stärke entsprechen. Die zu starken Gegner solltest du gar nicht erst beachten und zu schwache Gegner sind deiner nicht würdig. Wenn du das geschafft hast, wollte Marcel dich noch einladen. Viel Glück, wir zählen auf dich.")

		STARTMISSION(3612)
		SETNEXTDIALOGSTATE(5)
		ENDDIALOG()
	NODE(204)
		SAY("Wenns denn sein muss. Aber beeil dich, unsere Feinde werden sich auch keine Pause gönnen.")
		ENDDIALOG()
	NODE(205)
		SAY("Nicht vergessen, zwei Runner von jeweils Twilight Guardian und den Black Dragon sind zu eliminieren. Danach solltest du mit Marcel sprechen.")

		ENDDIALOG()		
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--CITYMERC 6
	NODE(251)
		SAY("Du könntest uns, den Anhängern von Cajun, helfen, diese ganze Situation zu bereinigen. Es ist weithin bekannt, dass Marcel mit großem Interesse deinen Werdegang verfolgt hat. Es liegt ihm sehr viel an dir und von uns lässt er keinen in seine Nähe.")

		ANSWER("Was genau wird von mir verlangt?",252)
		ANSWER("Ich kann daran im Moment auch nichts ändern, sorry.",253)
	NODE(252)
		SAY("Es klingt hart, aber du sollst ihn zum Zweikampf herausfordern. Es ist eine Tradition, die er nicht abschlagen wird. Der Gewinner wird sodann Führer des Platoons. Eljena, eine Red Ribbon aus Marcels Platoon hat zugestimmt uns zu helfen. Sie hat noch wichtige Informationen für dich. Wenn du erfolgreich warst, werde ich dir sagen können, wie es weitergeht. Viel Glück, falls du versagst, könnte das tragische Folgen haben.")
		STARTMISSION(3613)
		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()
	NODE(253)
		SAY("Dies ist nicht der richtige Zeitpunkt, um uns den Rücken zuzuwenden. Überlege es dir noch einmal.")
		ENDDIALOG()
----------------------------------------------------
----------------------------------------------------
--FRAKTIONSWECHSEL
	NODE(300)
		SAY("Dann stören sie mich nicht weiter.")
		ENDDIALOG()

	NODE(301)
		GETFACTIONSYMPATHY(11)
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
			CHANGEFACTION(11)
			SAY("Willkommen bei den CityMercs.")
			ENDDIALOG()
		end
end