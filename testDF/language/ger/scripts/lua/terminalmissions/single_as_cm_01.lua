--************************
--name   : SINGLE_AS_CM_01.lua
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
		SAY("Was ist, Runner?")
		SAY("Ja Runner, willst Du irgend etwas?")
		SAY("Ja Runner, ich bin in Eile, also was ist?")
		
		ANSWER("Es geht um den Auftrag. Hab da was im Terminal gelesen.",1)
		ANSWER("Ich habe gehoert, ihr habt einen Auftrag...",1)
		ANSWER("Hmm, schon gut, ich gehe wohl besser.",3)
	NODE(1)
		SAY("Schnelligkeit ist jetzt von groesster Bedeutung, Runner. Du wirst nach %NPC_WORLD(1) aufbrechen. Dort erledigst Du %NPC_NAME(1). Es werden keine Fragen gestellt und Du nimmst keinen Kontakt zum Ziel auf. Mehr musst Du nicht wissen. Weggetreten, Runner!")

		SAY("Du wirst sofort nach %NPC_WORLD(1) aufbrechen, das Ziel %NPC_NAME(1) orten und erledigen. Deine Mission ist von groesster Wichtigkeit fuer uns. Sobald Du fertig bist, kommst Du wieder hierher und erhaeltst Deine Belohnung. Du kannst nun wegtreten, Runner. Viel Glueck.")
		SETNEXTDIALOGSTATE(2)

		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				SAY("Verschwinde jetzt, Runner, oder ich werde andere Massnahmen ergreifen.")
				SAY("Geh jetzt, Runner, sofort!!!")
				ENDDIALOG()
			else
				SAY("Hier sind Deine %REWARD_MONEY() Credits. Du bist sehr geschickt und stellst keine Fragen, dass sind wertvolle Eigenschaften fuer uns. Vielleicht haben wir demnaechst noch mehr Arbeit fuer Dich, wirf hin und wieder einen Blick auf die Terminals. Du kannst wegtreten, Runner.")
				SAY("Ahh, da bist Du ja wieder. Hier sind Deine %REWARD_MONEY() Credits. Danke Runner. Vielleicht haben wir demnaechst noch mehr Arbeit fuer Dich, wirf hin und wieder einen Blick auf die Terminals.") 
				ACTIVATEDIALOGTRIGGER(1)
				ENDDIALOG()
			end
	NODE(3)
		SAY("Tschuess.")
		SAY("Komm wieder, wenn Du Fragen hast, Runner.")
                SAY("Verschwinde, ich habe jetzt keine Zeit fuer Dich.")
		ENDDIALOG()
	
end
