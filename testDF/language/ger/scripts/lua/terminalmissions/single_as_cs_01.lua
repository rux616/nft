--************************
--name   : SINGLE_AS_CS_01.lua
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
		if (result==1) then
			SAY("Sei gegruesst Bruder, wie kann ich dir helfen?")
			SAY("Crahn sei gesegnet, Bruder. Wonach suchst Du?")
			SAY("Brauchst Du Hilfe, Bruder?")
				
			ANSWER("Nette Gegend. Gibt es hier etwas fuer mich zu tun?",1)
			ANSWER("Hast Du einen Job fuer mich?",2)
			ANSWER("Vergiss es, tschuess.",4)

		else
			SAY("Sei gegruesst Schwester, wie kann ich dir helfen?")
			SAY("Crahn sei gesegnet, Schwester. Wonach suchst Du?")
			SAY("Brauchst Du Hilfe, Schwester?")
				
			ANSWER("Nette Gegend. Gibt es hier etwas fuer mich zu tun?",1)
			ANSWER("Hast Du einen Job fuer mich?",2)
			ANSWER("Vergiss es, tschuess.",4)
		end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Hinfort Bruder, Deine Anwesenheit bringt meine innere Balance durcheinander.")
				SAY("Ich muss meditieren, störe mich nicht.")
				ENDDIALOG()
			else
				SAY("Hinfort Schwester, Deine Anwesenheit bringt meine innere Balance durcheinander.")
				SAY("Ich muss meditieren, störe mich nicht.")
				ENDDIALOG()
			end
	NODE(2)
		
				SAY("%NPC_NAME(1), war einst ein Mitglied unseres Ordens, bis wir ihn aufgrund einiger unloeblicher Taten seinerseits aus dem Orden verbannten. Wir wissen mittlerweile, dass er ein Autor des Neocronicle war und einen Bericht ueber das Leben im Orden verfasst hat. Wir fuerchten, dass dieser Bericht unser ehernes Schweigegeluebte innerhalb des Ordens durchbrechen koennte. Gehe nach %NPC_WORLD(1), finde %NPC_NAME(1) und schliesse seine Lippen... fuer immer, als Beispiel fuer jeden, der vorhat, die Bruderschaft zu verraten. Sobald die Aufgabe abgeschlossen ist, kehrst Du zu mir zurueck um Deine Belohnung zu empfangen.")
				SAY("Von unseren Kontaktleuten auf der Strasse erfuhren wir, dass %NPC_NAME(1) der Fuehrer eines unbedeutenden Kultes ist, welcher aktiv gegen die Bruderschaft von Crahn predigt. Suche %NPC_NAME(1) in %NPC_WORLD(1) und stopfe dem Ketzer ein fuer allemal das Maul. Sobald Du die Aufgabe erledigt hast, kommst Du hierher zurueck um Deine Belohnung zu empfangen.")       
				SAY("%NPC_NAME(1) wurde dabei erwischt, wie er geheime Informationen aus dem inneren Zirkel entwenden wollte. Spione sind uns ein Dorn im Auge, darum wirst Du nach %NPC_WORLD(1) gehen und dieser Schnueffelei ein Ende bereiten. Sobald Du die Aufgabe erledigt hast, kommst Du hierher zurueck um Deine Belohnung zu empfangen.")
				SETNEXTDIALOGSTATE(11)
				ENDDIALOG()

	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				SAY("Ich denke, ich habe Dir Deine Aufgabe klar und deutlich erlaeutert, kehre nicht eher zurueck bis das Ziel erledigt ist. Erst dann erhaeltst Du Deine Belohnung.")
				SAY("Warum lungerst Du hier herum, Unwuerdiger? Zeit ist von groesster Wichtigkeit, vernichte den Unglaeubigen. Erst wenn die Aufgabe erledigt ist, kann Dir Crahn seine grenzenlose Dankbarkeit zeigen.")
				ENDDIALOG()
			else
				GENDERCHECK()
					if (result==1) then
						SAY("Sehr gute Arbeit, Bruder. Hier, nimm diese %REWARD_MONEY() Credits, als ein Zeichen des Vertrauens der Bruderschaft in Deine Faehigkeiten. Nun geh und sprich mit niemandem ueber das, was Du heute gesehen hast.")
						SAY("Deine Leistungen beindruckten selbst Golon Kalah. Er persönlich bat mich, Dir diese %REWARD_MONEY() Credits als Zeichen seiner Dankbarkeit zu ueberreichen. Nun geh und sprich mit Niemandem ueber das, was Du heute gesehen hast.")
						SAY("Deine Bemuehungen waren nicht vergebens Bruder. Nimm diese %REWARD_MONEY() Credits. Sie sind ein Zeichen des Dankes der Bruderschaft. Nun geh und sprich mit Niemandem ueber das, was Du heute gesehen hast.")  

						ACTIVATEDIALOGTRIGGER(1)
						ENDDIALOG()
					else
						SAY("Sehr gute Arbeit, Schwester. Hier, nimm diese %REWARD_MONEY() Credits, als ein Zeichen des Vertrauens der Bruderschaft in Deine Faehigkeiten. Nun geh und sprich mit niemandem ueber das, was Du heute gesehen hast.")
						SAY("Deine Leistungen beindruckten selbst Golon Kalah. Er persönlich bat mich, Dir diese %REWARD_MONEY() Credits als Zeichen seiner Dankbarkeit zu ueberreichen. Nun geh und sprich mit Niemandem ueber das, was Du heute gesehen hast.")
						SAY("Deine Bemuehungen waren nicht vergebens Schwester. Nimm diese %REWARD_MONEY() Credits. Sie sind ein Zeichen des Dankes der Bruderschaft. Nun geh und sprich mit Niemandem ueber das, was Du heute gesehen hast.") 
						ACTIVATEDIALOGTRIGGER(1)
						ENDDIALOG()
					end
			end
end
						
		
			