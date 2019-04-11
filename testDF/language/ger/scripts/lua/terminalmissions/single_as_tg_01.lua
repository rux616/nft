--************************
--name   : SINGLE_AS_TG_01.lua
--ver    : 0.1
--author : Ferron
--date   : 2004/09/08
--lang   : de
--desc	 : terminal mission
--npc    :
--************************
--changelog:
--2004/09/08(0.1): recheck(Ferron)
--YYYY/MM/DD(0.0)
--************************

function DIALOG()

	NODE(0)
		GENDERCHECK()
			if (result==1) then
				SAY("Huh... Du siehst mir nicht nach dem Richtigen aus. Was willst du?")
				SAY("Kann ich dir mit irgendwas helfen, Fremder?")
				SAY("Man, ich bin beschaeftigt. Was willst du von mir?")
				SAY("Was willst du hier?")
				SAY("Hey man, kann ich irgendwas für dich tun? Willst du irgendeine Information?")
				SAY("Du siehst so aus, als ob du gerade wieder gehen wolltest. Kann ich dir mit irgendetwas helfen....wobei man diese Waffe braucht?")
				
				ANSWER("Ich bin wegen einer Nachricht von einem gemeinsamen Freund hier. Was kannst du mir ueber meinen Tanzpartner sagen?",2)
				ANSWER("Ich brauche Informationen ueber jemanden, der einem Freund Geld schuldet. Weisst du was darueber?",2)
				ANSWER("Jemand kontaktierte mich uebers Netz, weil ihr meine Faehigkeiten benoetigt. Ich brauche die Informationen ueber das Ziel.",2)
				ANSWER("Ich glaube, ich bin dafuer der Falsche.",1)
				ANSWER("Umm... ich glaube, ich bin nicht der, nach dem du suchst.",1)
				ANSWER("Ich muss irgendwo falsch abgebogen sein.",1)
			else
				SAY("Huh... Du siehst mir nicht nach der Richtigen aus. Was willst du?")
				SAY("Kann ich dir mit irgendwas helfen, Babe?")
				SAY("Man, ich bin beschaeftigt. Was willst du von mir?")
				SAY("Was willst du hier?")
				SAY("Hey Lady, suchst du nach irgendwas? Nach ein paar Infos vielleicht?")
				SAY("Du siehst so aus, als ob du gerade wieder gehen wolltest. Kann ich dir mit irgendetwas helfen....wobei man diese Waffe braucht?")				
				ANSWER("Ich bin wegen einer Nachricht von einem gemeinsamen Freund hier. Was kannst du mir ueber meinen Tanzpartner sagen?",2)
				ANSWER("Ich brauche Informationen über jemanden, der einem Freund Geld schuldet. Weisst du was darueber?",2)
				ANSWER("Jemand kontaktierte mich uebers Netz, weil ihr meine Faehigkeiten benoetigt. Ich brauche die Informationen ueber das Ziel.",2)
				ANSWER("Ich glaube, ich bin dafuer die Falsche.",1)
				ANSWER("Umm... ich glaube, ich bin nicht die, nach der du suchst.",1)
				ANSWER("Ich muss irgendwo falsch abgebogen sein.",1)
			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Hmm, wirklich schade, nicht wahr? Ich seh dich dann spaeter.")
				SAY("Macht Sinn. Du hast auch nicht diesen ganz speziellen Ausdruck in deinen Augen.")
				SAY("Okay, aber naechstes Mal pass besser auf, wen du ansprichst. Die meisten meiner Kumpels reagieren nicht so friedlich.")
				ENDDIALOG()
			else
				SAY("Hmm, wirklich schade, nicht wahr? Ich seh dich dann spaeter.")
				SAY("Macht Sinn. Du hast auch nicht diesen ganz speziellen Ausdruck in deinen Augen.")
				SAY("Okay, aber naechstes Mal pass besser auf, wen du ansprichst. Die meisten meiner Kumpels reagieren nicht so friedlich.")
				ENDDIALOG()
			end
	NODE(2)
		GENDERCHECK()
			if (result==1) then
				SAY("Exzellent, ich denke, du bist genau die Person, nach der wir suchen. Okay, ich habe hier einen Namen und einen Ort fuer dich. Das ist alles. Der Rest liegt bei dir, aber ich denke, du weisst, was wir wollen. Das Ziel heisst %NPC_NAME(1) und sollte sich nach unseren Informationen in %NPC_WORLD(1) befinden. Mach deine Arbeit... leise, und dann komm hierher zurueck fuer die Auswertung.")
				SAY("Gut, Informationen hab ich und du scheinst entsprechend ausgeruestet zu sein, um mit den Informationen auch was anfangen zu koennen. Den Daten zufolge ist das Ziel %NPC_NAME(1) in %NPC_WORLD(1) . Standardmaßnahmen sind fuer diese Operation erlaubt. Wir wollen eine leise, saubere Hinrichtung. Zur Auswertung komm hierher zurueck und noch was: Wenn du was ausplauderst, ist das sehr, sehr schlecht fuer deine Gesundheit. Denk dran, du wirst nur GenRep`ed, wenn du stirbst und das kann sehr lange dauern.")
				SAY("Gut, du siehst professionell aus. Wir hatten in letzter Zeit zuviel neue Runner, die die Diskretion einer Telephonauskunft hatten. Das Ziel ist diesmal %NPC_NAME(1) in %NPC_WORLD(1), wenn sich nicht allzuviel geaendert hat. Standardmethoden fuer eine verdeckte Operation sind genehmigt worden. Nachdem das erledigt ist, komm zu mir zurueck. Und denk dran, das ist kein Job, von dem man abends im Club V rumerzaehlt.")
				SAY("Das trifft sich wirklich gut. Ich warte gerad auf einen guten Runner für einen heissen Job. Heut morgen war ein anonymer Brief in meinem Postfach. Es waren nur zwei Zeilen: %NPC_NAME(1) und %NPC_WORLD(1). Ich denke, du weisst, wie du mit dieser Information umzugehen hast. Ein Wort der Warnung, die Bosse sehen es gar nicht gern, wenn solche Sachen am naechsten Tag in den Nachrichten stehen. Also erledige das so leise wie moeglich und komm danach zur Auswertung wieder her.")
				SAY("Ich denke, du bist der Runner, von dem ich erfahren habe. Okay, das Ziel ist diesmal %NPC_NAME(1). Du solltest es in %NPC_WORLD(1) finden. Wie bei fast allen dieser Operationen, verlangen wir unauffaelliges Vorgehen. Das macht es fuer alle viel leichter, auch fuer dich. Auf jeden Fall komm hierher zurueck, nachdem das Ziel nie wieder aufsteht und dann sehen wir weiter.")
				SAY("Jetzt macht alles wieder ein wenig Sinn. Ich dachte schon, diese Sesselhocker da oben haben vergessen, wie man Probleme mit ein wenig Gewalt loesen kann. Okay Runner, dein Ziel heisst diesmal %NPC_NAME(1). Du solltest deine Suche in %NPC_WORLD(1) beginnen. Nachdem das Ziel eliminiert wurde, komm zurueck. Und Runner, mach da draussen keinen riesen Aufstand wegen der Sache. Wir bekommens schon mit, wenn du Erfolg hattest.")
				SETNEXTDIALOGSTATE(11)
				ENDDIALOG()
			else
				SAY("Exzellent, ich denke, du bist genau die Person, nach der wir suchen. Okay, ich habe hier einen Namen und einen Ort fuer dich. Das ist alles. Der Rest liegt bei dir, aber ich denke, du weisst, was wir wollen. Das Ziel heisst %NPC_NAME(1) und sollte sich nach unseren Informationen in %NPC_WORLD(1) befinden. Mach deine Arbeit... leise, und dann komm hierher zurueck fuer die Auswertung.")
				SAY("Gut, Informationen hab ich und du scheinst entsprechend ausgeruestet zu sein, um mit den Informationen auch was anfangen zu koennen. Den Daten zufolge ist das Ziel %NPC_NAME(1) in %NPC_WORLD(1) . Standardmaßnahmen sind fuer diese Operation erlaubt. Wir wollen eine leise, saubere Hinrichtung. Zur Auswertung komm hierher zurueck und noch was: Wenn du was ausplauderst, ist das sehr, sehr schlecht fuer deine Gesundheit. Denk dran, du wirst nur GenRep`ed, wenn du stirbst und das kann sehr lange dauern.")
				SAY("Gut, du siehst professionell aus. Wir hatten in letzter Zeit zuviel neue Runner, die die Diskretion einer Telephonauskunft hatten. Das Ziel ist diesmal %NPC_NAME(1) in %NPC_WORLD(1), wenn sich nicht allzuviel geaendert hat. Standardmethoden fuer eine verdeckte Operation sind genehmigt worden. Nachdem das erledigt ist, komm zu mir zurueck. Und denk dran, das ist kein Job, von dem man abends im Club V rumerzaehlt.")
				SAY("Das trifft sich wirklich gut. Ich warte gerad auf einen guten Runner für einen heissen Job. Heut morgen war ein anonymer Brief in meinem Postfach. Es waren nur zwei Zeilen: %NPC_NAME(1) und %NPC_WORLD(1). Ich denke, du weisst, wie du mit dieser Information umzugehen hast. Ein Wort der Warnung, die Bosse sehen es gar nicht gern, wenn solche Sachen am naechsten Tag in den Nachrichten stehen. Also erledige das so leise wie moeglich und komm danach zur Auswertung wieder her.")
				SAY("Ich denke, du bist der Runner, von dem ich erfahren habe. Okay, das Ziel ist diesmal %NPC_NAME(1). Du solltest es in %NPC_WORLD(1) finden. Wie bei fast allen dieser Operationen, verlangen wir unauffaelliges Vorgehen. Das macht es fuer alle viel leichter, auch fuer dich. Auf jeden Fall komm hierher zurueck, nachdem das Ziel nie wieder aufsteht und dann sehen wir weiter.")
				SAY("Jetzt macht alles wieder ein wenig Sinn. Ich dachte schon, diese Sesselhocker da oben haben vergessen, wie man Probleme mit ein wenig Gewalt loesen kann. Okay Runner, dein Ziel heisst diesmal %NPC_NAME(1). Du solltest deine Suche in %NPC_WORLD(1) beginnen. Nachdem das Ziel eliminiert wurde, komm zurueck. Und Runner, mach da draussen keinen riesen Aufstand wegen der Sache. Wir bekommens schon mit, wenn du Erfolg hattest.")
				SETNEXTDIALOGSTATE(11)
				ENDDIALOG() 
			end
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				SAY("Ich hab keine weiteren Informationen fuer dich.")
				SAY("Schau, ich hab dir schon alles erzaehlt. Der Rest liegt nun bei dir.")
				SAY("Du stellst hier immer noch Fragen, aber glaub mir, du willst keine weiteren Antworten.")
				ENDDIALOG()
			else
				GENDERCHECK()
					if (result==1) then
						SAY("Erledigt? Gut. Der Guardian braucht mehr faehige Leute wie dich. %REWARD_MONEY() Credits, die Standardsumme, befinden sich jetzt auf deinem Konto. Wenn du mehr Geld brauchst...oder es dir in den Fingern juckt, schau zuerst auf den Terminals der Guardians nach. Wir bevorzugen Leute von deinem Kaliber.")
						SAY("Das war wirklich mal gut durchgezogen. Ich hab nicht mal das leiseste Fluestern ueber deinen Job auf den Strassen vernommen. Du hast dir die %REWARD_MONEY() Credits wirklich verdient. Wenn du weiter machen willst, sieh bei unseren Terminals nach. Ich bin sicher, dass der Guardian noch andere Dinge hat, bei denen du helfen kannst, vor allem mit deinen Faehigkeiten.")
						SAY("Ah, du bist zurueck! Ich wuenschte, alle waeren so professionell wie du. Hier sind die %REWARD_MONEY() Credits fuer den Job. Wenn du nach mehr Arbeit suchst, schau auf unseren Terminals nach. Der Guardian kann Leute gebrauchen, die Diskretion wahren koennen.")
						SAY("Schoen dich wiederzusehen. Worum ging es? Ach ja, stimmt. Sehr gut. Und hier ist auch die Bezahlung in Hoehe von %REWARD_MONEY() Credits. Schau vorbei, wenn du wieder einen Job suchst. Es sieht so aus, als ob derzeit der Guardian mehr solcher Jobs an faehige Leute zu vergeben hat.")
						SAY("Hallo. Sag, bist du der Kerl, den ich auf diese spezielle Mission geschickt habe? Gut, scheint ja geklappt zu haben. Hier sind die %REWARD_MONEY() Credits fuer die Arbeit. Schau bei unseren Terminals vorbei, wenn du weitere Jobs suchst. Ich bin sicher, der Guardian hat da was fuer dich.")
						SAY("Gut gut, Ich hab gewusst, dass ich dich bald wiedersehe. Jemand hat bestaetigt, dass du den Job erledigt hast. Ich denke %REWARD_MONEY() Creds sind genug fuer den Job und dein zukuenftiges Schweigen, nicht wahr? Gut. Der Guardian braucht immer Leute, die Schweigen koennen. Schau wieder vorbei, wenn du Arbeit suchst.")
						ACTIVATEDIALOGTRIGGER(1)
						ENDDIALOG()
					else
						SAY("Erledigt? Gut. Der Guardian braucht mehr faehige Leute wie dich. %REWARD_MONEY() Credits, die Standardsumme, befinden sich jetzt auf deinem Konto. Wenn du mehr Geld brauchst...oder es dir in den Fingern juckt, schau zuerst auf den Terminals der Guardians nach. Wir bevorzugen Leute von deinem Kaliber.")
						SAY("Das war wirklich mal gut durchgezogen. Ich hab nicht mal das leiseste Fluestern ueber deinen Job auf den Strassen vernommen. Du hast dir die %REWARD_MONEY() Credits wirklich verdient. Wenn du weiter machen willst, sieh bei unseren Terminals nach. Ich bin sicher, dass der Guardian noch andere Dinge hat, bei denen du helfen kannst, vor allem mit deinen Faehigkeiten.")
						SAY("Ah, du bist zurueck! Ich wuenschte, alle waeren so professionell wie du. Hier sind die %REWARD_MONEY() Credits fuer den Job. Wenn du nach mehr Arbeit suchst, schau auf unseren Terminals nach. Der Guardian kann Leute gebrauchen, die Diskretion wahren koennen.")
						SAY("Schoen dich wiederzusehen. Worum ging es? Ach ja, stimmt. Sehr gut. Und hier ist auch die Bezahlung in Hoehe von %REWARD_MONEY() Credits. Schau vorbei, wenn du wieder einen Job suchst. Es sieht so aus, als ob derzeit der Guardian mehr solcher Jobs an faehige Leute zu vergeben hat.")
						SAY("Hallo. Sag, bist du das Babe, das ich auf diese spezielle Mission geschickt habe? Gut, scheint ja geklappt zu haben. Hier sind die %REWARD_MONEY() Credits fuer die Arbeit. Schau bei unseren Terminals vorbei, wenn du weitere Jobs suchst. Ich bin sicher, der Guardian hat da was fuer dich.")
						SAY("Gut gut, Ich hab gewusst, dass ich dich bald wiedersehe. Jemand hat bestaetigt, dass du den Job erledigt hast. Ich denke %REWARD_MONEY() Creds sind genug fuer den Job und dein zukuenftiges Schweigen, nicht wahr? Gut. Der Guardian braucht immer Leute, die Schweigen koennen. Schau wieder vorbei, wenn du Arbeit suchst.")
						ACTIVATEDIALOGTRIGGER(1)
						ENDDIALOG()
					end
			end
end
