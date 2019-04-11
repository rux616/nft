--************************
--name   : SINGLE_DEL_TS_01.lua
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
		SAY("Ich moechte, dass Sie dieses Paket zu %NPC_NAME(1) in %NPC_WORLD(1) bringen. Es ist eine private Angelegenheit, aber trotzdem sehr wichtig. Kommen Sie wieder, nachdem Sie es dem Empfaenger gegeben haben.")
		SAY("Hey Runner, dieses Paket muss zu %NPC_NAME(1) in %NPC_WORLD(1), eine private Sache, aber nicht weniger wichtig. Komm nach der Lieferung wieder her.")
		SAY("Gut. %NPC_NAME(1) in %NPC_WORLD(1) braucht das Paket. Liefere es und komm dann wieder.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(1)
			if (result==0) then
				SAY("Auch wenn das eine private Sache ist, heisst das nicht, dass es nicht wichtig ist... so wichtig, dass ich durchdrehen werde, wenn es nicht rechtzeitig und in einem Stueck ankommt...")
				SAY("Ich hab jetzt keine Zeit fuer Sie. Bringen Sie das Paket endlich zu %NPC_NAME(1) in %NPC_WORLD(1).")
				SAY("Hey-o. Was vergessen, Jingo? Vielleicht %NPC_NAME(1) in %NPC_WORLD(1)? Also stehen Sie hier nicht rum, sondern beeilen Sie sich etwas.")
				SAY("Bringen Sie das Paket endlich zu %NPC_NAME(1). Schnell.")
				ENDDIALOG()
			else
				GIVEMONEY()
				SAY("Runner, %NPC_NAME(1) rief an und bestaetigte die Lieferung. Sie haben meinen persoenlichen Dank in dieser Angelegenheit verdient. %REWARD_MONEY() Credits wurden auf Ihr Konto ueberwiesen.")
				SAY("Hey-o. %NPC_NAME(1) hat die Lieferung bestaetigt und ich habe Ihnen die %REWARD_MONEY() Credits bereits ueberwiesen. Ich danke Ihnen.")
				SAY("Die Lieferung wurde bestaetigt und das Geld, %REWARD_MONEY() Credits, auch soeben auf Ihr Konto ueberwiesen. Danke für die schnelle Hilfe. Man sieht sich.")
				SAY("Runner, %REWARD_MONEY() Credits wurden Ihrem Konto gutgeschrieben. Gute Arbeit.")
				SAY("Hey-o Runner, gut gemacht. Die Zahlung von %REWARD_MONEY() Credits ist soeben erfolgt. Schauen Sie auf den Terminals nach, wenn Sie weitere Jobs suchen. Man sieht sich.")
				ACTIVATEDIALOGTRIGGER(2)
				ENDDIALOG()
			end
	NODE(3)
		TAKEQUESTITEM(91)
			if (result==0) then
				SAY("%NPC_NAME(0) schickt mir ein Paket? Gut, wo ist es?")
				SAY("Hatten Sie nicht ein Paket für mich? Vergessen, mitzubringen?")
				SAY("Geben Sie mir sofort das Paket oder ich sage %NPC_NAME(0), dass Sie es gestohlen haben.")
				ENDDIALOG()
			else	
				SAY("Danke fuer die Hilfe mit dem Paket, Runner. %NPC_NAME(0) wird Sie fuer den Job bezahlen.")
				SAY("Kommt das von %NPC_NAME(0)? Ok, er wird Ihnen auch das Geld für die Lieferung geben.")
				SAY("Ah, ja. Darauf hab ich gewartet. %NPC_NAME(0) wird Sie hoffentlich dafuer belohnen.")
				SAY("Danke. %NPC_NAME(0) wird Sie bezahlen muessen, da ich gerad kein Geld bei mir habe.")
				SAY("Ah, schoen. %NPC_NAME(0) regelt die Bezahlung.")
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


