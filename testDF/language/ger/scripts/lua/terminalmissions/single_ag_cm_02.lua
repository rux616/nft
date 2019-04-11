--************************
--name   : SINGLE_AG_CM_01.lua
--ver    : 0.0
--author : Ferron
--date   : 2004/09/14
--lang   : de
--desc	 : terminal mission
--npc    :
--************************
--changelog:
--2004/09/14(0.0): translated from en, because no de version(Ferron)
--YYYY/MM/DD(0.0)
--************************

function DIALOG()

	NODE(0)
		SAY("Was gibts Runner? Ich habe nicht den ganzen Tag Zeit!")
		SAY("Ja Runner, was kann ich für dich tun?")
		SAY("Ja Runner, was möchtest du?")
		
		ANSWER("Ich habe mich für den Job beworben den ich im Term gesehen hab über Eliminationen",1)
		ANSWER("Ich bin hier für die Exterminations Aufgabe.",1)
		ANSWER("Hmmm. OK, Ich geh lieber. Bye.",3)
	NODE(1)
		SAY("Okay, Runner, geh nachdem ich gesprochen haben und starte die Mission. Eliminiere zumindest %TARGET_VALUE(0,1) von %TARGET_NPCNAME(0). Du hast alle Rechte jede 'nötigen' Massnahmen in dieser Mission durchzuführen. Scheitere nicht. Nachdem du die Mission beendet hast kehre zurück für ein Debriefing. Geh nun Runner.")
		SAY("Runner, lösche eine Gruppe von %TARGET_VALUE(0,1) %TARGET_NPCNAME(1). Das ist eine extrem wichtige Aufgabe und ein erfolgreiches Zurückkehren wird in grösserer Aufmerksamkeit für dich enden. Nachdem du sie beendet hast komm zurück zu mir und ich werde sicherstellen das du für deine Dienste bezahlt werden wirst.")
		SETNEXTDIALOGSTATE(2)

		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				SAY("Runner, hau ab oder du wirst die Konsequenzen tragen müssen.")
				SAY("Runner, verschwinde!!")
				ENDDIALOG()
			else
				SAY("Danke dir Runner, du hast eine gute Aufgabe für die CityMercs erledigt. Wir sind sehr zufrieden mit deiner Leistung. Hier deine %REWARD_MONEY(). Vergiss nicht die Terms nach anderen Jobs zu durchsuchen die wir anbieten.")
				SAY("Das war schnell. Hier deine %REWARD_MONEY() credits. Wenn du ein anderes Terminal siehst log dich ein für mehr Missionen und Aufgaben.") 
				ACTIVATEDIALOGTRIGGER(1)
				ENDDIALOG()
			end
	NODE(3)
		SAY("Bis dann.")
		SAY("Komm wieder wenn du was zu sagen hast Runner. Auf Wiedersehen.")
		SAY("Geh ich habe keine Zeit für dich, Runner.")
		ENDDIALOG()
	
end
