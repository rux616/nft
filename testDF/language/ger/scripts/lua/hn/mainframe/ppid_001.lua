--************************
--name   : ppid_001.lua
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
DBNAME="ProtoPharm Broadcasting Daemon v0.0.1"
FACNAME="ProtoPharm"
FACSLOGAN="Ihre Hoffnung. Ihre Kraft. Ihre Gesundheit."
FACGENERAL="Allgemeine Fraktions Information\n ProtoPharm erf�llt fast alle pharmazeutischen Bed�rfnisse Neocrons. Damit dies so bleibt, wird vom rudiment�ren Medkit bis zu Wunderdrogen fast alles hergestellt."
FACHQ="Fraktions Hauptquartier\n  Befindet sich in ViaRosso 2, kann aber auch �ber die PP Labs aus Plaza 2 erreicht werden. "
FACPERS="Wichtige Per�nlichkeiten\n Sandra Frasier, 42, die Vorsitzende, ist eine brillante und z�he Strategin, die aus der Gosse bis an die Spitze aufgestiegen ist."
FACHISTORY="Fraktions Geschichte\n Im Jahr 2646 entsteht die Firma ProtoPharm aus dem Zusammenschluss mehrerer medizinischer und chemischer Firmen. Die Leitung �bernimmt Jakob Finster, ein junger Gesch�ftsanwalt. Im Jahr 2652 kann die Entwicklung einer cryogenischen Tiefschlafkammer f�r die 'Avenger' erfolgreich abgeschlossen werden. Sechs Jahre sp�ter entsteht eine Version f�r reiche Privatkunden in Neocron. Einige Jahre danach betritt Jakob Finster, von einer t�dlichen Krankheit befallen, in der Hoffnung auf zuk�nftige medizinische Fortschritte selbst ein CryoVault(tm). Seit 2670 versorgt ProtoPharm auch den Massenmarkt. Die Forschung f�r ein Mehrzweckmedikament beginnt, dessen Fr�chte in Gestalt der Formel f�r Vitae(tm) 2678 geerntet werden k�nnen. Drei Jahre sp�ter erscheinen billige Kopien von Vitae(tm) auf dem Schwarzmarkt und st�rzen die Firma in eine Krise. Im Jahr 2739 stellt ProtoPharm 'Spirula', ein Medikament gegen radioaktive Strahlensch�den, auf dem Markt vor. Nach kurzem Aufschwung gibt es jedoch einen drastischen Sturz, da das Medikament auf die Bev�lkerung Neocrons verheerende genetische Nebenwirkungen hat. Im Jahr 2741 �bernimmt Sandra Frasier, als Firmenanw�ltin in den Spirula-Prozessen erfolgreich, die F�hrung. Nach drei Jahren ist immer noch keine Heilbehandlung f�r den cryogenisch gelagerten Jakob Finster in Aussicht. Noch einmal flammt der Spirula-Skandal im Jahr 2747 auf, als allgemein bekannt wird, dass die durch Spirula erzeugten Mutanten ihre sexuelle Reife viel fr�her als Menschen erreichen. Lioon Reza erkl�rt sie offiziell zu Nicht-Menschen. Ihre T�tung wird als Mitleidshandlung betrachtet. Im Jahr 2750 einigen sich die Firmen ProtoPharm und BioTech Industries auf einen Kooperationsvertrag."
FACRUMORS="Fraktions Ger�chte\n  "
FACREL="Fraktions Kontakte\n Miss Frasier unterh�lt sowohl zu BioTech Industries, als auch zu deren Firmenleiter Seymour Jordan gute Beziehungen. \n Die CityMercs haben einem Vertrag mit ProtoPharm �ber 'Schutz im Tausch gegen Ausr�stung' zugestimmt und nehmen auch Sabotageauftr�ge gegen NEXT Systems an. \n Die Bruderschaft des Crahn ist f�r Sandra Frasier eine wertvolle Informationsquelle. \n Die guten Beziehungen zwischen ProtoPharm und der CityAdmin von Neocron reichen bis in die Tage des Baus der 'Avenger' und des Great Trek zur�ck, zumal der Erfolg dieses gewaltigen Projekts nicht zuletzt auf die von ProtoPharm produzierten CryoVaults� zur�ckzuf�hren war. \n Die Feindseligkeit mit NEXT Systems scheint von den harten Gesch�ftspraktiken Sandras herzur�hren; doch die Abneigung Madame Veroniques, der Leiterin des Tsunami Syndikats, ist wohl pers�nlicherer Natur. Abgesehen von Schw�chlingen hasst Sandra Frasier unzuverl�ssige Menschen am meisten. Das Chaos und das liberale Denken der Anarchy Breed sind ihr suspekt und die ProtoPharm unterst�tzt jeden Verb�ndeten, der sich aktiv gegen die Anarchisten stellt. Verschiedenste Mutanten sind ein Nachlass der Unzul�nglichkeit und R�cksichtslosigkeit der ProtoPharm. Wenn es nach Sandra (und vielen anderen leitenden Angestellten der Firma) ginge, w�rden die Mutanten ein f�r allemal eliminiert."

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

