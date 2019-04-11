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
FACSLOGAN="Ihr Vergn�gen ist unser Gesch�ft"
FACGENERAL="Allgemeine Fraktions Information\n Das Syndikat �bt die alleinige Kontrolle �ber s�mtliche Unternehmen aus, die mit Prostitution, Gl�cksspiel und der Erpressung von Schutzgeldern zu tun haben. Im Pepper Park kontrolliert es den gesamten Rotlichtbereich sowie jegliche Gesch�fte innerhalb des Distrikts und �hnlich im Dome."
FACHQ="Fraktions Hauptquartier\n DOY SEC 07"
FACPERS="Wichtige Per�nlichkeiten\n  Zur Zeit kontrolliert Veronique Duchamps, 27, Neocrons Rotlicht-Welt. Die feenhafte, jugendliche, edle Prostituierte mit dem tr�umerischen Blick eines drogenabh�ngigen Engels besa� gen�gend Geistesgegenwart, einen Teil ihres Geldes zu sparen und so bald wie m�glich ihr eigenes Etablissement zu er�ffnen. Der tragische Tod ihres Zuh�lters, der zugleich mit dreien seiner Kollegen einem schrecklichen Sexualverbrechen zum Opfer fiel, wurde zwar nie aufgekl�rt, erwies sich f�r Veronique jedoch als gl�cklicher Umstand. Danach konnte sie sich darauf verlassen, dass man sie in der Szene respektierte. Ihre recht harten Drogenerfahrungen machten sie zum erbitterten Feind jeglichen Medikamentengebrauchs, wodurch sie vor den Auswirkungen des 'Spirula' Skandals bewahrt blieb. \n Reginald 'Flux' Axom, 45, ist ein PSI-M�nch, der die Gabe der Heilung besitzt. Aus Zuneigung zu Madame Veronique kehrte er der Bruderschaft den R�cken und wurde SysAdmin und Berater des Syndikats."
FACHISTORY="Fraktions Geschichte\n  Neocron ist wie jede andere Stadt. Auch wir erleben eine endlose Kette von Verbr�derung und Streit, Handel und Erpressung, Abkommen und Betrug. Deshalb geh�rt im Jahr 2750 der 'Pussy Club' zu den �ltesten Clubs im Pepper Park. Dort ist man darauf spezialisiert, M�nnern und Frauen ihre exklusivsten W�nsche zu erf�llen und oft auch den geeigneten Rahmen f�r Unterredungen zu bieten, deren Inhalt nicht an die �ffentlichkeit gelangen soll. Madame Veroniques Glaubensbekenntnis hei�t absolute Diskretion. Obwohl Veronique nichts mit Drogen zu tun haben will, ist das Syndikat keineswegs harmlos: Zweifellos geh�rt das Tsunami Syndikat zu den skrupellosesten und brutalsten Fraktionen Neocrons."
FACRUMORS="Fraktions Ger�chte\n  "
FACREL="Fraktions Kontakte\n BioTech Industries unterh�lt gute Beziehungen zu Neocrons Rotlichtbereich, den sie im Austausch f�r gewisse Gef�lligkeiten seitens der Mafia mit medizinischer Ausr�stung und Implantaten beliefert. \n Zu den besten Kunden des Syndikats geh�ren die Anarchisten; zugleich entstammen zahlreiche Rekruten des Syndikats den Reihen der Anarchy Breed. Gewissen Ger�chten zufolge, die in Neocron zirkulieren, unterh�lt Tsunami Kontakte mit manchen Mutanten, doch kann sich niemand einen vern�nftigen Grund daf�r vorstellen, da die Mutanten der etablierten Gesellschaft nichts Dienliches zu bieten haben. \n Madame Veronique hasst Drogen, Entzugsmedikamente und alles, was im Geringsten mit Pharmazeutik zu tun hat. Es �berrascht nicht, dass Black Dragon und ProtoPharm ganz oben auf ihrer schwarzen Liste stehen. Tsunami �bernimmt Auftr�ge von BioTech Industries, die gegen den Clan gerichtet sind. Oft gibt es blutige Zusammenst�sse zwischen den beiden Fraktionen und ein Ende der Auseinandersetzungen ist nicht in Sicht. \n CityAdmin / NCPD: Im Prinzip ist eine Zusammenarbeit zwischen der Regierung und dem Syndikat durchaus vorstellbar. Schlie�lich sind die meisten Aktivit�ten Tsunamis nicht nur harmlos f�r die Bev�lkerung, sondern auch h�chst gewinnbringend � dennoch ist Tsunami eine Mafia-Organisation ... die keine Steuern bezahlt."

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

