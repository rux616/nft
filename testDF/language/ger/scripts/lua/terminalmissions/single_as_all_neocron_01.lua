--************************
--name   : SINGLE_AS_ALL_NEOCRON_01.lua
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
		--Person 0
		SAY("Viel Glück bei ... was immer sie auch tun.")
		SAY("Besuchen sie uns mal wieder.")
		SAY("Tschüss, ich habe auch dringendere Arbeiten zu erledigen.")
		SAY("Auf Wiedersehen. Vielleicht wollen sie das nächste Mal ja einen Job.")
		ENDDIALOG()
	NODE(2)
		--Person 0
		--Person vergibt Name einer Kontaktperson
		SAY("Sie wissen, dass all dies hier streng vertraulich ist? Gut, gehen sie und treffen sie ihren Kontakt %NPC_NAME(1) im %NPC_WORLD(1) Distrikt.")
		SAY("Offiziell findet dieses Gespräch nicht statt. Ihr Kontaktmann wird ihnen die weiteren Details geben. Sie finden ihn im %NPC_WORLD(1) Distrikt, sein Name ist %NPC_NAME(1).")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(3)
		ENDDIALOG()
	NODE(3)
		SAY("Sie erfahren alles weitere von der Kontaktperson, die ich ihnen genannt habe.")
		SAY("Ich bitte sie äusserst diskret vorzugehen.")
		ENDDIALOG()
	NODE(4)
		--Person 1 Kontaktperson, nennt Zielperson
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Verschwinden sie, ich habe besseres zu tun als mich von irgendsonem Runner anlabern zu lassen.")
			SAY("Gehen sie mir aus den Augen.")
			ENDDIALOG()
		else
			SAY("Hier ist der Auftrag. Töten sie %NPC_NAME(2) im %NPC_WORLD(2) Distrikt. Kommen sie zu mir zurück, wegen der Bezahlung.")
			SAY("Das Ziel heisst %NPC_NAME(2) und befindet sich im %NPC_WORLD(2) Sektor. Kommen sie nach Erledigung des Subjekts wieder zu mir wegen der Belohnung.")
			SAY("%NPC_NAME(2) im %NPC_WORLD(2) Distrikt ist zu eliminieren. Ich gebe ihnen danach dann die Belohnung.")
			ACTIVATEDIALOGTRIGGER(3)
			SETNEXTDIALOGSTATE(5)
			ENDDIALOG()
		end
	NODE(5)
		--Person 1 Kontaktperson
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Sie sind nicht besonders proffessionell. Zurück an die Arbeit. Das Ziel ist %NPC_NAME(2) im %NPC_WORLD(2) Distrikt.")
			SAY("Warum schicken die mir bloss so einen Anfänger. Der Auftrag wartet. Das Ziel ist %NPC_NAME(2) im %NPC_WORLD(2) Distrikt.")
			SAY("Erledigen sie endlich die Zielperson. Das Ziel ist %NPC_NAME(2) im %NPC_WORLD(2) Distrikt.")
			ENDDIALOG()
		else
			SAY("Hier sind ihre %REWARD_MONEY() Credits. Wir haben uns nie gesehen, verstanden?")
			SAY("Eine Belohnung von %REWARD_MONEY() Credits, hier bitte. Und nun gehen sie, man sollte uns nicht zusammen sehen.")
			SAY("Guter Job. Hier sind %REWARD_MONEY() Credits, wie vereinbart.")
			ACTIVATEDIALOGTRIGGER(2)
			ENDDIALOG()
		end
end