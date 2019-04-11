--************************
--name   : SINGLE_AG_TT_01.lua
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
--single_ag_biotec_01

        NODE(0)
                GENDERCHECK()
                        if (result==1) then
                        SAY("Willkommen Runner, brauchen sie irgendetwas?")
                        SAY("Ich stehe zu ihrer Verfuegung, Runner.")
                        SAY("Brauchen sie Hilfe, Runner?")
                        SAY("Ja, Sir, haben sie ein Problem?")
                        SAY("Willkommen Sir, falls sie ein Problem haben, fragen sie nur.")
                        else
                        SAY("Ja, Runner?")
                        SAY("Willkommen Runner, wie kann ich ihnen helfen?")
                        SAY("Ja, Runner? Wie kann ich ihnen helfen?")
                        SAY("Ma'am, was brauchen sie?")
                        SAY("Ja Ma'am? Wie kann ich ihnen helfen?")
           end
                        ANSWER("Ich sah mir eine Tangent Sektion bei den Term's dort drueben an und es scheint so, als ob sie einen Auftrag fuer mich haben.",1)
                        ANSWER("Ich bin hier wegen des Auftrags den ich im Tangent Term gesehen habe.",1)
                        ANSWER("Ich will mich für den Exterminations Auftrag bewerben. Ich denke meine Faehigkeiten werden ihren Anspruechen genuegen.",1)
                        ANSWER("Verzeihung, ich bin falsch abgebogen.",3)
                        ANSWER("Vergiss es, ich habe andere Arbeiten zu erledigen. Auf Wiedersehen.",3)
                        
        NODE(1)
                SAY("Ok Runner, ich habe ihren Registrations Bildschirm vor mir und er zeigt das sie qualifiziert genug für diese Aufgabe sind. Bitte eliminieren sie mindestens %TARGET_VALUE(0,1) %TARGET_NPCNAME(0). Wenn sie hierher zurückkehren werde ich ihre BEzahlung bereit halten.") 
                SAY("Willkommen Runner. Bitte dursuchen sie die Gegend nach %TARGET_NPCNAME(0). Finden und toeten sie mindestens %TARGET_VALUE(0,1) und kommen sie dann zurück. Ich wurde authorisiert eine Bezahlung für diese Arbeit bereitzustellen.")
                SETNEXTDIALOGSTATE(2)
                ENDDIALOG()

        NODE(2) 
                ISMISSIONTARGETACCOMPLISHED(0)
                        if (result==0) then -- Mission is NOT accomplished
                                SAY("Wenn sie ihre Arbeit nicht erledigen, dann koennen wir ihnen auch keine Belohnung geben!!")
                                SAY("Gehen sie. Ich habe keine Zeit für sinnlose Gespraeche.")
                                ENDDIALOG()
                        else
                                SAY("Excellente Arbeit, Runner, bitte nehmen und geniessen sie ihre %REWARD_MONEY() Credits. Besuchen sie die Terms bald wieder, Tangent Technology wuerde sich freuen ihre Dienstleistungen wieder in Anspruch zu nehmen. Einen schönen Tag noch, Runner.")
                                SAY("Fantastische Arbeit, Runner. Bitte, nehmen sie ihre %REWARD_MONEY() Credits Belohnung und geniessen sie sie. Bitte besuchen sie die Terms bald wieder für weitere Auftraege.") 
                                ACTIVATEDIALOGTRIGGER(1)
                                ENDDIALOG()
                        end
                        end
        


