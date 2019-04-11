--************************
--name   : csid_001.lua
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
DBNAME="Crahn Sect Broadcasting Daemon v0.0.1"
FACNAME="CrahnSect"
FACSLOGAN="Die Wahrheit gegen alle Heiden verteidigen, bis Crahn der Retter wiederkehrt!"
FACGENERAL="Allgemeine Fraktions Information\n Die Sekte der PSI-Mönche stellt PSI Geräte her, die von den Yakarma Shops in Neocron vertrieben werden. Die Mönche bewohnen eine uralte Abtei (und einen weiträumigen, mit unterirdischen Labors ausgestatteten Komplex, der darunter liegen soll; das behaupten zumindest die Gerüchte) in den äußersten Randgebieten der Außenzone. Außerdem gehört ihnen ein kleinerer Besitz im Pepper Park. "
FACHQ="Fraktions Hauptquartier\n DOY SEC 02"
FACPERS="Wichtige Perönlichkeiten\n Erzbischof Neopha Kansil, 63, der geistige Anführer, ist besessen von der Idee, eine überlegene menschliche Rasse zu züchten. Gerüchten zufolge überwacht er persönlich die Arbeit in den geheimen Labors unter der Abtei und ist, trotz mancher Rückschläge, zuversichtlich."
FACHISTORY="Fraktions Geschichte\n Im Jahr 2558 gründet der gestürzte und ausgestoßene Crahn gemeinsam mit seinen Leibwächtern den Orden des Crahn. Unter den Ruinen der verlassenen Abtei legen sie den Grundstein für ein geheimes Hauptquartier, wo sie hauptsächlich PSI verstärkte Implantate erforschen und neue PSI Anwendungen erproben. \n Nachdem die PSI-Mönche im Jahr 2611 in Neocron die Macht ergriffen haben, kehren viele Ordensmitglieder in die Stadt zurück. Ein Minimal-Team setzt die intensiven Forschungen in der Abtei fort. Im Jahr 2693 kursieren Gerüchte, dass ein genetisch konstruiertes Wesen aus dem Labor entkommen sei. Drei Jahre später suchen seltsam missgestaltete Spinnenmenschen das Brachland heim. Im Jahr 2715 entwickelt sich Neopha zu einem brillanten und energiegeladenen Strategen. In diesem Jahr ist er gewählter Erzbischof und damit Führer von Neocron. Neun Jahre später wird die Regierung der PSI-Mönche gestürzt. Neopha Kansil und seine Anhänger fliehen zur Crahn Abtei zurück. 2728 hebt der Diktator Lioon Reza die Verbannung der PSI-Mönche auf. Eine kleine Mönchs-Delegation kehrt nach Neocron zurück und richtet eine Operationsbasis der PSI-Mönche im Pepper Park ein."
FACRUMORS="Fraktions Gerüchte\n "
FACREL="Fraktions Kontakte\n Im Austausch für biomedizinische Ausrüstung stellt die Sekte BioTech Industries wertvolle Information zur Verfügung. Weitere gute Kunden des Informationsdienstes sind die ProtoPharm, der Black Dragon Clan und sogar die Twilight Guardian; trotz der ideologischen Differenzen zwischen Letzteren und den Mönchen. \n Besonders seitdem die Bruderschaft im Pepper Park eine Basis besitzt, gab es gewaltsame Zusammenstösse zwischen den PSI-Mönchen und Mitgliedern des Tsunami Syndikats, in deren Gebiet Pepper Park liegt. Die Forschungsaktivitäten der Fallen Angels machen diese zu einem interessanten Ziel von Spionageangriffen durch die Mönche. Gerüchten zufolge dienen die Anhänger der Anarchisten den Mönchen als Versuchstiere für ihre entsetzlichen Experimente, doch gibt es hierfür keine Beweise. Die PSI-Mönche hegen einen unversöhnlichen Hass auf die Regierung Neocrons und auf Lioon Reza, der die Regierung der PSI-Mönche 2724 stürzte, doch sind sie natürlich so klug, sich vorerst mit der CityAdmin zu arrangieren."

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

