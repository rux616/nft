--************************
--name   : SINGLE_DEL_CS_01.lua
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
		SAY("Ah ja, tatsaechlich habe ich hier ein kleines Paket, das ausgeliefert werden muss. Bitte bringe es zu %NPC_NAME(1) in %NPC_WORLD(1). Schnelligkeit ist essentiell. Wenn du erfolgreich warst, komm zu mir zurueck, damit wir die Entlohnung regeln koennen. Nun liefere es schnell aus, im Namen Crahns!")
		SAY("Golon Kalah moechte, dass diese Papiere schnell zu %NPC_NAME(1) in %NPC_WORLD(1) gebracht werden. Wenn du das gemacht hast, komm zu mir zurueck um deine verdiente Belohnung zu erhalten. Schnell, %NPC_NAME(1) braucht die Papiere wirklich dringend.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(1)
			if (result==0) then
				SAY("Ich denke, deine Instruktionen waren klar und deutlich. Kehre erst zurueck, wenn das Paket abgeliefert ist. Nur dann erhaelst du deinen Lohn.")
				SAY("Warum laesst du dir soviel Zeit, Juenger, Zeit ist essentiel. Nun geh und liefere das Paket, nur dann erhaelst du die Belohnung und du kennst die Grosszuegigkeit Crahns.")
				ENDDIALOG()
			else
				SAY("Ausgezeichnete Arbeit, Juenger. Ich stelle sicher, dass Golon Kalah selbst davon erfaehrt. Bitte nimm diese %REWARD_MONEY() Credits als Belohnung für deinen Erfolg. Vielleicht hat die Bruderschaft bald mehr Arbeit für dich, jetzt allerdings muss ich meditieren.") 
				SAY("Die Bruderschaft ist erfreut über deine Zuverlaessigkeit. Gut ausgefuehrt, Juenger. Akzeptiere diese %REWARD_MONEY() Credits, als Dank für deine Dienste.") 
				ACTIVATEDIALOGTRIGGER(2)
				ENDDIALOG()
			end
	NODE(3)
		TAKEQUESTITEM(91)
			if (result==0) then
				SAY("Wo ist mein Paket? %NPC_NAME(0) sagte, dass du es mir bringen wuerdest. Bitte komm nicht ohne das Paket wieder!")
				SAY("Wo ist mein Paket? Komm wieder, wenn du es hast!")
				ENDDIALOG()
			else	
				SAY("Ahh endlich mein Paket, gute Nachrichten. Geh zu %NPC_NAME(0) und nimm deinen Lohn entgegen.")
				SAY("Mein Paket, gute Arbeit. Wenn du zu %NPC_NAME(0) zurueckkehrst, wird er dich dafuer bezahlen.")
				SETNEXTDIALOGSTATE(5)
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
	NODE(4)
		SAY("Auf Wiedersehen, Juenger")
		SAY("Komm zurueck, wenn deine Gedanken gereinigt sind, Juenger.")
		ENDDIALOG()
	NODE(5)
		SAY("Hey was machst Du noch hier? Los geh zu %NPC_NAME(0) um deine Belohnung abzuholen.")
		ENDDIALOG()
end


