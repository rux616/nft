--************************
--name   : SINGLE_AG_NX_01.lua
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
				SAY("Next, wie kann ich Ihnen helfen, Sir?")
				SAY("Next, wohin wollen Sie heute, Sir?")
				SAY("Hallo Sie. Kommen Sie wegen dem Auftrag, Sir?")
				SAY("Willkommen bei Neocron Exploration Technology Inc. Kann ich behilflich sein, Sir?")
				SAY("Tag, Sir. Wir von Next koennten Ihre Hilfe gebrauchen. Interessiert?")
				
				ANSWER("Ich seh mich nur um. Danke.",1)
				ANSWER("Was koennen Sie mir ueber diesen Ort erzaehlen?",1)
				ANSWER("Hey. Was ist das hier fuer ein Ort?",1)
				ANSWER("Oh Entschuldigung, ich habe Sie mit jemandem verwechselt.",1)
				ANSWER("Genau, ich komme wegen dem Auftrag.",2)
				ANSWER("Hey, ich hoerte, Sie brauchen einen starken Typen.",2)
				ANSWER("Ich habe einen Auftrag am Next Terminal angenommen. Deswegen bin ich hier.",2)

			else    -- Player is a Woman:
				SAY("Next, wie kann ich Ihnen helfen, Madame?")
				SAY("Next, wohin wollen Sie heute, Ma'am?")
				SAY("Oh, hallo. Kommen Sie wegen dem Auftrag, Madame?")
				SAY("Willkommen bei Neocron Exploration Technology Inc. Kann ich behilflich sein, Ma'am?")
				SAY("Tag, Madame. Wir von Next koennten Ihre Hilfe gebrauchen. Interessiert?")
				
				ANSWER("Ich seh mich nur um. Danke.",1)
				ANSWER("Was koennen Sie mir ueber diesen Ort erzaehlen?",1)
				ANSWER("Schoen haben Sie es hier. Und was machen Sie so?",1)
				ANSWER("Oh Entschuldigung, ich habe Sie mit jemandem verwechselt.",1)
				ANSWER("Ja, ich komme wegen dem Auftrag.",2)
				ANSWER("Dem Next Terminal war zu entnehmen, dass Sie jemanden für eine Saeuberung suchen.",2)

			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Wir von Next wissen Ihren Besuch zu schaetzen. Leben Sie wohl.")
				SAY("Hoeren Sie zu mein Freund, ich habe dafuer leider keine Zeit. Wiedersehen, Sir.")
				SAY("Sir, allgemeine Informationen ueber Next finden Sie auf unseren Terminals. Auf Wiedersehen.")
				SAY("Danke. Einen schoenen Tag noch.")
				ENDDIALOG()
			else
				SAY("Das ist ein Next-Buero. Ich arbeite hier. Das bedeutet, dass ich nicht die Zeit fuer solche Gespraeche habe. Wiedersehen.")
				SAY("Hoeren Sie, ich arbeite hier. Bitte gehen Sie.")
				SAY("Bitte, allgemeine Informationen ueber Next finden Sie auf unseren Terminals. Einen schoenen Tag noch.")
				SAY("Danke, Ma'am. Einen schoenen Tag noch.")
				ENDDIALOG()
			end
	NODE(2) -- Giving Mission
			SAY("Wir haben eine kleine Saeuberungsaufgabe fuer Sie. %TARGET_VALUE(0,1) %TARGET_NPCNAME(0) muessen in unserem Fraktionsterritorium beseitigt werden. Erledigen Sie sie und kommen Sie dann zu mir zurueck.")
			SAY("Ja, richtig... Wir haben ein Problem mit %TARGET_NPCNAME(0) in unserem Fraktionsterritorium. Vernichten Sie %TARGET_VALUE(0,1) davon und kommen Sie dann hierher zurueck.")
			SAY("Runner, schoen Sie zu sehen. Eine stetige Zunahme von %TARGET_NPCNAME(0) wurde ueber die letzten Wochen in unserem Fraktionsterritorium festgestellt. Um unsere Investitionen zu schuetzen brauchen wir Sie, damit Sie die Zahl dieser Kreaturen um %TARGET_VALUE(0,1) reduzieren. Kommen Sie zu mir zurueck, wenn Sie damit fertig sind.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
		
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- Mission is not accomplished
				SAY("Unsere Sensoren zeigen immer noch eine zu hohe Konzentration von %TARGET_NPCNAME(0) in unserem Gebiet an. Besser, Sie erledigen noch ein paar mehr.")
				SAY("Runner, es sind immer noch ein paar uebrig. Schnappen Sie sich die!")
				SAY("Schon zurueck? Laut einer Benachrichtigung von Sukram, einem unserer Techs in diesem Gebiet, gibt es immer noch ein paar %TARGET_NPCNAME(0) dort. Geben Sie denen den Rest.")
				SAY("Ich hab dafuer keine Zeit. Vernichten Sie schon die %TARGET_NPCNAME(0) in unserem Territorium und das schnell.")
				ENDDIALOG()
			else -- Mission was accomplished
				SAY("Ah, gut. Das Problem wurde geloest. Hier sind die vereinbarten %REWARD_MONEY() Credits. Einen schoenen Tag noch und kommen Sie wieder, wenn Sie mehr Arbeit suchen.")
				SAY("Danke fuer die Hilfe. %REWARD_MONEY() Credits wurden Ihrem Konto gutgeschrieben. Information ueber weitere Jobs entnehmen Sie bitte unseren Next Terminals.")
				SAY("Runner, Gratulation. Das Gebiet scheint sauber zu sein, nur noch ein paar Signaturen sind auf meinem Terminal zu sehen. %REWARD_MONEY() Credits wurden auf Ihr Konto ueberwiesen. Next dankt Ihnen fuer die Hilfe. Einen schoenen Tag.")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
						
		
			
