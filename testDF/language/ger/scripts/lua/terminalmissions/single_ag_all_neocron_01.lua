--************************
--name   : SINGLE_AG_ALL_NEOCRON_01.lua
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
		--Person 0
		SAY("Viel Gl�ck bei ... was immer sie auch tun.")
		SAY("Besuchen sie uns mal wieder.")
		SAY("Tsch�ss, ich habe auch dringendere Arbeiten zu erledigen.")
		SAY("Auf Wiedersehen. Vielleicht wollen sie das n�chste Mal ja einen Job.")
		ENDDIALOG()	
	NODE(2)
		--Person 0
		--Auftrag wird erkl�rt, Mission vergeben
		SAY("Ich werde mich kurz fassen. Es gibt jede Menge Ungeziefer zu vernichten. Daf�r brauchen wir sie.")
		SAY("Sie werden sicher wissen, dass es immer noch viel zu viel von diesem Ungeziefer gibt, nicht wahr?")
		SAY("Wir haben immer noch Ger�te die fast st�ndlich repariert werden m�ssen, da dieses Ungeziefer fast alles zerst�rt.")
		
		ANSWER("Und was habe ich damit zu tun?",4)
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Wollten sie nicht Ungeziefer t�ten?")
			SAY("Haben sie nicht einen Auftrag dem sie nachgehen sollten?")
		else
			SAY("Vielen Dank f�r ihre Zusammenarbeit. Hier sind ihre %REWARD_MONEY() Credits Belohunung.")
			SAY("Das haben sie gut gemacht, Runner. Hier ist ihre Bezahlung, %REWARD_MONEY() Credits.")
			SAY("Wir danken ihnen f�r ihre Dienste. %REWARD_MONEY() Credits Bezahlung waren abgemacht.")
			ACTIVATEDIALOGTRIGGER(1)
			ENDDIALOG()
		end
	NODE(4)
		SAY("Ihre Aufgabe dabei, w�re es %TARGET_VALUE(0,1) %TARGET_NPCNAME(0) von diesen kleinen Teufeln zu erwischen.")
		SAY("Sie werden gebraucht um %TARGET_VALUE(0,1) %TARGET_NPCNAME(0) zu exterminieren.")
		ACTIVATEDIALOGTRIGGER(2)
		SETNEXTDIALOGSTATE(3)
		ENDDIALOG()
end