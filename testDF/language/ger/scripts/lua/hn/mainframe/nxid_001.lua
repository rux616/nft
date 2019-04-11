--************************
--name   : nxid_001.lua
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
DBNAME="NExT Broadcasting Daemon v0.0.1"
FACNAME="NExT"
FACSLOGAN="Wohin Sie auch wollen � fahren Sie mit NEXT!"
FACGENERAL="Allgemeine Fraktions Information\n NEXT Systems Inc. hat fr�her die Raumschiffe f�r die lange Reise nach Irata III entwickelt. Seit dem Abschluss des Weltraumprogramms konzentriert sich die Gesellschaft auf die Entwicklung von HoverCars und HoverBikes. Neocrons Subway System wurde ebenfalls von der NEXT entwickelt. Im Zusammenarbeit mit Tangent Technologies stellt die NEXT auch ComBots, Panzer und andere mobile Waffensysteme her."
FACHQ="Fraktions Hauptquartier\n  Das HQ befindet sich in Plaza 4"
FACPERS="Wichtige Per�nlichkeiten\n Craig Diggers, der 55 j�hrige Gr�nder der Gesellschaft, wurde durch einen tragischen Unfall daran gehindert, nach Irata III auszuwandern. Seitdem widmet er sich mit Hingabe der Aufgabe, neue Raumschiffe zu bauen. \n SysAdmin Violet 'Gecko' Derix, 62, ist die altmodische Grande Dame ihrer Branche. Sie ist f�r ihre Extravaganz und ihre Liebe zum Luxus bekannt."
FACHISTORY="Fraktions Geschichte\n Im Jahr 2723 gr�ndet Craig Diggers NEXT Systems Inc. Sein Team talentierter Ingenieure widmet sich der Entwicklung und Herstellung von Raumschiffen. Neun Jahre sp�ter wirft die Firma zum ersten Mal Profite ab. Im Jahr 2733 geht NEXT eine Partnerschaft mit BioTech Industries ein. Es gilt, ein modular aufgebautes System einzurichten, das die Produktion einzelner Fahrzeuge mit spezifischen Kombinationen von HiTec Komponenten erlaubt. Drei Jahren sp�ter geht die Gesellschaft an die 'Stock-X', die B�rse Neocrons, und verzeichnet eine enorme Wertsteigerung auf dem Markt. Im Jahr 2747 wird der Kooperationsvertrag mit BioTech Industries von Tangent Technologies �bernommen; jener Firma, die in diesem Jahr von BioTech Industries gegr�ndet wurde. Zwei Jahre sp�ter verhindert ein Unfall den Aufbruch Craigs von Neocron. Er verpasst den Abflug des Raumschiffs, auf dem sich sein Gesamtverm�gen sowie Kopien s�mtlicher Konstruktionspl�ne befinden, nach Irata III. \n Im Jahr 2750 �bernimmt Craig Diggers die Leitung der NEXT Systems Inc. Auch jetzt ist sein einziges Lebensziel offenbar die Wiederaufnahme des Irata III Programms."
FACRUMORS="Fraktions Ger�chte\n "
FACREL="Fraktions Kontakte\n Es existiert einen Kooperationsvertrag zwischen Tangent Technologies und NEXT Systems Inc. Oft erteilt die NEXT Systems Inc den CityMercs Bewachungs- und Sicherheitsauftr�ge, sowie Auftr�ge f�r Sabotageakte � haupts�chlich gegen die ProtoPharm. NEXT Systems Inc produziert s�mtliche Fahrzeuge der Verwaltung und der NCPD. \n Aus irgendeinem Grund hegt Craig starke Antipathien gegen ProtoPharm, was sich in seinen Bem�hungen, dieser Firma Hindernisse in den Weg zu legen, niederschl�gt. \n Sowohl die Anarchisten als auch die Mutantenhorden lassen nicht ab, die NEXT-Transporte in den Au�enbereichen Neocrons st�ndig anzugreifen. \n Craig Diggers sieht die Twilight Guardian als eine Bedrohung seiner Gesch�fte und seiner Hoffnungen auf die Wiedereinf�hrung des Weltraumprogramms. Er hat sowohl pers�nliche, als auch gesch�ftliche Gr�nde, jeden zu unterst�tzen, der sich den Rebellen entgegenstellt."

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

