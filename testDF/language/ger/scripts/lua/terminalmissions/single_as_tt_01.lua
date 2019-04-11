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
                        SAY("Ich stehe zu Ihrer Verf�gung, Runner.")
                        SAY("Brauchen Sie Hilfe, Runner?")
                        SAY("Ja Sir, haben Sie ein Problem?")
                        SAY("Willkommen Sir, falls Sie ein Problem haben, fragen Sie mich einfach.")
                        
                        else
                        
                        SAY("Ja, Runner?")
                        SAY("Willkommen Runner, wie kann ich Ihnen helfen?")
                        SAY("Ja, Runner? Wie kann ich Ihnen helfen?")
                        SAY("Ma'am, was brauchen Sie?")
                        SAY("Ja, Ma'am? Wie kann ich Ihnen helfen?")

                        ANSWER("Ich sah mir eine Tangent Sektion bei den Term's dort dr�ben an und es scheint so, als ob Sie einen Auftrag f�r mich haetten.",1)
                        ANSWER("Ich bin hier wegen des Auftrags den ich im Tangent Term gesehen habe.",1)
                        ANSWER("Ich will mich f�r den Exekutions Auftrag bewerben. Ich denke meine F�higkeiten werden Ihren Anspr�chen gen�gen.",1)
                        ANSWER("Verzeihung, ich bin falsch abgebogen.",3)
                        ANSWER("Vergiss es, ich habe andere Arbeiten zu erledigen. Auf Wiedersehen.",3)
	end
        NODE(1)
                SAY("Ok, Runner, Ihre Registration zeigt, dass Sie f�r diesen Auftrag qualifiziert sind, der im Moment als hoch brisant bewertet wird. Bitte begeben Sie sich nach %NPC_WORLD(1) und exekutieren Sie dort %NPC_NAME(1). Seien Sie unbesorgt wegen des Lebens dass Sie ausl�schen. Dieses Individuum wurde von der CityAdmin als kriminell eingestuft und Sie wissen dass es in Neocron dafuer nur eine Bestrafung gibt, den Tod. Wenn Sie dann zu mir zur�ckkommen, werde ich Ihnen die vereinbarte Summe aush�ndigen.")
                SAY("Ok, Runner. Ihre Registrierung zeigt, dass Ihre F�higkeiten mit unseren Anspr�chen f�r diese Mission �bereinstimmen. CityAdmin hat Tangent Technology gebeten ein kriminelles Individuum zu entfernen. Dies ist �usserst n�tzlich, da es Tangent Technology erlaubt in der gleichen Zeit mit Waffentests fortzufahren. Gehen Sie zu %NPC_WORLD(1) und exekutieren Sie %TARGET_NPCNAME(1), danach kommen sie hierher zur�ck. Ich wurde authorisiert eine Belohnung f�r diesen Auftrag auszugeben.")
                SETNEXTDIALOGSTATE(2)
                ENDDIALOG()

        NODE(2) 
                ISMISSIONTARGETACCOMPLISHED(0)
                        if (result==0) then -- Mission is NOT accomplished
                                SAY("Wenn Sie ihre Arbeit nicht erledigen, dann k�nnen wir Ihnen auch keine Belohnung geben!!")
                                SAY("Gehen Sie. Ich habe keine Zeit f�r sinnlose Gespr�che.")
                                ENDDIALOG()
                        else
                                SAY("Excellente Arbeit, Runner, bitte nehmen und geniessen Sie ihre %REWARD_MONEY() Credits. Besuchen Sie die Terms bald wieder, Tangent Technology w�rde sich freuen Ihre Dienstleistungen wieder in Anspruch zu nehmen. Einen sch�nen Tag noch, Runner.")
                                SAY("Fantastische Arbeit, Runner. Bitte, nehmen Sie Ihre %REWARD_MONEY() Credits Belohnung und geniessen Sie sie. Bitte besuchen Sie die Terms bald wieder f�r weitere Auftr�ge.") 
                                ACTIVATEDIALOGTRIGGER(1)
                                ENDDIALOG()
                        end

end    

