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
FACGENERAL="Allgemeine Fraktions Information\n Die Gruppe repräsentiert den politischen Widerstand gegen Lioon Reza und seine Regierung. Die Basis der Guardians befand sich in einem Gebiet voller gewundener Canyons im Brachland, wo die Angriffe gegen das System geplant werden."
FACHQ="Fraktions Hauptquartier\n DOY SEC 01"
FACPERS="Wichtige Perönlichkeiten\n Der Anführer der Twilight Guardian, Hagen Yager, 79, war früher ein enger Freund Lioon Rezas. Zusammen gründeten sie die aufständische Organisation, um gegen die Regierung der PSI-Mönche und für die Freiheit der Bürger Neocrons zu kämpfen. Voll Idealismus glaubte Hagen daran, dass Lioon seine eigenen demokratischen Ziele und die freiheitliche Gesinnung teilte, von der er selbst seit seiner Jugend in der unterjochten Stadt Neocron nie abgewichen war. Doch seit Lioon seine Diktatur in Neocron errichtete, führt Hagen die Widerstandsbewegung gegen seinen ehemaligen Kameraden an. \n Cole 'Flash' Khan, 19, ist ein Genie und der SysAdmin der Guardians. Cole setzt sein Wissen in brillanter Weise ein, um die Aktionen der Twilight Guardian zu planen und ihre Risiken zu kalkulieren. Dank seiner überragenden Intelligenz schweben Neocrons Firmennetzwerke und Terminals in ernster Gefahr."
FACHISTORY="Fraktions Geschichte\n Im Jahr 2722 gründen Reza und Yager gemeinsam die Twilight Guardian und verbreiten ihr Ziel, die Regierung der PSI-Mönche innerhalb der Untergrundbewegung zu stürzen. Die Gruppe erfährt ungeheuren Zulauf aus allen Gesellschaftsschichten. Im folgenden Jahr wird der Umsturz geplant. Lioon, der während der letzten Monate immer aggressiver wurde, will die PSI-Mönche mit Gewalt aus der Stadt jagen. \n Im Jahr 2724 gelingt es den Twilight Guardian, die Regierung der PSI-Mönche zu überlisten und die Regierungsmitglieder aus der Stadt zu vertreiben. Viele PSI-Mönche aus der ehemaligen Regierung ziehen sich in die alte Crahn Abtei im Brachland zurück. Im Rausch des Sieges kommt es zum Streit zwischen Yager und Lioon. Lioon erklärt öffentlich, dass er die Regierung übernehmen will und wendet sich damit gegen den vereinbarten Plan, in Neocron eine Demokratie einzusetzen. Am folgenden Morgen hat Lioon das Gebäude der CityAdmin von schwarzweißen roboterartigen Kreaturen umringen lassen, die die Angehörigen der Twilight Guardian aus dem Gebäude vertreiben. Yager ist dieser plötzliche Gesinnungswechsel Lioons ein Rätsel, ebenso wenig kann er sich erklären, woher die Kreaturen kommen, die später als Cop- und STORM-Bots bekannt werden. Ein Jahr später hat sich Lioon als neuer Diktator von Neocron etabliert. Er errichtet in der ganzen Stadt das CopBot System. Die Gesetze werden stark vereinfacht und die Strafen empfindlich verstärkt. Im Jahr 2726 weiß der betrogene Yager, dass er ganz von vorn beginnen muss. \n Er beschließt, die Guardian weiterhin anzuführen; doch nun mit dem Ziel, Lioon Reza zu stürzen. Die Mehrheit der früheren Mitglieder schließt sich ihm an. Der neu erstarkte Widerstand verbirgt sich wieder auf einer Basis im Brachland. Trotz mehrerer Angriffe gelingt es den Guardian im Jahr 2750 nicht, Lioons Macht nennenswert zu schwächen. Die Armee der Cop- und STORM-Bots, die die CityAdmin 24 Stunden täglich schützt, ist zu stark. Yager ist nun ein alter Mann und hat das Gefühl, dass seine Zeit sich dem Ende zuneigt."
FACRUMORS="Fraktions Gerüchte\n  "
FACREL="Fraktions Kontakte\n Da die Rebellen im Augenblick bei der Wahl ihrer Verbündeten nicht sehr wählerisch sein können, versuchen sie sogar, mit der Bruderschaft des Crahn einigermaßen gut auszukommen. Schließlich haben sie in Gestalt der Regierung einen gemeinsamen Feind, auch wenn jeder weiß, dass die Fraktionen sich nie auf ein bestimmtes politisches System einigen könnten. Wie die Anarchy Breed sind auch die Fallen Angels durch die Überzeugung, dass das gegenwärtige Regierungssystem nicht das Richtige sein kann, mit den Widerstandskämpfern verbunden. Die Wissenschaftler liefern den Guardian Medikamente und Informationen und stehen dafür ständig unter dem Schutz der Rebellen. \n Überflüssig zu erwähnen, dass die CityAdmin der Hauptfeind der Freiheitskämpfer ist. Folglich sind sämtliche legalen (und somit regierungsfreundlichen) Firmen in Neocron ebenfalls Gegner der Guardian. Zu ihnen gehören BioTech Industries, Tangent Technologies Inc., NEXT Systems Inc, sowie Diamond Real Estate. Diese Firmen nutzen die Dienste der CityMercs, um die Rebellen zu bekämpfen. Da eine Revolution die Immobiliengeschäfte des Black Dragon gefährden würde, hat auch der Clan keinerlei Sympathie für den Guardian."

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

