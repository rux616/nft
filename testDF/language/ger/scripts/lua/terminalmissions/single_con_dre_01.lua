--************************
--name		: SINGLE_CON_DRE_01.lua
--ver		: 0.1g
--author	: Lupus
--date		: 2004/09/30
--lang		: de
--desc		: terminal construction mission for first 5 DRE Construction items TL10,20,30,40,50
--npc		: 37, 36
--translation	: Ferron
--************************
--changelog:
--2004/09/30(0.1): Created all new script for new missions using mission only items
--************************

function DIALOG()
	NODE(0)
		SAY("Hallo, wie kann ich dir helfen?")
		SAY("Ja, Runner? Hast du ein Problem?")
		SAY("Was? Ich bin sehr beschäftigt.")
		SAY("Was ist das Problem?") 
		SAY("Ja, Ich bin deiner.")
		SAY("Wasauchimmer du willst, sei schnell und sags.")
		SAY("Ich glaub nicht das ich dich kenne.")
		SAY("Du bist hier wegen dem Job, oder?")
		SAY("Ein produktiver Tag, Runner.")
		SAY("Wenn du ein Problem hast frage.")
		
		ANSWER("Ja bin hier wegen diesem Job den du hast...",2)
		ANSWER("Ich glaub du hast ein Job für mich.",2)
		ANSWER("Hast du Arbeit für mich?",2)
		ANSWER("Ich bin hier für den Job.",2)
		ANSWER("Vergisses, bis Dann.",1)
		ANSWER("Ich wollte mit dir eigentlich sowieso nicht sprechen.",1)
		ANSWER("Ich wollte jemand Anderen sprechen.",1)
		ANSWER("Hab mich umentschieden, Servus.",1)
	NODE(1)
		SAY("Viel Glück bei ... wasauchimmer Du tust.")
		SAY("Schau später mal wieder vorbei.")
		SAY("Auf Wiedersehen, Ich habe wichtigere Dinge zu tun.")
		SAY("Auf Wiedersehen. Vielleicht bist du nächstes mal an einem Job interressiert.")
		ENDDIALOG()
		
	NODE(2)
		SAY("Wir brauchen jemanden der einige Items für uns bauen kann. Am besten ohne Registrierungsnummern da es für ein Geheimprojekt ist.")
		SAY("Ja wir haben einige Probleme mit der Produktion bestimmter Items. Deswegen suchen wir nach Runnern die uns Ersatz herstellen können für diese Items.")
		SAY("Wichtige Kunden erwarten die Lieferung bestimmter Items. Das Problem das wir haben ist das die Produktion gerade nicht aktiv ist und wir die Items nicht bauen können. Deshalb brauchen wir dich.")
		
		ANSWER("Was muss ich genau bauen?",6)
		
	NODE(3)
		SAY("Tut mir leid aber du muss die fertigen Blueprints zu %NPC_NAME(1) liefern.")
		SAY("I hoffe du bist vom job nicht gelangweilt ?")
		SAY("Hab keine Zeit für dich gerade, mach weiter mit deiner Aufgabe.")
		ENDDIALOG()
		
	NODE(4)
		GETTARGETVALUE(0,2)
		TAKEITEMCNT(result,1)
		if(result==0)then
			SAY("Du hast bisher noch nix gemacht! Komm zu mir wenn die Arbeit getan ist.")
			SAY("Was willst du ? Ist diese Arbeit schon zuviel für dich ?")
			ENDDIALOG()
		else
			SAY("Endlich. Das wird uns helfen bis unsere Produktion wieder läuft. Hier sind deine  %REWARD_MONEY() Credits als Bezahlung.")
			SAY("Seht gut. Wir werden die Items noch checken und dann versenden. Hier sind die versprochenen Credits im Wert von %REWARD_MONEY().")
			SAY("Gute Arbeit. Wenn du genug Zeit übrig hast melde dich wieder. Hier sind deine %REWARD_MONEY() Credits.")
			ACTIVATEDIALOGTRIGGER(1)
			ENDDIALOG()
		end
		
	NODE(5)
		if(node==state)then
		GETTARGETVALUE(0,2)
			if(result==4295)then -- Entry Locking Mechanism v2.1c
				GIVEITEM(4477)
				GIVEITEM(4478)
				GIVEITEM(4479)
				GIVESPECIALITEM(1507,1,4295)
				SAY("Sehr gut, hier ist das Blueprint und die Parts die du brauchst um den Job zu machen.\nViel Glück!")
				ACTIVATEDIALOGTRIGGER(0)
				SETNEXTDIALOGSTATE(3)
				ENDDIALOG()
			elseif(result==4296)then --Entry Access Control Circuits v9.1c
				GIVEITEM(4477)
				GIVEITEM(4478)
				GIVEITEM(4480)
				GIVESPECIALITEM(1507,1,4296)
				SAY("Sehr gut, hier ist das Blueprint und die Parts die du brauchst um den Job zu machen.\nViel Glück!")
				ACTIVATEDIALOGTRIGGER(0)
				SETNEXTDIALOGSTATE(3)
				ENDDIALOG()
			elseif(result==4297)then --Entry Access Panel v3.1c
				GIVEITEM(4477)
				GIVEITEM(4115) --Entry Locking Mechanism v2.2r **Research Version**
				GIVEITEM(4116) --Entry Access Control Circuits v9.2r **Research Version**
				GIVESPECIALITEM(1507,1,4297)
				SAY("Sehr gut, hier ist das Blueprint und die Parts die du brauchst um den Job zu machen.\nViel Glück!")
				ACTIVATEDIALOGTRIGGER(0)
				SETNEXTDIALOGSTATE(3)
				ENDDIALOG()
			elseif(result==4298)then --Access Lift Control Circuits v4.1c
				GIVEITEM(4477)
				GIVEITEM(4478)
				GIVEITEM(4482)
				GIVESPECIALITEM(1507,1,4298)
				SAY("Sehr gut, hier ist das Blueprint und die Parts die du brauchst um den Job zu machen.\nViel Glück!")
				ACTIVATEDIALOGTRIGGER(0)
				SETNEXTDIALOGSTATE(3)
				ENDDIALOG()
			elseif(result==4299)then --Access Lift User Control Panel v8.1c
				GIVEITEM(4477)
				GIVEITEM(4478)
				GIVEITEM(4483)
				GIVESPECIALITEM(1507,1,4299)
				SAY("Sehr gut, hier ist das Blueprint und die Parts die du brauchst um den Job zu machen.\nViel Glück!")
				ACTIVATEDIALOGTRIGGER(0)
				SETNEXTDIALOGSTATE(3)
				ENDDIALOG()
			else
				SAY("Mission Script Error.. Please Report")
				ENDDIALOG()
			end
		end
		
	NODE(6)
		SAY("Wir brauchen dich um uns ein %ITEMNAME(%TARGET_VALUE(0,2)) zu konstruieren und es %NPC_NAME(1) in %NPC_WORLD(1) zu liefern.")
		SAY("Du musst ein %ITEMNAME(%TARGET_VALUE(0,2)) konstruieren. Wenn du das gemacht hast geh zu %NPC_NAME(1) in %NPC_WORLD(1) und gib es dort ab")
		
		ANSWER("Beginne sofort damit.",5)
end