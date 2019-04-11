--************************
--name   : SINGLE_AS_PP_02.lua
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
				SAY("Ihre Hoffnung. Ihre Staerke. Ihre Heilung. ProtoPharm, kann ich behilflich sein, Sir?")
				SAY("Willkommen bei ProtoPharm. Wie kann ich Ihnen helfen, Sir?")
				SAY("Entschuldigen Sie meine Einmischung, aber sind Sie wegen der Liquidation hier?")
				SAY("Hallo. ProtoPharm koennte Ihre Hilfe gebrauchen, Sir. Interessiert?")
				SAY("Hallo, Sir. Willkommen bei ProtoPharm. Wir haben einen Job fuer Sie, wenn Sie interessiert sind.")
				
				ANSWER("Ich schaue mich nur um. Danke.",1)
				ANSWER("Was koennen Sie mir ueber diesen Ort sagen?",1)
				ANSWER("Nein, ich bin nicht Ihr Mann.",1)
				ANSWER("Oh, Entschuldigung. Ich dachte, Sie waeren jemand anderes.",1)
				ANSWER("Ich komme wegen einem Job.",2)
				ANSWER("Yeah, Ich komme wegen der Liquidation.",2)
				ANSWER("Ja, ich hoerte, Sie suchen einen kompetenten Problemloeser?",2)
				ANSWER("Ich bin wegen dem Auftrag aus dem ProtoPharm Terminal hier.",2)

			else    -- Player is a Woman:
				SAY("Ihre Hoffnung. Ihre Staerke. Ihre Heilung. ProtoPharm, kann ich behilflich sein, Ma'am?")
				SAY("Willkommen bei ProtoPharm. Wie kann ich Ihnen helfen, Madame?")
				SAY("Hey Sie. Auf der Suche nach einem Auftrag, Ma'am?")
				SAY("Wie kann ich Ihnen helfen, Madame?")
				SAY("Hallo, Ma'am. Willkommen bei ProtoPharm. Wir haben einen Job fuer Sie, wenn Sie interessiert sind.")
				
				ANSWER("Ich schaue mich nur um. Danke.",1)
				ANSWER("Was koennen Sie mir ueber diesen Ort sagen?",1)
				ANSWER("Nein, dafür bin ich die falsche Person.",1)
				ANSWER("Entschuldigung. Ich dachte, Sie waeren jemand anderes.",1)
				ANSWER("Ich komme wegen der Liquidation...",2)
				ANSWER("Dem ProtoPharm Terminal war zu entnehmen, dass Sie jemanden fuer eine Liquidation suchen.",2)
				ANSWER("Hi. Mir wurde gesagt, Sie brauchen Hilfe bei der Beseitigung einer Person.",2)
				ANSWER("Ich bin wegen dem Auftrag aus dem ProtoPharm Terminal hier.",2)
			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Dies hier ist ProtoPharm. Wir arbeiten fuer unseren Lebensunterhalt. Entweder tun Sie das Gleiche oder Sie gehen.")
				SAY("Hoeren Sie zu, ich habe nicht die Energie fuer diesen Unsinn. Bitte gehen Sie, Sir.")
				SAY("Sir, ich bin zu beschaeftigt, um mich mit Ihnen über Belanglosigkeiten zu unterhalten. Einen schoenen Tag noch.")
				SAY("Danke und auf Wiedersehen.")
				ENDDIALOG()
			else
				SAY("Dies hier ist ProtoPharm. Wir arbeiten fuer unseren Lebensunterhalt. Entweder tun Sie das gleiche oder gehen.")
				SAY("Hören Sie zu, ich suche nach jemanden, der ein Problem für uns loesen kann. Wenn Sie das nicht koennen, bitte ich Sie zu gehen, Madame")
				SAY("Bitte Madame, ich sitze hier wie auf Kohlen. Entweder Sie wollen helfen oder Sie gehen besser.")
				SAY("Danke und auf Wiedersehen.")
				ENDDIALOG()
			end
	NODE(2) -- Giving Mission
			SAY("Ok. Dies ist hoechst dringend und absolut geheim. Das Zielsubjekt ist %NPC_NAME(1), ein leitender Angestellter, der geheime Informationen verkauft. Das Ziel befindet sich in %NPC_WORLD(1). Erledigen Sie das sauber und leise. Wenn jemand fragt, habe ich Ihnen diesen Auftrag nie erteilt.")
			SAY("Ok, Sie brauchen nichts weiter zu wissen als den Namen, %NPC_NAME(1), und den Aufenthaltsort, %NPC_WORLD(1). Erledigen Sie das schnell und sauber. Dann kommen Sie hierher zurueck.")
			SAY("Gruesse. Die Sache ist geheim und sensibel zu behandeln. Ein hoher, leitender Angestellter mit Namen %NPC_NAME(1), derzeit in %NPC_WORLD(1), hat Konzerngeheimnisse an andere Unternehmen verkauft. Er muss schnell ausradiert werden. Kommen Sie wieder, wenn Sie das erledigt haben.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
		
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- Mission is not accomplished
				SAY("Diskretion ist sehr ehrenhaft, aber Sie sollten sich ein wenig mit der Erledigung des Jobs beeilen.")
				SAY("Runner, ich bezahle Sie, damit Sie den Bastard weg pusten. Also machen Sie schon!")
				SAY("Sehen Sie, wir haben eine Abmachung und Zeit spielt dabei eine entscheidende Rolle. Legen Sie ihn um, jetzt!")
				SAY("Beeilung, Beeilung. Bringen Sie den Mistkerl zum Schweigen! Wir koennen nicht zulassen, dass er noch mehr Informationen preisgibt.")
				ENDDIALOG()
			else -- Mission was accomplished
				SAY("Gut gemacht! Sie haben ProtoPharm eine Menge Geld eingesparrt. Wo wir gerad davon reden, hier ist Ihre Bezahlung in Hoehe von %REWARD_MONEY() Credits. Auf ein baldiges Wiedersehen.")
				SAY("Ok, ist er tot? Grossartig. %REWARD_MONEY() Credits wurden auf Ihr Konto ueberwiesen. ProtoPharm ist begeistert von Ihrer Professionalitaet und wuerde sich ueber eine weitere Zusammenarbeit freuen.")
				SAY("Das Krankenhaus hat den Tod soeben bestaetigt, gut gemacht. %REWARD_MONEY() Credits wurden auf Ihr Konto ueberwiesen. ProtoPharm dankt Ihnen fuer diese Hilfe. Auf Wiedersehen.")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
						
		
			
