--************************
--name   : SINGLE_DEL_NX_01.lua
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
		SAY("Ok. Ich habe hier ein Paket fuer einen Kunden namens %NPC_NAME(1) in %NPC_WORLD(1). Erledigen Sie das so schnell wie moeglich, schliesslich sind wir vor allem ein Transportunternehmen. Viel Glueck.")
		SAY("Alles klar, Runner. %NPC_NAME(1) wartet auf diese Lieferung. Versuchen Sie ihn in %NPC_WORLD(1) zu finden. Bitte versuchen Sie das schnell zu erledigen, schliesslich sind wir trotz allem immer noch ein Transportunternehmen.")
		SAY("Hmmm, das ist das Falsche... Oh, ach ja, hoeren Sie zu. %NPC_NAME(1) von Bergen-Dahl Motor Company braucht dieses Paket. Liefern Sie es nach %NPC_WORLD(1) und das moeglichst schnell. Danach sehen wir uns hier wieder.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(1)
			if (result==0) then
				SAY("Wo immer Sie auch hin wollen - NEXT bringt Sie hin. Das gleiche gilt auch fuer den Paketdienst. Also liefern Sie das Paket, wie es abgemacht war.")
				SAY("%NPC_NAME(1) von Bergen-Dahl Motors rief an, schon wieder, und fragte nach seinem Paket. Beeilen Sie sich endlich mit der Lieferung.")
				SAY("Na, etwas chaotisch veranlagt? Nun, Next ist das jedenfalls nicht. Hier wird gemacht, was einem gesagt wird. Liefern Sie das verdammte Paket aus!")
				SAY("Hoeren Sie, ich habe keine Zeit zum Reden. %NPC_NAME(1) wartet immer noch auf sein Paket.")
				ENDDIALOG()
			else
				SAY("Gut gemacht. Die Jungs von Bergen-Dahl riefen an und meinten, dass Sie das Paket erhalten haben. Der Lohn in Hoehe von %REWARD_MONEY() Credits wurde Ihrem Konto gutgeschrieben.")
				SAY("Danke. %NPC_NAME(1) bestaetigte die Lieferung und %REWARD_MONEY() Credits wurden eben auf Ihr Konto ueberwiesen. Danke fuer die Hilfe.")
				SAY("Hallo. Die Lieferung wurde bestaetigt und %REWARD_MONEY() Credits auf Ihr Konto ueberwiesen. Auf Wedersehen und bis zum naechsten Mal.")
				SAY("Bergen-Dahl Motors rief an und bestaetigte die Lieferung. Ich habe %REWARD_MONEY() Credits auf Ihr Konto ueberwiesen. Wir danken Ihnen fuer die Unterstuetzung.")
				SAY("Das war nicht sonderlich schnell... Aber letztlich haben die Leute von Bergen-Dahl Motors Ihr Paket erhalten. %REWARD_MONEY() Credits wurden Ihnen soeben ueberwiesen. Das ist alles, Sie koennen gehen.")
				ACTIVATEDIALOGTRIGGER(2)
				ENDDIALOG()
			end
	NODE(3)
		TAKEQUESTITEM(91)
			if (result==0) then
				SAY("Hoer zu, Bruder. Wir von Bergen-Dahl lassen uns nicht verarschen. Sie haben ein Paket fuer mich, richtig? Also geben Sie es mir!")
				SAY("Ich erwarte diese Lieferung schon lange. Ich hoffe fuer Sie, dass Sie es nicht vor mir zurueckhalten, Freund...")
				SAY("Yeah, sicher, halt die Bergen-Dahl-Affen zum Narren. Warum auch nicht? Ich weiss, dass Sie mir was liefern sollten. Also wo ist es?")
				ENDDIALOG()
			else	
				SAY("Ah, gut. Das Paket von Next, richtig? %NPC_NAME(0) wird Sie fuer die Lieferung bezahlen.")
				SAY("Sie haben das Paket von Next! Gut. %NPC_NAME(0) sollte Ihnen fuer den Job ein paar Credits geben.")
				SAY("Ist das das Zeug, dass %NPC_NAME(0) von Next uns schickt? Ok. Sie werden auch deine Bezahlung regeln. Danke, Kumpel.")
				SAY("Alles klar! Das Next Paket. Schon lustig, dass Bergen-Dahl Motors leider in dieser Angelegenheit auf Next angewiesen ist. %NPC_NAME(0) wird die Bezahlung regeln.")
				SAY("Das hat ziemlich lange gedauert. %NPC_NAME(0) wird Sie bezahlen, ich wuerde es nicht machen.")
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
