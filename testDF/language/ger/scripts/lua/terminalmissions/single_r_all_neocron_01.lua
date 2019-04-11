--************************
--name   : SINGLE_R_ALL_NEOCRON_01.lua
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
		SAY("Was? Ich bin sehr besch�ftigt.")
		SAY("Nur heraus damit, worum geht es?")
		SAY("Ja, ich bin ganz Ohr?")
		SAY("Fassen sie sich bitte kurz.")
		SAY("Ich glaube nicht, dass wir uns schon einmal gesehen haben.")
		SAY("Sie wollen mich sicher wegen eines Auftrages sprechen, richtig?")
		SAY("Einen produktiven Tag, Runner.")
		SAY("Falls sie ein Poblem haben, fragen sie nur.")
		
		ANSWER("Ja, der Job Term hat mich zu ihnen gef�hrt...",2)
		ANSWER("Ich glaube sie haben einen Auftrag f�r mich.",2)
		ANSWER("Haben sie einen Auftrag f�r mich?",2)
		ANSWER("Ich bin wegen des Auftrags hier.",2)
		ANSWER("Ist schon gut, Auf Wiedersehen.",1)
		ANSWER("Mit ihnen wollte ich eigentlich gar nicht sprechen.",1)
		ANSWER("Ich wollte eigentlich jemand anderen sprechen",1)
		ANSWER("Bis dann, ich habe es mir anders �berlegt.",1)
	NODE(1)
		SAY("Viel Gl�ck bei ... was immer sie auch tun.")
		SAY("Besuchen sie uns mal wieder.")
		SAY("Tsch�ss, ich habe auch dringendere Arbeiten zu erledigen.")
		SAY("Auf Wiedersehen. Vielleicht wollen sie das n�chste Mal ja einen Job.")
		ENDDIALOG()
	NODE(2)
		--Der Auftrag wird erkl�rt, Blaupause muss Zielperson gebracht werden, verkauft research tool
		SAY("Wir haben sehr viel zu tun im Moment, daher brauchen wir Runner wie sie die uns ein paar Blaupausen erstellen.")
		SAY("Es ist einfach zu viel Arbeit, die wir hier machen m�ssen. Wir brauchen einfach die Unterst�tzung von einigen Runnern, die uns ein paar Blaupausen erstellen koennen.")
		SAY("Wir ben�tigen ein paar spezielle Blaupausen, da wir leider mit Arbeit �berlastet sind.")
		
		ANSWER("Was f�r Blaupausen braucht ihr denn?",8)
		
	NODE(3)
		SAY("Es tut mir leid, aber sie m�ssen %NPC_NAME(1) die fertigen Blaupausen bringen.")
		SAY("Ich hoffe sie haben keine Probleme mit dem Job?")
		SAY("Fahren sie ruhig mit ihrer Arbeit fort, anstatt mich zu bel�stigen.")
		ENDDIALOG()
	NODE(4)
		--Zielperson, nimmt Blaupause
		GETTARGETVALUE(0,2)
		TAKESPECIALITEMCNT(1507,1,result,3)
		if(result==0)then
			SAY("Tja, diese Blaupausen sind gar nicht so einfach zu erstellen, was? Versuchen sie weiter.")
			SAY("Ich denke sie sollten erst einmal gen�gend Blaupausen erstellen, bevor sie zu mir kommen.")
			ENDDIALOG()
		else
			SAY("Gut gemacht, nun k�nnen wir unsere Quote einhalten und unsere Kunden rechtzeitig beliefern. Hier sind ihre %REWARD_MONEY() Credits und drei Datacubes als Bezahlung.")
			SAY("Gute Qualit�t, h�tte ich ihnen nicht zugetraut. Hier ist ihre Bezahlung, %REWARD_MONEY() Credits, und weil die Ware so gut war leg ich noch drei Datacubes drauf.")
			SAY("Nicht schlecht und gerade rechtzeitig. %REWARD_MONEY() Credits Belohnung und drei Datacubes, richtig? Hier, bitte, und ich w�rde mich freuen mal wieder mit ihnen zusammenzuarbeiten.")
			GIVEITEM(1501) -- Datacube
			GIVEITEM(1501)
			GIVEITEM(1501)
			ACTIVATEDIALOGTRIGGER(1)
			ENDDIALOG()
		end
	NODE(5)
		SAY("Gut, viel Erfolg dann.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(3)
		ENDDIALOG()
	NODE(6)
		SAY("Ja, ich kann ihnen ein Research Tool verkaufen, aber das kostet 2000 Credits. Tut mir leid, aber ich f�hr hier leider kein Gesch�ft.")
		
		ANSWER("Das macht nichts. Ich kaufe das Research Tool trotzdem.",7)
		ANSWER("Nein, ich mach gleich mit dem Auftrag weiter.",5)
	NODE(7)
		TAKEMONEY(2000)
		if(result==0)then
			SAY("Tut mir leid, aber das ist leider nicht genug Geld.")
			
			ANSWER("Gut, dann mache ich halt einfach mit dem Auftrag weiter.",5)
		else
			GIVEITEM(1503)
			SAY("Hier bitte. Ich hoffe sie sind damit zufrieden.")
			
			ANSWER("Ja, Danke.",5)
		end
	NODE(8)
		SAY("Es werden 3 %ITEMNAME(%TARGET_VALUE(0,2)) Blueprints dringend ben�tigt. W�re gut, wenn diese Blueprints bald verf�gbar w�ren. Bringe sie zu %NPC_NAME(1) im %NPC_WORLD(1) Sektor.")
		SAY("Wir brauchen 3 %ITEMNAME(%TARGET_VALUE(0,2)) Blueprints so schnell wie m�glich. Bringe sie zu %NPC_NAME(1) im %NPC_WORLD(1) Sektor.")
		
	
		ANSWER("Gut, ich mache mich sofort an die Arbeit.",5)
		ANSWER("Hmm, ich br�uchte noch ein Werkzeug f�r diesen Auftrag. H�tten sie da etwas.",6)
end