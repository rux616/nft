--************************
--name   : btid_001.lua
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
DBNAME="Biotech Broadcasting Daemon v0.0.1"
FACNAME="BioTech"
FACSLOGAN="Ma�geschneiderte Evolution"
FACGENERAL="Allgemeine Fraktions Information\n BioTech entwickelt biomechanische Implantate, die die menschlichen F�higkeiten betr�chtlich erh�hen und zum Beispiel sch�rfere Sinneswahrnehmung oder gr��ere physische Kraft erm�glichen. Au�erdem stellt die Firma allgemeinmedizinische und biologische HiTec Ger�te her."
FACHQ="Fraktions Hauptquartier\n  Das HQ befindet sich in ViaRosso 1"
FACPERS="Wichtige Per�nlichkeiten\n  Robert Jordan, \n immer noch Eigent�mer der Firma (92 Jahre alt und von 2691 bis 2748 Firmenleiter) ist ein Gesch�ftsmann der alten Schule. Er besitzt mehr Geld, als er jemals ausgeben kann und beobachtet den Konkurrenzkampf zwischen seinen S�hnen Seymour und Damion mit Vergn�gen, w�hrend er sein Verm�gen st�ndig vermehrt. \n Leiter Seymour Jordan \n ist mit 27 Jahren der j�ngste Sohn Roberts und hat es satt, st�ndig daran erinnert zu werden. Mit r�cksichtsloser Intelligenz widmet er sich obskuren Pl�nen, um den Konkurrenzkampf mit seinem Bruder zu gewinnen."
FACHISTORY="Fraktions Geschichte\n Gegr�ndet im Jahr 2638. Urspr�nglich profitiert das junge Unternehmen enorm von dem durch den Bau des intergalaktischen Generationen-Raumschiffs eingeleiteten Boom in der biotechnischen Forschung, doch sp�ter konzentriert sich die Firma auf die Kommunikationstechnologie. Im Jahr 2658 wird unter dem Codename Tangent eine lukrative Abteilung f�r HighTech Waffen gegr�ndet. Roger Jordan, Sohn eines der Gr�nder, wird im Jahr 2691 Eigent�mer und Leiter dieser Abteilung und verdient an der angespannten politischen Situation in Neocron immense Profite. Diese Abteilung wird im Jahr 2746 zur eigenst�ndigen Firma (Tangent Technologies, Inc.) Seymour Jordan, der j�ngere Sohn Roberts, erh�lt die Leitung der verbleibenden Firma, BioTech Industries. Im Jahr 2750 schlie�t BioTech Industries einen Kooperationsvertrag �ber die gemeinsame Entwicklung von Medikamenten und Grundkomponenten f�r eine neue Implantat-Generationen mit ProtoPharm ab."
FACRUMORS="Fraktions Ger�chte\n  "
FACREL="Fraktions Kontakte\n Zur Zeit ist die Firma ProtoPharm der engste Verb�ndete und Gesch�ftspartner Seymour Jordans. Weitere Kooperationsabkommen (Dienstleistungen gegen biomedizinische Ger�te) bestehen mit den CityMercs, der Bruderschaft des  Crahn und dem Tsunami Syndikat. BioTech Industries ist einer der Lieferanten von Implantaten f�r die STORM- und CopBots und unterh�lt gute Beziehungen zur Administration. \n Seymours Bruder Damion, Leiter der Tangent Technologies, ist sein meistgehasster Rivale. BioTech hat Probleme mit dem �beraus aktiven Schwarzmarkt, der von den Mitgliedern des Black Dragon Clans beherrscht wird. Diese sind 'Kunden' der BioTech, die nicht willens sind, f�r Implantate zu bezahlen, was wiederum zu feindlichen Auseinandersetzungen mit der Anarchy Breed und der Twilight Guardian f�hrt."

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

