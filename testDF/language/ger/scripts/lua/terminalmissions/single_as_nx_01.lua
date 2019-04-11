--************************
--name   : SINGLE_AS_NX_01.lua
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
				ANSWER("Dem Next Terminal war zu entnehmen, dass Sie jemanden fuer eine Liqiudation brauchen.",2)
			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Danke fuer den Besuch bei Next. Einen schoenen Tag, Sir.")
				SAY("Sir, Ich bin ein wenig beschaeftigt. Wenn Sie hier keine Geschaefte zu erledigen haben, bitte ich Sie zu gehen.")
				SAY("Sir, allgemeine Informationen ueber Next finden Sie auf unseren Terminals. Bye.")
				SAY("Danke, Sir. Einen schoenen Tag noch.")
				ENDDIALOG()
			else
				SAY("Danke fuer den Besuch bei Next. Einen schoenen Tag, Ma'am.")
				SAY("Hoeren Sie zu, ich versuche zu arbeiten. Einen schoenen Tag noch.")
				SAY("Bitte, allgemeine Informationen ueber Next finden Sie auf unseren Terminals. Bye.")
				SAY("Danke, Ma'am. Einen schoenen Tag noch.")
				ENDDIALOG()
			end
	NODE(2) -- Giving Mission
			SAY("Ihr Ziel ist ein Konkurrent namens %NPC_NAME(1). Sie finden das Ziel irgendwo in %NPC_WORLD(1). Eliminieren Sie ihn mit Diskretion und kommen Sie fuer die Bezahlung zurueck.")
			SAY("Wir brauchen Sie, um %NPC_NAME(1) umbringen zu lassen. Die Zielperson befindet sich in %NPC_WORLD(1). Bitte erregen Sie nicht allzuviel Aufmerksamkeit. Kommen Sie zurueck, wenn das Ziel ausgeloescht wurde.")
			SAY("Runner. Schoen Sie zu sehen. Die Zielperson heisst %NPC_NAME(1), ein ärgerlicher Konkurrent. Gehen Sie nach %NPC_WORLD(1), das Ziel sollte sich dort aufhalten. Ich bin sicher, Sie verstehen die Brisanz dieser geheimen Mission. Kommen Sie zurueck, wenn das Ziel eliminiert wurde.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
		
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- Mission is not accomplished
				SAY("%NPC_NAME(1) lebt immer noch. Zuletzt waren wir uns doch einig, dass dies nicht der Fall sein sollte, wenn wir uns wiedersehen. Machen Sie schon.")
				SAY("Sie hatten den Auftrag, %NPC_NAME(1) in %NPC_WORLD(1) zu toeten, oder? Also los...")
				SAY("Schauen Sie, die Zielperson ist immer noch am Leben. Das sollte nicht sein...verstehen Sie mich?")
				SAY("Bitte kommen Sie nicht zurueck, solange Sie sich nicht um %NPC_NAME(1) gekuemmert haben.")
				ENDDIALOG()
			else -- Mission was accomplished
				SAY("Grossartige Arbeit! Der Bastard ist erledigt. Hier sind Ihre %REWARD_MONEY() Credits. Hoffentlich arbeiten wir mal wieder miteinander.")
				SAY("Sie sind zurueck. Gut gemacht! Die erfolgreiche Eliminierung des Ziels hat Ihnen %REWARD_MONEY() Credits eingebracht, die soeben auf Ihr Konto ueberwiesen wurden. Next ist Ihnen dankbar fuer die Hilfe in dieser Angelegenheit. Einen schoenen Tag noch.")
				SAY("Runner. Wir wurden informiert, dass das Ziel eliminiert wurde. %REWARD_MONEY() Credits wurden auf Ihr Konto ueberwiesen. Bitte informieren Sie sich an unseren Terminals ueber weitere Jobs.")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
