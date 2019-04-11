--************************
--name   : SINGLE_R_ALL_DOME_01.lua
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
		--Der Auftrag wird erklärt, Blaupause muss Zielperson gebracht werden, verkauft research tool
		SAY("Wir haben alle Hände voll und könnten daher'n bischen Hilfe beim erstellen von Blaupausen gebrauchen.")
		SAY("Es ist einfach zu viel Arbeit hier zu erledigen. Daher werden Runner gebraucht die ein paar Blaupausen für uns erstellen.")
		SAY("Wir brauchen spezielle Blaupausen, da wir hier in Arbeit ersaufen. So sieht's aus.")
		
		ANSWER("Was sind das für Blaupausen die ihr braucht?",8)
		
	NODE(3)
		SAY("Es tut mir leid, aber du musst %NPC_NAME(1) die fertigen Blaupausen bringen.")
		SAY("Gibt es Probleme mit dem Job?")
		SAY("Mach mit dem Job weiter, anstatt mich anzulabern.")
		ENDDIALOG()
	NODE(4)
		--Zielperson, nimmt Blaupause
		GETTARGETVALUE(0,2)
		TAKESPECIALITEMCNT(1507,1,result,3)
		if(result==0)then
			SAY("Die Erstellung von Blaupausen ist ne ganz schöne Arbeit, was? Versuchs weiter.")
			SAY("Komm wieder, wenn du genug Blaupausen hast.")
			ENDDIALOG()
		else
			SAY("Gut, sehr gut, jetzt kriegen unsere Freunde das Zeug rechtzeitig. %REWARD_MONEY() Credits wurden schon überwiesen.")
			SAY("Nette Qualität, hätt ich dir nicht zugetraut. Hier sind %REWARD_MONEY() Credits für die Anstrengung. Hier noch drei Datacubes extra.")
			SAY("Nicht schlecht und gerade rechtzeitig. %REWARD_MONEY() Credits Belohnung und drei Datacubes, richtig? Da hast du.")
			GIVEITEM(1501) -- Datacube
			GIVEITEM(1501)
			GIVEITEM(1501)
			ACTIVATEDIALOGTRIGGER(1)
			ENDDIALOG()
		end
	NODE(5)
		SAY("Gut.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(3)
		ENDDIALOG()
	NODE(6)
		SAY("Ja, ich könnte dir ein Research Tool verkaufen, bei mir kostet das aber 2000 Credits. Sorry, aber ich führ hier ja keinen Laden.")
		
		ANSWER("Das macht nichts. Ich kaufe das Research Tool trotzdem.",7)
		ANSWER("Nein, ich mach gleich mit dem Auftrag weiter.",5)
	NODE(7)
		TAKEMONEY(2000)
		if(result==0)then
			SAY("Tut mir leid, aber mit dem Geld gibt es nichts bei mir.")
			
			ANSWER("Gut, einen Versuch war es Wert.",5)
		else
			GIVEITEM(1503)
			SAY("Ich hoffe du kannst damit auch etwas anfangen.")
			
			ANSWER("Ja, Danke.",5)
		end
	NODE(8)
		SAY("Es werden 3 %ITEMNAME(%TARGET_VALUE(0,2)) Blueprints dringend benötigt. Wäre gut, wenn diese Blueprints bald verfügbar wären. Bringe sie zu %NPC_NAME(1) im %NPC_WORLD(1) Sektor.")
		SAY("Wir brauchen 3 %ITEMNAME(%TARGET_VALUE(0,2)) Blueprints so schnell wie möglich. Bringe sie zu %NPC_NAME(1) im %NPC_WORLD(1) Sektor.")
		
	
		ANSWER("Gut, ich mache mich sofort an die Arbeit.",5)
		ANSWER("Hmm, so ganz ohne Werkzeug geht das Leider nicht. Hast du nen Tip für mich?",6)
end