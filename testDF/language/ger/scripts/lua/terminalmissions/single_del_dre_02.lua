--************************
--name   : SINGLE_DEL_DRE_02.lua
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
		SAY("Lieferung oder Abholung?")
		SAY("Gruesse und Willkommen bei Diamond Real-Estate. Wie kann ich Ihnen behilflich sein?")
		SAY("Hallo. Kommen Sie wegen dem Botenjob?")
		SAY("Willkommen bei Diamond Real-Estate. Kann ich Ihnen helfen?")
		SAY("Hey. Sind Sie wegen dem Lieferjob hier?")
		SAY("Hallo. Ich habe einen Auftrag fuer Sie, falls Sie interessiert sind.")
		
		ANSWER("Ja, ich bin fuer die Ausfuehrung des Lieferjobs hier.",1)
		ANSWER("Yeah, ich hoerte, Sie wollen etwas ausliefern lassen. Geben Sie mir einfach das Paket und die entsprechenden Anweisungen...",1)
		ANSWER("Ich bin wegen dem Botenjob hier. Geben Sie mir die Fracht und den Zielort und ich bring es hin.",1)
		ANSWER("Tschuldigung, ich bin nicht der, auf den Sie warten.",4)
		ANSWER("Suchen Sie sich dafuer jemand anderen, ich habe dafuer keine Zeit.",4)
		ANSWER("Seh ich aus wie ein Laufbursche? Ich mache solche Arbeiten nicht.",4)
	NODE(1)
		GIVEQUESTITEM(91)
		SAY("Ich will, dass dieses Zeug zu %NPC_NAME(1) in %NPC_WORLD(1) gebracht wird. Der Tech kann seine Arbeit ohne das Zeug nicht fortsetzen, also lassen Sie sich nicht all zuviel Zeit. Zeit ist Geld!")
		SAY("Hallo Runner. Ein Tech namens %NPC_NAME(1) wartet auf dieses Paket. Er arbeitet in %NPC_WORLD(1). Bringen Sie ihm das Paket und kommen Sie dann wieder hierher zurueck.")
		SAY("Ah ja, ich bin froh Sie zu sehen. %NPC_NAME(1) , einer unserer Techniker, brauch dieses Zeug, um seine Arbeit fortzusetzen. Er befindet sich in %NPC_WORLD(1). Liefern Sie das ab und kommen Sie fuer die Bezahlung hierher zurueck.")
		SAY("Endlich, ein Runner. Bringen Sie das hier zu %NPC_NAME(1), er kann ohne den Kram seine Arbeit nicht fortsetzen. Nachdem Sie es abgeliefert haben, kommen Sie fuer den Lohn hierher zurueck.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(1)
			if (result==0) then
				SAY("Schauen Sie, der Tech braucht das Paket. Wir verlieren wegen Ihrer Geschwindigkeit Geld, besser gesagt, weil diese nicht vorhanden ist. Also beeilen Sie sich.")
				SAY("Runner, einem Anruf zufolge ist das Paket immer noch nicht ausgeliefert worden. Machen Sie schon.")
				SAY("Sehe ich nicht schon beschaeftigt genug aus? Sie haben ein Paket zu liefern. Machen Sie das und kommen dann wieder.")
				SAY("Was zum Teufel machen Sie hier? Liefern. Liefern! Liefern!!")
				ENDDIALOG()
			else
				SAY("Danke. %REWARD_MONEY() Credits wurden soeben ueberwiesen. Diamond Real-Estate dankt Ihnen für die Unterstuetzung.")
				SAY("Gut gemacht. Der Tech hat den Inhalt des Paketes wirklich dringend gebraucht. Hier, nehmen Sie die %REWARD_MONEY() Credits fuer den Job.")
				SAY("Hallo nochmal. Ich habe die Bestaetigung fuer die Lieferung erhalten und %REWARD_MONEY() Credits wurden auf Ihr Konto ueberwiesen. Einen schoenen Tag noch.")
				SAY("Willkommen zurueck. Der Tech rief an und bestaetigte die Lieferung. %REWARD_MONEY() Credits wurden soeben Ihrem Konto gutgeschrieben. Danke fuer Ihre Hilfe.")
				SAY("Sie sind zurueck! Gut gemacht. Der Techniker hat das Paket rechtzeitig bekommen. %REWARD_MONEY() Credits wurden auf Ihr Konto ueberwiesen. Es ist ein Vergnuegen, mit ihnen Geschaefte zu machen!")
				SAY("Damit wir uns richtig verstehen, die Zeit, die Sie gebraucht haben, das Paket abzuliefern, hat das Unternehmen Geld gekostet, das besser haette angelegt werden koennen. %REWARD_MONEY() Credits wurden Ihnen ueberwiesen. Nun verschwinden Sie.")
				ACTIVATEDIALOGTRIGGER(2)
				ENDDIALOG()
			end
	NODE(3)
		TAKEQUESTITEM(91)
			if (result==0) then
				SAY("Hey, Ich brauche dieses Paket wirklich. Am besten sofort. Also beeilen Sie sich bitte und bringen Sie es her.")
				SAY("Verarschen Sie mich nicht. Haben die Ihnen nicht gesagt, dass ich das Paket brauche, um hier weiterarbeiten zu koennen? Bringen Sie endlich das Paket hierher oder ich garantiere fuer nichts!")
				SAY("Yeah, Ich brauche dringend das Paket. Also bitte setzen Sie sich in Bewegung.")
				SAY("Auf der einen Seite brauche ich das Paket, auf der anderen Seite werde ich hier nach Stunden bezahlt. Also lassen Sie sich Zeit...")
				ENDDIALOG()
			else	
				SAY("Ah, schoen. Das Paket aus dem Buero. %NPC_NAME(0) wird Sie fuer die Lieferung bezahlen.")
				SAY("Lieferservice? Ah, das SROXUS 1.11. Das Buero hat mich informiert. Danke. %NPC_NAME(0) wird Sie fuer den Job bezahlen.")
				SAY("Ist das das SROXUS von %NPC_NAME(0) ? Yeah, das ist es. Das Buero wird Ihnen den Lohn dafuer zahlen.")
				SAY("Sie haben ganz schoen lange gebraucht. Geben Sie schon her! %NPC_NAME(0) regelt die Bezahlung.")
				SAY("Der Lieferservice! Und Sie haben das SROXUS 1.11. Schoen. Ich bin sicher, dass %NPC_NAME(0) Sie ausbezahlen wird.")
				ACTIVATEDIALOGTRIGGER(1)	
				SETNEXTDIALOGSTATE(5)
				ENDDIALOG()
			end
	NODE(4)
		SAY("Sehen Sie, ich arbeite hier fuer meinen Lebensunterhalt. Ich denke, das sollten Sie auch tun, also gehen Sie besser. Noch einen schoenen Tag.")
		SAY("Gut, wenn Sie Ihre Meinung aendern, finden Sie mich hier.")
		SAY("Ok. Ich bin sicher, dass jemand anderes das Geld gebrauchen kann. Wenn Sie hier nichts weiter zu tun haben, sollten Sie gehen. Einen schoenen Tag noch.")
		ENDDIALOG()
	NODE(5)
		SAY("Hey was machen Sie noch hier? Los gehen Sie zu %NPC_NAME(0) um Ihre Belohnung abzuholen.")
		ENDDIALOG()
end
