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
FACGENERAL="Allgemeine Fraktions Information\n ProtoPharm erfüllt fast alle pharmazeutischen Bedürfnisse Neocrons. Damit dies so bleibt, wird vom rudimentären Medkit bis zu Wunderdrogen fast alles hergestellt."
FACHQ="Fraktions Hauptquartier\n  Befindet sich in ViaRosso 2, kann aber auch über die PP Labs aus Plaza 2 erreicht werden. "
FACPERS="Wichtige Perönlichkeiten\n Sandra Frasier, 42, die Vorsitzende, ist eine brillante und zähe Strategin, die aus der Gosse bis an die Spitze aufgestiegen ist."
FACHISTORY="Fraktions Geschichte\n Im Jahr 2646 entsteht die Firma ProtoPharm aus dem Zusammenschluss mehrerer medizinischer und chemischer Firmen. Die Leitung übernimmt Jakob Finster, ein junger Geschäftsanwalt. Im Jahr 2652 kann die Entwicklung einer cryogenischen Tiefschlafkammer für die 'Avenger' erfolgreich abgeschlossen werden. Sechs Jahre später entsteht eine Version für reiche Privatkunden in Neocron. Einige Jahre danach betritt Jakob Finster, von einer tödlichen Krankheit befallen, in der Hoffnung auf zukünftige medizinische Fortschritte selbst ein CryoVault(tm). Seit 2670 versorgt ProtoPharm auch den Massenmarkt. Die Forschung für ein Mehrzweckmedikament beginnt, dessen Früchte in Gestalt der Formel für Vitae(tm) 2678 geerntet werden können. Drei Jahre später erscheinen billige Kopien von Vitae(tm) auf dem Schwarzmarkt und stürzen die Firma in eine Krise. Im Jahr 2739 stellt ProtoPharm 'Spirula', ein Medikament gegen radioaktive Strahlenschäden, auf dem Markt vor. Nach kurzem Aufschwung gibt es jedoch einen drastischen Sturz, da das Medikament auf die Bevölkerung Neocrons verheerende genetische Nebenwirkungen hat. Im Jahr 2741 übernimmt Sandra Frasier, als Firmenanwältin in den Spirula-Prozessen erfolgreich, die Führung. Nach drei Jahren ist immer noch keine Heilbehandlung für den cryogenisch gelagerten Jakob Finster in Aussicht. Noch einmal flammt der Spirula-Skandal im Jahr 2747 auf, als allgemein bekannt wird, dass die durch Spirula erzeugten Mutanten ihre sexuelle Reife viel früher als Menschen erreichen. Lioon Reza erklärt sie offiziell zu Nicht-Menschen. Ihre Tötung wird als Mitleidshandlung betrachtet. Im Jahr 2750 einigen sich die Firmen ProtoPharm und BioTech Industries auf einen Kooperationsvertrag."
FACRUMORS="Fraktions Gerüchte\n  "
FACREL="Fraktions Kontakte\n Miss Frasier unterhält sowohl zu BioTech Industries, als auch zu deren Firmenleiter Seymour Jordan gute Beziehungen. \n Die CityMercs haben einem Vertrag mit ProtoPharm über 'Schutz im Tausch gegen Ausrüstung' zugestimmt und nehmen auch Sabotageaufträge gegen NEXT Systems an. \n Die Bruderschaft des Crahn ist für Sandra Frasier eine wertvolle Informationsquelle. \n Die guten Beziehungen zwischen ProtoPharm und der CityAdmin von Neocron reichen bis in die Tage des Baus der 'Avenger' und des Great Trek zurück, zumal der Erfolg dieses gewaltigen Projekts nicht zuletzt auf die von ProtoPharm produzierten CryoVaults™ zurückzuführen war. \n Die Feindseligkeit mit NEXT Systems scheint von den harten Geschäftspraktiken Sandras herzurühren; doch die Abneigung Madame Veroniques, der Leiterin des Tsunami Syndikats, ist wohl persönlicherer Natur. Abgesehen von Schwächlingen hasst Sandra Frasier unzuverlässige Menschen am meisten. Das Chaos und das liberale Denken der Anarchy Breed sind ihr suspekt und die ProtoPharm unterstützt jeden Verbündeten, der sich aktiv gegen die Anarchisten stellt. Verschiedenste Mutanten sind ein Nachlass der Unzulänglichkeit und Rücksichtslosigkeit der ProtoPharm. Wenn es nach Sandra (und vielen anderen leitenden Angestellten der Firma) ginge, würden die Mutanten ein für allemal eliminiert."

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

