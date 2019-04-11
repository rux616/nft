--************************
--name   : SINGLE_DEL_TS_02.lua
--ver    : 0.2
--author : Ferron
--date   : 2004/09/14
--lang   : de
--desc	 : terminal mission
--npc    :
--************************
--changelog:
--2004/09/14(0.2): edited TS script to build this BD version (ferron)
--2004/09/08(0.1): recheck(Ferron)
--YYYY/MM/DD(0.0)
--************************

function DIALOG()

	NODE(0)
		SAY("Haben Sie hier etwas geschaeftliches zu erledigen?")
		SAY("Hey-o. Wobei kann ich Ihnen helfen?")
		SAY("Ja? Was wollen Sie, Runner?")
		SAY("Willkommen in meinem Buero. Wie kann ich behilflich sein?")
		SAY("Hey-o Runner, kommen Sie zu mir wegen dem Botenjob?")
		
		ANSWER("Ja, ich wollte diesen Lieferjob.",1)
		ANSWER("Yeah, ich hoerte, Sie brauchen einen Lieferanten. Geben Sie mir einfach die Ladung und die Informationen dazu...",1)
		ANSWER("Sorry, ich hab schon einen Job.",4)
		ANSWER("Suchen Sie sich besser jemand anderen. Ich hatte nicht vor, Ihnen zu helfen.",4)
		ANSWER("Schau Bruder, seh ich wie ein Laufbursche aus? Sowas mach ich nicht.",4)
	NODE(1)
		GIVEQUESTITEM(91)
		SAY("Wir haben es geschafft, ein paar pikante Details ueber unseren Kunden %NPC_NAME(1) in %NPC_WORLD(1) in Erfahrung zu bringen. Geben Sie ihm dieses Paket und verschwinden Sie dann. Besser, Sie warten nicht, bis er es oeffnet. Kommen Sie wieder, wenn Sie damit fertig sind.")
		SAY("Runner, Ich habe hier ein Paket das zu %NPC_NAME(1) in %NPC_WORLD(1) muss. Der Inhalt ist ziemlich pikant, also ist es besser, Sie sind nicht mehr da, wenn es geoeffnet wird. Kommen Sie zu mir, wenn Sie das erledigt haben.")
		SAY("Runner, Black Dragon hat ein paar schmutzige Sachen ueber %NPC_NAME(1) in %NPC_WORLD(1) in Erfahrung bringen koennen. Der Inhalt dieses Paketes, dass Sie ihm geben sollen, wird ihm nicht gefallen. Liefern Sie es ab und dann verschwinden Sie da, so schnell Sie koennen. Er wird bestimmt nicht sehr erfreut sein.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(1)
			if (result==0) then
				SAY("Haben Sie Angst, oder was? Der Bastard ist nicht gefaehrlich, solange Sie nach der Leiferung schnell genug abhauen. Bewegung!")
				SAY("Beeilen Sie sich und liefern Sie das Paket ab. Ich bin neugierig, wie %NPC_NAME(1) darauf reagieren wird.")
				SAY("Hey-o. Vergessen, wo Sie hin wollten, Jingo? Zu %NPC_NAME(1) in %NPC_WORLD(1). Vergessen Sie nicht, dort auch wieder schnell zu verschwinden.")
				SAY("Liefern Sie das Paket an %NPC_NAME(1). Heute noch.")
				ENDDIALOG()
			else
				SAY("Hey-O Runner. %NPC_NAME(1) bestaetigte die Leiferung, wenn man das so sagen kann. Gut gemacht und hoffentlich kamen Sie schnell genug weg. %REWARD_MONEY() Credits wurden auf Ihr Konto ueberwiesen. Man sieht sich.")
				SAY("Hey-o. %NPC_NAME(1) rief mich an, also nehme ich mal an, dass das Paket angekommen ist. %REWARD_MONEY() Credits werden Ihrem Konto gutgeschrieben. Black Dragon dankt Ihnen fuer die gute Arbeit.")
				SAY("Die Lieferung wurde bestaetigt und Ihre Bezahlung von %REWARD_MONEY() Credits auf Ihr Konto ueberwiesen. Black Dragon ist Ihnen fuer die Unterstützung dankbar. Man sieht sich.")
				SAY("Runner, %REWARD_MONEY() Credits wurden auf Ihr Konto ueberwiesen. Gut gemacht und hoffentlich werden Sie weiterhin fuer uns arbeiten.")
				SAY("Hey-o Runner. Hier sind Ihre %REWARD_MONEY() Credits. Weitere Jobs entnehmen Sie bitte unseren Terminals. Man sieht sich, hoffe ich.")
				ACTIVATEDIALOGTRIGGER(2)
				ENDDIALOG()
			end
	NODE(3)
		TAKEQUESTITEM(91)
			if (result==0) then
				SAY("Was? Ich erwarte kein Paket. Sicher, dass es fuer mich ist? Wie? Sie haben gar kein Paket dabei? Verschwinden Sie!!")
				SAY("Sie haben ein Paket fuer mich, richtig? Wo?")
				SAY("Hoeren Sie auf, mich zu nerven. Sie haben doch gar kein Paket!")
				ENDDIALOG()
			else	
				SAY("Was? Ich erwarte doch kein Paket. Seltsam...der Absender muss Sie dafuer bezahlen.")
				SAY("Nah, ich bin eigentlich der Falsche. Ich erwarte kein Paket.")
				SAY("Sicher? Fuer mich? Von wem? Hmmm....wer auch immer dies geschickt hat, wird Sie sicher auch bezahlen.")
				SAY("Danke, schaetze ich. Ich erwarte eigentlich keine Lieferung. Wer immer das geschickt hat, muss Sie auch bezahlen.")
				SAY("Ah, Ok. Ein kostenloses Paket. Was es wohl ist...")
				ACTIVATEDIALOGTRIGGER(1)	
				SETNEXTDIALOGSTATE(5)	
				ENDDIALOG()
			end
	NODE(4)
		SAY("Allgemeine Informationen erhalten Sie an unseren Terminals.")
		SAY("Wenn Sie mir nicht bei der Lieferung helfen wollen, sollten Sie besser gehen...")
		SAY("Ok, verstanden. Sie sind so eine Art Tourist, oder? Sicher..verschwinden Sie oder Sie machen Bekanntschaft mit unseren Tuerstehern...")
		ENDDIALOG()
	NODE(5)
		SAY("Hey was machst Du noch hier? Los geh zu %NPC_NAME(0) um Deine Belohnung abzuholen.")
		ENDDIALOG()
end



