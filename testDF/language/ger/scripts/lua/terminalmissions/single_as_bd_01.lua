--************************
--name   : SINGLE_AS_BD_01.lua
--ver    : 0.1
--author : Ferron
--date   : 2004/09/14
--lang   : de
--desc	 : terminal mission
--npc    :
--************************
--changelog:
--2004/09/14(0.1): edited the TS script to build this BD one
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
				SAY("Geh an eines der Terminals, um mehr ueber BlackDragon zu erfahren, kapiert?")
				SAY("Bis dann, Runner.")
				ENDDIALOG()
			else
				SAY("Hoer zu. Wenn Du nur hier herumstehen willst, kannst Du das genausogut in einem der Clubs tun, ok?")
				SAY("Du kamst hier her, nur um mich anzustarren? Ich weiss, dass ich gut aussehe, aber das ist einfach nur dumm, bis dann...")
				SAY("Geh an eines der Terminals, um mehr ueber Blackdragon zu erfahren. Bis spaeter, Kleine.")
				SAY("War nett, Dich kennenzulernen, bis spaeter dann...")
				ENDDIALOG()
			end
	NODE(2) -- Giving Mission
			SAY("Wir haben da ein Problem mit einem Typen namens %NPC_NAME(1), der sich normalerweise in %NPC_WORLD(1) aufhaelt. Besorg es diesem Bastard. Komm nicht wieder, bevor %NPC_NAME(1) in einer Kiste liegt.")
			SAY("Wir benoetigen Deine Muskeln fuer die Beseitigung eines gewissen %NPC_NAME(1), Runner. Du findest ihn wahrscheinlich in %NPC_WORLD(1). Mach diesen Penner alle und mach es richtig. Komm wieder, wenn er in einer Kiste liegt.")
			SAY("Runner, BlackDragon braucht Deine Hilfe bei der Beseitigung eines Typen mit Namen %NPC_NAME(1). Der Bastard haelt sich wahrscheinlich in %NPC_WORLD(1) auf. Finde ihn und mach ihn richtig fertig. Danach kommst Du wieder zu mir.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
		
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- Mission is not accomplished
				SAY("Hey, Du sollst den Typen allemachen, erinnerst Du dich? Sieh zu, dass Du damit fertig wirst. Jetzt!")
				SAY("Hey Runner, Mache %NPC_NAME(1) endlich fertig. Wenn der Bastard entkommt, hast Du ein grosses Problem...")
				SAY("Ich habe keine Zeit, mit Dir zu plaudern. Sieh zu, dass Du Deinen Auftrag erledigst.")
				SAY("Mach den Bastard alle, oder Du wirst Dich sehr bald in einer Welt des Schmerzes wiederfinden.")
				ENDDIALOG()
			else -- Mission was accomplished
				SAY("Hallo, Samurai. Man hat mich informiert, dass %NPC_NAME(1) so tot ist, wie man nur sein kann. Gut gemacht. Wir haben %REWARD_MONEY() Credits auf Dein Konto ueberwiesen. Schoenen Tag noch.")
				SAY("Man sagt, Du haettest %NPC_NAME(1) erledigt. Man sagt auch, Du haettest es sehr professionell gemacht, Samurai. Die %REWARD_MONEY() Credits wurden auf Dein Konto ueberwiesen. Wir sind Dir fuer Deine Hilfe sehr dankbar.")
				SAY("Hey, Runner. %NPC_NAME(1) weilt nicht mehr unter den Lebenden. Das Syndikat ist Dir fuer Deine Hilfe sehr dankbar. Wir ueberweisen %REWARD_MONEY() Credits auf Dein Konto. Es war ein Vergnuegen, mit Dir Geschaefte zu machen.")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
				ENDDIALOG()
			end
end
						
		
			

