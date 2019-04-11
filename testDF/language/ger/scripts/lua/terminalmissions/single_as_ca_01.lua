--************************
--name   : SINGLE_AS_CA_01.lua
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
				SAY("City Admin, wie kann ich Ihnen behilflich sein?")
				SAY("City Admin, brauchen Sie meine Hilfe?")
				SAY("Hallo Sie. Kommen Sie wegen dem Job?")
				SAY("Willkommen bei der City Administration. Wie kann ich Ihnen helfen?")
				SAY("Gruesse, Sie werden gebraucht, um Ihre Regierung bei einer dringenden Angelegenheit zu unterstuetzen.")
				
				ANSWER("Ich schau mich nur ein wenig um. Danke.",1)
				ANSWER("Was gibt es ueber diesen Ort zu wissen?",1)
				ANSWER("Hey. Was ist das hier?",1)
				ANSWER("Oh Tschuldigung, ich dachte, Sie waeren jemand anderes.",1)
				ANSWER("Yeah, ich komme wegen dem Auftrag.",2)
				ANSWER("Ok, ich hab gehoert, Sie brauchen jemanden, der zuverlaessig Probleme loest?",2)
				ANSWER("Alles klar. Ich komme wegen dem Auftrag, den ich im City Admin Terminal gesehen habe.",2)
	
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
			SAY("Diese Mission wurde als geheim eingestuft. Ihr Ziel ist %NPC_NAME(1), ein Verraeter, den ehrbare Buerger in %NPC_WORLD(1) gesehen haben. Dies ist ein verdeckter Mordauftrag, also ziehen Sie nicht allzuviel Aufmerksamkeit auf sich. Zur Auswertung kommen Sie nach Beendigung des Auftrags zu mir zurueck.")
			SAY("Runner, dies ist eine geheime Mission. %NPC_NAME(1), ein Verraeter an der gesamten Stadt hat sein Leben verspielt. Die Zielperson befindet sich in %NPC_WORLD(1). Erledigen Sie die Person, ohne Aufmerksamkeit zu erregen und kehren Sie dann zu mir zurueck.")
			SAY("Runner, dies ist eine verdeckte Mission, die als geheim eingestuft ist. Das Ziel heisst %NPC_NAME(1), ein Verraeter, der in %NPC_WORLD(1) gesichtet wurde. Eliminieren Sie die Zielperson mit aeusserster Diskretion und kommen Sie zur Auswertung zu mir zurueck.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
		
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  
				-- Mission is not accomplished
				SAY("Den Polizeiinformationen ist zu entnehmen, dass der Verraeter %NPC_NAME(1) immer noch am Leben ist. Erledigen Sie den Bastard im Namen Reezas und der Menschen!")
				SAY("Runner, die Mission ist noch nicht beendet. Kehren Sie an Ihre Arbeit zurueck.")
				SAY("Runner, %NPC_NAME(1)´s Herz schlaegt immer noch, wie ich informiert wurde. Suchen und eliminieren Sie ihn endlich.")
				SAY("Unserer Aufklaerung zufolge ist Ihre Mission noch nicht beendet. Erdeldigen Sie ihn fuer Ihren geliebten Anfuehrer und die Menschen!")
				ENDDIALOG()
			else 	
				-- Mission was accomplished
				SAY("Unsere Polizeikraefte informierten mich, dass Ihre Mission erfolgreich abgeschlossen wurde. Die Standardbezahlung von %REWARD_MONEY() Credits wurde ueberwiesen. Die City Admin dankt Ihnen fuer diesen Dienst.")
				SAY("Runner, der Tod von %NPC_NAME(1) wurde mir vorhin gemeldet. Gut gemacht. Die Standardbezahlung von %REWARD_MONEY() Credits wurde ueberwiesen. Fuer Reeza!")
				SAY("Runner, gut gemacht. %NPC_NAME(1) wurde tot aufgefunden. Die Standardbezahlung von %REWARD_MONEY() Credits wurde ueberwiesen. Danke, dass Sie unsere Stadt und die Einwohner geschuetzt haben!")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
						
		
			
