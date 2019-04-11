--************************
--name   : SINGLE_AG_CS_01.lua
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
		SAY("Ahh ja mein Schueler, es sieht so aus, als gaebe es ein Problem mit %TARGET_NPCNAME(0). Durchsuche die naehere Umgebung und eliminiere %TARGET_VALUE(0,1) Stueck von denen. Wenn Du deine Mission abgeschlossen hast, komm zu mir zurueck, damit ich dich entsprechend belohnen kann.")
		SAY("Die Praesenz von %TARGET_NPCNAME(0) in der naeheren Umgebung stoert den Frieden unserer Gemeinschaft. Suche in der naeheren Umgebung nach diesen Kreaturen und opfere davon zum Ruhme Crahns %TARGET_VALUE(0,1) Stueck. Zeit ist essentiel, Schueler, also beeil Dich.")
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				SAY("Juenger, stellst Du die Anweisungen der Bruderschaft in Frage? Bitte komm erst zurueck, wenn Deine Aufgabe erledigt ist.")
				SAY("Komm erst wieder, wenn die Straﬂen von dieser unheiligen Plage befreit sind.")
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