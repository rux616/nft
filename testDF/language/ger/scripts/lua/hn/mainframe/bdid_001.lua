--************************
--name   : bdid_001.lua
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
DBNAME="BlackDragon Broadcasting Daemon v0.0.1"
FACNAME="Black Dragon"
FACSLOGAN="Können Sie unser Angebot wirklich ablehnen?"
FACGENERAL="Allgemeine Fraktions Information\n Der Clan kontrolliert beinah den gesamten illegalen Drogenhandel innerhalb Neocrons. Darüber hinaus engagiert er sich sehr auf dem Immobilienmarkt, kontrolliert Appartements und führt mehr oder weniger gewaltsame 'Enteignungen' durch. Er schreckt auch nicht vor der Eliminierung in Ungnade gefallener Mieter zurück. Der Black Dragon Clan ist im Pepper Park ansässig. Eine geschäftliche Expansion in Richtung Prostitution befindet sich in Planung."
FACHQ="Fraktions Hauptquartier\n DOY SEC 08"
FACPERS="Wichtige Perönlichkeiten\n Maximilian Trond, 54, ist ein hervorragender Geschäftsmann von großer ... Eleganz. Seine Organisation regiert er als echter Patriarch und jeder in seiner Umgebung weiß, dass seine Befehle stets das Beste für den Clan bedeuten. Man sagt, dass Tronds Feinde regelmäßig in abgelegenen Löchern tief im Brachland auftauchen, doch natürlich wurden nie handfeste Beweise gefunden, die eine direkte Verbindung herstellen könnten. \n Hauptrechnungsführer Torben 'Gecko' Manquist, 37, ist Tronds 'Rechte Hand'. Was Trond auch befiehlt, Manquist setzt es in die Tat um. Innerhalb des Clans glauben viele, dass er Trond vom Thron stürzen wird, sobald sich dazu die Gelegenheit bietet."
FACHISTORY="Fraktions Geschichte\n Im Jahr 2680 vereinigen die beiden Kriminellen Nico 'Furry' Manecci und Jerry 'Dragon' Tosca im brodelnden Sumpf des Verbrechens ihre kleinen und relativ unbedeutenden Organisationen und gründen den Black Dragon Clan. Bald darauf ist es dank Nico Maneccis Unfähigkeit für Jerry ein Leichtes, den Thron des Drogenimperiums allein zu übernehmen. Im Jahr 2710 stößt der junge Max Trond zu der Organisation und zieht aufgrund seiner Entschlossenheit und Kaltblütigkeit die Aufmerksamkeit auf sich. Als Jerry Tosca 2727 einem Amok-laufenden STORM-Bot zum Opfer fällt, wird Maximilian Trond sein Nachfolger. Im Jahr 2741 erzielt die Organisation klug kalkulierte Gewinne aus den auf die Entdeckung von Irata III folgenden Markt-Schwankungen und wird Eigentümerin ganzer Straßenzüge und Stadtviertel. 2750 bemüht sich Trond noch immer darum, in das Ressort des Tsunami Syndikats vorzudringen, was oft zu Konflikten führt. Es scheint nur noch eine Frage der Zeit, bis offener Krieg ausbricht."
FACRUMORS="Fraktions Gerüchte\n "
FACREL="Fraktions Kontakte\n Viele Anhänger der Anarchy Breed sind entweder gute Kunden des Clans, oder Teilzeit-Drogenhändler – oder beides. Das Aufrechterhalten guter Beziehungen mit ProtoPharm und Diamond Real Estate dient den beiden Haupt-'Geschäftszweigen' des Clans, Drogen und Immobilien. Die Bruderschaft des Crahn ist eine wertvolle Informationsquelle. \n Das Tsunami Syndikat, Neocrons andere Mafia-Organisation, ist der 'natürliche Feind' des Clans; besonders seit es mit BioTech Industries, seinem legalen Konkurrenten (und Opfer) in der Biotech Branche, gemeinsame Sache macht. \n Die Feindschaft zwischen dem Clan und den CityMercs entstand aus dem 'Verrat' eines wichtigen Clanmitgliedes, der sich vom Black Dragon abwandte, um SysAdmin bei den Söldnern zu werden, die vielen legalen Firmen ihre Schutzdienste anbieten. Die Fallen Angels lehnen zwar die Geschäftspraktiken des Dragon ab, bilden aber aufgrund ihrer Expertise in medizinischer Forschung ein verlockendes Ziel. Obwohl die Beziehungen der Organisation zur Regierung und der CityAdmin von Natur aus nicht besonders gut sind (dazu kommen die Auswirkungen auf den sozialen Bereich; die Immobilientätigkeit der Organisation verringert das öffentliche Einkommen) – die Geschäfte der Mafia hängen dennoch von der gegenwärtigen politischen Ordnung ab, die durch Umstürzler wie die Twilight Guardians bedroht wird."

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

