--************************
--name   : SINGLE_AS_BT_02.lua
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
			if (result==1) then
				SAY("Willkommen, Sir. Was kann ich fuer Sie tun?")
				SAY("Hallo, Sir. Kann ich Ihnen helfen?")
				SAY("Ich gruesse Sie, Sir. Kann ich ihnen helfen?")
				SAY("Willkommen, Runner. Was kann ich für Sie tun?")
				SAY("Ja, Runner? Kann ich Ihnen helfen?")
				SAY("Gruesse, Runner. Was kann ich fuer Sie tun?")

				ANSWER("Ich schau mich nur um. Danke.",1)
				ANSWER("Entschuldigung, ich dachte, Sie waeren jemand anderes.",1)
				ANSWER("Ich bin hier fuer die Drecksarbeit.",2)
				ANSWER("Ich hab mich fuer einen Auftrag aus dem BioTech Terminal entschieden. Drecksarbeit.",2)
				ANSWER("Laut dem BioTech Terminal soll ich mich hier melden. Ich komme wegen der Drecksarbeit.",2)
				ANSWER("Ich hab mich fuer einen Auftrag aus dem BioTech Terminal entschieden. Aber das sollten Sie bereits wissen.",4)
				ANSWER("Laut dem BioTech Terminal soll ich mich hier melden. Natuerlich wissen Sie schon davon.",4)

			else
				SAY("Willkommen, Runner. Was kann ich fuer Sie tun?")
				SAY("Hallo, Runner. Kann ich Ihnen helfen?")
				SAY("Ich gruesse Sie, Runner. Kann ich Ihnen helfen?")
				SAY("Willkommen, Miss. Was kann ich fuer Sie tun?")
				SAY("Ja, Ma`am? Kann ich Ihnen helfen?")
				SAY("Gruesse, Miss. Was kann ich fuer Sie tun?")

				ANSWER("Ich schau mich nur um. Danke.",1)
				ANSWER("Entschuldigung, ich dachte, Sie waeren jemand anderes.",1)
				ANSWER("Ich bin hier für die Drecksarbeit.",2)
				ANSWER("Ich hab mich für einen Auftrag aus dem BioTech Terminal entschieden. Drecksarbeit.",2)
				ANSWER("Laut dem BioTech Terminal soll ich mich hier melden. Ich komme wegen der Drecksarbeit.",2)
				ANSWER("Ich hab mich für einen Auftrag aus dem BioTech Terminal entschieden. Aber das sollten Sie bereits wissen.",3)
				ANSWER("Laut dem BioTech Terminal soll ich mich hier melden. Natuerlich wissen Sie schon davon.",3)
			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Sir, bitte verschwenden Sie nicht meine Zeit. Ich bin sehr beschaeftigt. Einen schoenen Tag noch.")
				SAY("Ich habe keine Zeit für sinnlose Gespraeche. Bitte gehen Sie jetzt, Sir!")
				ENDDIALOG()
			else
				SAY("Miss, bitte verschwenden Sie nicht meine Zeit. Ich bin sehr beschaeftigt. Einen schoenen Tag noch.")
				SAY("Ich habe keine Zeit für sinnlose Gespraeche. Bitte gehen Sie jetzt, Sir!")
				ENDDIALOG()
			end
	NODE(2)
		SAY("Bitte! Benutzen Sie niemals diesen Ausdruck, wenn Sie mit mir reden.  Nun hoeren Sie. Sie duerfen mit niemanden ausser mir ueber diesen Auftrag reden. Alles, was Sie wissen muessen, ist der Name, %NPC_NAME(1), und der Aufenthaltsort, %NPC_WORLD(1), des Zielsubjekts. Eliminieren Sie das Ziel und kommen Sie dann zu mir zurueck. Gehen Sie und erledigen Sie den Job.")
		SAY("Bitte! Verwenden Sie nicht diese Ausdrucksweise. Dies ist ein geheimer Auftrag, ueber den Sie mit niemandem ausser mir reden duerfen.  Nun zu den Details. Finden und eliminieren Sie die Zielperson %NPC_NAME(1) in %NPC_WORLD(1).  Wenn Sie fertig sind, finden Sie mich hier fuer die Auswertung.")
		SAY("Runner! Sie sollten nicht diese Ausdrucksweise mir gegenueber verwenden.  Sie sollten auch mit niemandem ueber diesen Job reden.  Gehen Sie nach %NPC_WORLD(1) und toeten Sie %NPC_NAME(1). Danach kommen Sie hierher zurueck. Bitte gehen Sie jetzt.")
		SETNEXTDIALOGSTATE(4)
		ENDDIALOG()
	
	NODE(3)
		SAY("Das stimmt. Sie kennen sich in diesem Geschaeft aus, wie? Dann verstehen Sie sicher auch, dass Sie mit niemandem darueber reden duerfen. Alles, was Sie wissen muessen, ist der Name des Ziels, %NPC_NAME(1), und sein Aufenhaltsort, %NPC_WORLD(1). Bitte eliminieren Sie das Ziel und kommen Sie fuer die Auswertung zu mir zurueck. Und nun los, erledigen Sie den Job.")
		SAY("Ja, ich weiss, warum Sie hier sind. Finden und toeten Sie %NPC_NAME(1) in %NPC_WORLD(1). Reden Sie mit niemandem. Danach melden Sie sich wieder bei mir.")
		SAY("Sie muessen die Brisanz dieses Auftrags verstehen und duerfen natuerlich darueber mit niemandem reden. Suchen Sie in %NPC_WORLD(1) nach %NPC_NAME(1) und eliminieren Sie die Zielperson. Danach werde ich hier mit Ihnen die Mission auswerten. Bitte gehen Sie jetzt.")
		SETNEXTDIALOGSTATE(4)
		ENDDIALOG()
	

	NODE(4)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				SAY("Runner, was machen Sie hier? Sie haben einen Job zu erledigen. JETZT!")
				SAY("Was zum Teufel machen Sie hier? Ich gebe Ihnen den Rat, den Job so schnell wie moeglich zu erledigen. Sie wollen doch nicht, dass wir Sie ersetzen muessen. Gehen Sie!")
				SAY("Ich sagte Ihnen, was Sie zu tun haben. Also hoeren Sie auf zu quasseln und machen Ihren Job!")
				ENDDIALOG()
			else
				SAY("Willkommen zurueck, Runner. Das haben Sie wirklich gut gemacht. Hier sind Ihre %REWARD_MONEY() Credits. Die haben Sie sich verdient. Informieren Sie sich am BioTech Terminal ueber weitere Jobs. Wir brauchen talentierte Runner wie Sie. Denken Sie daran, Stillschweigen zu bewahren. Einen schoenen Tag noch.")
				SAY("Gute Arbeit, Runner. Hier sind die versprochenen %REWARD_MONEY() Credits. Halten Sie an unseren Terminals die Augen nach neuen Jobs offen. BioTech hat garantiert immer was fuer Sie. Vergessen Sie nicht, den Mund zu halten. Einen schoenen Tag noch.")
				SAY("Unseren Informationen zufolge waren Sie erfolgreich, Runner. Gut gemacht. Es sieht so aus, als ob Sie wissen, was Sie tun. BioTech hat immer Verwendung fuer einen talentierten Runner wie Sie. Sie schauen doch weiterhin auf unseren Terminals nach, oder? Hier ist Ihr Geld. Die Sache bleibt zwischen uns beiden. Bye.")
				ACTIVATEDIALOGTRIGGER(1)
			end
	
end
						
		
			