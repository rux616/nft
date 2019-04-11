--************************
--name   : cmid_001.lua
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
DBNAME="CityMercs Broadcasting Daemon v0.0.1"
FACNAME="CityMercs"
FACSLOGAN="Wir lösen fast alle ihre Probleme"
FACGENERAL="Allgemeine Fraktions Information\n Die CityMercs stellen militärische Dienste zur Verfügung, führen auf Anfrage Anschläge durch und bieten jedem, der sich das dem jeweiligen Auftrag angemessene Entgelt leisten kann, ihre Dienste als Leibwächter oder Geleitschutz an. Zwar haben sie im Prinzip gewisse moralische Grundsätze, doch wird die Söldnerseele im Zweifel die Überhand gewinnen, und für den richtigen Preis ist (fast) alles machbar."
FACHQ="Fraktions Hauptquartier\n Military Base in J01"
FACPERS="Wichtige Perönlichkeiten\n Tarok 'Das Auge' Cajun, 53, Anführer der CityMercs, ist kein mächtiger Krieger, sondern ein genialer Stratege mit exzellentem Scharfblick. Stets bemüht er sich, das Risiko für seine Männer so gering wie möglich zu halten. \n Kim 'Sushi' MaWong, 31, SysAdmin der Söldner, war früher Nahkampfexperte einer kriminellen Organisation, der er den Rücken kehrte, nachdem er alle Hoffnungen, dort zum  SysAdmin aufzusteigen, aufgegeben hatte. Die CityMercs haben Kim ihr Wort gegeben, ihn vor möglichen Angriffen seiner Ex-Freunde zu schützen."
FACHISTORY="Fraktions Geschichte\n Im Jahr 2588 bauten die GenTanks, die den Neocron-York-Krieg überlebt hatten, zusammen mit einigen menschlichen Veteranen einen Unterschlupf, den so genannten Bunker. Zu diesem gehören Trainingsmöglichkeiten, ein Hospital, Wohnräume, eine Kantine, Versammlungsräume und eine Bar. Im Untergeschoss werden Waffen repariert und gehandelt, außerdem Medikits und belebende Drogen zum Verkauf angeboten. Die Einrichtungen stehen allen Truppenangehörigen offen. Ein Normalvertrag verpflichtet den Söldner, bis zur ersten Verwundung zu kämpfen. Zieht man die Verhältnisse in Neocron in Betracht, sind die CityMercs keine bezahlten Mörder. Fast alle Aufträge, die der Bunker für die Truppenmitglieder arrangiert, sind legal. Tötungsaufträge nehmen sie nur an, wenn es sich bei den Opfern entweder um Kriminelle handelt, oder um Leute, die nach ihren moralischen Vorstellungen den Tod verdient haben. Im Lauf der Jahre haben sich hinsichtlich der Eingliederung von Neulingen und den Beziehungen zwischen Söldnern unterschiedlicher Ränge (White, Red oder Black Ribbons) gewisse Traditionen entwickelt. Im Jahr 2750 unterhalten die Söldnertruppen unter Leitung der Black Ribbons gute Beziehungen zu allen öffentlichen Einrichtungen, den großen Firmen und dem Untergrund.  Über größere Aufträge bestehen Langzeitverträge und ihre Ausführung ist meistens reine Routine."
FACRUMORS="Fraktions Gerüchte\n  "
FACREL="Fraktions Kontakte\n Es bestehen Verträge über 'Schutz für Ausrüstung' mit BioTech Industries und Tangent Technologies Inc. Die CityMercs nehmen auch Sabotageaufträge an; aber niemals, wenn sie gegen diese beiden Firmen gerichtet sind. Jobs, die von NEXT Systems Inc in Auftrag gegeben werden, richten sich meistens gegen ProtoPharm. Interessanterweise trifft das auch umgekehrt zu. Von Diamond Real Estate werden die Söldner zu Schutzaufträgen angefordert, besonders während besonderer Ereignisse innerhalb der Firmengebäude. \n Manchmal kommt es zu geringfügigen Zusammenstössen zwischen den CityMercs und Mitgliedern der Bruderschaft des Crahn oder den Anarchisten des Brachlandes, doch im Allgemeinen gehen sie einander aus dem Weg. Mutantenhorden im Brachland sind ein beliebtes Ziel der Kunden der CityMercs. Die Söldner nehmen auch Aufträge an, die gegen die Twilight Guardian Rebellen gerichtet sind."

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

