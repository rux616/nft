--************************
--name   : tsid_001.lua
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
DBNAME="Tsunami Syndicate Broadcasting Daemon v0.0.1"
FACNAME="TsunamiSyndicate"
FACSLOGAN="Ihr Vergnügen ist unser Geschäft"
FACGENERAL="Allgemeine Fraktions Information\n Das Syndikat übt die alleinige Kontrolle über sämtliche Unternehmen aus, die mit Prostitution, Glücksspiel und der Erpressung von Schutzgeldern zu tun haben. Im Pepper Park kontrolliert es den gesamten Rotlichtbereich sowie jegliche Geschäfte innerhalb des Distrikts und ähnlich im Dome."
FACHQ="Fraktions Hauptquartier\n DOY SEC 07"
FACPERS="Wichtige Perönlichkeiten\n  Zur Zeit kontrolliert Veronique Duchamps, 27, Neocrons Rotlicht-Welt. Die feenhafte, jugendliche, edle Prostituierte mit dem träumerischen Blick eines drogenabhängigen Engels besaß genügend Geistesgegenwart, einen Teil ihres Geldes zu sparen und so bald wie möglich ihr eigenes Etablissement zu eröffnen. Der tragische Tod ihres Zuhälters, der zugleich mit dreien seiner Kollegen einem schrecklichen Sexualverbrechen zum Opfer fiel, wurde zwar nie aufgeklärt, erwies sich für Veronique jedoch als glücklicher Umstand. Danach konnte sie sich darauf verlassen, dass man sie in der Szene respektierte. Ihre recht harten Drogenerfahrungen machten sie zum erbitterten Feind jeglichen Medikamentengebrauchs, wodurch sie vor den Auswirkungen des 'Spirula' Skandals bewahrt blieb. \n Reginald 'Flux' Axom, 45, ist ein PSI-Mönch, der die Gabe der Heilung besitzt. Aus Zuneigung zu Madame Veronique kehrte er der Bruderschaft den Rücken und wurde SysAdmin und Berater des Syndikats."
FACHISTORY="Fraktions Geschichte\n  Neocron ist wie jede andere Stadt. Auch wir erleben eine endlose Kette von Verbrüderung und Streit, Handel und Erpressung, Abkommen und Betrug. Deshalb gehört im Jahr 2750 der 'Pussy Club' zu den ältesten Clubs im Pepper Park. Dort ist man darauf spezialisiert, Männern und Frauen ihre exklusivsten Wünsche zu erfüllen und oft auch den geeigneten Rahmen für Unterredungen zu bieten, deren Inhalt nicht an die Öffentlichkeit gelangen soll. Madame Veroniques Glaubensbekenntnis heißt absolute Diskretion. Obwohl Veronique nichts mit Drogen zu tun haben will, ist das Syndikat keineswegs harmlos: Zweifellos gehört das Tsunami Syndikat zu den skrupellosesten und brutalsten Fraktionen Neocrons."
FACRUMORS="Fraktions Gerüchte\n  "
FACREL="Fraktions Kontakte\n BioTech Industries unterhält gute Beziehungen zu Neocrons Rotlichtbereich, den sie im Austausch für gewisse Gefälligkeiten seitens der Mafia mit medizinischer Ausrüstung und Implantaten beliefert. \n Zu den besten Kunden des Syndikats gehören die Anarchisten; zugleich entstammen zahlreiche Rekruten des Syndikats den Reihen der Anarchy Breed. Gewissen Gerüchten zufolge, die in Neocron zirkulieren, unterhält Tsunami Kontakte mit manchen Mutanten, doch kann sich niemand einen vernünftigen Grund dafür vorstellen, da die Mutanten der etablierten Gesellschaft nichts Dienliches zu bieten haben. \n Madame Veronique hasst Drogen, Entzugsmedikamente und alles, was im Geringsten mit Pharmazeutik zu tun hat. Es überrascht nicht, dass Black Dragon und ProtoPharm ganz oben auf ihrer schwarzen Liste stehen. Tsunami übernimmt Aufträge von BioTech Industries, die gegen den Clan gerichtet sind. Oft gibt es blutige Zusammenstösse zwischen den beiden Fraktionen und ein Ende der Auseinandersetzungen ist nicht in Sicht. \n CityAdmin / NCPD: Im Prinzip ist eine Zusammenarbeit zwischen der Regierung und dem Syndikat durchaus vorstellbar. Schließlich sind die meisten Aktivitäten Tsunamis nicht nur harmlos für die Bevölkerung, sondern auch höchst gewinnbringend – dennoch ist Tsunami eine Mafia-Organisation ... die keine Steuern bezahlt."

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

