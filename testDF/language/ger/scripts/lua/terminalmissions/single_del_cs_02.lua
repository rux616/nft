--************************
--name   : SINGLE_DEL_CS_02.lua
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
				SAY("Gruesse Bruder, wie kann ich dir helfen?")
				SAY("Gepriesen sei Crahn, Bruder. Was suchst du?")
				SAY("Brauchst du meine Hilfe, Bruder?")
				
				ANSWER("Ich wurde unterrichtet, dass du etwas ausliefern lassen willst. Kann ich dabei irgendwie helfen?",1)
				ANSWER("Ich hoerte, du hast einen Botengang zu vergeben. Wenn dem so ist, wuerde ich ihn uebernehmen.",1)
				ANSWER("Entschuldigung, mein Fehler, auf Wiedersehen.",4)
			else
				SAY("Gruesse Schwester, wie kann ich dir helfen?")
				SAY("Gepriesen sei Crahn, Schwester. Was suchst du?")
				SAY("Brauchst du meine Hilfe, Schwester?")
				
				ANSWER("Ich wurde unterrichtet, dass du etwas ausliefern lassen willst. Kann ich dabei irgendwie helfen?",1)
				ANSWER("Ich hoerte, du hast einen Botengang zu vergeben. Wenn dem so ist, wuerde ich ihn uebernehmen.",1)
				ANSWER("Entschuldigung, mein Fehler, auf Wiedersehen.",4)
			end
	NODE(1)
		GIVEQUESTITEM(91)
			SAY("Wir erhalten haeufig grosszuegige Spenden von Buergern, die nicht in der Bruderschaft sind, um unsere Forschungen nach der endgueltigen Wahrheit durch das Eindringen in die Tiefen des Aethers auch in ihrem Interesse weiter betreiben zu koennen. Um unseren Goennern fuer diese Unterstuetzung zu danken und Sie zu weiteren Spenden anzuregen, senden wir Ihnen die qualitativ hoechstwertigste Ausgabe der Lehren Crahns. %NPC_NAME(1) ist einer dieser Wohlgesonnenen. Du findest ihn in %NPC_WORLD(1). Bitte uebergebe ihm das Paket als Zeichen unsere Wertschaetzung fuer seine Unterstuetzung. Wenn du das erledigt hast, melde dich wieder bei mir. Dann regeln wir deine Bezahlung.")
			SAY("Diese Papiere muessen dringend zu %NPC_NAME(1) in %NPC_WORLD(1). Wenn du es sie geliefert hast, komm wieder, damit wir dich entsprechend entlohnen koennen. Nun beeile dich, %NPC_NAME(1) braucht diese Papiere besser frueher als spaeter.")
			ACTIVATEDIALOGTRIGGER(0)
			SETNEXTDIALOGSTATE(2)
			ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(1)
			if (result==0) then
				SAY("Ich denke, deine Anweisungen waren klar und deutlich, Schueler. Komme erst wieder, wenn du das Paket geliefert hast. Nur dann erhaelst du deinen Lohn.")
				SAY("Warum troedelst du, Juenger? Zeit ist essenziell. Nun liefer schon das Paket. Nur wenn deine Aufgabe erfuellt ist, wirst du die Grosszuegigkeit Crahns erfahren.")
				ENDDIALOG()
			else
				SAY("Exzellente Arbeit, Juenger. Ich werde dafuer sorgen, dass Golon Kalah selbst von deiner Zuverlaessigkeit erfaehrt. Bitte nimm diese %REWARD_MONEY() Credits als Belohnung fuer deine Dienste. Vielleicht hat die Bruderschaft spaeter mehr fuer dich zu tun. Ich jedenfalls muss nun meditieren.") 
				SAY("Die Bruderschaft ist dir dankbar fuer deine Unterstuetzung in dieser Angelegenheit. Wirklich gut gemacht, Juenger. Nimm diese %REWARD_MONEY() Credits als Zeichen unserer Zufriedenheit ueber deine Leistung.") 
				ACTIVATEDIALOGTRIGGER(2)
				ENDDIALOG()
			end
	NODE(3)
		TAKEQUESTITEM(91)
			if (result==0) then
				SAY("Was zum Teufel geht hier vor. Wo ist mein Paket? %NPC_NAME(0) sagte, dass du es mir bringen wirst. Bitte komm erst wieder, wenn du es hast!")
				SAY("Wo ist mein Paket? Komm erst wieder, wenn du es hast!")
				ENDDIALOG()
			else	
				SAY("Ahh mein Paket, endlich. Gute Neuigkeiten. %NPC_NAME(0) wird dich entsprechend entlohnen.")
				SAY("Mein Paket, gute Arbeit. Wenn du dich wieder bei %NPC_NAME(0) meldest, wird er dir dein Geld geben.")
				ACTIVATEDIALOGTRIGGER(1)
				SETNEXTDIALOGSTATE(5)	
				ENDDIALOG()
			end
	NODE(4)
		SAY("Auf Wiedersehen, Juenger.")
		SAY("Komm wieder, wenn deine Gedanken klarer sind, Schueler.")
		ENDDIALOG()
	NODE(5)
		SAY("Hey was machst Du noch hier? Los geh zu %NPC_NAME(0) um deine Belohnung abzuholen.")
		ENDDIALOG()
end
