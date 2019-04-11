--************************
--name   : SINGLE_AS_DRE_02.lua
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
				ANSWER("Ich bin wegen dem Auftrag hier.",2)
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
			SAY("Gut, wir haben einen dringenden Job, der Ihrer Aufmerksamkeit bedarf. Ihr Ziel heisst %NPC_NAME(1) und es haelt sich in %NPC_WORLD(1) auf.  Exekutieren Sie das Ziel leise und unauffaellig. Danach kommen Sie hierher zurueck.")
			SAY("Ok, wie haben ein dringendes Problem, um dass sich gekuemmert werden muss. Unser Problem ist das Zielsubjekt %NPC_NAME(1) in %NPC_WORLD(1), es muss ausgeschaltet werden. Erledigen Sie es sauber und schnell. Wenn wir uns das naechste Mal sehen, muss das Problem geloest sein.")
			SAY("Ah ja, Runner. Unser Problem hoert auf den Namen %NPC_NAME(1) und es muss dringend beseitigt werden. Wir wollen das Problem tot sehen. Bringen Sie es um, verbrennen Sie es oder sprengen Sie das Zielsubjekt in die Luft. Sie finden es in %NPC_WORLD(1). Kommen Sie danach hierher. Und nun Beeilung.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- Mission is not accomplished
				SAY("Was machen Sie hier. Das Ziel lebt noch. Ich sagte, es ist dringend. Sie haben keine Zeit zu verschwenden!")
				SAY("Runner, war da nicht etwas, das Sie zu erledigen haben?  Unseren Informationen zufolge ist das Ziel immer noch in %NPC_WORLD(1). Erledigen Sie das, schnell!")
				SAY("Sagen Sie mir nicht, dass das Problem noch nicht geloest ist. Entweder Sie kuemmern sich endlich darum oder ein anderer Runner wird fuer den Job angeworben.")
				SAY("Hab ich die Dringlichkeit dieses Auftrags nicht deutlich genug gemacht? Dringend heisst: tun Sie es jetzt!")
				ENDDIALOG()
			else -- Mission was accomplished
				SAY("Gratulation zum erfolgreichen Abschluss dieses Jobs, Runner. Schoen zu sehen, dass Sie das Problem so schnell geloest haben.  Hier ist der vereinbarte Lohn in Hoehe von %REWARD_MONEY() Credits. Einen schoenen Tag noch.")
				SAY("Ah, ja. Gut gemacht! Die erfolgreiche Hinrichtung des Ziels bringt Ihnen %REWARD_MONEY() Credits ein, die soeben auf Ihr Konto ueberwiesen wurden.  Diamond Real-Estate ist begeistert von Ihrer Professionalitaet. Informieren Sie sich bitte an unseren Terminals ueber weitere Jobs. Einen schoenen Tag noch.")
				SAY("Runner, Gratulation. Sie haben das Problem innerhalb der geforderten Zeit beseitigt. %REWARD_MONEY() Credits wurden soeben Ihrem Konto gutgeschrieben. Diamond Real-Estate ist Ihnen fuer Ihren Einsatz dankbar. Informieren Sie sich an den Terminals ueber weitere Auftraege. Auf Wiedersehen.")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end