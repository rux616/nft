--************************
--name   : ttid_001.lua
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
DBNAME="TangentTechnologies Broadcasting Daemon v0.0.1"
FACNAME="TangentTechnologies"
FACSLOGAN="Wir glauben an Gewehre."
FACGENERAL="Allgemeine Fraktions Information\n Tangent entwickelt Waffen und Grundtechnologien für Waffensysteme und andere (hauptsächlich militärische) Ausrüstungen."
FACHQ="Fraktions Hauptquartier\n Das HQ befindet sich in ViaRosso 2"
FACPERS="Wichtige Perönlichkeiten\n Hester Gabun, Gründerin und ehemalige Leiterin der BioTech Industries, gründete Tangent im Jahr 2658 als Waffenentwicklungsabteilung der BioTech, um die damalige schlechte finanzielle Lage der Muttergesellschaft aufzubessern. \n Robert Jordan (92, von 2691 bis 2748 Leiter der BioTech Industries und immer noch Eigentümer beider Unternehmen), ist ein Geschäftsmann der alten Schule, der es genießt, seit der Teilung der Gesellschaft im Jahr 2746 den Konkurrenzkampf seiner beiden Söhne als Branchen-Chefs zu beobachten. \n Leiter: Damion Jordan, 30 Jahre alt und ehrgeizig, leidet ein wenig unter Geistesabwesenheit, deren Ursache, wie man munkelt, im Missbrauch schlecht zubereiteter, doch im Übermaß eingenommener illegaler Drogen in seiner Jugend zu suchen ist. Dennoch hat er einen scharfen Blick fürs Geschäft und liegt deshalb im Wettbewerb mit seinem Bruder um Haaresbreite vorn. \n SysAdmin Chester Cohor, in der virtuellen Welt auch unter dem Namen 'Rubrik' bekannt und respektiert, ist 18 Jahre alt und hoffnungslos computersüchtig."
FACHISTORY="Fraktions Geschichte\n Im Jahre 2658 gründet Hester Gabun, eine der Leiterinnen und Gründerinnen der BioTech Industries, die Spezialabteilung Tangent. \n Die Aufgabe der Tangent ist die Entwicklung äußerst wirksamer, neuer Waffensysteme. Aufgrund der angespannten politischen Lage produziert Tangent Technologies im Jahr 2722 mehr Waffen als je zuvor. Im Jahr 2746 trennt sich Tangent Technologies von BioTech Industries und wird zur selbstständigen Firma. Damion Jordan wird als Leiter eingesetzt. Zwei Jahre später übergibt Robert Jordan seinem Sohn Damion den Schlüssel zum Firmenhauptsitz und geht in den Ruhestand, um seinen Lebensabend zu genießen. \n In seinem Testament bestimmt er denjenigen seiner beiden Söhne Seymor und Damion, dessen Unternehmen den höheren Umsatz verzeichnet, zum Erben beider Gesellschaften (BioTech Industries und Tangent Technologies). Seitdem leben Seymour und Damion in erbittertem Streit. Ihre Umsätze sind fast identisch, doch Damion liegt ein wenig vorn. Im Jahr 2750 leidet die Tangent Technologies schwer unter dem Ausstieg zahlreicher Forscher und Techniker, die es vorziehen, den idealistischen Fallen Angels beizutreten. Damions Meinung über Wissenschaftler wurde dadurch nicht besser."
FACRUMORS="Fraktions Gerüchte\n "
FACREL="Fraktions Kontakte\n Die Tangent hat von BioTech Industries einen Kooperationsvertrag mit NEXT Systems Inc übernommen. Zusammen entwickeln sie Kampfroboter, Panzer und andere mobile Waffensysteme. Ein ähnlicher Vertrag im Bereich Sicherheitssysteme und Gebäudeschutz wurde vor Kurzem mit der Diamond Real Estate abgeschlossen. Die CityMercs erfüllen oft Schutz-, Bewachungs- und auch Sabotageaufträge für die Tangent und gehören zu den besten Kunden der Firma.Da Tangent einer der größten Waffenlieferanten für die STORM- und CopBot Einheiten ist, sind die Beziehungen zwischen der Firma und den unterschiedlichen Abteilungen der Stadtverwaltung naturgemäß ausgezeichnet. \n Damions Erzfeind ist sein Bruder Seymour, Leiter der BioTech Industries. Über die Jahre hat sich ein alter Familienstreit und die Rivalität zwischen den Brüdern zu einem bitteren Hass geführt.Damion beschuldigt die Fallen Angels der Geschäftsschädigung; nicht zuletzt aufgrund der Abwerbung seiner talentiertesten Forscher. Obwohl Tangent mit der Anarchy Breed selten in Kontakt kommt, ist Damion der wichtigste Waffenlieferant für die Feinde der Breed  Da Damions Profite von der Stabilität der bestehenden Ordnung abhängen, hegt er keinerlei Sympathie für die Twilight Guardian Rebellen."

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

