--************************
--name   : SINGLE_AG_PP_01.lua
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
			SAY("Richtig. Wir brauchen Sie, um %TARGET_VALUE(0,1) %TARGET_NPCNAME(0) im Fraktionsterritorum zu beseitigen. Vernichten Sie sie und holen Sie sich dann hier Ihre Belohnung ab. Denken Sie daran, wir beobachten Sie.")
			SAY("Ein kleines Experiment ist schief gelaufen und einige Kreaturen sind entkommen. Es handelt sich dabei um %TARGET_NPCNAME(0) , die sich in unmittelbarer Umgebung des Fraktionsterritorium befinden. Vernichten sie alle %TARGET_VALUE(0,1) Stueck und kommen Sie zu mir zurueck, damit ich Sie bezahlen kann.")
			SAY("Ah ja, der Runner. Eine bedrohliche Zunahme von %TARGET_NPCNAME(0) wurde in der naeheren Umgebung unseres Frationsterritorium festgestellt, nachdem ein Labor eine Fehlfunktion hatte. Um unsere empfindlichen Geraete und wichtigen Einrichtungen zu schuetzen ist es unumgaenglich, dass sie mindestens %TARGET_VALUE(0,1) Stueck von diesen Kreaturen vernichten. Kommen Sie zurueck, wenn Sie damit fertig sind.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
		
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- Mission is not accomplished
				SAY("Netter Versuch, aber es sind immer noch welche uebrig. Also kuemmern Sie sich darum.")
				SAY("Runner, das Gebiet ist immer noch verseucht. Gehen Sie zurueck und saeubern Sie es.")
				SAY("Kurze Pause, ja? Es befinden sich immer noch ein paar von denen in unserem Gebiet. Sie werden sich doch auch noch um den Rest kuemmern, hoffe ich?")
				SAY("Ja, genau. Nehmen Sie sich die Zeit. Es ist ja nicht so, dass wir es eilig haetten. Laborkreaturen brechen ja jeden Tag aus...")
				ENDDIALOG()
			else -- Mission was accomplished
				SAY("Unseren Informationen zufolge haben Sie alle erwischt. Gut gemacht. Hier ist die vereinbarte Belohnung in Hoehe von %REWARD_MONEY() Credits.")
				SAY("Gut gemacht! Die Gegend wurde von den Kreaturen befreit. Der Lohn von %REWARD_MONEY() Credits wurde auf Ihr Konto ueberwiesen. Suchen Sie in unseren Terminals nach weiteren Auftraegen. Einen angenehmen Tag noch!")
				SAY("Runner, Gratulation. Ich dachte, wir erwischen die Viecher nicht mehr. %REWARD_MONEY() Credits wurden soeben Ihrem Konto gutgeschrieben.  Wir von ProtoPharm sind Ihnen fuer die Unterstützung dankbar. Bitte informieren Sie sich an unseren Terminals ueber weitere Jobs. Auf Wiedersehen.")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
						
		
			
