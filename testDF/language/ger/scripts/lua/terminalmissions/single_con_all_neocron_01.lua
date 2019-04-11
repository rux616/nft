--************************
--name   : SINGLE_CON_ALL_NEOCRON_01.lua
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
		SAY("Hallo, wie kann ich ihnen helfen?")
		SAY("Ja, Runner? Wo ist das Problem?")
		SAY("Was? Ich bin sehr beschäftigt.")
		SAY("Nur heraus damit, worum geht es?")
		SAY("Ja, ich bin ganz Ohr?")
		SAY("Fassen sie sich bitte kurz.")
		SAY("Ich glaube nicht, dass wir uns schon einmal gesehen haben.")
		SAY("Sie wollen mich sicher wegen eines Auftrages sprechen, richtig?")
		SAY("Einen produktiven Tag, Runner.")
		SAY("Falls sie ein Poblem haben, fragen sie nur.")
		
		ANSWER("Ja, der Job Term hat mich zu ihnen geführt...",2)
		ANSWER("Ich glaube sie haben einen Auftrag für mich.",2)
		ANSWER("Haben sie einen Auftrag für mich?",2)
		ANSWER("Ich bin wegen des Auftrags hier.",2)
		ANSWER("Ist schon gut, Auf Wiedersehen.",1)
		ANSWER("Mit ihnen wollte ich eigentlich gar nicht sprechen.",1)
		ANSWER("Ich wollte eigentlich jemand anderen sprechen",1)
		ANSWER("Bis dann, ich habe es mir anders überlegt.",1)
	NODE(1)
		SAY("Viel Glück bei ... was immer sie auch tun.")
		SAY("Besuchen sie uns mal wieder.")
		SAY("Tschüss, ich habe auch dringendere Arbeiten zu erledigen.")
		SAY("Auf Wiedersehen. Vielleicht wollen sie das nächste Mal ja einen Job.")
		ENDDIALOG()
	NODE(2)
		--Der Auftrag wird erklärt, fertiges Objekt muss zum Zielobjekt, verkauft construction device 1505
		SAY("Es wird dringend jemand gesucht, der ein paar Objekte für uns erschaffen kann. Am besten ohne Registrierungsnummern. Es geht dabei um ein geheimes Projekt.")
		SAY("Ja, wir haben ein paar kleinere Probleme mit der Produktion von bestimmten Teilen. Dafür suchen wir ein paar Runner die sich dafür bereitstellen würden.")
		SAY("Wichtige Kunden von uns erwarten eine spezielle Lieferung. Das Problem ist, dass unsere Produktion lahmgelegt ist und wir die entsprechenden Teile nicht produzieren können. Deswegen brauchen wir sie.")
		
		ANSWER("Was genau soll ich für euch tun?",8)
	NODE(3)
		SAY("Es tut mir leid, aber sie müssen %NPC_NAME(1) das fertige Objekt bringen.")
		SAY("Ich hoffe sie haben keine Probleme mit dem Job?")
		SAY("Fahren sie ruhig mit ihrer Arbeit fort, anstatt mich zu belästigen.")
		ENDDIALOG()
	NODE(4)
		--Zielperson, nimmt Objekt
		GETTARGETVALUE(0,2)
		TAKEITEMCNT(result,1)
		if(result==0)then
			SAY("Moment, sie haben ja noch gar nichts getan! Kommen sie wieder, wenn die Arbeit erledigt ist.")
			SAY("Was ist los? Ist ihnen die Arbeit zu schwer?")
			ENDDIALOG()
		else
			SAY("Endlich. Das wird uns helfen, bis unsere eigene Produktion wieder im Gange ist. Hier ihre %REWARD_MONEY() Credits Bezahlung.")
			SAY("Gut. Wir werden das Zeug noch selbst überprüfen bevor es dann weitergeschickt wird. Hier sind ihre %REWARD_MONEY() Credits bezahlung. ")
			SAY("Gute Arbeit. Arbeiten sie mal wieder für uns, wenn sie mal Zeit haben. Hier sind ihre %REWARD_MONEY() Credits.")
			ACTIVATEDIALOGTRIGGER(1)
			ENDDIALOG()
		end
	NODE(5)
		SAY("Gut, viel Erfolg dann.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(3)
		ENDDIALOG()
	NODE(6)
		SAY("Ich habe ein Construction Device, das ich ihnen verkaufen könnte. Aber es ist mein persönliches, das würde mindestens 4000 Credits kosten.")
		
		ANSWER("Das macht nichts. Ich werde es trotzdem kaufen.",7)
		ANSWER("Nein Danke, ich mach gleich mit dem Auftrag weiter.",5)
	NODE(7)
		TAKEMONEY(4000)
		if(result==0)then
			SAY("Hmm, sie haben nicht genug Geld. Kein Geld, kein Constructioin Device.")
			
			ANSWER("Gut, dann mache ich halt einfach mit dem Auftrag weiter.",5)
		else
			GIVEITEM(1505)
			SAY("Hier bitte. Ich hoffe sie sind damit zufrieden.")
			
			ANSWER("Ja, Danke.",5)
		end
	NODE(8)
		SAY("Wir wollen, dass sie uns ein %ITEMNAME(%TARGET_VALUE(0,2)) produzieren und bei %NPC_NAME(1), im %NPC_WORLD(1) Sektor, abliefern.")
		SAY("Es wird ein %ITEMNAME(%TARGET_VALUE(0,2)) von ihnen benötigt. Gehen sie, wenn sie das Produkt haben, zu %NPC_NAME(1), im %NPC_WORLD(1) Sektor, und geben sie es %NPC_NAME(1).")
		
		ANSWER("Gut, ich mache mich sofort an die Arbeit.",5)
		ANSWER("Hmm, ich bräuchte noch ein Werkzeug für diesen Auftrag. Hätten sie da etwas.",6)
end