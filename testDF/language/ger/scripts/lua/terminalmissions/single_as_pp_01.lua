--************************
--name   : SINGLE_AS_PP_01.lua
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
				SAY("Hey Sie. Auf der Suche nach einem Auftrag, Sir?")
				SAY("Wie kann ich Ihnen helfen, Sir?")
				SAY("Hallo, Sir. Willkommen bei ProtoPharm. Wir haben einen Job fuer Sie, wenn Sie interessiert sind.")
				
				ANSWER("Ich schaue mich nur um. Danke.",1)
				ANSWER("Was koennen Sie mir ueber diesen Ort sagen?",1)
				ANSWER("Hey. Was ist das hier fuer ein Ort?",1)
				ANSWER("Oh, Entschuldigung. Ich dachte, Sie waeren jemand anderes.",1)
				ANSWER("Ich komme wegen einem Job",2)
				ANSWER("Yeah, Ich komme wegen der Liquidation.",2)
				ANSWER("Hi, ich hoerte, Sie suchen einen kompetenten Problemloeser?",2)
				ANSWER("Ich bin wegen dem Auftrag aus dem ProtoPharm Terminal hier.",2)

			else    -- Player is a Woman:
				SAY("Ihre Hoffnung. Ihre Staerke. Ihre Heilung. ProtoPharm, kann ich behilflich sein, Ma'am?")
				SAY("Willkommen bei ProtoPharm. Wie kann ich Ihnen helfen, Madame?")
				SAY("Hey Sie. Auf der Suche nach einem Auftrag, Ma'am?")
				SAY("Wie kann ich Ihnen helfen, Madame?")
				SAY("Hallo, Ma'am. Willkommen bei ProtoPharm. Wir haben einen Job fuer Sie, wenn Sie interessiert sind.")
				
				ANSWER("Ich schaue mich nur um. Danke.",1)
				ANSWER("Was koennen Sie mir ueber diesen Ort sagen?",1)
				ANSWER("Schoen hier. Was kann man hier machen?",1)
				ANSWER("Entschuldigung. Ich dachte, Sie waeren jemand anderes.",1)
				ANSWER("Ich komme wegen der Liquidation...",2)
				ANSWER("Dem ProtoPharm Terminal war zu entnehmen, dass Sie jemanden fuer eine Liquidation suchen.",2)
				ANSWER("Hi. Mir wurde gesagt, Sie brauchen Hilfe bei der Beseitigung einer Person.",2)
				ANSWER("Ich bin wegen dem Auftrag aus dem ProtoPharm Terminal hier.",2)
			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Dies hier ist ProtoPharm. Wir arbeiten fuer unseren Lebensunterhalt. Entweder tun Sie das gleiche oder gehen.")
				SAY("Hoeren Sie zu, ich habe nicht die Energie fuer diesen Unsinn. Bitte gehen Sie, Sir.")
				SAY("Sir, ich bin zu beschaeftigt, um mich mit Ihnen über Belanglosigkeiten zu unterhalten. Einen schoenen Tag noch.")
				SAY("Danke und auf Wiedersehen.")
				ENDDIALOG()
			else
				SAY("Dies hier ist ProtoPharm. Wir arbeiten fuer unseren Lebensunterhalt. Entweder tun Sie das gleiche oder gehen.")
				SAY("Hoeren Sie, ich versuche hier zu arbeiten. Ich bitte Sie zu gehen, Madame.")
				SAY("Bitte Madame, wenn Sie keinen offiziellen Auftrag haben, bitte ich Sie zu gehen.")
				SAY("Danke, Ma'am. Einen schoenen Tag noch.")
				ENDDIALOG()
			end
	NODE(2) -- Giving Mission
			SAY("Willkommen, Runner. Das Ziel ist %NPC_NAME(1), ein Angestellter, der Drogen entwendet hat. Die Zielperson befindet sich in %NPC_WORLD(1). Statuieren Sie ein Exempel an diesem Dreckskerl. Kommen Sie hierher zurueck, wenn Sie fertig sind.")
			SAY("Ok, das ist der Deal. Einer unserer Angestellten hat Drogen gestohlen, eine Menge Drogen. %NPC_NAME(1) befindet sich in %NPC_WORLD(1) und wir wollen dieses Stueck Scheisse tot sehen. Es soll allen anderen eine Warnung sein.")
			SAY("Ah ja, Runner. Ich bin froh, dass Sie da sind. Das Problem, ein diebischer Angestellter mit Namen %NPC_NAME(1), befindet sich in %NPC_WORLD(1). Schalten Sie den Mistkerl aus...und dann kommen Sie hierher zurueck.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
		
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- Mission is not accomplished
				SAY("Haben Sie ihn noch nicht gefunden? Ist ok, nehmen Sie sich die Zeit. Hauptsache er ist am Ende tot.")
				SAY("Runner, Ich moechte Sie nicht stressen, aber Sie haben eine Aufgabe zu erledigen.")
				SAY("Sehen Sie, ich bin ein wenig beschaeftigt und ich habe keine weiteren Informationen fuer Sie. Erledigen Sie ihn einfach.")
				SAY("Sie sollen ihn umbringen, damit es eine Warnung für alle ist. Also los!.")
				ENDDIALOG()
			else -- Mission was accomplished
				SAY("Perfekt, ich denke, die Botschaft ist angekommen. Hier sind Ihre %REWARD_MONEY() Credits. Vielleicht sehen wir uns bald wieder.")
				SAY("Ah, Sie sind zurueck! Ich hab die Neuigkeiten schon gehoert. %REWARD_MONEY() Credits wurden auf Ihr Konto ueberwiesen. ProtoPharm dankt Ihnen fuer Ihre Professionalitaet. Auf unseren Terminals finden Sie weitere Jobs.")
				SAY("Wir wurden darueber informiert, dass das Ziel eliminiert wurde. Gut gemacht. %REWARD_MONEY() Credits wurden Ihrem Konto gutgeschrieben.  Wir bei ProtoPharm danken Ihnen fuer Ihre Hilfe. Auf Wiedersehen.")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
						
		
			
