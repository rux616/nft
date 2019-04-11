--************************
--name   : SINGLE_AG_BT_02.lua
--ver    : 0.1
--author : Ferron
--date   : 2004/09/08
--lang   : de
--desc	 : terminal mission BT
--npc    :
--************************
--changelog:
--2004/09/08(0.1): recheck(Ferron)
--YYYY/MM/DD(0.0)
--************************

function DIALOG()

	NODE(0)
		SAY("Hallo Runner, was kann ich fuer Sie tun?")
		SAY("Gruesse Runner, wie kann ich Ihnen helfen?")
		SAY("Ja Runner? Wie kann ich Ihnen helfen?")
		
		ANSWER("Ich wurde ueber das BioTech Terminal an Sie verwiesen. Ich komme wegen dem Job bezueglich der Ausrottung von Ungeziefer.",1)
		ANSWER("Ich bin wegen dem Saeuberungsjob hier.  Laut dem BioTech Terminal soll ich mich hier bei Ihnen melden.",1)
		ANSWER("Entschuldigung, ich dachte, Sie waeren jemand anderes.",3)
		ANSWER("Entschuldigung, ich glaube, ich bin hier falsch. Wiedersehen.",3)

	NODE(1)
		SAY("Ah ja, lassen Sie mich nur kurz etwas nachsehen...... ah, hier, also los. Wie Sie wahrscheinlich wissen, bezahlt BioTech Runner für die Vernichtung verschiedener Arten von Ungeziefer.  Sie muessen nicht wissen, warum wir das machen. Ihr Job ist es, im hiesigen Sektor nach %TARGET_NPCNAME(0) zu suchen.  Wenn Sie %TARGET_VALUE(0,1) Stueck erledigt haben, koennen Sie hierher fuer die Bezahlung zurueckkommen.  Es ist kein schwerer Job, aber jeder faengt mal klein an. Viel Spass!")
		SAY("Oh ja, lassen Sie mich die Auftragsliste studieren...... Genau, Sie haben sich fuer eine Ungezieferbeseitigung eingetragen und das werden Sie jetzt auch machen.  Es ist sehr einfach. Durchforsten Sie diesen Sector und toeten Sie %TARGET_VALUE(0,1) %TARGET_NPCNAME(0).  Wenn Sie alle vernichtet haben, koennen Sie hier Ihrer Belohnung abholen. Oh, und waschen Sie sich die Haende nach dieser Aktion. Viel Spass!")
		SAY("Oh ja, ich schau gerad mal nach...... hier steht es. Sehen Sie sich in der unmittelbaren Umgebung nach Ungeziefer um und erledigen Sie mindestens %TARGET_VALUE(0,1) %TARGET_NPCNAME(0).  Wenn Sie fertig sind, holen Sie bitte hier Ihre Bezahlung ab. Ich bin zuversichtlich, Runner; dies ist der erste Schritt, um sich einen Besuch bei Madam Veronique leisten zu koennen. Viel Spass!")
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				SAY("Sind Ihnen die %TARGET_NPCNAME(0) zu schwer? Ich glaube nicht, oder? Also machen Sie Ihren Job")
				SAY("So schnell zurueck? Ich kann Sie nicht bezahlen, wenn Sie nicht mindestens %TARGET_VALUE(0,1) dieser Kreaturen ausgerottet haben.  Kommen Sie zurueck, wenn Sie wirklich fertig sind.")
				SAY("Schon zurück? Aber Sie müssen nochmal raus und die %TARGET_VALUE(0,1) Viecher erledigen, bevor ich Sie bezahlen kann.  Also los!")
				ENDDIALOG()
			else
				SAY("Gute Arbeit, Runner. Hier sind Ihre %REWARD_MONEY() Credits. Wenn Sie wieder fuer BioTech arbeiten wollen, schauen Sie auf den Terminals nach. Beim naechsten Mal koennen Sie vielleicht etwas anderes als %TARGET_NPCNAME(0) toeten. Einen schoenen Tag noch.")
				SAY("Sehr gut, Runner. Hier sind die %REWARD_MONEY() Credits. Beim naechsten Mal bekommen Sie vielleicht einen besseren Job. Danke!") 
				SAY("Willkommen zurueck, Runner. Bitte akzeptieren Sie die %REWARD_MONEY() Credits.  Wenn Sie weitere Jobs wollen, nutzen Sie bitte die Terminals. Einen schoenen Tag noch.")
				ACTIVATEDIALOGTRIGGER(1)
				ENDDIALOG()
			end
	NODE(3)
		SAY("Auf Wiedersehen.")
		ENDDIALOG()
end