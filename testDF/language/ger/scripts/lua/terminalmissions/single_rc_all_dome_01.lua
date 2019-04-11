--************************
--name   : SINGLE_RC_ALL_DOME_01.lua
--ver    : 0.1
--author : Ferron
--date   : 2004/09/08
--lang   : de
--desc	 : terminal mission
--npc    :
--************************
--changelog:
--2004/09/08(0.1): recheck
--************************

function DIALOG()
	NODE(0)
		SAY("Was ist dein Problem, Runner?")
		SAY("Was?")
		SAY("Sag schnell, was du willst.")
		SAY("Dann mal heraus damit, was ist?")
		SAY("")
		SAY("Mach schnell, hab nicht viel Zeit.")
		SAY("Dein Gesicht wär mir in Erinnerung geblieben, ich kenn dich nicht.")
		SAY("Du glaubst wohl ich hab'n Job für dich, was?")
		SAY("Was ist? Hast du was gesehen? Sprich.")
		SAY("Frag, falls was ist oder zieh Leine.")
		
		ANSWER("Im Job Term hab ich gelesen, dass da noch'n Auftrag zu erledigen wäre...",2)
		ANSWER("Ich glaube ihr hab1 einen Auftrag für mich.",2)
		ANSWER("Gibt es hier einen Job für mich?",2)
		ANSWER("Ich bin wegen des Auftrags hier.",2)
		ANSWER("Ist schon gut, Auf Wiedersehen.",1)
		ANSWER("Wollte eigentlich gar nicht mit dir sprechen.",1)
		ANSWER("Ich wollte eigentlich jemand anderen sprechen",1)
		ANSWER("Bis dann, ich habe es mir anders überlegt.",1)	
	NODE(1)
		SAY("Mach dir nen schönen Tag.")
		SAY("Verschwende nicht meine Zeit!")
		SAY("Ich habe auch besseres zu tun, als hier Zeit mit reden zu vergeuden.")
		SAY("Vielleicht habe ich ja das nächste Mal etwas für dich.")
		ENDDIALOG()
	NODE(2)
		--Der Auftrag wird erklärt, fertiges Objekt muss zum Zielobjekt, verkauft recycling device 1500
		SAY("Wir brauchen Material für den Bau von neuen Items. Deswegen brauchen wir Runner wie dich. ")
		SAY("Es kann gut sein, dass die Zukunft im Recycling liegt. Es ist jetzt schon teilweise billiger als reine Materialien zu kaufen. Deswegen brauchen wir Runner wie dich.")
		SAY("Die recyleten Materialien sind fast genauso gut wie das echte Zeug. Und hier kommst du ins Spiel.")
		
		ANSWER("Was muss ich dann genau tun?",8)
	NODE(3)
		SAY("Es tut mir leid, aber du musst %NPC_NAME(1) die fertigen Blaupausen bringen.")
		SAY("Gibt es Probleme mit dem Job?")
		SAY("Mach mit dem Job weiter, anstatt mich anzulabern.")
		ENDDIALOG()
	NODE(4)
		--Zielperson, nimmt recycletes Objekt
		GETTARGETVALUE(0,2)	
		TAKEITEMCNT(result,5)
		if(result==0)then
			SAY("Ich brauche das Zeug recht dringend, also beeilung, Runner.")
			SAY("Ist nicht genug Müll zum recyclen da?Was ist los? Finden sie nicht genug zum recyclen?")
			ENDDIALOG()
		else
			SAY("Danke ! Die Qualität ist auch nicht übel. Hier ist die Belohunung von %REWARD_MONEY() Credits. Du hast ne glänzende Zukunft hier im Recycling.")
			SAY("Nicht schlecht, bei all dem Schrott der herumliegt war das sicher nicht allzu schwer, oder? Hier sind die %REWARD_MONEY() Credits Bezahlung.")
			SAY("Saubere Arbeit. Die %REWARD_MONEY() Credits haste dir verdient. Ich freu mich schon auf die nächste Zusammenarbeit.")
			ACTIVATEDIALOGTRIGGER(1)
			ENDDIALOG()
		end
	NODE(5)
		SAY("In Ordnung.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(3)
		ENDDIALOG()
	NODE(6)
		SAY("Ja, ich kann dir ein Recycling Device verkaufen, aber das kostet bei mir schlappe 700 Credits. Ich hab die Dinger ja immerhin auch nicht auf Lager.")
		
		ANSWER("Das macht nichts. Ich werde es trotzdem kaufen.",7)
		ANSWER("Nein Danke, ich mach gleich mit dem Auftrag weiter.",5)
	NODE(7)
		TAKEMONEY(700)
		if(result==0)then
			SAY("Mit dem bischen an Credits gibts bei mir höchstens ein Händeschütteln.")
			
			ANSWER("Gut, dann mache ich halt einfach mit dem Auftrag weiter.",5)
		else
			GIVEITEM(1500)
			SAY("Werd Glücklich mit dem Ding.")
			
			ANSWER("Ja, Danke.",5)
		end
	NODE(8)
		SAY("Der Job ist es, 5 %ITEMNAME(%TARGET_VALUE(0,2)) aus anderen Materialien zu recyclen und dann %NPC_NAME(1) im %NPC_WORLD(1) Sektor zu übergeben.")
		SAY("%NPC_NAME(1) im %NPC_WORLD(1) Sektor erwartet dringend 5 %ITEMNAME(%TARGET_VALUE(0,2)). Am besten du fängst sofort an und lieferst es ihm in Kürze.")

		ANSWER("Gut, ich mache mich sofort an die Arbeit.",5)
		ANSWER("Ich recycle den Müll sicher nicht mit meinen Händen, hast du einen Tip für mich?",6)
end