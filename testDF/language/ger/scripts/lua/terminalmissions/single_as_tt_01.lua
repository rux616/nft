--************************
--name   : SINGLE_AS_TT_01.lua
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
                        SAY("Willkommen Runner, brauchen Sie etwas?")
                        SAY("Ich stehe zu Ihrer Verfügung, Runner.")
                        SAY("Brauchen Sie Hilfe, Runner?")
                        SAY("Ja Sir, haben Sie ein Problem?")
                        SAY("Willkommen Sir, falls Sie ein Problem haben, fragen Sie mich einfach.")
                        
                        else
                        
                        SAY("Ja, Runner?")
                        SAY("Willkommen Runner, wie kann ich Ihnen helfen?")
                        SAY("Ja, Runner? Wie kann ich Ihnen helfen?")
                        SAY("Ma'am, was brauchen Sie?")
                        SAY("Ja, Ma'am? Wie kann ich Ihnen helfen?")

                        ANSWER("Ich sah mir eine Tangent Sektion bei den Term's dort drüben an und es scheint so, als ob Sie einen Auftrag für mich haetten.",1)
                        ANSWER("Ich bin hier wegen des Auftrags den ich im Tangent Term gesehen habe.",1)
                        ANSWER("Ich will mich für den Exekutions Auftrag bewerben. Ich denke meine Fähigkeiten werden Ihren Ansprüchen genügen.",1)
                        ANSWER("Verzeihung, ich bin falsch abgebogen.",3)
                        ANSWER("Vergiss es, ich habe andere Arbeiten zu erledigen. Auf Wiedersehen.",3)
	end
        NODE(1)
                SAY("Ok, Runner, Ihre Registration zeigt, dass Sie für diesen Auftrag qualifiziert sind, der im Moment als hoch brisant bewertet wird. Bitte begeben Sie sich nach %NPC_WORLD(1) und exekutieren Sie dort %NPC_NAME(1). Seien Sie unbesorgt wegen des Lebens dass Sie auslöschen. Dieses Individuum wurde von der CityAdmin als kriminell eingestuft und Sie wissen dass es in Neocron dafuer nur eine Bestrafung gibt, den Tod. Wenn Sie dann zu mir zurückkommen, werde ich Ihnen die vereinbarte Summe aushändigen.")
                SAY("Ok, Runner. Ihre Registrierung zeigt, dass Ihre Fähigkeiten mit unseren Ansprüchen für diese Mission übereinstimmen. CityAdmin hat Tangent Technology gebeten ein kriminelles Individuum zu entfernen. Dies ist äusserst nützlich, da es Tangent Technology erlaubt in der gleichen Zeit mit Waffentests fortzufahren. Gehen Sie zu %NPC_WORLD(1) und exekutieren Sie %TARGET_NPCNAME(1), danach kommen sie hierher zurück. Ich wurde authorisiert eine Belohnung für diesen Auftrag auszugeben.")
                SETNEXTDIALOGSTATE(2)
                ENDDIALOG()

        NODE(2) 
                ISMISSIONTARGETACCOMPLISHED(0)
                        if (result==0) then -- Mission is NOT accomplished
                                SAY("Wenn Sie ihre Arbeit nicht erledigen, dann können wir Ihnen auch keine Belohnung geben!!")
                                SAY("Gehen Sie. Ich habe keine Zeit für sinnlose Gespräche.")
                                ENDDIALOG()
                        else
                                SAY("Excellente Arbeit, Runner, bitte nehmen und geniessen Sie ihre %REWARD_MONEY() Credits. Besuchen Sie die Terms bald wieder, Tangent Technology würde sich freuen Ihre Dienstleistungen wieder in Anspruch zu nehmen. Einen schönen Tag noch, Runner.")
                                SAY("Fantastische Arbeit, Runner. Bitte, nehmen Sie Ihre %REWARD_MONEY() Credits Belohnung und geniessen Sie sie. Bitte besuchen Sie die Terms bald wieder für weitere Aufträge.") 
                                ACTIVATEDIALOGTRIGGER(1)
                                ENDDIALOG()
                        end

end    

