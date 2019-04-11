--************************
--name   : SINGLE_DEL_TT_01.lua
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
                       if (result==1)  then
                        SAY("Brauchen Sie etwas, Runner?")
                        SAY("Wie kann ich Ihnen helfen, Runner?")
                        SAY("Brauchen Sie meine Hilfe, Runner?")
                        SAY("Ja Sir, haben Sie ein Problem?")
                        SAY("Willkommen Sir, fragen Sie ruhig, wenn Sie etwas auf dem Herzen haben.")
                       else
                        SAY("Ja Runner, wie kann Tangent Ihnen helfen?")
                        SAY("Willkommen, wie kann ich Ihnen helfen?")
                        SAY("Ja Runner? kann ich Ihnen behilflich sein?")
                        SAY("Ma'am, brauchen Sie etwas?")
                        SAY("Ja Ma'am? Wie kann ich Ihnen behilflich sein?")
	end
                        ANSWER("Es scheint, als haetten Sie einen Botenjob zu erledigen, so stand es zumindestens im Terminal.",1)
                        ANSWER("Ihre Firma hat einen Botenjob zu erledigen, richtig?",1)
                        ANSWER("Ich bin an Ihrem Botenjob sehr interessiert.",1)
                        ANSWER("Tangent? Sorry, aber damit will ich nichts zu tun haben.",3)
                        ANSWER("Ah ja, ich glaube das ist nichts fuer mich, tschuess.",3)
        NODE(1)
        	GIVEQUESTITEM(91)
        	SAY("Diese Waffenbauteile muessen einem gewissen Mr %NPC_NAME(1) gebracht werden. Er ist an einem geheimen Waffentest beteiligt und benoetigt diese Teile um damit voranzukommen. Sie koennen diesen Mann in %NPC_WORLD() finden. Kommen Sie dannach wegen der Belohnung zu mir zurueck.")
        	SAY("Einige spezielle Kunden von uns erwarten eine Lieferung seltener Waffenbauteile. Sie haben eine Menge Einfluss also beeilen Sie sich bitte. Die Kontaktperson ist ein gewisser %NPC_NAME(1), der sich gerade in %NPC_WORLD(1) aufhaelt. Kommen Sie danach wegen der Belohnung zu mir zurueck.")
        	SAY("Diese Speziallieferung ist fuer unsere Abteilung in %NPC_WORLD(1) gedacht. Der Abteilungsleiter, %NPC_NAME(1), wartet bereits ungeduldig auf diese Blueprints um mit seiner Arbeit fortfahren zu koennen. Kehren Sie danach zu mir zurueck.")
        	SAY("Bringen Sie dieses Paket zu Mr. %NPC_NAME(1) der in %NPC_WORLD(1) auf Sie wartet. Kehren Sie wegen der Bezahlung danach zu mir zurueck.")
        	ACTIVATEDIALOGTRIGGER(0)
        	SETNEXTDIALOGSTATE(2)
                ENDDIALOG()
        NODE(2) 
                ISMISSIONTARGETACCOMPLISHED(1)
                        if (result==0) then
                        	SAY("Wir wuerden es sehr begruessen, wenn Sie endlich diese Lieferung erledigen wurden.")
                        	SAY("Tangent Industries waere Ihnen sehr dankbar, wenn Sie das Paket ablieferten.")
                        	SAY("Ja? Haben Sie Probleme, Ihr Missionsziel zu finden? Wenn nicht, bringen Sie diese Mission zu ende.")
                        	SAY("Kehren Sie erst zurueck, wenn Sie das Paket abgeliefert haben.")
                                ENDDIALOG()
                        else
                                SAY("Gute Arbeit, Runner. Wie versprochen, bekommen Sie Ihre %REWARD_MONEY() Credits als kleine Entschaedigung fuer Ihren wertvollen Dienst.")
                                SAY("Das Paket hat sein Ziel erreicht. Es war ein Vergnuegen, mit Ihnen Geschaefte zu machen. Die versprochenen %REWARD_MONEY() Credits wurden auf Ihr Konto ueberwiesen.")
                                SAY("Ahh, wir haben Sie schon erwartet. Hier ist Ihre Belohnung in Hoehe von %REWARD_MONEY() Credits.")
                                SAY("Wir sind mit Ihrer Arbeit sehr zufrieden. Hier sind Ihre %REWARD_MONEY() Credits.")
                                SAY("Tangent Industries ist mit Ihrer Arbeit sehr zufrieden. Ich wurde bevollmaechtigt, Ihnen diese %REWARD_MONEY() Credits als Belohnung auszuhaendigen.")
                                SAY("Gut gemacht, Runner. Hier sind die versprochenen %REWARD_MONEY() Credits.")                   
                                ACTIVATEDIALOGTRIGGER(2)
                                ENDDIALOG()
                        end
	NODE(3)
		TAKEQUESTITEM(91)
	                if (result==0) then
	                	SAY("Was ist mit unserer Abmachung? Wenn Sie noch immer an einer Belohnung interessiert sein sollten, schlage ich vor, dass Sie mir dieses Paket besorgen.")
	                	SAY("Bringen Sie mir sofort das Paket!")
	                	SAY("Das Paket ist fuer uns von groesster Wichtigkeit. Kommen Sie erst wieder, wenn Sie es haben.")
	                	SAY("Ich will dieses Paket haben, jetzt sofort!")
	                	ENDDIALOG()
			else
        			SAY("Tangent steht in Ihrer Schuld. Gehen Sie zurueck zu %NPC_NAME(0) und sprechen Sie ihn auf die Belohnung an.")
        			SAY("Ahh, das Paket, endlich. Ich danke Ihnen. Ich bin sicher, Sie werden mit der Belohnung, die %NPC_NAME(0) fuer Sie bereithaelt, sehr zufrieden sein.")
        			SAY("Seien Sie das naechste Mal bitte etwas schneller. Egal, ich danke Ihnen. Sprechen Sie mit %NPC_NAME(0) ueber Ihre Bezahlung.")
        			SAY("Mr. %NPC_NAME(0) wird Ihnen Ihre Belohnung geben, wenn Sie zu ihm zurueckkehren. Ich bin mit Ihrer Arbeit sehr zufrieden.")
        			SAY("Mr. %NPC_NAME(0) wird Sie bezahlen. Ich danke Ihnen fuer Ihre Arbeit.")
        			ACTIVATEDIALOGTRIGGER(1)
        			SETNEXTDIALOGSTATE(5)
				ENDDIALOG()
			end
	NODE(4)
		SAY("Es steht Ihnen frei, jederzeit wiederzukommen.")
		SAY("Auf Wiedersehen.")
		SAY("Auf Wiedersehen, Buerger.")
		ENDDIALOG()
	NODE(5)
		SAY("Hey was machen Sie noch hier? Los gehen Sie zu %NPC_NAME(0) um Ihre Belohnung abzuholen.")
		ENDDIALOG()
end



































































