--************************
--name   : SINGLE_AS_NX_02.lua
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
				SAY("Sir, ich bin ein wenig beschaeftigt. Wenn Sie hier keine Geschaefte zu erledigen haben, bitte ich Sie zu gehen.")
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
			SAY("Dieser Bastard %NPC_NAME(1) hat einen unserer experimentellen Panzer gestohlen. Dafuer bezahlt er mit seinem Leben. Er haelt sich derzeit irgendwo in %NPC_WORLD(1) auf. Toeten Sie ihn und kommen Sie danach wieder zurueck.")
			SAY("Ok, dieser Mistkerl namens %NPC_NAME(1) hat eines unserer experimentellen Fahrzeuge gestohlen. Er befindet sich in %NPC_WORLD(1) und wir wuenschen, dass die CopBots nur noch seine Leiche finden werden. Kommen Sie zurueck, wenn Sie sich darum gekuemmert haben.")
			SAY("Runner. Die Zielperson ist ein dreckiger Dieb namens %NPC_NAME(1). Gehe nach %NPC_WORLD(1), die Zielperson sollte sich dort aufhalten. Komm zurueck, wenn der Penner erledigt ist.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()

	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- Mission is not accomplished
				SAY("%NPC_NAME(1) atmet ja noch. Ich dachte, wir waren uns einig, dass dies nicht mehr der Fall sein sollte. Also halten Sie sich an den Deal.")
				SAY("%NPC_NAME(1) hat lange genug gelebt...verstanden?")
				SAY("Sehen Sie, das Ziel lebt noch immer. Next will ihn allerdings tot sehen, also bringen Sie ihn unter die Erde.")
				SAY("Bitte kommen Sie erst zurueck, wenn Sie sich um %NPC_NAME(1) gekuemmert haben.")
				ENDDIALOG()
			else -- Mission was accomplished
				SAY("Gute Arbeit! Der verdammte Penner ist erledigt. Hier sind Ihre %REWARD_MONEY() Credits. Vielleicht arbeiten Sie ja bald mal wieder fuer uns.")
				SAY("Sie sind zurueck. Gut gemacht! Das Ziel wurde erfolgreich von Ihnen ausgeschaltet. Die Bezahlung in Hoehe von %REWARD_MONEY() Credits wurde auf Ihr Konto ueberwiesen. Next dankt Ihnen fuer die Hilfe in dieser Angelegenheit. Einen angenehmen Tag noch.")
				SAY("Runner. Wir wurden darueber unterrichtet, dass die Zielperson eliminiert wurde. %REWARD_MONEY() Credits wurden soeben auf Ihr Konto ueberwiesen. Bitte informieren Sie sich an unseren Terminals ueber weitere Auftraege.")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
						
		
				
		