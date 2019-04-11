--************************
--name   : SINGLE_DEL_CA_01.lua
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
		SAY("Es ist sehr wichtig, dass %NPC_NAME(1) in %NPC_WORLD(1) dieses Paket bekommt. Nach der Lieferung kommen Sie zur Auswertung hierher zurueck.")
		SAY("Runner,  %NPC_NAME(1) wartet in %NPC_WORLD(1) auf dieses Paket. Wenn Sie es abgeliefert haben, melden Sie sich wieder hier.")
		SAY("Runner, %NPC_NAME(1) in %NPC_WORLD(1) braucht dieses Paket, jetzt. Kommen Sie nach der Lieferung zu Auswertung hierher zurueck.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(1)
			if (result==0) then
				SAY("Die City Admin moechte, dass Sie das Paket ausliefern. Das haben Sie auch so akzeptiert. Jetzt bringen Sie es zu Ende oder unsere CopBots werden sich um Sie kuemmern muessen.")
				SAY("%NPC_NAME(1) wartet auf dieses Teil. Besser Sie liefern endlich oder ich sorge dafuer, dass Sie in dieser Stadt nie wieder arbeiten.")
				SAY("Sie sollten doch das Paket zu %NPC_NAME(1) in %NPC_WORLD(1) bringen. Was machen Sie dann noch hier?")
				SAY("Liefern Sie endlich, jetzt!")
				ENDDIALOG()
			else
				SAY("Runner, %NPC_NAME(1) bestaetigte die Lieferung. Die Standardbezahlung von %REWARD_MONEY() Credits wurde ueberwiesen. Danke fuer die Unterstuetzung der City Admin.")
				SAY("Runner, %NPC_NAME(1) bestaetigte die Lieferung und die Standardbezahlung von %REWARD_MONEY() Credits wurde ueberwiesen. Danke fuer die Hilfe im Namen Reezas und der Menschen!")
				SAY("Die Lieferung wurde bestaetigt und die Standardbezahlung von %REWARD_MONEY() Credits wurde auf Ihr Konto ueberwiesen. Die City Admin dankt Ihnen fuer die Hilfe.")
				SAY("Runner, ich habe Ihnen die Standardsumme von %REWARD_MONEY() Credits ueberwiesen als Bezahlung fuer den gut ausgefuehrten Job. Seien Sie stolz, dass Sie Reeza und den Menschen einen Dienst erwiesen haben!")
				SAY("Runner, gut gemacht. Die Aufklaerung bestaetigt die Lieferung. Die Standardbezahlung von %REWARD_MONEY() Credits wurde ueberwiesen. Schauen Sie auf unseren Terminals nach, wenn Sie weitere Arbeit suchen.")
				ACTIVATEDIALOGTRIGGER(2)
				ENDDIALOG()
			end
	NODE(3)
		TAKEQUESTITEM(91)
			if (result==0) then
				SAY("Wenn Sie ein Paket an mich liefern sollten, haetten Sie es besser mitgebracht, oder?")
				SAY("Ein Paket fuer mich. Schoen. Wo ist es?")
				SAY("Ich bin ziemlich beschaeftigt. Wenn Sie ein Paket fuer mich haben, bringen Sie es her..schnell.")
				ENDDIALOG()
			else	
				SAY("Ein Paket von den City Admin? Fuer mich? Sind Sie sich da ganz sicher? Es tickt...ich hab doch gar keine Uhr bestellt. Danke, Bruder!")
				SAY("Von den City Admin? Ok. %NPC_NAME(0) wird die Bezahlung regeln.")
				SAY("Danke. %NPC_NAME(0) wird Sie hoffentlich fuer die Lieferung bezahlen.")
				SAY("Grossartig, das Paket! %NPC_NAME(0) wird Sie entsprechend bezahlen.")
				SAY("Wie? Ich erwarte keine Lieferung. Klingt wie eine Uhr... Hmm. %NPC_NAME(0) wird dich bezahlen muessen, auch wenn ich das hier nicht bestellt habe...")
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
