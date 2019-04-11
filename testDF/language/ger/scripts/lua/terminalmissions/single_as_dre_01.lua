--************************
--name   : SINGLE_AS_DRE_01.lua
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
				SAY("Einen schoenen guten Tag, Sir. Brauchen Sie meine Hilfe?")
				SAY("Hallo, Sir.  Kann ich helfen?")
				SAY("Gruesse, Sir.")
				SAY("Ja? Was kann ich fuer Sie tun, Sir?")
				SAY("Lieferung oder Abholung? Oh, hmm. Kann ich Ihnen irgendwie behilflich sein, Sir?")
				
				ANSWER("Ich schau mich nur um. Danke.",1)
				ANSWER("Was koennen Sie mir ueber diesen Ort sagen?",1)
				ANSWER("Hey. Was ist das hier fuer ein Ort?",1)
				ANSWER("Oh, Tschuldigung, Ich dachte, Sie waeren jemand anderes.",1)
				ANSWER("Ich bin hier wegen... einem Job.",2)
				ANSWER("Yeah, ich komme wegen dem Toetungsauftrag.",2)
				ANSWER("Hi, ich hoerte, hier ist ein Mordauftrag zu vergeben.",2)
				ANSWER("Ich bin wegen dem Auftrag aus dem Diamond Real-Estate Terminal hier.",2)

			else    -- Player is a Woman:
				SAY("Willkommen, Miss. Was kann ich fuer Sie tun?")
				SAY("Hallo, Miss, wie kann ich behilflich sein?")
				SAY("Gruesse, Miss. Kann ich helfen?")
				SAY("Nun gut, wie kann ich Ihnen helfen?")
				SAY("Ja, ja. Was kann ich für Sie tun, Miss?")
				
				ANSWER("Ich schau mich nur um. Danke.",1)
				ANSWER("Was koennen Sie mir ueber diesen Ort sagen?",1)
				ANSWER("Schoen hier. Was kann man hier machen?",1)
				ANSWER("Oh, Entschuldigen Sie, ich dachte, Sie waeren jemand anderes.",1)
				ANSWER("Ich komme wegen dem Mordauftrag.",2)
				ANSWER("Im Diamond Real-Estate Terminal stand, dass Sie einen Job bezueglich einer Ermordung zu vergeben haben.",2)
				ANSWER("Hi, es soll jemand unter die Erde gebracht werden?",2)
				ANSWER("Ich bin wegen dem Auftrag aus dem Diamond Real-Estate Terminal hier.",2)
			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Bitte verschwenden Sie nicht meine Zeit. Ich bin eine beschaeftigte und wichtige Person. Einen schoenen Tag noch.")
				SAY("Hoeren Sie zu, ich habe dafuer keine Zeit. Gehen Sie einfach...Sir.")
				SAY("Sir, fuer allgemeine Informationen nutzen Sie bitte das Terminal. Wiedersehen.")
				SAY("Danke und einen schoenen Tag noch.")
				ENDDIALOG()
			else
				SAY("Verschwenden Sie nicht meine Zeit, Lady. Ich bin beschaeftigt. Einen schoenen Tag noch.")
				SAY("Hoeren Sie, Ich versuche hier zu arbeiten. Bitte gehen Sie.")
				SAY("Fuer allgemeine Informationen nutzen Sie bitte das Terminal. Wiedersehen.")
				SAY("Danke, Ma'am. Einen schoenen Tag noch.")
				ENDDIALOG()
			end
	NODE(2) -- Giving Mission
			SAY("Zur Sache. Das Ziel ist %NPC_NAME(1), ein laestiger Paechter, der endgueltig zum Auszug gezwungen werden muss. Das Ziel befindet sich in %NPC_WORLD(1).  Eliminieren Sie das Ziel ohne Aufmerksamkeit zu erregen und kommen Sie fuer die Bezahlung zu mir zurueck. Wenn Sie geschnappt werden, streiten wir jede Kenntnis von der Sache ab.")
			SAY("Gut, kommen wir zur Sache. Dies ist ein Mordauftrag an einem widerspenstigen Mieter, eine permanente Loesung für ein temporaeres Problem. Finden Sie die Zielperson mit Namen %NPC_NAME(1) in %NPC_WORLD(1) und toeten Sie ihn. Lassen Sie es wie einen normalen Raubueberfall oder so aussehen. Wenn ich Sie das naechste Mal sehe, sollte %NPC_NAME(1) unter der Erde sein.")
			SAY("Ah ja, Runner. Ich bin froh, dass Sie kommen konnten. Das Problem ist ein stoerender Paechter mit Namen %NPC_NAME(1). Die Loesung ist seine Ermordung. Sie finden ihn in %NPC_WORLD(1). Ich bin sicher, Sie wissen, dass dieser Auftrag der Geheimhaltung unterliegt. Kommen Sie zurueck, wenn Sie ihn erledigt haben.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- Mission is not accomplished
				SAY("Was machen Sie hier? Das Ziel ist immer noch am Leben. Bitte bringen Sie es endlich zu Ende.")
				SAY("Runner, haben Sie nicht ein Problem, um dass Sie sich kuemmern sollten? Unseren Informationen zufolge befindet sich der Paechter immer noch in %NPC_WORLD(1). Nun machen Sie endlich Ihren Job.")
				SAY("Sehen Sie, der Paechter ist immer noch am Leben. Also hoeren Sie auf mit dem Bloedsinn und erledigen den Job!")
				SAY("Was zum Geier wollen Sie hier? Ich gebe Ihnen den ernshaften Rat endlich Ihren Vertrag zu erfuellen oder Sie werden sich selbst bald in einer Welt voller Schmerzen wiederfinden.")
				ENDDIALOG()
			else -- Mission was accomplished
				SAY("Gratulation zum erfolgreichen Abschluss Ihres Auftrags, Runner.  Es ist eine Freude mit jemandem mit Ihrer Professionalitaet zusammen zu arbeiten.  Hier sind Ihre %REWARD_MONEY() Credits. Auf eine gute Zusammenarbeit in der Zukunft.")
				SAY("Ah, Sie sind es. Wirklich gut gemacht! Sie haben das Ziel erfolgreich eliminiert. Die Bezahlung in Hoehe von %REWARD_MONEY() Credits wurde Ihrem Konto soeben gutgeschrieben.  Diamond Real-Estate ist begeistert ueber Ihre Professionalitaet. Informieren Sie sich an unseren Terminals ueber weitere Jobs.  Einen schoenen Tag noch.")
				SAY("Runner, Gratulation. Wir wurden informiert, dass das Ziel eliminiert wurde. %REWARD_MONEY() Credits wurden auf Ihr Konto ueberwiesen.  Wir von Diamond Real-Estate sind Ihnen fuer diese Hilfe dankbar. Bitte informieren Sie sich an den Terminals ueber weitere Jobs. Auf Wiedersehen.")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
						
		
			
