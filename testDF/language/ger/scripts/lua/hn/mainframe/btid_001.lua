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
FACSLOGAN="Maßgeschneiderte Evolution"
FACGENERAL="Allgemeine Fraktions Information\n BioTech entwickelt biomechanische Implantate, die die menschlichen Fähigkeiten beträchtlich erhöhen und zum Beispiel schärfere Sinneswahrnehmung oder größere physische Kraft ermöglichen. Außerdem stellt die Firma allgemeinmedizinische und biologische HiTec Geräte her."
FACHQ="Fraktions Hauptquartier\n  Das HQ befindet sich in ViaRosso 1"
FACPERS="Wichtige Perönlichkeiten\n  Robert Jordan, \n immer noch Eigentümer der Firma (92 Jahre alt und von 2691 bis 2748 Firmenleiter) ist ein Geschäftsmann der alten Schule. Er besitzt mehr Geld, als er jemals ausgeben kann und beobachtet den Konkurrenzkampf zwischen seinen Söhnen Seymour und Damion mit Vergnügen, während er sein Vermögen ständig vermehrt. \n Leiter Seymour Jordan \n ist mit 27 Jahren der jüngste Sohn Roberts und hat es satt, ständig daran erinnert zu werden. Mit rücksichtsloser Intelligenz widmet er sich obskuren Plänen, um den Konkurrenzkampf mit seinem Bruder zu gewinnen."
FACHISTORY="Fraktions Geschichte\n Gegründet im Jahr 2638. Ursprünglich profitiert das junge Unternehmen enorm von dem durch den Bau des intergalaktischen Generationen-Raumschiffs eingeleiteten Boom in der biotechnischen Forschung, doch später konzentriert sich die Firma auf die Kommunikationstechnologie. Im Jahr 2658 wird unter dem Codename Tangent eine lukrative Abteilung für HighTech Waffen gegründet. Roger Jordan, Sohn eines der Gründer, wird im Jahr 2691 Eigentümer und Leiter dieser Abteilung und verdient an der angespannten politischen Situation in Neocron immense Profite. Diese Abteilung wird im Jahr 2746 zur eigenständigen Firma (Tangent Technologies, Inc.) Seymour Jordan, der jüngere Sohn Roberts, erhält die Leitung der verbleibenden Firma, BioTech Industries. Im Jahr 2750 schließt BioTech Industries einen Kooperationsvertrag über die gemeinsame Entwicklung von Medikamenten und Grundkomponenten für eine neue Implantat-Generationen mit ProtoPharm ab."
FACRUMORS="Fraktions Gerüchte\n  "
FACREL="Fraktions Kontakte\n Zur Zeit ist die Firma ProtoPharm der engste Verbündete und Geschäftspartner Seymour Jordans. Weitere Kooperationsabkommen (Dienstleistungen gegen biomedizinische Geräte) bestehen mit den CityMercs, der Bruderschaft des  Crahn und dem Tsunami Syndikat. BioTech Industries ist einer der Lieferanten von Implantaten für die STORM- und CopBots und unterhält gute Beziehungen zur Administration. \n Seymours Bruder Damion, Leiter der Tangent Technologies, ist sein meistgehasster Rivale. BioTech hat Probleme mit dem überaus aktiven Schwarzmarkt, der von den Mitgliedern des Black Dragon Clans beherrscht wird. Diese sind 'Kunden' der BioTech, die nicht willens sind, für Implantate zu bezahlen, was wiederum zu feindlichen Auseinandersetzungen mit der Anarchy Breed und der Twilight Guardian führt."

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

