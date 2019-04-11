--************************
--name   : SINGLE_DEL_ALL_NEOCRON_01.lua
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
		-- Der Auftrag wird erkl�rt. Kontaktperson genannt.
		--Person 0
		SAY("Diese Lieferung enth�lt spezielle Teile, die f�r Teilchenbeschleuniger als Ersatzteile konzipiert sind. Sie m�ssen diese erst bei %NPC_NAME(1) im %NPC_WORLD(1) Sektor abholen.")
		SAY("Es geht um die Lieferung von recht empfindlichem Ger�t. Aber sie m�ssen sie erst bei %NPC_NAME(1) im %NPC_WORLD(1) Sektor abholen. Dort erfahren sie auch alles weitere.")
		SAY("Wir brauchen sie um eine schnelle Lieferung durchzuf�hren. Dazu m�ssen sie sich erst mit %NPC_NAME(1) im %NPC_WORLD(1) Sektor treffen. Dort bekommen sie auch das Paket.")
		
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(3)	
		ENDDIALOG()
	NODE(3)
		--Person 0
		SAY("Sie bekommen das Paket von %NPC_NAME(1). Gehen sie zu ihm.")
		SAY("Wir haben uns doch darauf geeinigt, dass sie diese Aufgabe �bernehmen.")
		SAY("Sie sollten besser ihren Job erledigen.")
		ENDDIALOG()
	NODE(4)
		-- Person die das Paket an den SPieler gibt, weiterleitung an Missionszielperson
		--Person 1
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Was wollen sie denn von mir? Kennen wir uns?")
--NEW
			ANSWER("Nichts f�r ungut, ich bin ja schon weg.")
--NEWEND
			ENDDIALOG()
		else
			GIVEQUESTITEM(99)
			SAY("Ich wurde schon informiert, dass sie kommen. Hier ist das Paket. Bringen sie es zu %NPC_NAME(2) im %NPC_WORLD(2) Sektor.")
			SAY("Seien sie sehr vorsichtig mit dieser Lieferung. Die Teile sind h�chst empfindlich. %NPC_NAME(2) im %NPC_WORLD(2) wartet wahrscheinlich schon.")
			SAY("%NPC_NAME(2) im %NPC_WORLD(2) Distrikt erwartet diese Lieferung. Ich hoffe, dass ihre Auftraggeber wissen, wie gef�hrlich das Zeug ist.")
			ACTIVATEDIALOGTRIGGER(1)
			SETNEXTDIALOGSTATE(5)
			ENDDIALOG()
		end
	NODE(5)
		--Person 1
		SAY("Sie haben das Paket ja immer noch. Bringen sie es endlich zum Zielort.")
		SAY("Mann, sie sollten lieber nicht so viel Zeit vertr�deln.")
		SAY("Was machen sie noch hier, gehen sie schon.")
		SAY("Ich m�chte, dass sie ihrer Arbeit nachgehen.")
		ENDDIALOG()
	NODE(6)
		--Person 2
		TAKEQUESTITEM(99)
		if(result==0)then
			SAY("Sind sie der Runner, der mir das Paket bringen soll? Wo ist dann das Paket?")
			SAY("Warum kommen sie ohne Lieferung zu mir? Das macht doch keinen Sinn.")
			SAY("Ich warte schon ziemlich lange auf dieses Paket. Viel l�nger will ich hier nicht mehr stehen.")
			ENDDIALOG()
		else
			SAY("Danke, das Paket wird uns sehr weiterhelfen.Ich habe nicht viel Zeit, dass Experiment wartet. Hier sind ihre %REWARD_MONEY() Credits.")
			SAY("Endlich mal ein zuverl�ssiger Bote. Wie versprochen, hier ihre %REWARD_MONEY() Credits als Belohnung.")
			SAY("Jetzt k�nnen wir die Experimente endlich fortf�hren. Nat�rlich lassen wir uns das auch %REWARD_MONEY() Credits kosten.")
			ACTIVATEDIALOGTRIGGER(2)
			ENDDIALOG()
		end
end