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
FACSLOGAN="Wir l�sen fast alle ihre Probleme"
FACGENERAL="Allgemeine Fraktions Information\n Die CityMercs stellen milit�rische Dienste zur Verf�gung, f�hren auf Anfrage Anschl�ge durch und bieten jedem, der sich das dem jeweiligen Auftrag angemessene Entgelt leisten kann, ihre Dienste als Leibw�chter oder Geleitschutz an. Zwar haben sie im Prinzip gewisse moralische Grunds�tze, doch wird die S�ldnerseele im Zweifel die �berhand gewinnen, und f�r den richtigen Preis ist (fast) alles machbar."
FACHQ="Fraktions Hauptquartier\n Military Base in J01"
FACPERS="Wichtige Per�nlichkeiten\n Tarok 'Das Auge' Cajun, 53, Anf�hrer der CityMercs, ist kein m�chtiger Krieger, sondern ein genialer Stratege mit exzellentem Scharfblick. Stets bem�ht er sich, das Risiko f�r seine M�nner so gering wie m�glich zu halten. \n Kim 'Sushi' MaWong, 31, SysAdmin der S�ldner, war fr�her Nahkampfexperte einer kriminellen Organisation, der er den R�cken kehrte, nachdem er alle Hoffnungen, dort zum  SysAdmin aufzusteigen, aufgegeben hatte. Die CityMercs haben Kim ihr Wort gegeben, ihn vor m�glichen Angriffen seiner Ex-Freunde zu sch�tzen."
FACHISTORY="Fraktions Geschichte\n Im Jahr 2588 bauten die GenTanks, die den Neocron-York-Krieg �berlebt hatten, zusammen mit einigen menschlichen Veteranen einen Unterschlupf, den so genannten Bunker. Zu diesem geh�ren Trainingsm�glichkeiten, ein Hospital, Wohnr�ume, eine Kantine, Versammlungsr�ume und eine Bar. Im Untergeschoss werden Waffen repariert und gehandelt, au�erdem Medikits und belebende Drogen zum Verkauf angeboten. Die Einrichtungen stehen allen Truppenangeh�rigen offen. Ein Normalvertrag verpflichtet den S�ldner, bis zur ersten Verwundung zu k�mpfen. Zieht man die Verh�ltnisse in Neocron in Betracht, sind die CityMercs keine bezahlten M�rder. Fast alle Auftr�ge, die der Bunker f�r die Truppenmitglieder arrangiert, sind legal. T�tungsauftr�ge nehmen sie nur an, wenn es sich bei den Opfern entweder um Kriminelle handelt, oder um Leute, die nach ihren moralischen Vorstellungen den Tod verdient haben. Im Lauf der Jahre haben sich hinsichtlich der Eingliederung von Neulingen und den Beziehungen zwischen S�ldnern unterschiedlicher R�nge (White, Red oder Black Ribbons) gewisse Traditionen entwickelt. Im Jahr 2750 unterhalten die S�ldnertruppen unter Leitung der Black Ribbons gute Beziehungen zu allen �ffentlichen Einrichtungen, den gro�en Firmen und dem Untergrund.  �ber gr��ere Auftr�ge bestehen Langzeitvertr�ge und ihre Ausf�hrung ist meistens reine Routine."
FACRUMORS="Fraktions Ger�chte\n  "
FACREL="Fraktions Kontakte\n Es bestehen Vertr�ge �ber 'Schutz f�r Ausr�stung' mit BioTech Industries und Tangent Technologies Inc. Die CityMercs nehmen auch Sabotageauftr�ge an; aber niemals, wenn sie gegen diese beiden Firmen gerichtet sind. Jobs, die von NEXT Systems Inc in Auftrag gegeben werden, richten sich meistens gegen ProtoPharm. Interessanterweise trifft das auch umgekehrt zu. Von Diamond Real Estate werden die S�ldner zu Schutzauftr�gen angefordert, besonders w�hrend besonderer Ereignisse innerhalb der Firmengeb�ude. \n Manchmal kommt es zu geringf�gigen Zusammenst�ssen zwischen den CityMercs und Mitgliedern der Bruderschaft des Crahn oder den Anarchisten des Brachlandes, doch im Allgemeinen gehen sie einander aus dem Weg. Mutantenhorden im Brachland sind ein beliebtes Ziel der Kunden der CityMercs. Die S�ldner nehmen auch Auftr�ge an, die gegen die Twilight Guardian Rebellen gerichtet sind."

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

