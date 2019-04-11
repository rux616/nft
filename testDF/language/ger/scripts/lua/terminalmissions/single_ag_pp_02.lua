--************************
--name   : SINGLE_AG_PP_02.lua
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
				ANSWER("Ich komme wegen einem Job.",2)
				ANSWER("Yeah, Ich komme wegen der Saeuberungsaktion.",2)
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
				ANSWER("Ich bin wegen der Saeuberung hier...",2)
				ANSWER("Dem ProtoPharm Terminal war zu entnehmen, dass Sie jemanden für eine Saeuberung suchen.",2)
				ANSWER("Hi, ich bin eine kompetente Kammerjaegerin auf der Suche nach Arbeit.",2)
				ANSWER("Ich bin wegen dem Auftrag aus dem ProtoPharm Terminal hier.",2)
			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Sehen Sie, ProtoPharm ist ein serioeses Unternehmen. Wir arbeiten hier. Also stoeren Sie uns bitte nicht.")
				SAY("Hoeren Sie zu, ich habe nicht die Energie fuer diesen Unsinn. Bitte gehen Sie, Sir.")
				SAY("Sir, schauen Sie bei den Terminals nach, wenn Sie allgemeine Informationen suchen. Auf Wiedersehen.")
				SAY("Danke. Bitte gehen Sie jetzt.")
				ENDDIALOG()
			else
				SAY("Sehen Sie, ProtoPharm ist ein serioeses Unternehmen. Wir arbeiten hier. Also stoeren Sie uns bitte nicht.")
				SAY("Hoeren Sie zu, ich habe nicht die Energie fuer diesen Unsinn. Bitte gehen Sie, Ma'am.")
				SAY("Madame, schauen Sie bei den Terminals nach, wenn Sie allgemeine Informationen suchen. Auf Wiedersehen.")
				SAY("Danke. Bitte gehen Sie jetzt.")
				ENDDIALOG()
			end
	NODE(2) -- Giving Mission
			SAY("Richtig, hier die Missionsdetails. Eine Gruppe von %TARGET_NPCNAME(0), ca. %TARGET_VALUE(0,1) Stueck, bereiten uns Aerger im Fraktionsterritorium. Wir brauchen Sie, um die Plage auszurotten. Kommen Sie zu mir zurueck, wenn Sie damit fertig sind.")
			SAY("Eine Gruppe von %TARGET_NPCNAME(0) hat sich in unserem Fraktionsterritorium niedergelassen. Wenn Sie %TARGET_VALUE(0,1) von denen toeten, werden vermutlich die restlichen fliehen. Kommen Sie fuer die Belohnung zu mir zurueck, wenn Sie damit fertig sind.")
			SAY("Ah ja, endlich ein kompetenter Runner. Eine Gruppe von %TARGET_NPCNAME(0) wurde in unserem Fraktionsterritorium gesichtet. Der Sicherheitsdienst geht davon aus, dass es sich um ca. %TARGET_VALUE(0,1) Stueck handelt, die getoetet werden muessen. Wenn Sie damit fertig sind, kommen Sie zu mir zurueck.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
		
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- Mission is not accomplished
				SAY("Wie waere es, wenn Sie endlich alle von diesen Kreaturen ausrotten, so, wie wir es vereinbart hatten?")
				SAY("Runner, es sind immer noch einige uebrig. Kommen Sie nicht zurueck, solange diese noch leben.")
				SAY("Kurze Pause, ja? Es sind aber immer noch welche uebrig. Ich hoffe, Sie kuemmern sich auch noch um den Rest.")
				SAY("Ich weiss, ich sagte nicht, dass es dringend sei, aber es waere nett, wenn Sie sich darum noch in diesem Jahrhundert kuemmern! Also los, Runner!")
				ENDDIALOG()
			else -- Mission was accomplished
				SAY("Sieht so aus, als ob Sie alle erwischt haben. ProtoPharm steht in Ihrer Schuld. Die %REWARD_MONEY() Credits sollten dies ausgleichen. Einen schoenen Tag noch.")
				SAY("Gut gemacht! Sie haben genug von denen vernichtet und der Rest ist gefluechtet. Die Belohnung, %REWARD_MONEY() Credits, wurde soeben ueberwiesen. Informieren Sie sich an unseren Terminals ueber weitere Jobs. Bis zum naechsten Mal!")
				SAY("Sehr gut mein Freund. Ich dachte schon, wir erwischen sie nicht alle. Hier sind Ihre %REWARD_MONEY() Credits. ProtoPharm dankt Ihnen fuer die Unterstützung. Bitte informieren Sie sich an unseren Terminals ueber weitere Auftraege.")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
						
		
			
