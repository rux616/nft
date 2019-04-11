--************************
--name   : SINGLE_AG_CS_02.lua
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
			SAY("Gruesse Bruder, wie kann ich Dir helfen?")
			SAY("Gepriesen sei Crahn, Bruder. Was suchst Du?")
			SAY("Brauchst Du meine Hilfe, Bruder?")
				
			ANSWER("Ich komme, um Ungeziefer zu beseitigen. Also was muss ich tun?",1)
			ANSWER("Wegen der Ungezieferbeseitigung...",1)
			ANSWER("Ach nichts. Bye",4)

		else
			SAY("Gruesse Schwester, wie kann ich Dir helfen?")
			SAY("Gepriesen sei Crahn, Schwester. Was suchst Du?")
			SAY("Brauchst Du meine Hilfe, Schwester?")
				
			ANSWER("Ich komme, um Ungeziefer zu beseitigen. Also was muss ich tun?",1)
			ANSWER("Wegen der Ungezieferbeseitigung...",1)
			ANSWER("Ach nichts. Bye",4)
end


	NODE(1)
		SAY("Ahh ja Schueler, die Praesenz von %TARGET_NPCNAME(0) stoert die psychische Wahrnehmung in unserem Gebiet. Das erschwert es uns, unsere Energien zu fokussieren, was nicht hinnehmbar ist, da wir spaeter noch ein Ritual durchfuehren wollen. Deshalb musst Du die naehere Umgebung nach der Plage absuchen und %TARGET_VALUE(0,1) von denen vernichten. Das sollte reichen, um das psychische Feld wieder aufbauen zu koennen. Wenn Du damit fertig bist, werden wir Dich hier entsprechend entlohnen.")
		SAY("Ahh ja Juenger, die Praesenz von %TARGET_NPCNAME(0) ist nicht laenger hinnehmbar. Sie stoeren unsere psychische Wahrnehmung und die Faehigkeit, unsere Energien zu fokussieren. Deshalb musst Du die naehere Umgebung nach der Plage absuchen und %TARGET_VALUE(0,1) von denen vernichten. Das sollte reichen, um unsere Konzentrationsfähigkeit wieder herzustellen. Wenn Du damit fertig bist, werden wir Dich hier entsprechend entlohnen.")
		SAY("Wir haben ein lokales Problem mit %TARGET_NPCNAME(0). Normalerweise kümmern wir uns selbst um solche Angelegenheiten,aber derzeit sind viele aus der Bruderschaft bei einer Messe. Tu der Bruderschaft einen Gefallen, Schüler, und beseitige %TARGET_VALUE(0,1) %TARGET_NPCNAME(0). Das sollte die restlichen eine Weile fern halten, bis wir das Problem in den Griff bekommen haben.")
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				SAY("Schueler, stellst Du die Anweisungen der Bruderschaft in Frage? Bitte komm erst wieder, wenn Du deine Aufgabe erledigt hast.")
				SAY("Komm erst wieder, wenn die Strassen von der unheiligen Brut gereinigt wurden.")
				ENDDIALOG()
			else
				SAY("Gute Arbeit Schueler, nimm diese %REWARD_MONEY() Credits als Zeichen der Zufriedenheit der Bruderschaft.")
				SAY("Gepriesen sei Crahn, Dein Erfolg ist zum Nutzen aller. Nimm diese %REWARD_MONEY() Credits als Zeichen unserer Dankbarkeit.") 
				ACTIVATEDIALOGTRIGGER(1)
				ENDDIALOG()
			end
	NODE(4)
		SAY("Auf Wiedersehen, Schueler.")
		SAY("Komm zurueck, wenn Deine Gedanken wieder geordnet sind, Juenger.")
		ENDDIALOG()
end