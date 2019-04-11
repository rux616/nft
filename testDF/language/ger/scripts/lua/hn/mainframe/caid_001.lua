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
FACSLOGAN="F�r Reza, f�r Neocron, f�r die Menschen"
FACGENERAL="Allgemeine Fraktions Information\n 'F�r Reza, f�r Neocron, f�r die Menschen' Freiheit...ein unbekanntes Konzept bis Rezas Herrschaft begann. Die CityAdmin und die NCPD wurden von Pr�sident Reza erschaffen, um die B�rger Neocrons zu sch�tzen und ihnen zu dienen."
FACHQ="Fraktions Hauptquartier\n "
FACPERS="Wichtige Per�nlichkeiten\n Pr�sident Lioon Reza, 64 Jahre alt und wohlt�tiger F�hrer Neocrons, war einmal sehr eng mit dem derzeitigen Anf�hrer der Terroristen des Twilight Guardian, Hagen Yager, befreundet. Gemeinsam gr�ndeten sie damals den Guardian um gegen Die Regierung der PSI Monks zu k�mpfen."
FACHISTORY="Fraktions Geschichte\n Die CityAdmin und das NCPD wurden kurz nach dem Fall der PSI Monk Regierung im Jahre 2724 ins Leben gerufen. Der Einfluss und die Stellung wuchsen stetig seit damals, so dass die CityAdmin heute vollst�ndig den Plaza-Bezirk und Via Rosso unter ihrer Kontrolle hat. Man begegnet auch au�erhalb dieser Bezirke den Patrouillen des NCPD, jedoch reicht ihr Einfluss nicht aus, um alle Verbrechen dort zu unterbinden. B�se Zungen behaupten, das es auch nicht im Interesse der CityAmin liegt, aller Verbrechen Herr zu werden."
FACRUMORS="Fraktions Ger�chte\n "
FACREL="Fraktions Kontakte\n Die meisten gro�en Konzerne wie Tangent Technologies und ProtoPharm sind vertrauensw�rdige Alliierte der CityAdmin. Sie stellen Ausr�stung, Waffen und Technologie f�r das NCPD zur Verf�gung und erhalten daf�r bestimmte Privilegien von der Stadtverwaltung. \n Zu den CityMercs besteht ein neutrales Verh�ltnis. Erkl�rter Feind sind Twilight Guardian und ihr DOY Anhang."

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

