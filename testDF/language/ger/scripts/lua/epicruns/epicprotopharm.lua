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
			CANDOEPICRUN(6,0)
			if(result==-2)then
				SAY("Es tut mir leid, aber die einzige M�glichkeit wie sie uns noch helfen k�nnten ist, einen Clan zu gr�nden, der uns unterst�tzt.")
				ENDDIALOG()
			else
-- Abfrage ob Skillevel stimmt und dann ob die Mission schon erf�llt wurde
				CANDOEPICRUN(6,0)
				if(result==-5)then
					SAY("Sie sind im Moment nicht erfahren genug, kommen sie sp�ter wieder. (n�chste Mission Level 10)")
					ENDDIALOG()
				else
						CANDOEPICRUN(6,0)
				        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------2
						CANDOEPICRUN(6,1)
						if(result==-5)then
							SAY("Sie sind im Moment nicht erfahren genug, kommen sie sp�ter wieder. (n�chste Mission Level 20)")
							ENDDIALOG()
						else
								CANDOEPICRUN(6,1)
				        		if(result==-4)then
-------------------------------------------------------------------------------------------------------------------3
						CANDOEPICRUN(6,2)
						if(result==-5)then
							SAY("Sie sind im Moment nicht erfahren genug, kommen sie sp�ter wieder. (n�chste Mission Level 30)")
							ENDDIALOG()
						else
								CANDOEPICRUN(6,2)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------4
						CANDOEPICRUN(6,3)
						if(result==-5)then
							SAY("Sie sind im Moment nicht erfahren genug, kommen sie sp�ter wieder. (n�chste Mission Level 35)")
							ENDDIALOG()
						else
								CANDOEPICRUN(6,3)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------5
						CANDOEPICRUN(6,4)
						if(result==-5)then
							SAY("Sie sind im Moment nicht erfahren genug, kommen sie sp�ter wieder. (n�chste Mission Level 40)")
							ENDDIALOG()
						else
								CANDOEPICRUN(6,4)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------6
						CANDOEPICRUN(6,5)
				if(result==-5)then
					SAY("Sie sind im Moment nicht erfahren genug, kommen sie sp�ter wieder. (n�chste Mission Level 45)")
					ENDDIALOG()
				else
								CANDOEPICRUN(6,5)
				        if(result==-4)then
						SAY("Es tut mir leid, aber die einzige M�glichkeit wie sie uns noch helfen k�nnten ist, einen Clan zu gr�nden, der uns unterst�tzt.")
						ENDDIALOG()
					else
--Mission 6 wird hier gestartet
		SAY("Brandon George ist recht nerv�s, offensichtlich m�chte er sich so schnell wie m�glich mit ihnen treffen. Auch wenn ich nicht direkt weiss, worum es geht.")
		STARTMISSION(3614)
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------6
					else
--Mission 5 wird hier gestartet
		SAY("Ich habe eine Nachricht f�r sie von Michail aus Sektor 13, er h�tte gerne pers�nlich mit ihnen gesprochen. Sie wissen ja wahrscheinlich wo sie ihn finden k�nnen nicht wahr?")

		STARTMISSION(3592)
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()		
					end
				end	
-------------------------------------------------------------------------------------------------------------------5
					else
--Mission 4 wird hier gestartet
		SAY("Brandon George hat mich gebeten ihnen mitzuteilen, dass er dringend ihre Hilfe ben�tigt. Am besten sie machen sich gleich auf den Weg. Ich habe geh�rt, er soll Vollmachten direkt von Sandra Frasier bekommen haben. Es muss ganz sch�n wichtig sein. Viel Gl�ck, was immer es auch sein mag.")
		STARTMISSION(3591)
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------4
					else
--Mission 3 wird hier gestartet
		SAY("Was kann ich f�r sie tun?")
		
		ANSWER("Hat George eine Nachricht f�r mich hinterlassen?",101)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------3
							else
--Mission 2 wird hier gestartet
		SAY("Sie waren doch k�rzlich an der Sache mit dieser mysteri�sen Email beteiligt, nicht? Die in der er die �bergabe von ProtoPharm verlangt.")
		
		ANSWER("Ich w�rde sogar so weit gehen zu sagen, dass ich die ganze Sache aufgekl�rt habe.",51)

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------2
					else
--Mission 1 wird hier gestartet
		SAY("Willkommen bei ProtoPharm, wie kann ich ihnen helfen?")
		
		ANSWER("Da ich zu ProtoPharm geh�re, dachte ich, ich k�nnte euch direkt etwas unter die Arme greifen.",11)

						
					end
				end			
			end
		end

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 1
	NODE(11)
		SAY("Im Klartext, ihnen sind die Credits ausgegangen, richtig? Na, macht ja nichts. Da mir aber keinerlei Hintergrundinformation �ber sie vorliegt, werde ich ihnen nur eine einfache Aufgabe vermitteln k�nnen.  Michail, ein Abteilungsleiter hier bei ProtoPharm hat einen Assistenten bei einem Laborunfall verloren. Gl�cklicherweise ist er nur verletzt worden. Sie k�nnen ihm als Assistent etwas zur Hand gehen. Interessiert?")
		
		ANSWER("Nat�rlich, genau das, was ich mir vorgestellt habe, wo finde ich diesen Michail? Und was verdiene ich dabei?",12)
	NODE(12)
		SAY("Sie k�nnen ihn gleich hier im HQ finden. Bezahlt bekommen werden sie nur 1000 credits f�r den Anfang. Aber wenn sie bei der Sache bleiben, steigen die Pr�mien.")
		
		ANSWER("Gut ich bin schon auf dem Weg� Wohin muss ich mich noch einmal wenden?",13)
	NODE(13)
		SAY("Es ist ganz einfach, gehe einfach hier in das ProtoPharm Laboratorium. Aber nichts anfassen, es ist alles hochempfindlich.")
		

		STARTMISSION(3588)		
		SETNEXTDIALOGSTATE(4)
		ENDDIALOG()
	NODE(14)
		SAY("Wenn sie Michails Assistent sein wollen m�ssen sie in das Labor gehen. Dort werden sie ihn schon finden.")
		ENDDIALOG()
		
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 2
	NODE(51)
		SAY("Dann sind sie genau der Mann, den Mr George braucht. Beeilen sie sich, er wartet schon ungeduldig auf sie. Wir h�tten sie ja fr�her kontaktiert, aber sie wechseln ihren Standort so oft. Sie k�nnen ihn hier irgendwo im Hauptgeb�ude finden.")

		STARTMISSION(3589)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()

	NODE(52)
		SAY("Brandon George wartet schon auf sie. Er ist Mitglied einer speziellen Einheit zur Aufkl�rung solcher F�lle.")

		ENDDIALOG()



------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 3
	NODE(101)
		SAY("Lassen sie mich kurz nachsehen. Ja, er l�sst ihnen ausrichten, dass die Daten nun entschl�sselt sind und er sie am �blichen Treffpunkt erwartet.")
		

		STARTMISSION(3590)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(102)
		SAY("George wartet am �blichen Treffpunkt auf sie.")
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
		SAY("Dann st�ren sie mich nicht weiter.")
		ENDDIALOG()

	NODE(301)
		GETFACTIONSYMPATHY(6)
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
			CHANGEFACTION(6)
			SAY("Willkommen bei ProtoPharm.")
			ENDDIALOG()
		end
end