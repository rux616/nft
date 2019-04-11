--************************
--name   : SINGLE_DEL_NX_02.lua
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
		SAY("Next, wie kann ich Ihnen helfen, Sir?")
		SAY("Next, wohin wollen Sie heute, Sir?")
		SAY("Hallo. Kommen Sie wegen dem Botenjob?")
		SAY("Willkommen bei Neocron Exploration Technology Inc. Wie kann ich behilflich sein?")
		SAY("Hey. Sind Sie wegen dem Lieferauftrag hier?")
		SAY("Tag. Wir von Next koennten Ihre Hilfe gebrauchen, wenn Sie interessiert sind.")
		
		ANSWER("Ja, ich will diesen Lieferjob.",1)
		ANSWER("Yeah, Sie brauchen einen Boten? Geben Sie mir einfach das Paket und die notwendigen Informationen...",1)
		ANSWER("Ich komme wegen dem Lieferjob. Sagen Sie mir, was wann wohin muss und ich erledige das.",1)
		ANSWER("Sorry, ich hab schon einen Job.",4)
		ANSWER("Suchen Sie sich jemand anderen dafuer. Ich bin nicht hier, um Ihnen zu helfen.",4)
		ANSWER("Hey Bruder, seh ich wie ein Laufbursche aus? Ich liefere nicht aus.",4)
	NODE(1)
		GIVEQUESTITEM(91)
		SAY("%NPC_NAME(1) in %NPC_WORLD(1) braucht diese Ausruestung, es ist wirklich dringend. Erledigen Sie das schnell und sauber. Viel Glueck.")
		SAY("Ok, Runner. %NPC_NAME(1) wartet in %NPC_WORLD(1) auf diese Lieferung. Es ist dringend, also beeilen Sie sich bitte. Kommen Sie fuer die Belohnung zurueck.")
		SAY("Hallo! %NPC_NAME(1) in %NPC_WORLD(1) braucht dringend dieses Paket. Liefern Sie und kommen Sie dann, wenn moeglich, hierher zurueck.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(1)
			if (result==0) then
				SAY("Wo immer Sie auch hin wollen - NEXT bringt Sie hin. Das gleiche gilt auch fuer den Paketdienst. Also liefern Sie das Paket, wie es abgemacht war.")
				SAY("%NPC_NAME(1) benachrichtigte uns, dass Sie ein lahmer Hund sind. Liefern Sie oder Sie landen auf unserer schwarzen Liste.")
				SAY("Na, was vergessen? Das Paket vielleicht? Liefern Sie an %NPC_NAME(1) in %NPC_WORLD(1). Jetzt!")
				SAY("Hoeren Sie, ich habe keine Zeit zum Reden. %NPC_NAME(1) wartet immer noch auf sein Paket. Also setzen Sie sich in Bewegung.")
				ENDDIALOG()
			else
	
				SAY("Ok, %NPC_NAME(1) hat uns ueber die erfolgreiche Lieferung informiert. Der Lohn in Hoehe von %REWARD_MONEY() Credits wurde auf Ihr Konto ueberwiesen. Einen schoenen Tag noch.")
				SAY("Danke. %NPC_NAME(1) bestaetigte die Lieferung und deshalb wurden %REWARD_MONEY() Credits Ihrem Konto gutgeschrieben. Danke fuer die Hilfe.")
				SAY("Hallo. Die Lieferung wurde bestaetigt und %REWARD_MONEY() Credits auf Ihr Konto ueberwiesen. Auf Wedersehen und bis zum naechsten mal.")
				SAY("Die %REWARD_MONEY() Credits wurden fuer den gut gemachten Job auf Ihr Konto ueberwiesen. Wir sind Ihnen dankbar fuer die Unterstuetzung.")
				SAY("Das ging richtig schnell. %REWARD_MONEY() Credits wurden Ihrem Konto gutgeschrieben. Auf unseren Terminals finden Sie weitere Jobs.")
				ACTIVATEDIALOGTRIGGER(2)
				ENDDIALOG()
			end
	NODE(3)
		TAKEQUESTITEM(91)
			if (result==0) then
				SAY("Ich warte immer noch auf das Paket...")
				SAY("Aha. Wurden Sie nicht angewiesen, mir ein Paket zu liefern? Wuerden Sie sich damit bitte etwas beeilen...")
				SAY("Kein Paket? Ich brauche es wirklich dringend.")
				ENDDIALOG()
			else	
				SAY("Das Paket von Next, richtig? %NPC_NAME(0) wird die Bezahlung regeln.")
				SAY("Gut. %NPC_NAME(0) hat das Geld fuer diesen Job.")
				SAY("Danke. %NPC_NAME(0) wird Sie bezahlen.")
				SAY("Wird Zeit. Ich dachte, ich warte hier bis zum juengsten Gericht. %NPC_NAME(0) wird Sie fuer den Job entlohnen.")
				SAY("Sie haben lange bis hierher gebraucht. %NPC_NAME(0) meinte, Sie sollen sich bei ihm fuer die Bezahlung melden.")
				ACTIVATEDIALOGTRIGGER(1)	
				SETNEXTDIALOGSTATE(5)
				ENDDIALOG()
			end
	NODE(4)
		SAY("Ok, bitte gehen Sie, wenn Sie hier keine Geschaefte bei Next zu erledigen haben.")
		SAY("Ich bin es, der mit Ihnen redet. Ich bin es auch, der Sie ignoriert...")
		SAY("Next dankt fuer Ihren Besuch und wuenscht einen schoenen Tag. Bye.")
		ENDDIALOG()
	NODE(5)
		SAY("Hey was machen Sie noch hier? Los gehen Sie zu %NPC_NAME(0) um Ihre Belohnung abzuholen.")
		ENDDIALOG()
end
