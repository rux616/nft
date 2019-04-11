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

	CANDOEPICRUN(6,0)
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
			CANDOEPICRUN(6,0)
			if(result==-2)then
				SAY("Es tut mir leid, aber die einzige Möglichkeit wie sie uns noch helfen könnten ist, einen Clan zu gründen, der uns unterstützt.")
				ENDDIALOG()
			else
-- Abfrage ob Skillevel stimmt und dann ob die Mission schon erfüllt wurde
				CANDOEPICRUN(6,0)
				if(result==-5)then
					SAY("Sie sind im Moment nicht erfahren genug, kommen sie später wieder. (nächste Mission Level 10)")
					ENDDIALOG()
				else
						CANDOEPICRUN(6,0)
				        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------2
						CANDOEPICRUN(6,1)
						if(result==-5)then
							SAY("Sie sind im Moment nicht erfahren genug, kommen sie später wieder. (nächste Mission Level 20)")
							ENDDIALOG()
						else
								CANDOEPICRUN(6,1)
				        		if(result==-4)then
-------------------------------------------------------------------------------------------------------------------3
						CANDOEPICRUN(6,2)
						if(result==-5)then
							SAY("Sie sind im Moment nicht erfahren genug, kommen sie später wieder. (nächste Mission Level 30)")
							ENDDIALOG()
						else
								CANDOEPICRUN(6,2)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------4
						CANDOEPICRUN(6,3)
						if(result==-5)then
							SAY("Sie sind im Moment nicht erfahren genug, kommen sie später wieder. (nächste Mission Level 35)")
							ENDDIALOG()
						else
								CANDOEPICRUN(6,3)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------5
						CANDOEPICRUN(6,4)
						if(result==-5)then
							SAY("Sie sind im Moment nicht erfahren genug, kommen sie später wieder. (nächste Mission Level 40)")
							ENDDIALOG()
						else
								CANDOEPICRUN(6,4)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------6
						CANDOEPICRUN(6,5)
				if(result==-5)then
					SAY("Sie sind im Moment nicht erfahren genug, kommen sie später wieder. (nächste Mission Level 45)")
					ENDDIALOG()
				else
								CANDOEPICRUN(6,5)
				        if(result==-4)then
						SAY("Es tut mir leid, aber die einzige Möglichkeit wie sie uns noch helfen könnten ist, einen Clan zu gründen, der uns unterstützt.")
						ENDDIALOG()
					else
--Mission 6 wird hier gestartet
		SAY("Brandon George ist recht nervös, offensichtlich möchte er sich so schnell wie möglich mit ihnen treffen. Auch wenn ich nicht direkt weiss, worum es geht.")
		STARTMISSION(3614)
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------6
					else
--Mission 5 wird hier gestartet
		SAY("Ich habe eine Nachricht für sie von Michail aus Sektor 13, er hätte gerne persönlich mit ihnen gesprochen. Sie wissen ja wahrscheinlich wo sie ihn finden können nicht wahr?")

		STARTMISSION(3592)
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()		
					end
				end	
-------------------------------------------------------------------------------------------------------------------5
					else
--Mission 4 wird hier gestartet
		SAY("Brandon George hat mich gebeten ihnen mitzuteilen, dass er dringend ihre Hilfe benötigt. Am besten sie machen sich gleich auf den Weg. Ich habe gehört, er soll Vollmachten direkt von Sandra Frasier bekommen haben. Es muss ganz schön wichtig sein. Viel Glück, was immer es auch sein mag.")
		STARTMISSION(3591)
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------4
					else
--Mission 3 wird hier gestartet
		SAY("Was kann ich für sie tun?")
		
		ANSWER("Hat George eine Nachricht für mich hinterlassen?",101)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------3
							else
--Mission 2 wird hier gestartet
		SAY("Sie waren doch kürzlich an der Sache mit dieser mysteriösen Email beteiligt, nicht? Die in der er die Übergabe von ProtoPharm verlangt.")
		
		ANSWER("Ich würde sogar so weit gehen zu sagen, dass ich die ganze Sache aufgeklärt habe.",51)

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------2
					else
--Mission 1 wird hier gestartet
		SAY("Willkommen bei ProtoPharm, wie kann ich ihnen helfen?")
		
		ANSWER("Da ich zu ProtoPharm gehöre, dachte ich, ich könnte euch direkt etwas unter die Arme greifen.",11)

						
					end
				end			
			end
		end

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 1
	NODE(11)
		SAY("Im Klartext, ihnen sind die Credits ausgegangen, richtig? Na, macht ja nichts. Da mir aber keinerlei Hintergrundinformation über sie vorliegt, werde ich ihnen nur eine einfache Aufgabe vermitteln können.  Michail, ein Abteilungsleiter hier bei ProtoPharm hat einen Assistenten bei einem Laborunfall verloren. Glücklicherweise ist er nur verletzt worden. Sie können ihm als Assistent etwas zur Hand gehen. Interessiert?")
		
		ANSWER("Natürlich, genau das, was ich mir vorgestellt habe, wo finde ich diesen Michail? Und was verdiene ich dabei?",12)
	NODE(12)
		SAY("Sie können ihn gleich hier im HQ finden. Bezahlt bekommen werden sie nur 1000 credits für den Anfang. Aber wenn sie bei der Sache bleiben, steigen die Prämien.")
		
		ANSWER("Gut ich bin schon auf dem Weg… Wohin muss ich mich noch einmal wenden?",13)
	NODE(13)
		SAY("Es ist ganz einfach, gehe einfach hier in das ProtoPharm Laboratorium. Aber nichts anfassen, es ist alles hochempfindlich.")
		

		STARTMISSION(3588)		
		SETNEXTDIALOGSTATE(4)
		ENDDIALOG()
	NODE(14)
		SAY("Wenn sie Michails Assistent sein wollen müssen sie in das Labor gehen. Dort werden sie ihn schon finden.")
		ENDDIALOG()
		
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 2
	NODE(51)
		SAY("Dann sind sie genau der Mann, den Mr George braucht. Beeilen sie sich, er wartet schon ungeduldig auf sie. Wir hätten sie ja früher kontaktiert, aber sie wechseln ihren Standort so oft. Sie können ihn hier irgendwo im Hauptgebäude finden.")

		STARTMISSION(3589)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()

	NODE(52)
		SAY("Brandon George wartet schon auf sie. Er ist Mitglied einer speziellen Einheit zur Aufklärung solcher Fälle.")

		ENDDIALOG()



------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 3
	NODE(101)
		SAY("Lassen sie mich kurz nachsehen. Ja, er lässt ihnen ausrichten, dass die Daten nun entschlüsselt sind und er sie am üblichen Treffpunkt erwartet.")
		

		STARTMISSION(3590)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(102)
		SAY("George wartet am üblichen Treffpunkt auf sie.")
		ENDDIALOG()
		

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 4
	NODE(151)
		SAY("George hat schon an allen Ecken und Enden nach ihnen gesucht. Am besten sie machen sich gleich auf den weg.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 5
 	NODE(201)
		SAY("Michail aus Sektor 13 wollte unbedingt mit ihnen sprechen.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 6
	NODE(251)
		SAY("Sie sollten George besser treffen.")

----------------------------------------------------
----------------------------------------------------
--FRAKTIONSWECHSEL
	NODE(300)
		SAY("Dann stören sie mich nicht weiter.")
		ENDDIALOG()

	NODE(301)
		GETFACTIONSYMPATHY(6)
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
			CHANGEFACTION(6)
			SAY("Willkommen bei ProtoPharm.")
			ENDDIALOG()
		end
end