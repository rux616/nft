--************************
--name   : SINGLE_AS_TG_02.lua
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
				SAY("Hallo. Kann ich Dir irgendwie helfen?")
				SAY("Hi, kann ich Dir helfen, Mann?")
				SAY("Mit Geld kann man keine Zeit kaufen und diese verschwende ich gerade mit Dir. Willst Du was?")
				SAY("Was willst Du?")
				SAY("Suchst Du etwas Bestimmtes? Informationen vielleicht?")
				SAY("Wenn Du Aerger suchst, kannst Du ihn haben. Falls Du andererseits Informationen brauchst, kann ich Dir vielleicht helfen.")
				
				ANSWER("Ich bin wegen einer wichtigen Angelegenheit hier. Sind Sie der Kontaktmann den ich treffen sollte?",2)
				ANSWER("Ich soll hier jemanden treffen...",2)
				ANSWER("Jemand hat ein Problem. Man hat mir Geld geboten, damit ich das Problem beseitige. Sind Sie mein Kontaktmann?",2)
				ANSWER("Entschuldigung, ich habe Sie wohl mit jemandem verwechselt.",1)
				ANSWER("Sie sind nicht die Person, nach der ich suche.",1)
				ANSWER("Ups, ich muss irgendwo falsch abgebogen sein.",1)
			else
				SAY("Hey Baby. Kann ich Dir irgendwie helfen?")
				SAY("Hi, kann ich Dir helfen, Lady?")
				SAY("Mit Geld kann man keine Zeit kaufen und diese verschwende ich gerade mit Dir. Willst Du was?")
				SAY("Was willst Du?")
				SAY("Suchst Du etwas Bestimmtes? Informationen vielleicht?")
				SAY("Wenn Du Aerger suchst, kannst Du ihn haben. Falls Du andererseits Informationen brauchst, kann ich Dir vielleicht helfen.")
			
				ANSWER("Ich bin wegen einer wichtigen Angelegenheit hier. Sind Sie der Kontaktmann den ich treffen sollte?",2)
				ANSWER("Ich soll hier jemanden treffen...",2)
				ANSWER("Jemand hat ein Problem. Man hat mir Geld geboten, damit ich das Problem beseitige. Sind Sie mein Kontaktmann?",2)
				ANSWER("Entschuldigung, ich habe Sie wohl mit jemandem verwechselt.",1)
				ANSWER("Sie sind nicht die Person, nach der ich suche.",1)
				ANSWER("Ups, ich muss irgendwo falsch abgebogen sein.",1)
			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Mann, Du hast Glueck dass wir die Sache allgemein halten bis beide Seiten den Auftrag bestaetigen, das haette sonst ungesund fuer Dich werden koennen.")
				SAY("Gut, Du siehst sowieso nicht aus, als haettest Du genug Erfahrung fuer diesen Job.")
				SAY("Sei vorsichtig, mit wem Du hier sprichst Mann. Waere dies ein extrem wichtiger Auftrag, wuerdest Du jetzt in einem Generep erwachen und Dich fragen, was zur Hoelle passiert ist.")
				ENDDIALOG()
			else
				SAY("Baby, Du hast Glueck dass wir die Sache allgemein halten bis beide Seiten den Auftrag bestaetigen, das haette sonst ungesund fuer Dich werden koennen.")
				SAY("Gut, Du siehst sowieso nicht aus, als haettest Du genug Erfahrung fuer diesen Job.")
				SAY("Sei vorsichtig, mit wem Du hier sprichst Lady. Waere dies ein extrem wichtiger Auftrag, wuerdest Du jetzt in einem Generep erwachen und Dich fragen, was zur Hoelle passiert ist.")
				ENDDIALOG()
			end
	NODE(2)
		SAY("Ja, ich bin der Kontaktmann, den Du treffen solltest. Okay, hier sind ein paar Informationen fuer Dich. Der Guardian hat seit neuestem ernsthafte Probleme in %NPC_WORLD(1). Diese Stoerungen haben einige unserer Operationen dort unterbrochen und uns gezwungen, den Rest ganz zu stoppen. All diese Stoerungen liessen sich auf einen gewissen %NPC_NAME(1) zurueckverfolgen. Es muss sich so schnell wie moeglich jemand um diese Situation kuemmern, oder all unsere Operationen in %NPC_WORLD(1) sind gefaehrdet. Eliminiere das Ziel und kehre dann wieder hierher zurueck. Und vertraue mir, Runner, Deine Zeit soll nicht umsonst gewesen sein.")
		SAY("Ja, ich warte hier auf einen Runner. Heute morgen fand ich bei einer Leiche ein Dokument. Ich will Dich nicht mit den Details langweilen, Du musst nur wissen, dass %NPC_NAME(1) von der Bildflaeche verschwinden muss. Laut des Dokuments soll er sich zuletzt in %NPC_WORLD(1) aufgehalten haben. Dies ist eine schwarze Operation, der Guardian kann Dir also in keiner Weise beistehen. Du wirst auf Dich allein gestellt sein. Erledige das Ziel so unauffällig und schnell wie moeglich und komm dann wieder zu mir. Hier warten dann die Credits auf Dich. Nun geh, und viel Glueck.")
		SAY("Gut, Du weisst, wie diese Dinge laufen. Ich bekam eine nachricht, dass ich hier einen Runner treffen und ihn mit Informationen versorgen soll. Ich nehme an der Runner bist Du. Das Ziel dieser Operation ist %NPC_NAME(1) und sein letzter bekannter Aufenthaltsort ist %NPC_WORLD(1). Die Jungs von der Aufklaerung meinen, dies sei noch immer der beste Ort, um mit der Suche zu beginnen. Sobald der Auftrag von Deiner Seite erfolgreich beendet ist, kommst Du wieder hierher, damit ich Dich bezahlen kann.")
		SAY("Es scheint, dass sich ein gewisser %NPC_NAME(1) mit einigen hochrangigen Guardians angelegt hat. Sie haben ein Treffen in %NPC_WORLD(1) ausgemacht, allerdings wirst nur Du dort erscheinen. Mach das Ziel alle und komm dann wieder her, um Deine Credits abzuholen.")
		SAY("Ich werde Dich fuer diese Mission mit Informationen versorgen. Der Name des Ziels lautet %NPC_NAME(1). Warum dein Arbeitgeber das Ziel tot sehen will, geht Dich nichts an; je weniger Fragen Du stellst, desto besser. Einer meiner Kontaktleute konnte das Ziel in %NPC_WORLD(1) ausmachen. Geh dorthin und suche das Ziel um es dann so schnell wie moeglich zu vernichten. Denke daran, dass dieser Job moeglichst unauffällig durchgefuehrt werden soll. Nachdem das Ziel erledigt ist, wirst Du hierher zurueckkehren, damit wir auf das Geld zu sprechen kommen koennen.")
		SAY("Ich komme von der Guardian Aufklaerung und soll Dich mit den noetigen Informationen versorgen. Dein Ziel heisst %NPC_NAME(1). Dieses Individuum war eine Zeitlang, wie soll ich sagen... ein Dorn im Auge des Guardians. Wie auch immer, vor Kurzem bekamen wir den Tip, dass sich das Ziel derzeit in %NPC_WORLD(1) aufhaelt. Geh dorthin und suche das Ziel um es dann so schnell wie moeglich zu vernichten, verstanden? Nachdem das Ziel erledigt ist, wirst Du hierher zurueckkehren, damit wir auf das Geld zu sprechen kommen koennen.")
		SETNEXTDIALOGSTATE(11)
		ENDDIALOG()
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				GENDERCHECK()
					if (result==1) then
						SAY("Das ist alles, was ich Dir sagen kann. Der Rest der Mission ist Deine Sache.")
						SAY("Tut mit leid, Mann, aber ich bin nur ein Befehlsempfaenger. Der Rest ist Deine Sache.")
						SAY("Runner, es gibt eine Sache, die Du ueber dieses Geschaeft lernen solltest. Zu viele Fragen fuehren dazu, dass Du zu viele Antworten bekommst. Und Leute, die zuviel wissen finden sich sehr schnell in einem Generep wieder.")
					else
						SAY("Das ist alles, was ich Dir sagen kann. Der Rest der Mission ist Deine Sache.")
						SAY("Tut mit leid, Baby, aber ich bin nur ein Befehlsempfaenger. Der Rest ist Deine Sache.")
						SAY("Runner, es gibt eine Sache, die Du ueber dieses Geschaeft lernen solltest. Zu viele Fragen fuehren dazu, dass Du zu viele Antworten bekommst. Und Leute, die zuviel wissen finden sich sehr schnell in einem Generep wieder.")
					end
				ENDDIALOG()
			else
				GENDERCHECK()
					if (result==1) then
						SAY("Sehr gut. Mir wurde gerade bestaetigt, dass das Ziel erledigt ist. Hier ist Deine Belohnung, %REWARD_MONEY() Credits. Du hast ganze Aebeit geleistet Mann und der Guardian braucht Leute wie Dich. Falls Du mal wieder ein paar Credits brauchst, schau in die Terminals.")
						SAY("Unsere Hacker haben sich gerade in die Genrep-Station eingelinkt und bekamen mit, wie %NPC_NAME(1) 's Lebenszeichen vor ein paar Minuten verschwanden. Gute Arbeit! Diese %REWARD_MONEY() Credits hast Du Dir verdient. Falls Du mal wieder mit uns arbeiten willst, Du weisst ja wo die Terminals stehen.")
						SAY("Nun, das war gute Arbeit, Mann. Diese %REWARD_MONEY() Credits waren gut angelegt. Schau mal wieder vorbei, wenn Du einen Job brauchst.")
						SAY("Ah, schon wieder zurueck? Ich wurde gerade vom Tod des Ziels informiert. Hier ist Deine Belohnung, %REWARD_MONEY() Credits.")
						SAY("Ha! Du hast da gute Arbeit geleistet in %NPC_WORLD(1). Nach der Sauerei, die %NPC_NAME(1) dort hinterlassen hat, werden wir erst einmal ein Reinigungsteam dorthin schicken. Hier sind Deine %REWARD_MONEY() Credits als Bezahlung. Im Terminal findest Du demnaechst vielleicht wieder einen Guardian Job.")
						SAY("Wir bekamen gerade die Nachricht von einem unserer Agenten, der sich in der Gegend aufhielt. Es scheint, du hast Deinen Job sehr gut gemacht. Mach Deine Arbeit weiterhin so gut und Du wirst eine grosse Zukunft beim Guardian haben. Oh, und hier sind Deine %REWARD_MONEY() Credits.")
						ACTIVATEDIALOGTRIGGER(1)
						ENDDIALOG()
					else
						SAY("Sehr gut. Mir wurde gerade bestaetigt, dass das Ziel erledigt ist. Hier ist Deine Belohnung, %REWARD_MONEY() Credits. Du hast ganze Aebeit geleistet Baby, und der Guardian braucht Leute wie Dich. Falls Du mal wieder ein paar Credits brauchst, schau in die Terminals.")
						SAY("Unsere Hacker haben sich gerade in die Genrep-Station eingelinkt und bekamen mit, wie %NPC_NAME(1)'s Lebenszeichen vor ein paar Minuten verschwanden. Gute Arbeit! Diese %REWARD_MONEY() Credits hast Du Dir verdient. Falls Du mal wieder mit uns arbeiten willst, Du weisst ja wo die Terminals stehen.")
						SAY("Nun, das war gute Arbeit, Lady. Diese %REWARD_MONEY() Credits waren gut angelegt. Schau mal wieder vorbei, wenn Du einen Job brauchst.")
						SAY("Ah, schon wieder zurueck? Ich wurde gerade vom Tod des Ziels informiert. Hier ist Deine Belohnung, %REWARD_MONEY() Credits.")
						SAY("Ha! Du hast da gute Arbeit geleistet in %NPC_WORLD(1). Nach der Sauerei, die %NPC_NAME(1) dort hinterlassen hat, werden wir erst einmal ein Reinigungsteam dorthin schicken. Hier sind Deine %REWARD_MONEY() Credits als Bezahlung. Im Terminal findest Du demnaechst vielleicht wieder einen Guardian Job.")
						SAY("Wir bekamen gerade die Nachricht von einem unserer Agenten, der sich in der Gegend aufhielt. Es scheint, du hast Deinen Job sehr gut gemacht. Mach Deine Arbeit weiterhin so gut und Du wirst eine grosse Zukunft beim Guardian haben. Oh, und hier sind Deine %REWARD_MONEY() Credits.")
						ACTIVATEDIALOGTRIGGER(1)
						ENDDIALOG()
					end
			end
end

