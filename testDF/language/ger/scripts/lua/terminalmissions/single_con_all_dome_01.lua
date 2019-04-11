--************************
--name   : SINGLE_CON_ALL_DOME_01.lua
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
		--Der Auftrag wird erklärt, fertiges Objekt muss zum Zielobjekt, verkauft construction device 1505
		SAY("Wir brauchen ein paar Leute, die uns ein paar Dinge beschaffen. Da wir im Moment leichte Probleme mit dem produzieren haben.")
		SAY("Hast du Lust ein paar Sachen für uns zu produzieren? Momentan gibts da nämlich leichte Probleme bei uns mit dem herstellen.")
		SAY("Ein paar gute Freunde warten schon auf spezielle Teile. Nur werden sie lange warten, wenn wir nicht ein paar Runner finden, die unsere lahmgelegte Produktion ein bischen unterstützen.")
		
		ANSWER("Soll heissen?",8)
	NODE(3)
		SAY("Bring das fertige Zeug zu %NPC_NAME(1).")
		SAY("Gibts Probleme mit dem Jobt?")
		SAY("Produziere lieber weiter als mich vollzulabern.")
		ENDDIALOG()
	NODE(4)
		--Zielperson, nimmt Objekt
		GETTARGETVALUE(0,2)
		TAKEITEMCNT(result,1)
		if(result==0)then
			SAY("Wo ist die Ware? Runner, komm wieder, wenn der Job fertig ist.")
			SAY("Was ist? Ist die Arbeit zu simpel für einen Runner wie dich?")
			ENDDIALOG()
		else
			SAY("Endlich. Das gibt uns'n bischen Zeit bis die eigentliche Produktion wieder anläuft. Hier die Kohle, %REWARD_MONEY() Credits.")
			SAY("Gut, ich schau mir das Zeug dann selbst nochmal durch bevor es weitergeht. Die BEzahlung sind %REWARD_MONEY() Credits.")
			SAY("Nicht schlecht. Kannst ja mal wieder was für uns tun. Wie abgemacht sind hier %REWARD_MONEY() Credits für dich.")
			ACTIVATEDIALOGTRIGGER(1)
			ENDDIALOG()
		end
	NODE(5)
		SAY("Bis zum nächsten mal.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(3)
		ENDDIALOG()
	NODE(6)
		SAY("Klar, ich hab ein Construction Device. Ist auch noch recht neu. Für dich nur 4000 Credits. Naja, hat vielleicht auch'n paar Macken.")
		
		ANSWER("Das macht nichts. Ich werde es trotzdem kaufen.",7)
		ANSWER("Nein Danke, ich mach gleich mit dem Auftrag weiter.",5)
	NODE(7)
		TAKEMONEY(4000)
		if(result==0)then
			SAY("Tja, ohne Geld kriegt man von mir aber nichts. Daraus wird nichts.")
			
			ANSWER("Dann eben nicht. Dann mach ich einfach den Auftrag weiter.",5)
		else
			GIVEITEM(1505)
			SAY("Viel Spass damit, danke für die Credits.")
			
			ANSWER("Ja, Danke.",5)
		end
	NODE(8)
		SAY("Wir brauchen ein %ITEMNAME(%TARGET_VALUE(0,2)). Bring das fertige Zeug zu %NPC_NAME(1) im %NPC_WORLD(1) Distrikt.")
		SAY("Bau uns ein %ITEMNAME(%TARGET_VALUE(0,2)) und liefere es an %NPC_NAME(1) im %NPC_WORLD(1) Distrikt. Dort gibt es dann auch die Bezahlung.")
		
		ANSWER("Gut, ich kümmere mich darum.",5)
		ANSWER("Ich kann das aber leider nicht mit meinen Fingern zusammenbauen. Kannst du mir da was verkaufen?",6)
end