--************************
--name   : SINGLE_AS_TS_02.lua
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
		GENDERCHECK()
			if (result==1) then -- Player is Man:
				SAY("Bist Du geschaeftlich hier, Mister?")
				SAY("Hey Mister, kann ich Dir helfen?")
				SAY("Ja? Was ist, Runner?")
				SAY("Willkommen in meinem Buero, Mister, was kann ich fuer Dich tun?")
				SAY("Hey, Runner, suchst Du vielleicht einen Job?")
				
				ANSWER("Oh, ich schaue mich nur etwas um, danke.",1)
				ANSWER("Was koennen Sie mir ueber diesen Ort sagen?",1)
				ANSWER("Hey. Was ist das hier fuer ein Ort?",1)
				ANSWER("Oh, entschuldigung, ich dachte Sie waeren jemand anderes.",1)
				ANSWER("Ja, wegen des Jobs...",2)
				ANSWER("Ok, ich hoerte, Sie brauchen einen Killer.",2)
				ANSWER("Nun, ich bin wegen des Auftrags hier.",2)

			else    -- Player is a Woman:
				SAY("Hey, Suesse! Was fuer eine nette Ueberaschung. Was kann ich fuer Dich tun?")
				SAY("Willkommen! Komm in mein Buero. Wie kann ich Dir helfen, Kleine?")
				SAY("Hallo. Bist Du wegen des Jobs hier, Runner?")
				SAY("Hey Kleine, was kann ich fuer Dich tun?")
				SAY("Bist Du sicher, dass Du im richtigen Buero gelandet bist? Taenzerinnen koennen sich unten bewerben...")
				
				ANSWER("Ich schaue mich nur etwas um, danke.",1)
				ANSWER("Was koennen Sie mir ueber diesen Ort sagen?",1)
				ANSWER("Nette Gegend, was tun Sie hier?",1)
				ANSWER("Entschuldigen Sie, ich habe Sie mit jemandem verwechselt.",1)
				ANSWER("Ja, ich komme wegen des Jobs.",2)
				ANSWER("Hallo, im Terminal stand, ich solle mich wegen des Auftrags an Sie wenden.",2)

			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Hoer zu. Wenn Du nur hier herumstehen willst, kannst Du das genausogut in einem der Clubs tun, ok?")
				SAY("Komm endlich zum Geschaeftlichen oder verschwinde. Ich versuche hier zu arbeiten.")
				SAY("Geh an eines der Terminals, um mehr ueber Tsunami zu erfahren, kapiert?")
				SAY("Bis dann, Runner.")
				ENDDIALOG()
			else
				SAY("Hoer zu. Wenn Du nur hier herumstehen willst, kannst Du das genausogut in einem der Clubs tun, ok?")
				SAY("Du kamst hier her, nur um mich anzustarren? Ich weiss, dass ich gut aussehe, aber das ist einfach nur dumm, bis dann...")
				SAY("Geh an eines der Terminals, um mehr ueber Tsunami zu erfahren. Bis spaeter, Kleine.")
				SAY("War nett, Dich kennenzulernen, bis spaeter dann...")
				ENDDIALOG()
			end
	NODE(2) -- Giving Mission
			SAY("Es gibt da diesen... Konkurrenten %NPC_NAME(1), der dringend von einem Killer besucht werden muesste. Er haelt sich meistens in %NPC_WORLD(1) auf. Wir von Tsunami wuerden es sehr schaetzen, wenn Du diese Sache in die Hand nehmen koenntest. Stelle sicher, dass das Ziel auch wirklich erledigt ist und komm dann wieder her.")
			SAY("Wir brauchen Deine Hilfe bei der Beseitigung eines Konkurrenten namens %NPC_NAME(1), der sich in %NPC_WORLD(1) aufhaelt. Mach ihn richtig fertig und sorge ruhig fuer etwas Aufsehen dabei. Komm wieder, wenn Du ihn erledigt hast.")
			SAY("Wir brauchen Deine Hilfe bei der Beseitigung eines gewissen %NPC_NAME(1) der sich wahrscheinlich in %NPC_WORLD(1) aufhaelt. Mach ihn alle, sorge dafuer, dass es einiges an Aufsehen erregt und komm dann wieder her.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
		
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- Mission is not accomplished
				SAY("Hey, Ich habe Dir gesagt, Du sollst %NPC_NAME(1) fertigmachen, oder etwa nicht? Also was willst Du hier?")
				SAY("Hey Runner, Du erledigst %NPC_NAME(1) jetzt besser. Wir duerfen uns keine Fehler erlauben.")
				SAY("Ich habe keine Zeit, mit Dir zu plaudern. Sieh zu, dass Du Deinen Auftrag erledigst.")
				SAY("Hey, ich hoffe der Job entwickelt sich gut. Das waere zu Deinen Gunsten...")
				ENDDIALOG()
			else -- Mission was accomplished
				SAY("Hey. Mir wurde gesagt, %NPC_NAME(1) wird kein Problem mehr darstellen. Gut. %REWARD_MONEY() Credits werden auf Dein Konto ueberwiesen. Behalte die Terminals nach mehr Arbeit im Auge.")
				SAY("Samurai, man sagt, Du haettest %NPC_NAME(1) erledigt, wie ich es Dir gesagt habe. Die %REWARD_MONEY() Credits werden auf Dein Konto ueberwiesen. Du warst uns eine grosse Hilfe.")
				SAY("Hey, Runner. %NPC_NAME(1) weilt nicht mehr unter den Lebenden. Das Syndikat ist Dir fuer Deine Hilfe sehr dankbar. Wir ueberweisen %REWARD_MONEY() Credits auf Dein Konto. Es war ein Vergnuegen, mit Dir Geschaefte zu machen.")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
				ENDDIALOG()
			end
end
						
		
			

