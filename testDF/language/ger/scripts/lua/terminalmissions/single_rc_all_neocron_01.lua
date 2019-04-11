--************************
--name   : SINGLE_RC_ALL_NEOCRON_01.lua
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
		--Der Auftrag wird erklärt, fertiges Objekt muss zum Zielobjekt, verkauft recycling device 1500
		SAY("Es werden spezielle Materialien gebraucht um die neuesten Entwicklungen überhaupt erst bauen zu können. Und hier kommen sie ins Spiel.")
		SAY("Es kann gut sein, dass die Zukunft im Recycling liegt. Es ist jetzt schon teilweise billiger als reine Materialien zu kaufen. Deswegen brauchen wir Leute wie sie.")
		SAY("Die recyleten Materialien sind qualitativ fast genauso gut wie die, die rein gefördert oder hergestellt worden sind. Damit wären wir schon bei ihrer Aufgabe.")
		
		ANSWER("Was muss ich dann genau tun?",8)
	NODE(3)
		SAY("Es tut mir leid, aber sie müssen %NPC_NAME(1) das fertige Objekt bringen.")
		SAY("Ich hoffe sie haben keine Probleme mit dem Job?")
		SAY("Fahren sie ruhig mit ihrer Arbeit fort, anstatt mich zu belästigen.")
		ENDDIALOG()
	NODE(4)
		--Zielperson, nimmt recycletes Objekt
		GETTARGETVALUE(0,2)	
		TAKEITEMCNT(result,5)
		if(result==0)then
			SAY("Hat ihnen %NPC_NAME(0) nicht gesagt, dass ich dieses Material dringend brauche? Beeilen sie sich bitte.")
			SAY("Was ist los? Finden sie nicht genug zum recyclen?")
			ENDDIALOG()
		else
			SAY("Danke sehr! Die Qualität ist auch nicht übel. Hier ist ihre Belohunung von %REWARD_MONEY() Credits. Sie haben eine Zukunft im Recycling.")
			SAY("Gut gemacht, bei all dem Müll der herumliegt war das sicher nicht allzu schwer, oder? Hier sind ihre %REWARD_MONEY() Credits Bezahlung.")
			SAY("Saubere Arbeit. Sie haben sich ihre %REWARD_MONEY() Credits verdient. Ich freu mich schon auf die nächste Zusammenarbeit.")
			ACTIVATEDIALOGTRIGGER(1)
			ENDDIALOG()
		end
	NODE(5)
		SAY("Gut, viel Erfolg dann.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(3)
		ENDDIALOG()
	NODE(6)
		SAY("Ja, ich kann ihnen ein Recycling Device verkaufen, aber das kostet 700 Credits. Tut mir leid, aber so viele habe ich nicht von denen.")
		
		ANSWER("Das macht nichts. Ich werde es trotzdem kaufen.",7)
		ANSWER("Nein Danke, ich mach gleich mit dem Auftrag weiter.",5)
	NODE(7)
		TAKEMONEY(700)
		if(result==0)then
			SAY("Tut mir leid, mit dem Geld kriegen sie kein Recycling Device.")
			
			ANSWER("Gut, dann mache ich halt einfach mit dem Auftrag weiter.",5)
		else
			GIVEITEM(1500)
			SAY("Hier bitte. Ich hoffe sie sind damit zufrieden.")
			
			ANSWER("Ja, Danke.",5)
		end
	NODE(8)
		SAY("Ihre Aufgabe dabei ist es, 5 %ITEMNAME(%TARGET_VALUE(0,2)) aus anderen Materialien zu recyclen und dann %NPC_NAME(1) im %NPC_WORLD(1) Sektor zu übergeben.")
		SAY("%NPC_NAME(1) im %NPC_WORLD(1) Sektor erwartet dringend 5 %ITEMNAME(%TARGET_VALUE(0,2)). Am besten sie recyclen diese Materialien ao bald wie möglich und bringen sie ihm dann.")

		ANSWER("Gut, ich mache mich sofort an die Arbeit.",5)
		ANSWER("Hmm, ich bräuchte noch ein Werkzeug für diesen Auftrag. Hätten sie da etwas.",6)
end