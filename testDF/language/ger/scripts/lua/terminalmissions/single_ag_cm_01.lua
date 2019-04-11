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
--2004/09/16(0.0): translated from en, because no de version(Ferron)
--************************

function DIALOG()

	NODE(0)
		SAY("Hallo Runner. Wie kann ich dir helfen?")
		SAY("Ja Runner, was kann ich f�r dich tun?")
		SAY("Ja Runner, was m�chtest du?")
		
		ANSWER("Ich habe micht f�r diesen Exetermination Job beworben.",1)
		ANSWER("Ich bin hier f�r diese Annihilation Aufgabe.",1)
		ANSWER("Hmmm, ich geh besser. Bis dann.",3)
	NODE(1)
		SAY("Runner, durchsuche das Gebiet hier und t�te mindestens %TARGET_VALUE(0,1) von %TARGET_NPCNAME(0). Es ist unbedingt wichtig das das mit hohem Standard durchgef�hrt wird. Wenn du fertig bist komm bitte zu mir zur�ck und ich werde daf�r sorgen das du f�r deine Dienste bezahlt wirst.")
		SAY("Untersuche die Gegend hier drumrum und entsorge eine Gruppe von %TARGET_VALUE(0,1) %TARGET_NPCNAME(0). Komme wieder zu mir um dir deine Bezahlung abzuholen wenn du deine Aufgabe erledigt hast. Du wirst debrieft wenn du zu mir wiederkommst.")
		SETNEXTDIALOGSTATE(2)

		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				SAY("Runner, hau ab oder du wirst die Konsequenzen tragen m�ssen.")
				SAY("Runner, verschwinde!!")
				ENDDIALOG()
			else
				SAY("Danke dir Runner, du hast eine gute Aufgabe f�r die CityMercs erledigt. Wir sind sehr zufrieden mit deiner Leistung. Hier deine %REWARD_MONEY(). Vergiss nicht die Terms nach anderen Jobs zu durchsuchen die wir anbieten.")
				SAY("Das war schnell. Hier deine %REWARD_MONEY() credits. Wenn du ein anderes Terminal siehst log dich ein f�r mehr Missionen und Aufgaben.") 
				ACTIVATEDIALOGTRIGGER(1)
				ENDDIALOG()
			end
	NODE(3)
		SAY("Bis dann.")
		SAY("Komm wieder wenn du was zu sagen hast Runner. Auf Wiedersehen.")
		SAY("Geh ich habe keine Zeit f�r dich, Runner.")
		ENDDIALOG()
	
end
