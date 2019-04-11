--************************
--name   : SINGLE_DEL_PP_02.lua
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
		SAY("Ihre Hoffnung. Ihre Staerke. Ihre Heilung. ProtoPharm, kann ich behilflich sein, Sir?")
		SAY("Willkommen bei ProtoPharm. Wie kann ich Ihnen helfen, Sir?")
		SAY("Hey. Kommen Sie wegen dem Lieferjob?")
		SAY("Wie kann ich Ihnen helfen, Sir?")
		SAY("Gruesse. Sind Sie der Botenjunge?")
		SAY("Hallo. Wir haben einen Job fuer Sie, wenn Sie interessiert sind.")
		
		ANSWER("Hallo, ich bin wegen dem Botenjob hier.",1)
		ANSWER("Yeah, klar kann ich ausliefern. Geben Sie mir einfach das Paket und die Adresse...",1)
		ANSWER("Sicher bin ich wegen dem Lieferjob hier. Sagen Sie mir einfach, was wann wohin muss und ich erledige das.",1)
		ANSWER("Tschuldigung, nicht mein Ding.",4)
		ANSWER("Finden Sie dafuer jemand anderen, ich hab keine Zeit.",4)
		ANSWER("Hey Bruder, ich liefere nichts aus, ok?",4)
	NODE(1)
		GIVEQUESTITEM(91)
		SAY("Diese Drogen muessen zu %NPC_NAME(1) in %NPC_WORLD(1) gebracht werden. Seien Sie vorsichtig, die Drogen sind experimenteller Natur und jede Erschuetterung kann schlimme Folgen haben. Kommen Sie zurueck, wenn Sie fertig sind.")
		SAY("Hallo Runner. Ein Laborarbeiter namens %NPC_NAME(1) wartet auf diese Drogen. Er arbeitet in %NPC_WORLD(1). Seien Sie vorsichtig, sonst zerbricht der Behaelter. Liefern Sie das Zeug ab und kommen Sie wieder zurueck.")
		SAY("Ah ja, schoen Sie zu sehen. %NPC_NAME(1) , einer unserer Laboranten, arbeitet an einem neuen Projekt und er braucht dazu dieses experimentelle Gift in %NPC_WORLD(1). Bringen Sie es hin und kommen Sie dann zu mir zurueck, um Ihre Belohnung zu erhalten.")
		SAY("Endlich, ein Runner. Nehmen Sie dieses...uhmm... Paket und bringen Sie es zu %NPC_NAME(1). Er muss daran in %NPC_WORLD(1) ein paar Tests machen. Nachdem Sie es abgegeben haben, kommen Sie fuer die Bezahlung zu mir zurueck.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(1)
			if (result==0) then
				SAY("Ok, die Drogen, die Sie da haben, koennten entscheidend fuer den Fortbestand der Menschheit sein. Also beeilen Sie sich!")
				SAY("Runner, ich erhielt einen Anruf, dass das Paket immer noch nicht geliefert wurde. Machen Sie schon!")
				SAY("Hallo Sie da! Es freut mich, dass Sie so schnell rennen koennen, dass Sie sich jetzt noch die Zeit zum troedeln nehmen koennen...Bewegung!")
				SAY("Ich hab schon schnellere zugedroehnte Junkies gesehen. Wollen Sie nun ausliefern oder nicht?")
				ENDDIALOG()
			else
				SAY("Danke fuer die Lieferung. Die %REWARD_MONEY() Credits wurden auf Ihr Konto ueberwiesen. Einen schoenen Tag noch.")
				SAY("Gut gemacht. Der Laborant hat diese Drogen dringend gebraucht. Hier, Ihre %REWARD_MONEY() Credits als Zeichen unserer Dankbarkeit.")
				SAY("Hey Sie. Die Lieferung wurde soeben bestaetigt und %REWARD_MONEY() Credits wurden Ihrem Konto gutgeschrieben. Einen angenehmen Tag noch.")
				SAY("Willkommen zurueck. Der Laborarbeiter rief an und bestaetigte die Lieferung. %REWARD_MONEY() Credits werden auf Ihr Konto transferiert. Danke fuer die Hilfe.")
				SAY("Oh, Sie sind das. Gut gemacht. %REWARD_MONEY() Credits wurden Ihnen ueberwiesen. Es ist ein Vergnuegen, mit Ihnen Geschaefte zu machen!")
				SAY("Na? Ein wenig durch die Stadt geschlendert? Bestimmt, Sie haben ja lange genug gebraucht. Egal, %REWARD_MONEY() Credits wurden auf Ihr Konto ueberwiesen. Sie koennen gehen.")
				ACTIVATEDIALOGTRIGGER(2)
				ENDDIALOG()
			end
	NODE(3)
		TAKEQUESTITEM(91)
			if (result==0) then
				SAY("Haben Sie es dabei? Das Paket, haben Sie es? Nein? Verdammt, dann holen Sie es endlich...")
				SAY("...geteilt durch Sieben, nein Acht und... Oh, haben Sie das Paket? Nein? Dann sollten Sie es besser holen!")
				SAY("Yeah, ich brauche das Paket wirklich dringend. Also bitte holen Sie es.")
				SAY("Sehen Sie, ich waere in der Lage, eine Droge herzustellen, die alle Krankheiten heilt, wenn Idioten wie Sie es endlich in den Griff bekommen wuerden, Pakete puenktlich zu liefern! Also bringen Sie mir endlich mein Paket!")
				ENDDIALOG()
			else	
				SAY("Ah, schoen. Das Paket aus dem Buero. %NPC_NAME(0) wird die Bezahlung regeln.")
				SAY("Lieferung? Ah, das SROXUS 1.11, dass mir das Buero versprochen hatte. Danke. %NPC_NAME(0) wird die Lohnauszahlung uebernehmen.")
				SAY("Ist das das SROXUS von %NPC_NAME(0)? Yeah, das ist es. Das Buero uebernimmt die Entlohnung für die Lieferung.")
				SAY("Das hat aber gedauert. Geben Sie schon her! %NPC_NAME(0) wird die Bezahlung regeln.")
				SAY("Der Lieferservice! Und Sie haben das SROXUS 1.11. Sehr schoen. Ich bin sicher, dass %NPC_NAME(0) Sie entsprechend entlohnen wird.")
				ACTIVATEDIALOGTRIGGER(1)	
				SETNEXTDIALOGSTATE(5)
				ENDDIALOG()
			end
	NODE(4)
		SAY("Hoeren Sie, wir haben hier bei ProtoPharm Arbeit zu erledigen. Wenn Sie nicht vorhaben, uns dabei zu unterstuetzen, sollten Sie besser gehen. Jetzt.")
		SAY("Wenn Sie Ihre Meinung aendern, wissen Sie, wo Sie mich finden koennen.")
		SAY("Ok. Ich bin sicher, dass jemand anderes die Creds gut gebrauchen kann. Wenn Sie hier nichts weiter zu tun haben, bitte ich Sie zu gehen. Einen schoenen Tag noch.")
		ENDDIALOG()
	NODE(5)
		SAY("Hey was machen Sie noch hier? Los gehen Sie zu %NPC_NAME(0) um Ihre Belohnung abzuholen.")
		ENDDIALOG()
end
