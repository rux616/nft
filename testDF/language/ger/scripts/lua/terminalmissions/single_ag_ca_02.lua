--************************
--name   : SINGLE_AG_CA_02.lua
--ver    : 0.1
--author : Ferron
--date   : 2004/09/08
--lang   : de
--desc	 : terminal mission
--npc    :
--************************
--changelog:
--2004/09/08(0.1): recheck(Ferron)
--YYYY/MM/DD(0.0)
--************************

function DIALOG()


	NODE(0)
		GENDERCHECK()
			if (result==1) then -- Player is Man:
				SAY("City Admin, wie kann ich Ihnen behilflich sein, Sir?")
				SAY("City Admin, brauchen Sie meine Hilfe, Sir?")
				SAY("Hallo Sie. Kommen Sie wegen dem Job, Sir?")
				SAY("Willkommen bei der City Administration. Wie kann ich Ihnen helfen, Sir?")
				SAY("Gruesse, Sir. Sie werden gebraucht, um Ihrer Regierung bei einer dringenden Angelegenheit zu helfen.")
				
				ANSWER("Ich schau mich nur ein wenig um. Danke.",1)
				ANSWER("Was gibt es ueber diesen Ort zu erfahren?",1)
				ANSWER("Hey. Was ist das hier?",1)
				ANSWER("Oh Tschuldigung, ich dachte, Sie waeren jemand anderes.",1)
				ANSWER("YYeah, ich komme wegen dem Auftrag.",2)
				ANSWER("Ok, ich hab gehoert, Sie brauchen jemanden, der zuverlaessig Probleme loest?",2)
				ANSWER("Alles klar. Ich komme wegen dem Auftrag, den ich im City Admin Terminal gesehen habe.",2)

			else    -- Player is a Woman:
				SAY("City Admin, wie kann ich Ihnen behilflich sein, Madame?")
				SAY("City Admin, brauchen Sie meine Hilfe, Ma'am?")
				SAY("Hallo Sie. Kommen Sie wegen dem Job, Madame?")
				SAY("Willkommen bei der City Administration. Wie kann ich Ihnen helfen, Ma'am?")
				SAY("Gruesse, Madame. Sie werden gebraucht, um Ihrer Regierung bei einer dringenden Angelegenheit einen Dienst zu erweisen.")
				
				ANSWER("Ich schau mich nur ein wenig um. Danke.",1)
				ANSWER("Was gibt es ueber diesen Ort zu wissen?",1)
				ANSWER("Wirklich schoen hier und was machen Sie hier so?",1)
				ANSWER("Oh Tschuldigung, ich dachte, Sie waeren jemand anderes.",1)
				ANSWER("Ja, ich komme wegen dem Job.",2)
				ANSWER("Hi, dem City Admin Terminal war zu entnehmen, dass Sie einen Job zu vergeben haben.",2)

			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Die City Admin wuenschen Ihnen noch einen wundervollen Tag.")
				SAY("Einen schoenen Tag. Fuer die Menschen!")
				SAY("Sir, fuer allgemeine Informationen ueber die City Admin stehen Ihnen unsere Terminals jederzeit zur Verfuegung. Wir und der grossartige Reeza wuenschen Ihnen noch einen angenehmen Tag!")
				SAY("Ich danke Ihnen, Sir. Einen schoenen Tag noch.")
				ENDDIALOG()
			else
				SAY("Die City Admin wuenschen Ihnen noch einen wundervollen Tag.")
				SAY("Einen schoenen Tag. Fuer die Menschen!")
				SAY("Madame, fuer allgemeine Informationen ueber die City Admin stehen Ihnen unsere Terminals jederzeit zur Verfuegung. Wir und der grossartige Reza wuenschen Ihnen noch einen angenehmen Tag!")
				SAY("Ich danke Ihnen, Ma'am. Einen schoenen Tag noch.")
				ENDDIALOG()
			end
	NODE(2) -- Giving Mission
			SAY("Mission: Ein Rudel %TARGET_NPCNAME(0) verursacht einige Schwierigkeiten. Aufgabe: Eliminieren Sie %TARGET_VALUE(0,1) %TARGET_NPCNAME(0). Schuetzen Sie die Zivilbevoelkerung um jeden Preis.")
			SAY("Runner, hier Ihre Missionsaufgabe. Toeten Sie %TARGET_VALUE(0,1) %TARGET_NPCNAME(0), die unsere Zivilisten terrorisieren. Kommen Sie fuer die Bezahlung hierher zurueck.")
			SAY("Runner, dies ist eine Suchen und Vernichten - Mission. Das Ziel ist ein Rudel %TARGET_NPCNAME(0). Toeten Sie mindestens %TARGET_VALUE(0,1) von denen. Zivile Verluste sind absolut inakzeptabel.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
		
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- Mission is not accomplished
				SAY("Polizeikraefte berichten, dass immer noch ein paar %TARGET_NPCNAME(0) uebrig sind. Handeln Sie endlich.")
				SAY("Runner, die Mission ist noch nicht beendet. Sorgen Sie endlich dafuer.")
				SAY("Runner, meinen Informationen zufolge sind immer noch ein paar %TARGET_NPCNAME(0) uebrig. Suchen und vernichten Sie sie.")
				SAY("Ich bin zu beschaeftigt, um die ganze Zeit den Babysitter fuer Sie zu spielen, Runner. Der Aufklaerung zufolge ist Ihre Mission nicht abgeschlossen. Erledigen Sie das.")
				ENDDIALOG()
			else -- Mission was accomplished
				SAY("Einsatzkraefte der Polizei berichten, dass Sie Ihre Mission erfolgreich beendet haben. Die Standardbezahlung von %REWARD_MONEY() Credits wurde ueberwiesen. Die City Admin danken Ihnen für diesen Einsatz.")
				SAY("Runner, Mission beendet. Gut gemacht. Die Standardbezahlung von %REWARD_MONEY() Credits wurde ueberwiesen. Fuer Reeza!")
				SAY("Runner, gut gemacht. Die Standardbezahlung von %REWARD_MONEY() Credits wurde ueberwiesen. Danke, dass Sie unsere Stadt im Namen von Reeza und der Menschen beschuetzt haben!")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
						
		
			
