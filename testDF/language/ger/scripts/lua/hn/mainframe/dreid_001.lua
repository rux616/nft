--************************
--name   : dreid_001.lua
--ver    : 0.1
--author : Ferron
--date   : 2004/09/21
--lang   : de
--desc	 : General Faction Information
--npc    : Hacknet Broadcast Daemon v0.1.1
--************************
--changelog:
--2004/09/21(0.1): built from snows template
--************************


-- faction information
DBNAME="Diamond Real Estate Broadcasting Daemon v0.0.1"
FACNAME="Diamond Real Estate"
FACSLOGAN="Ihr Lebensraum."
FACGENERAL="Allgemeine Fraktions Information\n Diamond Real Estate ist eine privatisierte, ehemalige Abteilung der CityAdmin. Unsere Dienste schließen sowohl die Verwaltung und den Kauf von Immobilien, als auch die Installation von Sicherheitssystemen mit ein. Auch vergeben wir zum Teil Lizenzen: in diesem Fall beauftragt Diamant Real Estate unabhängige Immobilienmakler mit der Betreuung gewisser Strassen und Gebäude."
FACHQ="Fraktions Hauptquartier\n Das HQ befindet sich in Plaza 3"
FACPERS="Wichtige Perönlichkeiten\n Der Leiter der DRE, Eric Danmund, 36, ist ein Hai – und das muss er auch sein, um sich auf dem Immobilienmarkt behaupten zu können. Seine Geschäftspraktik der Lizenzvergabe für Straßen und Apartmenthäuser an kleinere Agenturen wirft bedeutende Profite ab."
FACHISTORY="Fraktions Geschichte\n Im Jahre 2746 von Lioon Reza gegründet, ist Diamond Real Estate unter der Leitung von Eric Danmund als kommunale Immobilien-Gesellschaft tätig. Zu ihren Aufgaben gehört es, städtische Immobilien zu verwalten und verkaufen, sowie den scheinbar chaotischen Immobilienmarkt zu regulieren. Im Jahr 2750 zirkulieren Gerüchte über externe Einflüsse eines großen Verbrechersyndikats auf Diamond."
FACRUMORS="Fraktions Gerüchte\n  "
FACREL="Fraktions Kontakte\n Eric ist mit Craig Diggers, dem Leiter der NEXT Systems, befreundet. Schutzaufträge, etwa während gewisser Sonderveranstaltungen in den Gebäuden der Gesellschaft, vergibt Diamond an die CityMercs. In jüngster Zeit beliefert Tangent Technologies Inc im Tausch gegen preiswerte Immobilien die Diamond mit Sicherheitssystemen. Berücksichtigt man die Tatsache, dass Diamond Real Estate eine privatisierte, ehemalige Abteilung der CityAdmin ist, müsste die Verbindung sehr gut sein. \n Die Anarchisten bedrohen die herrschende Ordnung der Stadt und, noch schlimmer, sie nehmen keinerlei Rücksicht auf Immobilien. Wenn es nach Danmund ginge, würde die Anarchy Breed schnellstens ausgerottet  – und die Twilight Guardian ebenfalls."

-- main dialog
function DIALOG()

NODE(0)
	SAY("Broadcast system establishing link ...... Link established ...... System ready:"..DBNAME)
	ANSWER("       - Continue",10)
	ANSWER("       - Abort",25)
NODE(10)
	SAY("Information categories")
	ANSWER("       - General Faction Information",15)
	ANSWER("       - Faction Headquarter",16)
	ANSWER("       - Key Personalities",17)
	ANSWER("       - Faction History",18)
	ANSWER("       - Faction Rumors",19)
	ANSWER("       - Faction Relations",20)
	ANSWER("       - Abort",25)
NODE(15)
	SAY(""..FACGENERAL)
	ANSWER("Back",10)
NODE(16)
	SAY(""..FACHQ)
	ANSWER("Back",10)
NODE(17)
	SAY(""..FACPERS)
	ANSWER("Back",10)
NODE(18)
	SAY(""..FACHISTORY)
	ANSWER("Back",10)
NODE(19)
	SAY(""..FACPERS)
	ANSWER("Back",10)
NODE(20)
	SAY(""..FACRUMORS)
	ANSWER("Back",10)
NODE(25)
	SAY("Closing Link ...... Disconnecting ......"..FACNAME.." - "..FACSLOGAN)
	ANSWER("       - Disconnect",26)
	ANSWER("       - Cancel",0)
NODE(26)
	SAY("Disconnecting")
	ENDDIALOG()
end

