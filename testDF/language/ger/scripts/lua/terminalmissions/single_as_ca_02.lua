--************************
--name   : SINGLE_AS_CA_02.lua
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
				SAY("Gruesse, Sir. Sie werden gebraucht, um Ihre Regierung bei einer dringenden Angelegenheit zu unterstuetzen.")
				
				ANSWER("Ich schau mich nur ein wenig um. Danke.",1)
				ANSWER("Was gibt es ueber diesen Ort zu wissen?",1)
				ANSWER("Hey. Was ist das hier?",1)
				ANSWER("Oh Tschuldigung, ich dachte, Sie waeren jemand anderes.",1)
				ANSWER("Yeah, ich komme wegen dem Auftrag.",2)
				ANSWER("Ok, ich hab gehoert, Sie brauchen jemanden, der zuverlaessig Probleme loest?",2)
				ANSWER("Alles klar. Ich komme wegen dem Auftrag, den ich im City Admin Terminal gesehen habe.",2)

			else    -- Player is a Woman:
				SAY("City Admin, wie kann ich Ihnen behilflich sein, Madame?")
				SAY("City Admin, brauchen Sie meine Hilfe, Ma'am?")
				SAY("Hallo Sie. Kommen Sie wegen dem Job, Madame?")
				SAY("Willkommen bei der City Administration. Wie kann ich Ihnen helfen, Ma'am?")
				SAY("Gruesse, Madame. Sie werden gebraucht, um Ihrer Regierung bei einer dringenden Angelegenheit zu helfen.")
				
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
			SAY("Dein Ziel ist ein Spion mit Namen %NPC_NAME(1). Er wurde zuletzt in %NPC_WORLD(1) gesehen. Dies ist ein offizieller Liquidationsauftrag von hoechster Stelle. Behandeln Sie diesen Auftrag mit Diskretion und kehren Sie zur Auswertung zu mir zurueck.")
			SAY("Runner, dies ist eine offizielle Liquidation eines feindlichen Spions mit Namen %NPC_NAME(1). Das Ziel wurde zuletzt in %NPC_WORLD(1) gesehen. Erschiessen, erstechen Sie ihn oder sprengen Sie ihn weg. Kommen Sie zur Auswertung wieder.")
			SAY("Runner, dies ist eine offizielle Liquidation. Das Ziel, %NPC_NAME(1), befindet sich in %NPC_WORLD(1). Loeschen Sie ihn aus und kommen Sie zur Auswertung wieder zurueck. Sie koennen gehen.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- Mission is not accomplished
				SAY("Die Polizeikraefte berichten, dass %NPC_NAME(1), der aufgedeckte Spion, immer noch lebt. Toeten Sie diesen Feind im Namen Reezas und der Menschen!")
				SAY("Runner, die Mission ist nicht beendet. Erledigen Sie diese.")
				SAY("Runner, %NPC_NAME(1) ist unseren juengsten Informationen zufolge noch am Leben. Finden und toeten Sie ihn.")
				SAY("Der Aufklaerung zufolge ist Ihre Mission noch nicht beendet. Erledigen Sie diese endlich, fuer das Wohl der Menschen!")
				ENDDIALOG()
			else -- Mission was accomplished
				SAY("Polizeikraefte berichten, dass Sie Ihre Mission erfolgreich abgeschlossen haben. Die Standardbezahlung von %REWARD_MONEY() Credits wurde ueberwiesen. Die City Admin danken fuer Ihre Dienste. Sie koennen gehen.")
				SAY("Runner, dem Bericht zufolge ist der Spion %NPC_NAME(1) tot. Die Standardbezahlung von %REWARD_MONEY() Credits wurde ueberwiesen. Fuer Reeza und die Menschen!")
				SAY("Runner, gut gemacht. Der Tod von %NPC_NAME(1) wurde bestaetigt. Die Standardbezahlung von %REWARD_MONEY() Credits wurde ueberwiesen. Sie koennen stolz auf sich sein mit dem Wissen, Reeza einen groﬂen Dienst erwiesen zu haben!")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
						
		
			
