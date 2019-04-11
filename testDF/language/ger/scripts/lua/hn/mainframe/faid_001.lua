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
FACGENERAL="Allgemeine Fraktions Information\n Die Fallen Angels wurden von Wissenschaftlern gegr�ndet, die sich als von der Regierung Neocrons unterdr�ckt empfanden und der Meinung waren, ihre akademische Freiheit werde zu sehr eingeschr�nkt. Seitdem haben sie eine Untergrund-Stadt im Brachland gebaut und arbeiten an der Erforschung gewisser Technologien; besonders solcher, die dem Menschen unter den ver�nderten Lebensbedingungen nach dem dritten Weltkrieg ein etwas bequemeres Leben erm�glichen. An der Politik von Neocron sind sie nur am Rande interessiert."
FACHQ="Fraktions Hauptquartier\n DOY SEC 03"
FACPERS="Wichtige Per�nlichkeiten\n  Gr�nder Thomas Cooper war als gesch�ftf�hrender Ingenieur in den Forschungslabors der Regierung t�tig. Sein junges Team war von der ausschlie�lichen Erforschung neuer PSI Implantate gelangweilt und abgesto�en. Nachdem die zur Verf�gung stehenden Gelder drastisch gek�rzt worden waren, beschloss das Team, eine autonome Stadt im Brachland zu bauen. Vorsitzende des Rats der Wissenschaftler ist Sylvia Bennet, 47. Die junge Wissenschaftlerin f�hrt die Fallen Angels ganz im Sinne des Gr�nders Thomas Cooper. Im Grunde ist sie ein ruhiger Mensch, der sich stets von Vernunft leiten l�sst. SysAdmin: Annie Simmons, 23, online als 'Twinkle' bekannt. Sie ist in Tech Haven geboren und aufgewachsen. In ihrer Familie gibt es aufgrund radioaktiver Strahlung genetische Erbsch�den. Sie leidet an Hyposomia und sieht aus, als sei sie 14 Jahre alt. Durch eine Gehirn-zu-Online Verbindung hat sie einen direkten Zugang zum Netz. Sie ist eine unglaublich freundliche und gl�ckliche Person, die gern voller Neugier fremde Server durchst�bert und freundliche Nachrichten und Sicherheitstipps zur�ckl�sst."
FACHISTORY="Fraktions Geschichte\n Im Jahr 2633 verlassen 62 M�nner und Frauen unter der F�hrung Thomas Coopers Neocron und ziehen ins Brachland, um dort Tech Haven zu bauen. Die Regierung wird in freien, geheimen Wahlen gew�hlt und besteht aus einem Rat von Wissenschaftlern. W�hrend der folgenden Jahre fordern die erbarmungslosen Umst�nde einen hohen Zoll von den B�rgern der jungen Stadt. Die Forschungsbem�hungen zielen zun�chst auf das �berleben in solch feindseliger Umgebung ab. Der Start der 'Avenger' im Jahr 2654 ist den Einwohnern Tech Havens unbegreiflich. Nach vorherrschender Meinung sollte der Mensch die Erde erst dann verlassen, nachdem dort wieder gedeihliche Bedingungen hergestellt wurden. 2658 kommt Frederick Lauster von BioTech Industries nach Tech Haven. W�hrend der folgenden Jahre verbessern sich die Lebensbedingungen in Tech Haven allm�hlich und dem Rat der Wissenschaftler werden viele neue Erfindungen vorgestellt. Einige davon erweisen sich als sehr n�tzlich, als Lioon Reza mit seinen Truppen die regierenden PSI-M�nche st�rzt, worauf mit Neocrons neuem F�hrer ein offizieller Anerkennungsvertrag unterzeichnet wird. \n Im Jahr 2750 geh�ren dem Rat der Wissenschaftler f�nf Mitglieder an. Unter der Leitung von Sylvia Bennet, einer Biologin, besteht er aus Manfred Goldstein (Atomphysiker), Renata Verbenhaig (�rztin), Edmund Sirlund (menschliche Genetik) und Marian Steiner (Ingenieurin)."
FACRUMORS="Fraktions Ger�chte\n "
FACREL="Fraktions Kontakte\n Aufgrund ihrer �berzeugung, dass die gegenw�rtige Regierungsform nicht das Richtige sein kann, stehen die Fallen Angels sowohl mit der Anarchy Breed, als auch mit den Widerstandsk�mpfern der Twilight Guardian in Verbindung. Die Wissenschaftler stellen den Guardians Medikamente und Information zur Verf�gung und werden im Gegenzug von den Rebellen gesch�tzt. \n Damion Jordan (Tangent Technologies Inc.) ist sehr ver�rgert dar�ber, dass begabte Forscher und Wissenschaftler oft die Firma verlassen, um nach Tech Haven umzuziehen. Aus offensichtlichen Gr�nden sind diese Wissenschaftler nicht an den Angeboten des Black Dragon Clans interessiert, auf dem Gebiet wissenschaftlicher Forschung mit ihm zusammenzuarbeiten und dadurch die Drogenherstellung und �verteilung des Clans zu unterst�tzen."

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

