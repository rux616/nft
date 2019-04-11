--************************
--name   : SINGLE_AG_TS_02.lua
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
				SAY("Was haben Sie geschaeftlich hier zu erledigen, Mister?")
				SAY("Hey-o, Mister. Womit kann ich Ihnen helfen?")
				SAY("Ja? Was wollen Sie hier, Runner?")
				SAY("Willkommen in meinem Buero. Wie kann ich behilflich sein, Mister...?")
				SAY("Hey-o Runner, kommen Sie vielleicht wegen dem Job?")
				
				ANSWER("Oh, ich schau mich nur um. Danke.",1)
				ANSWER("Was gibt es ueber diesen Ort hier zu erfahren?",1)
				ANSWER("Hey. Wo bin ich hier?",1)
				ANSWER("Oh sorry, ich dachte, Sie waeren jemand anderes.",1)
				ANSWER("Ja, ich komme wegen der Saeuberungsaktion.",2)
				ANSWER("Ok, ich hoerte, Sie brauchen einen faehigen Cleaner.",2)
				ANSWER("Also, ich komme wegen dem Auftrag aus dem Tsunami Terminal.",2)

			else    -- Player is a Woman:
				SAY("Hey-o, Suesse! Was fuer eine nette Ueberraschung. Was kann ich fuer Sie tun?")
				SAY("Willkommen! Kommen Sie ruhig in mein Buero. Wie kann ich Ihnen helfen, Kleines?")
				SAY("Hey-o. Kommen Sie wegen dem Job, Runner?")
				SAY("Hey Suesse, was kann ich fuer Sie tun?")
				SAY("Sicher, dass Sie im richtigen Buero gelandet sind? Die Bewerbungen von Taenzerinnen werden den Gang runter bearbeitet...")
				
				ANSWER("Ich schau mich nur um. Danke.",1)
				ANSWER("Koennen Sie mir etwas ueber diesen Ort erzaehlen?",1)
				ANSWER("Schoen hier. Was machen Sie den so?",1)
				ANSWER("Pardon, ich hab Sie verwechselt.",1)
				ANSWER("Ja, ich komme wegen der Saeuberungsaktion.",2)
				ANSWER("Gruesse. Dem Tsunami Terminal war zu entnehmen, dass ich mich hier wegen dem Job melden soll.",2)

			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Hoeren Sie, wenn Sie nur herumstehen wollen, machen Sie das bitte in einem unserer Clubs, ok?")
				SAY("Entweder wir reden uebers Geschaeft oder Sie muessen gehen. Ich hab hier zu tun.")
				SAY("Fuer Informationen ueber Tsunami sollten Sie besser die Terminals benutzen. Verstehen Sie, was ich meine?")
				SAY("Auf Wiedersehen, Runner.")
				ENDDIALOG()
			else
				SAY("Hoeren Sie, wenn Sie nur herumstehen wollen, machen Sie das bitte in einem unserer Clubs, ok?")
				SAY("Sind Sie gekommen, um mich anzustarren? Ich weiss, dass ich gut aussehe, aber das wird mir langsam laestig...Bye.")
				SAY("Fuer Informationen ueber Tsunami sollten Sie besser die Terminals benutzen. Wir sehen uns, Suesse.")
				SAY("Schoen, Sie hiergehabt zu haben. Bis zum naechsten Mal...")
				ENDDIALOG()
			end
	NODE(2) -- Giving Mission
			SAY("Irgendein Jingo hat eine Abschottung offen stehen lassen und nun treiben sich hier in der Gegend ein paar %TARGET_NPCNAME(0) rum. Wir brauchen einen Strassen-Samurai, der die Population dieser Kreaturen vermindert. Rotten Sie alle %TARGET_VALUE(0,1) Stueck aus. Kommen Sie zurueck, wenn Sie sich darum gekuemmert haben.")
			SAY("Einer unserer idiotischen Jingos hat eine Sicherheitsabschottung offen stehen lassen und dadurch sind ein paar %TARGET_NPCNAME(0) in unser Fraktionsterritorium eingedrungen. Toeten Sie alle %TARGET_VALUE(0,1). Kommen Sie wieder, wenn Sie damit fertig sind.")
			SAY("Wir braeuchten etwas Hilfe bei der Kontrolle von Ungezieferpopulationen. Wir haben da ein paar %TARGET_NPCNAME(0) in unserem Territorium und Sie sollen %TARGET_VALUE(0,1) davon vernichten. Danach sehen wir uns hier wieder.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
		
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- Mission is not accomplished
				SAY("Hey-o, ich hoffe, Sie haben nicht Ihren Saeuberungsauftrag vergessen. Tsunami geht nicht sehr freundlich mit faulen Ronins um.")
				SAY("Hey Runner, kuemmern Sie sich endlich um die %TARGET_NPCNAME(0). Wenn die anfangen, sich auszubreiten, haben wir wirklich ein Problem.")
				SAY("Ich bin viel zu beschaeftigt, um zu reden. Erledigen Sie Ihre Arbeit. Wie ist mir vollkommen egal.")
				SAY("Loeschen Sie diese %TARGET_NPCNAME(0) aus oder wir werfen Sie Kopf ueber in die Kanalisation.")
				ENDDIALOG()
			else -- Mission was accomplished
				SAY("Hey-o, Samurai. Ich hoerte, Sie haben alle erwischt. %REWARD_MONEY() Credits wurden Ihnen ueberwiesen. Benutzen Sie die Terminals, um weitere Jobs zu erhalten.")
				SAY("Ich hoerte, Sie haben die Eindringlinge neutralisiert. Und ich hoerte, Sie haben das gut gemacht, Samurai. %REWARD_MONEY() Credits wurden Ihrem Konto gutgeschrieben. Unser Dank ist Ihnen sicher. Auf den Terminals finden Sie weitere Auftraege.")
				SAY("Gut gemacht, Runner. Die %REWARD_MONEY() Credits wurden ueberwiesen. Es ist ein Vergnuegen mit Ihnen Geschaefte zu machen.")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
						
		
			

