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
FACGENERAL="Allgemeine Fraktions Information\n Die Sekte der PSI-M�nche stellt PSI Ger�te her, die von den Yakarma Shops in Neocron vertrieben werden. Die M�nche bewohnen eine uralte Abtei (und einen weitr�umigen, mit unterirdischen Labors ausgestatteten Komplex, der darunter liegen soll; das behaupten zumindest die Ger�chte) in den �u�ersten Randgebieten der Au�enzone. Au�erdem geh�rt ihnen ein kleinerer Besitz im Pepper Park. "
FACHQ="Fraktions Hauptquartier\n DOY SEC 02"
FACPERS="Wichtige Per�nlichkeiten\n Erzbischof Neopha Kansil, 63, der geistige Anf�hrer, ist besessen von der Idee, eine �berlegene menschliche Rasse zu z�chten. Ger�chten zufolge �berwacht er pers�nlich die Arbeit in den geheimen Labors unter der Abtei und ist, trotz mancher R�ckschl�ge, zuversichtlich."
FACHISTORY="Fraktions Geschichte\n Im Jahr 2558 gr�ndet der gest�rzte und ausgesto�ene Crahn gemeinsam mit seinen Leibw�chtern den Orden des Crahn. Unter den Ruinen der verlassenen Abtei legen sie den Grundstein f�r ein geheimes Hauptquartier, wo sie haupts�chlich PSI verst�rkte Implantate erforschen und neue PSI Anwendungen erproben. \n Nachdem die PSI-M�nche im Jahr 2611 in Neocron die Macht ergriffen haben, kehren viele Ordensmitglieder in die Stadt zur�ck. Ein Minimal-Team setzt die intensiven Forschungen in der Abtei fort. Im Jahr 2693 kursieren Ger�chte, dass ein genetisch konstruiertes Wesen aus dem Labor entkommen sei. Drei Jahre sp�ter suchen seltsam missgestaltete Spinnenmenschen das Brachland heim. Im Jahr 2715 entwickelt sich Neopha zu einem brillanten und energiegeladenen Strategen. In diesem Jahr ist er gew�hlter Erzbischof und damit F�hrer von Neocron. Neun Jahre sp�ter wird die Regierung der PSI-M�nche gest�rzt. Neopha Kansil und seine Anh�nger fliehen zur Crahn Abtei zur�ck. 2728 hebt der Diktator Lioon Reza die Verbannung der PSI-M�nche auf. Eine kleine M�nchs-Delegation kehrt nach Neocron zur�ck und richtet eine Operationsbasis der PSI-M�nche im Pepper Park ein."
FACRUMORS="Fraktions Ger�chte\n "
FACREL="Fraktions Kontakte\n Im Austausch f�r biomedizinische Ausr�stung stellt die Sekte BioTech Industries wertvolle Information zur Verf�gung. Weitere gute Kunden des Informationsdienstes sind die ProtoPharm, der Black Dragon Clan und sogar die Twilight Guardian; trotz der ideologischen Differenzen zwischen Letzteren und den M�nchen. \n Besonders seitdem die Bruderschaft im Pepper Park eine Basis besitzt, gab es gewaltsame Zusammenst�sse zwischen den PSI-M�nchen und Mitgliedern des Tsunami Syndikats, in deren Gebiet Pepper Park liegt. Die Forschungsaktivit�ten der Fallen Angels machen diese zu einem interessanten Ziel von Spionageangriffen durch die M�nche. Ger�chten zufolge dienen die Anh�nger der Anarchisten den M�nchen als Versuchstiere f�r ihre entsetzlichen Experimente, doch gibt es hierf�r keine Beweise. Die PSI-M�nche hegen einen unvers�hnlichen Hass auf die Regierung Neocrons und auf Lioon Reza, der die Regierung der PSI-M�nche 2724 st�rzte, doch sind sie nat�rlich so klug, sich vorerst mit der CityAdmin zu arrangieren."

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

