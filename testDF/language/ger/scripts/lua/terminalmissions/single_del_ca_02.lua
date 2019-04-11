--************************
--name   : SINGLE_DEL_CA_02.lua
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
		SAY("City Admin, wie kann ich Ihnen behilflich sein, Sir?")
		SAY("City Admin, brauchen Sie meine Hilfe, Sir?")
		SAY("Hallo Sie. Kommen Sie wegen dem Job, Sir?")
		SAY("Willkommen bei der City Administration. Wie kann ich Ihnen helfen, Sir?")
		SAY("Gruesse. Kommen Sie wegen dem Job?")
		
		ANSWER("Ja, ich komme, um die Lieferung auszufuehren.",1)
		ANSWER("Yeah, ich hoerte, Sie brauchen jemanden, der Lieferungen uebernimmt. Geben Sie mir einfach die Informationen und das Paket...",1)
		ANSWER("Ich komme wegen dem Botenjob. Geben Sie mir einfach die Adresse und ich bring es hin.",1)
		ANSWER("Sorry, ich hab schon einen Job.",4)
		ANSWER("Suchen Sie sich jemand anderen. Ich habe kein Interesse daran, Ihnen zu helfen.",4)
		ANSWER("Hey Bruder, seh ich aus wie ein Runner? Ich mache keine Lieferungen.",4)
	NODE(1)
		GIVEQUESTITEM(91)
		SAY("Agent %NPC_NAME(1) in %NPC_WORLD(1) braucht dringend diese Ausruestung. Beeilen Sie sich mit der Lieferung und kehren Sie dann zu mir zurueck.")
		SAY("Runner, Buerger %NPC_NAME(1) wartet auf diese Ausruestung in %NPC_WORLD(1). Es ist dringend, also beeilen Sie sich bitte. Wir sehen uns danach hier wieder.")
		SAY("Runner, %NPC_NAME(1) in %NPC_WORLD(1) braucht diese Ausruestung, jetzt. Liefern Sie und kommen Sie dann wieder.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(1)
			if (result==0) then
				SAY("Die City Admin moechte, dass Sie das Paket ausliefern. Das haben Sie auch so akzeptiert. Jetzt bringen Sie es zu Ende oder unsere CopBots werden sich um Sie kuemmern muessen.")
				SAY("%NPC_NAME(1) wartet auf diese Ausruestung. Besser Sie liefern endlich oder ich sorge dafuer, dass Sie in dieser Stadt nie wieder arbeiten.")
				SAY("Sie sollten doch das Paket zu %NPC_NAME(1) in %NPC_WORLD(1) bringen. Was machen Sie dann noch hier?")
				SAY("Liefern Sie endlich, jetzt!")
				ENDDIALOG()
			else
				GIVEMONEY()
				SAY("Runner, %NPC_NAME(1) bestaetigte die Lieferung. Die Standardbezahlung von %REWARD_MONEY() Credits wurde ueberwiesen. Danke fuer die Unterstuetzung der City Admin.")
				SAY("Runner, %NPC_NAME(1) bestaetigte die Lieferung und die Standardbezahlung von %REWARD_MONEY() Credits wurde ueberwiesen. Danke fuer die Hilfe im Namen Reezas und der Menschen!")
				SAY("Die Lieferung wurde bestaetigt und die Standardbezahlung von %REWARD_MONEY() Credits wurde auf Ihr Konto ueberwiesen. Die City Admin dankt Ihnen fuer die Hilfe.")
				SAY("Runner, ich habe Ihnen die Standardsumme von %REWARD_MONEY() Credits ueberwiesen, als Bezahlung fuer den gut ausgefuehrten Job. Seien Sie stolz, dass Sie Reeza und den Menschen einen Dienst erwiesen haben!")
				SAY("Runner, gut gemacht. Die Aufklaerung bestaetigt die Lieferung. Die Standardbezahlung von %REWARD_MONEY() Credits wurde ueberwiesen. Schauen Sie auf unseren Terminals nach, wenn Sie weitere Arbeit suchen.")
				ACTIVATEDIALOGTRIGGER(2)
				ENDDIALOG()
			end
	NODE(3)
		TAKEQUESTITEM(91)
			if (result==0) then
				SAY("Hmmm, Sie hatten ein Paket fuer mich, oder? Gut, dann bringen Sie es endlich her.")
				SAY("Nun machen Sie schon. Ich hab nicht den ganzen Tag Zeit. Bringen Sie mir meine Ausruestung.")
				SAY("Schau Bruder, ich hab nicht vor, hier die ganze Zeit dumm rumzustehen, wartend. Bring mir das Paket.")
				ENDDIALOG()
			else	
				SAY("Das Paket aus dem Buero, richtig? %NPC_NAME(0) wird Sie bezahlen. Danke, dass Sie so schnell waren.")
				SAY("Gut. %NPC_NAME(0) sollte ein paar Creds für Sie bereithalten.")
				SAY("Danke. %NPC_NAME(0) wird Sie fuer den Job bezahlen.")
				SAY("Verdammt, Beeilung! Ich hab hier lange genug rumgestanden. %NPC_NAME(0) wird die Bezahlung regeln.")
				SAY("Warum hat das so lange gedauert? %NPC_NAME(0) sagte, Sie koennen sich bei ihm den Lohn abholen.")
				ACTIVATEDIALOGTRIGGER(1)	
				SETNEXTDIALOGSTATE(5)
				ENDDIALOG()
			end
	NODE(4)
		SAY("Bitte nutzen Sie die Terminals fuer allgemeine Informationen. Danke.")
		SAY("Ein schoenen Tag noch.")
		SAY("Bye.")
		ENDDIALOG()
	NODE(5)
		SAY("Hey was machen Sie noch hier? Los gehen Sie zu %NPC_NAME(0) um Ihre Belohnung abzuholen.")
		ENDDIALOG()
end
