--************************
--name   : SINGLE_AG_BT_01.lua
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
                GENDERCHECK()
                        if (result==1) then -- Runner is male.
                        SAY("Hallo Runner, was kann ich fuer Sie tun?")
                        SAY("Gruesse Runner, wie kann ich Ihnen helfen?")
                        SAY("Ja Runner? Wie kann ich Ihnen helfen?")
                        SAY("Hallo Sir, was kann ich fuer Sie tun?")
                        SAY("Ja Sir? Wie kann ich Ihnen helfen?")
                        else -- Runner is female.
                        SAY("Hallo Runner, was kann ich fuer Sie tun?")
                        SAY("Gruesse Runner, wie kann ich Ihnen helfen?")
                        SAY("Ja Runner? Wie kann ich Ihnen helfen?")
                        SAY("Hallo Ma'am, was kann ich fuer Sie tun?")
                        SAY("Ja Ma'am? Wie kann ich Ihnen helfen?")
end

                        ANSWER("Ich wurde ueber das BioTech Terminal an Sie verwiesen. Ich komme wegen dem Job bezueglich der Ausrottung von Ungeziefer.",1)
                        ANSWER("Ich bin wegen dem Saeuberungsjob hier.  Laut dem BioTech Terminal soll ich mich hier bei Ihnen melden.",1)
                        ANSWER("Ich hab mich fuer den Saeuberungsjob aus dem BioTech Terminal beworben.  Ich soll mich hier bei Ihnen melden.",1)
                        ANSWER("Entschuldigung, ich dachte, Sie waeren jemand anderes.",3)
                        ANSWER("Ach nichts. Ich dachte, Sie waeren jemand anderes. Auf Wiedersehen.",3)

        NODE(1)
                SAY("Ah ja, lassen Sie mich nur kurz etwas nachsehen...... Hier haben wir es ja. Ok, wie Sie vielleicht wissen, bezahlen die CityAdmins Runner fuer jegliche Hilfe bei der Aufrechterhaltung der Sicherheit und Ordnung in der Stadt.  Als Konsequenz daraus hat BioTech mit den CityAdmins einen Vertrag geschlossen, der die Vergabe solcher Auftraege durch BioTech gestattet.  Kommen wir auf den Punkt, der Job ist eine einfache Saeuberungsaktion der naeheren Umgebung. Beseitigen Sie mindestens %TARGET_VALUE(0,1) %TARGET_NPCNAME(0).  Danach kommen Sie hierher zurueck, um die Bezahlung von BioTech in Empfang zu nehmen.")
                SAY("Verstehe, Runner. Wir haben einen Vertrag mit den CityAdmins, der die Unterstuetzung bei der Aufrechterhaltung der Sicherheit und Ordnung der Stadt betrifft.  Um diesen einzuhalten, ist es Ihr Job ein paar dieser %TARGET_NPCNAME(0) auszurotten.  Nachdem Sie mindestens %TARGET_VALUE(0,1) von denen beseitigt haben, kommen Sie hierher zurueck, um sich die Belohnung von BioTech dafuer zu sichern.")
                SAY("Einer von Seymour Jordan's Vertrauten hat einen schmutzigen Job bezueglich der Beseitigung von staedtischem Ungeziefer zu vergeben.  Aus persoenlichen Gruenden hat Jordan die Prioritaet zur Bekaempfung solcher Gefahren in Erfuellung des Vertrages mit den CityAdmins erhoeht.  Ihre Aufgabe ist es, in der Stadt ein wenig aufzuraeumen.  Suchen Sie in der naeheren Umgebung nach %TARGET_NPCNAME(0).  Toeten Sie mindestens %TARGET_VALUE(0,1) davon und Sie erhalten hier von BioTech ihre Bezahlung fuer die Erfuellung dieser Aufgabe.")
                SETNEXTDIALOGSTATE(2)
                ENDDIALOG()

        NODE(2) 
                ISMISSIONTARGETACCOMPLISHED(0)
                        if (result==0) then -- Mission is NOT accomplished
                                SAY("Was machen Sie hier? Gehen Sie endlich und erledigen den Job!!")
                                SAY("Was suchen Sie hier noch?  Sie muessen immer noch %TARGET_VALUE(0,1) Stück erledigen.  Also gehen Sie.")
                                ENDDIALOG()
                        else
                                SAY("Gute Arbeit, Runner. Hier ist Ihre Belohnung in Hoehe von %REWARD_MONEY() Credits. Informieren Sie sich weiterhin an BioTech Terminals ueber weitere Jobs. Wir koennen qualifiziertes Personal wie Sie gut gebrauchen.  Ich hoffe, wir sehen uns wieder. Einen schoenen Tag noch.")
                                SAY("Ausgezeichnet. Schön Sie wieder zu sehen.  Ich hoffe, Sie hatten keine grossen Probleme bei diesem Auftrag. Wenn Sie weiter Auftraege dieser Kategorie wuenschen, entnehmen Sie diese bitte den BioTech Terminals. Hier, nehmen Sie die %REWARD_MONEY() Credits, die Sie verdient haben.  Vielleicht sprechen wir uns mal wieder. Auf Wiedersehen, Runner.") 
                                ACTIVATEDIALOGTRIGGER(1)
                                ENDDIALOG()
                        end

        NODE(3)
                GENDERCHECK()
                        if (result==1) then -- Runner is male.
                                SAY("Sir, bitte verschwenden Sie nicht meine Zeit. Einen schoenen Tag noch.")
                                SAY("Sir, ich bin sehr beschaeftigt. Danke und einen schoenen Tag noch.")
                                SAY("Ich habe keine Zeit für sinnlose Gespraeche. Bitte gehen Sie weiter.")
                                SAY("Sir, denken Sie, ich habe Zeit für Smalltalks?  Auf Wiedersehen.")
                                ENDDIALOG()
                        else
                                SAY("Ma'am, bitte verschwenden Sie nicht meine Zeit. Einen schoenen Tag noch.")
                                SAY("Miss, ich bin sehr beschaeftigt. Danke und einen schoenen Tag noch.")
                                SAY("Ich habe keine Zeit fuer sinnlose Gespraeche. Bitte gehen Sie weiter.")
                                SAY("Ma'am, denken Sie, ich habe Zeit fuer Smalltalks!  Auf Wiedersehen.")
                                ENDDIALOG()
                        end

end 