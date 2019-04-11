--************************
--name   : SINGLE_AS_BT_01.lua
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
				SAY("Willkommen, Sir. Was kann ich fuer Sie tun?")
				SAY("Hallo, Sir. Kann ich ihnen helfen?")
				SAY("Ich gruesse Sie, Sir. Kann ich ihnen helfen?")
				
				ANSWER("Ich schau mich nur etwas um. Danke.",1)
				ANSWER("Was koennen Sie mir ueber diesen Ort sagen?",1)
				ANSWER("Es ist schoen hier. Was kann man hier machen?",1)
				ANSWER("Entschuldigung, ich dachte Sie waeren jemand anderes.",1)
				ANSWER("Ich bin wegen dem Liquidationsauftrag hier.",2)
				ANSWER("Ueber das BioTech Terminal bin ich auf einen Auftrag bezueglich einer Liquidation aufmerksam geworden.",2)
				ANSWER("Hi, ich bin wegen dem Liquidationsauftrag hier.",2)
				ANSWER("Ich bin wegen dem Auftrag hier, der im BioTech Terminal zu finden war.",2)

			else    -- Player is a Woman:
				SAY("Willkommen, Miss. Was kann ich fuer Sie tun?")
				SAY("Hallo Miss, wie kann ich Ihnen helfen?")
				SAY("Ich gruesse Sie, Miss. Kann ich Ihnen helfen?")
				
				ANSWER("Ich schau mich nur etwas um. Danke.",1)
				ANSWER("Was koennen Sie mir ueber diesen Ort sagen?",1)
				ANSWER("Es ist schoen hier. Was kann man hier machen?",1)
				ANSWER("Entschuldigung, ich dachte Sie waeren jemand anderes.",1)
				ANSWER("Ich bin wegen dem Liquidationsauftrag hier.",2)
				ANSWER("Ueber das BioTech Terminal bin ich auf einen Auftrag bezueglich einer Liquidation aufmerksam geworden.",2)
				ANSWER("Hi, ich bin wegen dem Liquidationsauftrag hier.",2)
				ANSWER("Ich bin wegen dem Auftrag hier, der im BioTech Terminal zu finden war.",2)
			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Bitte verschwenden Sie nicht meine Zeit. Ich bin sehr beschaeftigt. Einen schoenen Tag noch.")
				SAY("Ich habe keine Zeit für sinnlose Gespraeche. Bitte gehen Sie jetzt, Sir!")
				SAY("Sir, denken Sie, ich habe die Zeit für Smalltalk? Bitte gehen Sie.")
				ENDDIALOG()
			else
				SAY("Verschwenden Sie nicht meine Zeit, Lady. Ich bin sehr beschaeftigt. Einen schoenen Tag noch.")
				SAY("Hoeren Sie, Ich habe keine Zeit für belanglose Gespraeche. Bitte gehen Sie weiter.")
				SAY("Ma'am, sehe ich aus als haette ich Zeit für Smalltalks? Bitte gehen Sie.")
				ENDDIALOG()
			end
	NODE(2) -- Giving Mission
			SAY("Ich habe auf Sie gewartet. Hier die Details fuer die Liquidation: Das Zielsubjekt ist %NPC_NAME(1) und befindet sich in %NPC_WORLD(1). Liquidieren Sie das Ziel ohne Aufmerksamkeit zu erregen und kehren Sie zur Auswertung zu mir zurueck. Keine weiteren Fragen, sprechen Sie mit niemanden, machen Sie einfach Ihren Job.")
			SAY("Gut, kommen wir gleich zum Geschaeft. Dies ist eine Liquidation, die Loesung fuer ein Problem. Finden sie das Zielsubjekt, %NPC_NAME(1) in %NPC_WORLD(1) und eliminieren Sie es. Sprechen Sie mit niemandem ausser mir; und wenn wir das naechste mal miteinander reden, moechte ich, dass Sie sich um %NPC_NAME(1) gekuemmert haben.")
			SAY("Ah ja, Runner.  Ich bin froh, dass Sie da sind. Der Name des Ziels ist %NPC_NAME(1). Sie finden es in %NPC_WORLD(1). Sprechen Sie mit niemandem. Machen Sie ihren Job und wenn Sie damit fertig sind, kommen Sie zur Auswertung zu mir zurueck.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- Mission is not accomplished
				SAY("Was machen Sie hier? Unseren Informationen zufolge haben Sie den Auftrag noch nicht erledigt. Bitte kuemmern Sie sich darum.")
				SAY("Runner, ich glaube, Sie haben einen Auftrag zu erledigen. Unseren Informationen zufolge befindet sich das Ziel immer noch in %NPC_WORLD(1). Bitte erledigen Sie das.")
				SAY("Schon zurueck? Wir wissen aber, dass das Ziel noch lebt. Setzen Sie sich endlich in Bewegung und tun Sie, wofuer wir Sie bezahlen.")
				SAY("Was zum Teufel machen Sie hier? Ich rate Ihnen ernsthaft, endlich das Ziel zu liquidieren oder Sie bekommen ebenfalls Probleme.")
				ENDDIALOG()
			else -- Mission was accomplished
				SAY("Willkommen zurueck und Glueckwuensche, Runner. Wir koennen froh sein, dass Sie auf unserer Seite stehen. Hier ist die Bezahlung in Hoehe von %REWARD_MONEY() Credits. Bitte haben Sie ein Auge auf weitere Jobs von BioTech. Noch einen schoenen Tag.")
				SAY("Runner, schoen Sie wiederzusehen. Die erfolgreiche Liquidation hat Ihnen %REWARD_MONEY() Credits eingebracht. BioTech weiss Ihre Arbeit zu schaetzen und wir wuerden uns freuen, bald wieder mit Ihnen zusammen arbeiten zu duerfen. Durchforsten Sie unsere Terminals nach mehr Informationen ueber weitere Jobs. Einen schoenen Tag noch.")
				SAY("Runner, Gratulation. Unseren Informationen zufolge ist der Auftrag erfolgreich ausgeführt worden. Die %REWARD_MONEY() Credits haben Sie sich wirklich verdient. BioTech waere ueber weitere Unterstuetzung durch sie sehr froh. Nutzen Sie unsere Terminals fuer den Zugang zu weiteren Auftraegen. Einen schoenen Tag noch.")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
						
		
			
