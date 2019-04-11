--************************
--name   : SINGLE_DEL_DRE_01.lua
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
		
		ANSWER("Ja, Ich bin fuer die Annahme des Lieferjobs hier.",1)
		ANSWER("Yeah, Ich hoerte, Sie wollen etwas ausliefern lassen. Geben Sie mir einfach das Paket und die entsprechenden Anweisungen...",1)
		ANSWER("Ich bin wegen dem Botenjob hier. Geben Sie mir die Fracht und den Zielort und ich bring es hin.",1)
		ANSWER("Tschuldigung, Ich bin nicht der, auf den Sie warten.",4)
		ANSWER("Suchen Sie sich dafuer jemand anderen, ich habe dafuer keine Zeit.",4)
		ANSWER("Seh ich aus wie ein Laufbursche? Ich mache solche Arbeiten nicht.",4)
	NODE(1)
		GIVEQUESTITEM(91)
		SAY("Dieses Paket muss dringend zu %NPC_NAME(1) in %NPC_WORLD(1). Eigentlich haette das Paket dort schon gestern ankommen muessen, also nehmen Sie die Beine in die Hand. Schnell!")
		SAY("Hallo Runner. Ich habe eine dringende Lieferung die Sie machen koennen. Ein Paechter mit Namen %NPC_NAME(1) wartet schon auf dieses Paket. Sie finden ihn in %NPC_WORLD(1). Bringen Sie ihm schnell das Paket und kommen Sie dann wieder hierher zurueck.")
		SAY("Ah ja, Ich bin froh, dass Sie kommen konnten. %NPC_NAME(1) , einer unserer Paechter, braucht dringend dieses Paket. Er haelt sich derzeit in %NPC_WORLD(1) auf. Beeilen Sie sich und kommen Sie danach zu mir zurueck für die Belohnung.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(1)
			if (result==0) then
				SAY("Was machen Sie hier? Sie haben ein Paket abzuliefern, wenn Sie die Bezahlung wollen, also los!")
				SAY("Runner, Ich habe gerad einen Rueckruf bekommen, dass Sie das Paket noch immer nicht abgeliefert haben. Sie sollten sich besser beeilen.")
				SAY("Sehen Sie, der Paechter wartet immer noch. Also lassen Sie den Bloedsinn und liefern endlich die Fracht ab!")
				SAY("Was zum Henker machen Sie hier? Versuchen Sie mir nicht zu erzaehlen, dass das Paket schon geliefert ist, ich weiß, dass es nicht so ist. Also machen Sie schon!")
				ENDDIALOG()
			else
				SAY("Gut gemacht. %REWARD_MONEY() Credits wurden auf Ihr Konto ueberwiesen. Diamond Real-Estate ist Ihnen dankbar fuer die Hilfe.")
				SAY("Ich danke Ihnen. Der Paechter hat vor einer halben Stunde angerufen, dass das Paket angekommen ist. Hier sind Ihre %REWARD_MONEY() Credits fuer die Lieferung.")
				SAY("Hallo nochmal. Ich habe die Bestaetigung bekommen, dass die Lieferung erfolgt ist. %REWARD_MONEY() Credits wurden soeben auf Ihr Konto ueberwiesen. Einen schoenen Tag noch.")
				SAY("Willkommen zurueck. Der Paechter rief an und bestaetigte die Lieferung. %REWARD_MONEY() Credits sind Ihrem Konto gutgeschrieben worden. Wir danken Ihnen fuer die Hilfe.")
				SAY("Sie haben sich ganz schoen Zeit gelassen. Als ob wir hier nichts besseres zu tun haetten... %REWARD_MONEY() Credits wurden ueberwiesen. Das ist alles, Sie koennen jetzt gehen.")
				ACTIVATEDIALOGTRIGGER(2)
				ENDDIALOG()
			end
	NODE(3)
		TAKEQUESTITEM(91)
			if (result==0) then
				SAY("Ich wusste es! Diese Scheisskerle bei  der Diamond-Verwaltung sind alle schwachsinnig. Die koennen einfach nichts richtig machen. Gehen Sie und holen Sie endlich mein Paket!!")
				SAY("Sehen Sie, ein Diamond Angestellter sagte, dass das Paket schon gestern hier sein sollte! Haben Sie nun vor, das Paket zu liefern oder nicht?!")
				SAY("Diese Idioten. Erst halten Sie mich am Phone hin und nun verzoegert sich auch noch die Lieferung. Besser, Sie bringen mir mein Paket so schnell wie moeglich oder ich zeige Sie wegen Diebstahls an! Ich kenne meine Rechte!!")
				ENDDIALOG()
			else	
				SAY("Danke, danke, danke! Bin ich froh, dass Diamond doch noch ein paar kompetente Mitarbeiter hat. %NPC_NAME(0) wird Sie dafuer angemessen entlohnen.")
				SAY("Wurde Zeit. Die haben mir versprochen, dass ich es schon gestern bekomme! %NPC_NAME(0) wird Ihnen trotzdem den Lohn zahlen.")
				SAY("Ist das das Paket von %NPC_NAME(0), sollte das nicht schon gestern hier sein? Alles Schwachsinnige und Idioten. Die Bezahlung erhalten Sie von denen und sicher nicht von mir.")
				SAY("Seien Sie froh, dass ich Sie nicht dafuer erschiesse, dass Sie so spaet dran sind. Geben Sie schon her! Dieser Idiot %NPC_NAME(0) wird Sie bezahlen, ich sicher nicht.")
				SAY("Der Botenjunge! Danke, dass Sie das aus den verfluchten Diamond-Bueros schaffen konnten. Ich bin sicher, dass %NPC_NAME(0) die Bezahlung regeln wird.")
				SAY("Die Lieferung hat ja gedauert. %NPC_NAME(0) wird Sie trotzdem bezahlen.")
				ACTIVATEDIALOGTRIGGER(1)	
				SETNEXTDIALOGSTATE(5)
				ENDDIALOG()
			end
	NODE(4)
		SAY("Sehen Sie, ich arbeite hier fuer meinen Lebensunterhalt. Ich denke, das sollten Sie auch tun, also gehen Sie besser. Noch einen schoenen Tag.")
		SAY("Gut, wenn Sie Ihre Meinung aendern, finden Sie mich hier.")
		SAY("OK, gut, meinetwegen. Aber nun gehen Sie, bevor ich Sie rauswerfe. Einen schoenen Tag noch.")
		ENDDIALOG()
	NODE(5)
		SAY("Hey was machen Sie noch hier? Los gehen Sie zu %NPC_NAME(0) um Ihre Belohnung abzuholen.")
		ENDDIALOG()
end
