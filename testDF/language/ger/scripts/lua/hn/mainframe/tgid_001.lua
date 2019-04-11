--************************
--name   : tgid_001.lua
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
DBNAME="Twilight Guardian Broadcasting Daemon v0.0.1"
FACNAME="TwilightGuardian"
FACSLOGAN="Freiheit ist unser Gesetz!"
FACGENERAL="Allgemeine Fraktions Information\n Die Gruppe repr�sentiert den politischen Widerstand gegen Lioon Reza und seine Regierung. Die Basis der Guardians befand sich in einem Gebiet voller gewundener Canyons im Brachland, wo die Angriffe gegen das System geplant werden."
FACHQ="Fraktions Hauptquartier\n DOY SEC 01"
FACPERS="Wichtige Per�nlichkeiten\n Der Anf�hrer der Twilight Guardian, Hagen Yager, 79, war fr�her ein enger Freund Lioon Rezas. Zusammen gr�ndeten sie die aufst�ndische Organisation, um gegen die Regierung der PSI-M�nche und f�r die Freiheit der B�rger Neocrons zu k�mpfen. Voll Idealismus glaubte Hagen daran, dass Lioon seine eigenen demokratischen Ziele und die freiheitliche Gesinnung teilte, von der er selbst seit seiner Jugend in der unterjochten Stadt Neocron nie abgewichen war. Doch seit Lioon seine Diktatur in Neocron errichtete, f�hrt Hagen die Widerstandsbewegung gegen seinen ehemaligen Kameraden an. \n Cole 'Flash' Khan, 19, ist ein Genie und der SysAdmin der Guardians. Cole setzt sein Wissen in brillanter Weise ein, um die Aktionen der Twilight Guardian zu planen und ihre Risiken zu kalkulieren. Dank seiner �berragenden Intelligenz schweben Neocrons Firmennetzwerke und Terminals in ernster Gefahr."
FACHISTORY="Fraktions Geschichte\n Im Jahr 2722 gr�nden Reza und Yager gemeinsam die Twilight Guardian und verbreiten ihr Ziel, die Regierung der PSI-M�nche innerhalb der Untergrundbewegung zu st�rzen. Die Gruppe erf�hrt ungeheuren Zulauf aus allen Gesellschaftsschichten. Im folgenden Jahr wird der Umsturz geplant. Lioon, der w�hrend der letzten Monate immer aggressiver wurde, will die PSI-M�nche mit Gewalt aus der Stadt jagen. \n Im Jahr 2724 gelingt es den Twilight Guardian, die Regierung der PSI-M�nche zu �berlisten und die Regierungsmitglieder aus der Stadt zu vertreiben. Viele PSI-M�nche aus der ehemaligen Regierung ziehen sich in die alte Crahn Abtei im Brachland zur�ck. Im Rausch des Sieges kommt es zum Streit zwischen Yager und Lioon. Lioon erkl�rt �ffentlich, dass er die Regierung �bernehmen will und wendet sich damit gegen den vereinbarten Plan, in Neocron eine Demokratie einzusetzen. Am folgenden Morgen hat Lioon das Geb�ude der CityAdmin von schwarzwei�en roboterartigen Kreaturen umringen lassen, die die Angeh�rigen der Twilight Guardian aus dem Geb�ude vertreiben. Yager ist dieser pl�tzliche Gesinnungswechsel Lioons ein R�tsel, ebenso wenig kann er sich erkl�ren, woher die Kreaturen kommen, die sp�ter als Cop- und STORM-Bots bekannt werden. Ein Jahr sp�ter hat sich Lioon als neuer Diktator von Neocron etabliert. Er errichtet in der ganzen Stadt das CopBot System. Die Gesetze werden stark vereinfacht und die Strafen empfindlich verst�rkt. Im Jahr 2726 wei� der betrogene Yager, dass er ganz von vorn beginnen muss. \n Er beschlie�t, die Guardian weiterhin anzuf�hren; doch nun mit dem Ziel, Lioon Reza zu st�rzen. Die Mehrheit der fr�heren Mitglieder schlie�t sich ihm an. Der neu erstarkte Widerstand verbirgt sich wieder auf einer Basis im Brachland. Trotz mehrerer Angriffe gelingt es den Guardian im Jahr 2750 nicht, Lioons Macht nennenswert zu schw�chen. Die Armee der Cop- und STORM-Bots, die die CityAdmin 24 Stunden t�glich sch�tzt, ist zu stark. Yager ist nun ein alter Mann und hat das Gef�hl, dass seine Zeit sich dem Ende zuneigt."
FACRUMORS="Fraktions Ger�chte\n  "
FACREL="Fraktions Kontakte\n Da die Rebellen im Augenblick bei der Wahl ihrer Verb�ndeten nicht sehr w�hlerisch sein k�nnen, versuchen sie sogar, mit der Bruderschaft des Crahn einigerma�en gut auszukommen. Schlie�lich haben sie in Gestalt der Regierung einen gemeinsamen Feind, auch wenn jeder wei�, dass die Fraktionen sich nie auf ein bestimmtes politisches System einigen k�nnten. Wie die Anarchy Breed sind auch die Fallen Angels durch die �berzeugung, dass das gegenw�rtige Regierungssystem nicht das Richtige sein kann, mit den Widerstandsk�mpfern verbunden. Die Wissenschaftler liefern den Guardian Medikamente und Informationen und stehen daf�r st�ndig unter dem Schutz der Rebellen. \n �berfl�ssig zu erw�hnen, dass die CityAdmin der Hauptfeind der Freiheitsk�mpfer ist. Folglich sind s�mtliche legalen (und somit regierungsfreundlichen) Firmen in Neocron ebenfalls Gegner der Guardian. Zu ihnen geh�ren BioTech Industries, Tangent Technologies Inc., NEXT Systems Inc, sowie Diamond Real Estate. Diese Firmen nutzen die Dienste der CityMercs, um die Rebellen zu bek�mpfen. Da eine Revolution die Immobiliengesch�fte des Black Dragon gef�hrden w�rde, hat auch der Clan keinerlei Sympathie f�r den Guardian."

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

