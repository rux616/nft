--************************
--name   : SINGLE_DEL_FA_01.lua
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
		SAY("Ja, Freund, womit kann ich dienlich sein?")
		SAY("Moechtest du mich etwas fragen?")
		SAY("Ja? Was brauchst du?")
		SAY("Brauchst du was?")
		
		ANSWER("Ja, ich hoerte ihr habt da eine Lieferung zu erledigen.",1)
		ANSWER("Ihr habt 'ne Lieferung zu erledigen? Hoert sich nach 'nem Job fuer mich an.",1)
		ANSWER("Schon gut, ich sollte eigentlich garnicht hier sein.",3)
	NODE(1)
		GIVEQUESTITEM(91)
		SAY("Geh, wenn es moeglich ist, nach %NPC_World(1) und gib unserem Agenten dort diese Freidenker Flugblaetter. Er wird diese dann unter den unterdrueckten Buergern Neocron verteilen. Unser Agent heisst %NPC_NAME(1). Wir danken dir fuer deine Dienste Runner. Du wirst von mir bezahlt werden, sobald du zurueckkehrst, Runner. Viel Glueck und denke daran: Nur ein freier Geist kann eine freie Gesellschaft gruenden.")
		SAY("Stell sicher, dass diese wichtige Lieferung unseren Agenten %NPC_NAME(1) erreicht. Dieser haelt sich gerade in %NPC_WORLD(1) auf. Und sei vorsichtig, Runner. Wir wollen nicht, dass dir dabei etwas zustoesst. Danach kehrst du wieder zu mir zurueck um deine Belohnung entgegenzunehmen.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(1)
			if (result==0) then
				SAY("Geh und bring deine Arbeit zu ende, Runner.")
				SAY("Es ist wichtig, dass das Paket unseren Agenten %NPC_NAME(1) in %NPC_WORLD(1) erreicht, bitte beeil dich.")
				SAY("Ich habe zu tun, wir sprechen uns spaeter.")
				SAY("Du weisst was zu tun ist! Also tu es gefaelligst auch!")
				ENDDIALOG()
			else
				SAY("Das ging ja schnell, hier sind deine %REWARD_MONEY() Credits.")
				SAY("Gute Arbeit. Du hast dir die %REWARD_MONEY() Credits redlich verdient.")
				SAY("Exzellent. Hier ist die %REWARD_MONEY() Credits Belohnung fuer den Job.")
				ACTIVATEDIALOGTRIGGER(2)
				ENDDIALOG()
			end	
	NODE(3)
		TAKEQUESTITEM(91)
			if (result==0) then
				SAY("Ich warte immer noch auf das Paket...")
				SAY("Koenntest du dich bitte etwas beeilen und mir das Paket bringen?")
				SAY("Kein Paket dabei? Ich brauche es aber wirklich dringend.")
				ENDDIALOG()
			else	
				SAY("Das Paket von den Angels, richtig? %NPC_NAME(0) gibt dir dann das Geld.")
				SAY("Gut. %NPC_NAME(0) wartet schon mit den Credits auf dich.")
				SAY("Danke. %NPC_NAME(0) wird dich dann bezahlen.")
				SAY("Wurde aber langsam Zeit. Dachte schon, ich muesste bis zum juengsten Tag warten. %NPC_NAME(0) wartet mit dem Geld auf dich.")
				SAY("Mann, hast du lange gebraucht. %NPC_NAME(0) hat mich gerade angerufen und sagte du solltest dann zu ihm zurueckkommen und dir dein Geld abholen.")
				ACTIVATEDIALOGTRIGGER(1)	
				SETNEXTDIALOGSTATE(5)
				ENDDIALOG()
			end
	NODE(4)
		SAY("Auf Wiedersehen.")
		SAY("Ich bin gerade sehr beschaeftigt. Komm spaeter wieder.")
		SAY("Komm wieder, wenn du weisst, was du eigentlich willst. Tschuess.")
		SAY("Ich habe zu tun. Tschuess.")
		ENDDIALOG()
	NODE(5)
		SAY("Hey was machst Du noch hier? Los geh zu %NPC_NAME(0) um deine Belohnung abzuholen.")
		ENDDIALOG()
	

	
end

















































