--************************
--name   : SINGLE_DEL_ALL_DOME_01.lua
--ver    : 0.1
--author : Ferron
--date   :
--lang   : de
--desc	 : terminal mission
--npc    :
--************************
--changelog:
--YYYY/MM/DD(0.0): recheck
--************************

function DIALOG()
	NODE(0)
		SAY("Was ist dein Problem, Runner?")
		SAY("Was?")
		SAY("Sag schnell, was du willst.")
		SAY("Dann mal heraus damit, was ist?")
		SAY("")
		SAY("Mach schnell, hab nicht viel Zeit.")
		SAY("Dein Gesicht w�r mir in Erinnerung geblieben, ich kenn dich nicht.")
		SAY("Du glaubst wohl ich hab'n Job f�r dich, was?")
		SAY("Was ist? Hast du was gesehen? Sprich.")
		SAY("Frag, falls was ist oder zieh Leine.")
		
		ANSWER("Im Job Term hab ich gelesen, dass da noch'n Auftrag zu erledigen w�re...",2)
		ANSWER("Ich glaube ihr hab1 einen Auftrag f�r mich.",2)
		ANSWER("Gibt es hier einen Job f�r mich?",2)
		ANSWER("Ich bin wegen des Auftrags hier.",2)
		ANSWER("Ist schon gut, Auf Wiedersehen.",1)
		ANSWER("Wollte eigentlich gar nicht mit dir sprechen.",1)
		ANSWER("Ich wollte eigentlich jemand anderen sprechen",1)
		ANSWER("Bis dann, ich habe es mir anders �berlegt.",1)	
	NODE(1)	
		--Person 0
		SAY("Mach dir nen sch�nen Tag.")
		SAY("Verschwende nicht meine Zeit!")
		SAY("Ich habe auch besseres zu tun, als hier Zeit mit reden zu vergeuden.")
		SAY("Vielleicht habe ich ja das n�chste Mal etwas f�r dich.")
		ENDDIALOG()
	NODE(2)
		-- Der Auftrag wird erkl�rt. Kontaktperson genannt.
		--Person 0
		SAY("Diese Lieferung enth�lt ein paar Extrateile f�r komplizierte Maschinen. Aber zuerst mal muss man sie bei %NPC_NAME(1) im %NPC_WORLD(1) Sektor abholen.")
		SAY("Das Zeug das geliefert werden soll ist ziemlich empfindlich, klar? Also, hol es erstmal bei %NPC_NAME(1) im %NPC_WORLD(1) Sektor ab, dort erf�hrst du dann auch den Rest.")
		SAY("Runner, ich hoffe die Lieferung kann schnell durchgef�hrt werden. Hol das Paket bei %NPC_NAME(1) im %NPC_WORLD(1) Sektor ab und dort erf�hrst du dann auch den Zielort.")
		
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(3)	
		ENDDIALOG()
	NODE(3)
		--Person 0
		SAY("Das Paket wird von %NPC_NAME(1) ausgegeben.")
		SAY("Wir haben uns doch darauf geeinigt, dass du diese Aufgabe �bernimmst.")
		SAY("Erledige besser deinen Job.")
		ENDDIALOG()
	NODE(4)
		-- Person die das Paket an den SPieler gibt, weiterleitung an Missionszielperson
		--Person 1
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Was? Kenn ich dich, Runner?")
--NEW
			ANSWER("Nichts f�r ungut, ich bin ja schon weg.")
--NEWEND
			ENDDIALOG()
		else
			GIVEQUESTITEM(99)
			SAY("Man hat mir schon gesagt, dass da jemand das Paket abholen kommt. Bring es zu %NPC_NAME(2) im %NPC_WORLD(2) Distrikt.")
			SAY("Die Teile in der Lieferung sind etwas empfindlich, also Vorsicht. %NPC_NAME(2) im %NPC_WORLD(2) Distrikt wird schon auf die Lieferung warten.")
			SAY("%NPC_NAME(2) im %NPC_WORLD(2) Distrikt fragt sich schon wo das Paket bleibt. Also beeil dich.")
			ACTIVATEDIALOGTRIGGER(1)
			SETNEXTDIALOGSTATE(5)
			ENDDIALOG()
		end
	NODE(5)
		--Person 1
		SAY("Du hast das Paket ja immer noch. Bring es endlich zum Zielort.")
		SAY("Mann, vertr�del nicht so viel Zeit.")
		SAY("Was machst du noch hier?")
		SAY("Ich m�chte, dass die Arbeit erledigt wird.")
		ENDDIALOG()
	NODE(6)
		--Person 2
		TAKEQUESTITEM(99)
		if(result==0)then
			SAY("Bist du der Runner, der das Paket liefert? Na, wo ist es dann? Verloren oder was?")
			SAY("Warum kommst du ohne Lieferung hierher? Das ist doch total bescheuert.")
			SAY("Ich warte schon ne halbe Ewigkeit auf diese Lieferung. Bald hab ich kein Bock mehr zu warten.")
			ENDDIALOG()
		else
			SAY("Das Paket hilft uns schon weiter. Hab aber keine Zeit. Hier die versprochenen %REWARD_MONEY() Credits.")
			SAY("Endlich mal ein zuverl�ssiger Bote. Wie versprochen, hier die %REWARD_MONEY() Credits als Belohnung.")
			SAY("Jetzt k�nnen wir die Experimente endlich fortf�hren. Daf�r gibts auch'n bischen Kohle, %REWARD_MONEY() Credits.")
			ACTIVATEDIALOGTRIGGER(2)
			ENDDIALOG()
		end
end