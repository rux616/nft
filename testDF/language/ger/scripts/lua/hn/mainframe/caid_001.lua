--************************
--name   : caid_001.lua
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
DBNAME="CityAdmin Broadcasting Daemon v0.0.1"
FACNAME="CityAdmin"
FACSLOGAN="Für Reza, für Neocron, für die Menschen"
FACGENERAL="Allgemeine Fraktions Information\n 'Für Reza, für Neocron, für die Menschen' Freiheit...ein unbekanntes Konzept bis Rezas Herrschaft begann. Die CityAdmin und die NCPD wurden von Präsident Reza erschaffen, um die Bürger Neocrons zu schützen und ihnen zu dienen."
FACHQ="Fraktions Hauptquartier\n "
FACPERS="Wichtige Perönlichkeiten\n Präsident Lioon Reza, 64 Jahre alt und wohltätiger Führer Neocrons, war einmal sehr eng mit dem derzeitigen Anführer der Terroristen des Twilight Guardian, Hagen Yager, befreundet. Gemeinsam gründeten sie damals den Guardian um gegen Die Regierung der PSI Monks zu kämpfen."
FACHISTORY="Fraktions Geschichte\n Die CityAdmin und das NCPD wurden kurz nach dem Fall der PSI Monk Regierung im Jahre 2724 ins Leben gerufen. Der Einfluss und die Stellung wuchsen stetig seit damals, so dass die CityAdmin heute vollständig den Plaza-Bezirk und Via Rosso unter ihrer Kontrolle hat. Man begegnet auch außerhalb dieser Bezirke den Patrouillen des NCPD, jedoch reicht ihr Einfluss nicht aus, um alle Verbrechen dort zu unterbinden. Böse Zungen behaupten, das es auch nicht im Interesse der CityAmin liegt, aller Verbrechen Herr zu werden."
FACRUMORS="Fraktions Gerüchte\n "
FACREL="Fraktions Kontakte\n Die meisten großen Konzerne wie Tangent Technologies und ProtoPharm sind vertrauenswürdige Alliierte der CityAdmin. Sie stellen Ausrüstung, Waffen und Technologie für das NCPD zur Verfügung und erhalten dafür bestimmte Privilegien von der Stadtverwaltung. \n Zu den CityMercs besteht ein neutrales Verhältnis. Erklärter Feind sind Twilight Guardian und ihr DOY Anhang."

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

