--************************
--name   : faid_001.lua
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
DBNAME="FallenAngels Broadcasting Daemon v0.0.1"
FACNAME="Fallen Angels"
FACSLOGAN="Ein freier Geist kann eine freie Gesellschaft formen"
FACGENERAL="Allgemeine Fraktions Information\n Die Fallen Angels wurden von Wissenschaftlern gegründet, die sich als von der Regierung Neocrons unterdrückt empfanden und der Meinung waren, ihre akademische Freiheit werde zu sehr eingeschränkt. Seitdem haben sie eine Untergrund-Stadt im Brachland gebaut und arbeiten an der Erforschung gewisser Technologien; besonders solcher, die dem Menschen unter den veränderten Lebensbedingungen nach dem dritten Weltkrieg ein etwas bequemeres Leben ermöglichen. An der Politik von Neocron sind sie nur am Rande interessiert."
FACHQ="Fraktions Hauptquartier\n DOY SEC 03"
FACPERS="Wichtige Perönlichkeiten\n  Gründer Thomas Cooper war als geschäftführender Ingenieur in den Forschungslabors der Regierung tätig. Sein junges Team war von der ausschließlichen Erforschung neuer PSI Implantate gelangweilt und abgestoßen. Nachdem die zur Verfügung stehenden Gelder drastisch gekürzt worden waren, beschloss das Team, eine autonome Stadt im Brachland zu bauen. Vorsitzende des Rats der Wissenschaftler ist Sylvia Bennet, 47. Die junge Wissenschaftlerin führt die Fallen Angels ganz im Sinne des Gründers Thomas Cooper. Im Grunde ist sie ein ruhiger Mensch, der sich stets von Vernunft leiten lässt. SysAdmin: Annie Simmons, 23, online als 'Twinkle' bekannt. Sie ist in Tech Haven geboren und aufgewachsen. In ihrer Familie gibt es aufgrund radioaktiver Strahlung genetische Erbschäden. Sie leidet an Hyposomia und sieht aus, als sei sie 14 Jahre alt. Durch eine Gehirn-zu-Online Verbindung hat sie einen direkten Zugang zum Netz. Sie ist eine unglaublich freundliche und glückliche Person, die gern voller Neugier fremde Server durchstöbert und freundliche Nachrichten und Sicherheitstipps zurücklässt."
FACHISTORY="Fraktions Geschichte\n Im Jahr 2633 verlassen 62 Männer und Frauen unter der Führung Thomas Coopers Neocron und ziehen ins Brachland, um dort Tech Haven zu bauen. Die Regierung wird in freien, geheimen Wahlen gewählt und besteht aus einem Rat von Wissenschaftlern. Während der folgenden Jahre fordern die erbarmungslosen Umstände einen hohen Zoll von den Bürgern der jungen Stadt. Die Forschungsbemühungen zielen zunächst auf das Überleben in solch feindseliger Umgebung ab. Der Start der 'Avenger' im Jahr 2654 ist den Einwohnern Tech Havens unbegreiflich. Nach vorherrschender Meinung sollte der Mensch die Erde erst dann verlassen, nachdem dort wieder gedeihliche Bedingungen hergestellt wurden. 2658 kommt Frederick Lauster von BioTech Industries nach Tech Haven. Während der folgenden Jahre verbessern sich die Lebensbedingungen in Tech Haven allmählich und dem Rat der Wissenschaftler werden viele neue Erfindungen vorgestellt. Einige davon erweisen sich als sehr nützlich, als Lioon Reza mit seinen Truppen die regierenden PSI-Mönche stürzt, worauf mit Neocrons neuem Führer ein offizieller Anerkennungsvertrag unterzeichnet wird. \n Im Jahr 2750 gehören dem Rat der Wissenschaftler fünf Mitglieder an. Unter der Leitung von Sylvia Bennet, einer Biologin, besteht er aus Manfred Goldstein (Atomphysiker), Renata Verbenhaig (Ärztin), Edmund Sirlund (menschliche Genetik) und Marian Steiner (Ingenieurin)."
FACRUMORS="Fraktions Gerüchte\n "
FACREL="Fraktions Kontakte\n Aufgrund ihrer Überzeugung, dass die gegenwärtige Regierungsform nicht das Richtige sein kann, stehen die Fallen Angels sowohl mit der Anarchy Breed, als auch mit den Widerstandskämpfern der Twilight Guardian in Verbindung. Die Wissenschaftler stellen den Guardians Medikamente und Information zur Verfügung und werden im Gegenzug von den Rebellen geschützt. \n Damion Jordan (Tangent Technologies Inc.) ist sehr verärgert darüber, dass begabte Forscher und Wissenschaftler oft die Firma verlassen, um nach Tech Haven umzuziehen. Aus offensichtlichen Gründen sind diese Wissenschaftler nicht an den Angeboten des Black Dragon Clans interessiert, auf dem Gebiet wissenschaftlicher Forschung mit ihm zusammenzuarbeiten und dadurch die Drogenherstellung und –verteilung des Clans zu unterstützen."

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

