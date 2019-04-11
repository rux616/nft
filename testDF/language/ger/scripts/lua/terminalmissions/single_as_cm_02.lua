--************************
--name   : SINGLE_AS_CM_02.lua
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
		SAY("Fragen, Runner?")
		SAY("Was, Runner?")
		SAY("Brauchst Du was, Runner?")
		
		ANSWER("Ich sah einen interessanten Job im Terminal. Ich glaube, ich bin hier an der richtigen Adresse. Ich wuerde diesen Job gern uebernehmen.",1)
		ANSWER("Dieser Job im Terminal, ich glaube, meine Erfahrung koennte von Nutzen sein. Ich wuerde den Job gerne uebernehmen.",1)
		ANSWER("Ich muss weg!",3)
	NODE(1)
		SAY("Es ist wichtig, dass Du ueber das, was ich Dir nun erzaehle, keine Fragen stellst, weder vor, während, oder nach der Ausfuehrung des Auftrags. Geh nach %NCP_WORLD(1). Dort erledigst Du %TARGET_NPCNAME(1). Nimm keinen Kontakt mit dem Ziel auf. Mehr Informationen kann ich Dir nicht geben, Runner und mehr brauchst Du auch nicht zu wissen. Dein Geld bekommst Du nach erfolgreicher Ausfuehrung des Jobs. Du kannst gehen.")

		SAY("Es ist wichtig, dass Du ueber das, was ich Dir nun erzaehle, keine Fragen stellst. Gehe nach %NPC_WORLD(1), mache %TARGET_NPCNAME(1) ausfindig und sorge dafuer dass das Ziel diese Begegnung nicht ueberlebt. Das Geld bekommst Du nach erfolgreicher Ausfuehrung bei mir.")
		SETNEXTDIALOGSTATE(2)

		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				SAY("Mach dass Du wegkommst Runner, sonst werde ich andere Massnahmen ergreifen muessen.")
				SAY("Verschwinde, Runner!!!")
				ENDDIALOG()
			else
				SAY("Hier sind Deine %REWARD_MONEY() Credits. Das war gute Arbeit. Du solltest die Terminals nach weiteren Jobs im Auge behalten. Du kannst wegtreten. Bis bald.")
				SAY("Schoen, Dich wiederzusehen. Ich hatte ehrlich gesagt einige Zweifel, dass Du es schaffen würdest. Hier sind Deine %REWARD_MONEY() Credits. Du hast bewiesen, dass Du auch unter grossem Druck arbeiten kannst. Vielleicht haben wir demnaechst wieder mal einen Auftrag fuer Dich.") 
				ACTIVATEDIALOGTRIGGER(1)
				ENDDIALOG()
			end
	NODE(3)
		SAY("Auf wiedersehen.")
		SAY("Komm wieder, wenn Du eine Frage hast.")
                SAY("Verschwinde, ich habe jetzt keine Zeit fuer Dich.")
		ENDDIALOG()
	
end
