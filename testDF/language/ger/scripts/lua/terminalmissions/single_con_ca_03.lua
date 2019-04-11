--************************
--name		: SINGLE_CON_CA_03.lua
--ver		: 0.1e
--author	: Lupus
--date		: 2004/09/30
--lang		: en
--desc		: terminal construction mission for last 5 CA Construction items TL110,120,130,140,150
--npc		: 22, 21
--translation	: Ferron
--************************
--changelog:
--2004/09/30(0.1): Created all new script for new missions using mission only items
--************************

function DIALOG()
	NODE(0)
		SAY("Hallo, wie kann ich dir helfen?")
		SAY("Ja, Runner? Hast du ein Problem?")
		SAY("Was? Ich bin sehr besch�ftigt.")
		SAY("Was ist das Problem?") 
		SAY("Ja, Ich bin deiner.")
		SAY("Wasauchimmer du willst, sei schnell und sags.")
		SAY("Ich glaub nicht das ich dich kenne.")
		SAY("Du bist hier wegen dem Job, oder?")
		SAY("Ein produktiver Tag, Runner.")
		SAY("Wenn du ein Problem hast frage.")
		
		ANSWER("Ja bin hier wegen diesem Job den du hast...",2)
		ANSWER("Ich glaub du hast ein Job f�r mich.",2)
		ANSWER("Hast du Arbeit f�r mich?",2)
		ANSWER("Ich bin hier f�r den Job.",2)
		ANSWER("Vergisses, bis Dann.",1)
		ANSWER("Ich wollte mit dir eigentlich sowieso nicht sprechen.",1)
		ANSWER("Ich wollte jemand Anderen sprechen.",1)
		ANSWER("Hab mich umentschieden, Servus.",1)
	NODE(1)
		SAY("Viel Gl�ck bei ... wasauchimmer Du tust.")
		SAY("Schau sp�ter mal wieder vorbei.")
		SAY("Auf Wiedersehen, Ich habe wichtigere Dinge zu tun.")
		SAY("Auf Wiedersehen. Vielleicht bist du n�chstes mal an einem Job interressiert.")
		ENDDIALOG()
		
	NODE(2)
		SAY("Wir brauchen jemanden der einige Items f�r uns bauen kann. Am besten ohne Registrierungsnummern da es f�r ein Geheimprojekt ist.")
		SAY("Ja wir haben einige Probleme mit der Produktion bestimmter Items. Deswegen suchen wir nach Runnern die uns Ersatz herstellen k�nnen f�r diese Items.")
		SAY("Wichtige Kunden erwarten die Lieferung bestimmter Items. Das Problem das wir haben ist das die Produktion gerade nicht aktiv ist und wir die Items nicht bauen k�nnen. Deshalb brauchen wir dich.")
		
		ANSWER("Was muss ich genau bauen?",6)
		
	NODE(3)
		SAY("Tut mir leid aber du muss die fertigen Blueprints zu %NPC_NAME(1) liefern.")
		SAY("I hoffe du bist vom job nicht gelangweilt ?")
		SAY("Hab keine Zeit f�r dich gerade, mach weiter mit deiner Aufgabe.")
		ENDDIALOG()
		
	NODE(4)
		GETTARGETVALUE(0,2)
		TAKEITEMCNT(result,1)
		if(result==0)then
			SAY("Du hast bisher noch nix gemacht! Komm zu mir wenn die Arbeit getan ist.")
			SAY("Was willst du ? Ist diese Arbeit schon zuviel f�r dich ?")
			ENDDIALOG()
		else
			SAY("Endlich. Das wird uns helfen bis unsere Produktion wieder l�uft. Hier sind deine  %REWARD_MONEY() Credits als Bezahlung.")
			SAY("Seht gut. Wir werden die Items noch checken und dann versenden. Hier sind die versprochenen Credits im Wert von %REWARD_MONEY().")
			SAY("Gute Arbeit. Wenn du genug Zeit �brig hast melde dich wieder. Hier sind deine %REWARD_MONEY() Credits.")
			ACTIVATEDIALOGTRIGGER(1)
			ENDDIALOG()
		end
		
	NODE(5)
		if(node==state)then
		GETTARGETVALUE(0,2)
			if(result==4290)then -- CopBot Ex-S Master O.S. Circuitry Mk III.IX.Ic
				GIVEITEM(4107) -- CopBot Ethics Chip Mk CV.IIX v0.2r **Research Version **
				GIVEITEM(4108) -- CopBot Communications System Mk V.IV.Iir **Research Version **
				GIVEITEM(4109) -- CopBot Ex-S Power G&C Unit v0.2r **Research Version **
				GIVEITEM(4169) -- CopBot B-P.S. Reg.# 953-H65K7-C-R **Research Version **
				GIVEITEM(4171) -- CopBot M.Ff.Nn.S. Reg. #543-C56D2-F-R **Research Version **
				GIVESPECIALITEM(1507,1,4290)
				SAY("Sehr gut, hier ist das Blueprint und die Parts die du brauchst um den Job zu machen.\nViel Gl�ck!")
				ACTIVATEDIALOGTRIGGER(0)
				SETNEXTDIALOGSTATE(3)
				ENDDIALOG()
			elseif(result==4291)then --S.T.O.R.M. Bot Ethics Chip Mk M.XIII.Ic
				GIVEITEM(4460)
				GIVEITEM(4461)
				GIVEITEM(4473)
				GIVESPECIALITEM(1507,1,4291)
				SAY("Sehr gut, hier ist das Blueprint und die Parts die du brauchst um den Job zu machen.\nViel Gl�ck!")
				ACTIVATEDIALOGTRIGGER(0)
				SETNEXTDIALOGSTATE(3)
				ENDDIALOG()
			elseif(result==4292)then --S.T.O.R.M. Bot Communications System Mk V.IV.Ic
				GIVEITEM(4460)
				GIVEITEM(4461)
				GIVEITEM(4474)
				GIVESPECIALITEM(1507,1,4292)
				SAY("Sehr gut, hier ist das Blueprint und die Parts die du brauchst um den Job zu machen.\nViel Gl�ck!")
				ACTIVATEDIALOGTRIGGER(0)
				SETNEXTDIALOGSTATE(3)
				ENDDIALOG()
			elseif(result==4293)then --S.T.O.R.M. Bot Ex-S Power G&C Unit v0.1c
				GIVEITEM(4460)
				GIVEITEM(4461)
				GIVEITEM(4475)
				GIVESPECIALITEM(1507,1,4293)
				SAY("Sehr gut, hier ist das Blueprint und die Parts die du brauchst um den Job zu machen.\nViel Gl�ck!")
				ACTIVATEDIALOGTRIGGER(0)
				SETNEXTDIALOGSTATE(3)
				ENDDIALOG()
			elseif(result==4294)then --S.T.O.R.M. Bot Ex-S Master O.S. Circuitry Mk II.IV.Ic
				GIVEITEM(4111) --S.T.O.R.M. Bot Ethics Chip Mk M.XIII.Iir **Research Version**
				GIVEITEM(4112) -- S.T.O.R.M. Bot Communications System Mk V.IV.Iir **Research Version**
				GIVEITEM(4113) -- S.T.O.R.M. Bot Ex-S Power G&C Unit v0.2r **Research Version**
				GIVEITEM(4172) -- S.T.O.R.M. Bot B-P.S. Reg.# STRM-84262867-2R **Research Version**
				GIVEITEM(4174) -- S.T.O.R.M. Bot M.Ff.Nn.S. Reg. #872-S54M4-R-R **Research Version**
				GIVESPECIALITEM(1507,1,4294)
				SAY("Sehr gut, hier ist das Blueprint und die Parts die du brauchst um den Job zu machen.\nViel Gl�ck!")
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