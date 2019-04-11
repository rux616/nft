--************************
--name   : SINGLE_DEL_TG_02.lua
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
		SAY("Hey, bist du der Runner für die Lieferung?")
		SAY("Bist du wegen dem Botenjob hier?")
		SAY("An diesem Paket verbrenne ich mir noch die Haende. Sag mir, dass du derjenige bist, der es liefern soll.")
		SAY("Wenn du nicht der Runner für die Lieferung bist, hab ich dir nichts zu sagen.")
		SAY("Das einzige, was ich jetzt von dir hoeren will, ist, wo das Paket hin soll. Bitte sag mir, dass du deswegen hier bist.")
		SAY("Ich erhielt heute frueh die Nachricht, das jemand fuer einen Lieferjob kommt. Bist du das?")
		
		ANSWER("Treffer! Ich komme wegen dem Lieferjob. Sag mir einfach, was zu tun ist.",1)
		ANSWER("Bingo. Wenn du was loswerden willst, bin ich der Richtige.",1)
		ANSWER("Du willst dieses Paket loswerden? Gibs mir und ich erledige das.",1)
		ANSWER("Sorry, ich bin der Falsche.",4)
		ANSWER("Sorry, diese gewaltlosen Jobs sind totaler Schrott.",4)
		ANSWER("Sorry Kumpel, ich erledige nur die heissen Sachen.",4)
	NODE(1)
		GIVEQUESTITEM(91)
		SAY("Du glaubst nicht, wie froh ich bin, dich zu sehen. Dieses Paket muss extrem dringend geliefert werden, verstanden? Die Kontaktperson heisst %NPC_NAME(1) und sollte sich irgendwo in %NPC_WORLD(1) befinden. Bring das Paket hin und dann komm schleunigst wieder her, um deine Creds abzuholen!")
		SAY("%NPC_NAME(1), merk dir diesen Namen. Das Paket muss zu dieser Person. Erledige das so schnell wie moeglich und komm dann wieder, damit wir die Bezahlung regeln können. Dann kannst du dir bald auch neues Spielzeug leisten. Oh, fast vergessen! %NPC_NAME(1) haengt normalerweise in %NPC_WORLD(1) rum. Nun los, Runner.")
		SAY("Schon mal diese total verstrahlten Mutanten in den Wastes gesehen? Wenn nicht, kannst du sie dir aber sicher vorstellen. Du weißt, dass sie mal Menschen waren, richtig? Oh yeah! Die Strahlung verursacht schon seltsame Dinge, wenn man ihr zu lange ausgeliefert ist. Ok, ich garantiere dir, dass ich dich nackt in den Wastes spazieren lasse, wenn das Paket nicht rechtzeitig ankommt. Das Paket soll zu %NPC_NAME(1), der auf dich in %NPC_WORLD(1) wartet. Wenn ich du waere, wuerde ich jetzt anfangen, zu rennen.")
		SAY("Der Guardian will, dass dieses Paket ausgeliefert wird. Eigentlich kein Problem, aber unser Leute, die das normalerweise machen, sind alle beschaeftigt. Deswegen vergeben wir diese Aufgabe an einen Runner. Dabei kommst du ins Spiel. Bring das Paket zu %NPC_NAME(1) in %NPC_WORLD(1). Keine Fragen, keine weiteren Antworten. Wenn du fertig bist, wartet hier einen nette Belohnung auf dich.")
		SAY("Gut, ich hab schon lange genug gewartet. Dieses Paket muss zu %NPC_NAME(1). Meinen Informationen zufolge, findest du die Person in %NPC_WORLD(1). Suche dort. Wenn du das Paket sicher ans Ziel gebracht hast, wird dich der Guarian grosszuegig für deine Dienste belohnen.")
		SAY("Doch noch geschafft, Chummer? Ich hab schon vor einer ganzen Weile bei den Netrunnern jemanden angefordert, der uns helfen kann. Also, der Name des Empfaengers ist %NPC_NAME(1) in %NPC_WORLD(1). Nun zieh los und versuche, in der Zeit zu bleiben. Wenn du das schaffst, bekommst du von mir die Creds fuer den Job.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(1)
			if (result==0) then
				SAY("Ich hab dir schon den Namen und die Adresse gegeben, also bring den Job zu Ende! Zu %NPC_NAME(1) in %NPC_WORLD(1), wenn du das vergessen hast.")
				SAY("%NPC_NAME(1) hat mir noch keine 'Danke für das Paket' Nachricht geschickt, also hast du deinen Job noch nicht beendet. Setz dich endlich in Bewegung!")
				SAY("Warum zum Teufel haengst du hier noch rum? Finde den Empfaenger in %NPC_WORLD(1)!")
				ENDDIALOG()
			else
				SAY("Ich hab den Job als erledigt makiert und schon ist ein neuer da. Manchmal fuehle ich mich wie eine vollautomatische KI, die stupide Rechenaufgaben loest. Aber ich denke, dich interessiert sowieso nur das Geld. Also hier, %REWARD_MONEY() Credits. Denk dran, immer erst zum Guardian zu kommen, wenn du neue Jobs suchst.")
				SAY("Gut, wieder ein Auftrag weniger auf der Liste. Es sind jetzt auch %REWARD_MONEY() Credits mehr auf deinem Konto. Danke fuer die Hilfe, Freund!")
				SAY("Egal, wie gut die Computer werde, sie stuerzen immer noch genau im falschen Moment ab. Aber ich beschwere mich ja nicht! Bei den ganzen verrueckten Netrunnern, die es inzwischen gibt, traue ich einem absolut abgeschottetem Jobsystem genauso wenig, wie den Nachrichten der CityAdmin. Aber schau dich an. Du hast trotz allem einen Job erledigt. Hier sind deine %REWARD_MONEY() Credits fuer die Leiferung. Schau wieder bei den Guardians vorbei, wenn du weitere Arbeit suchst.")
				SAY("Hunh?! Oh! Sorry... war kurz weggetreten. Dieser verdammte Job verweichlicht mich! Wenn ich in ein Kampfgebiet muesste, wuerde ich vermutlich mit der Haelfte meiner Eingeweide im Rucksack zurueck kommen, wenn von mir ueberhaupt was uebrig bleibt. Diese verdammten neuen Waffen... Egal, hier sind die %REWARD_MONEY() Credits. Halt deine Ohren offen. Die Revolution wird kommt!")
				SAY("Gut, ich erhielt gerade die Bestaetigung von %NPC_NAME(1). Wegen dem Geld...ich hab %REWARD_MONEY() Credits auf dein Konto ueberwiesen. Der Guardian dankt dir fuer die Hilfe, Freund. Wir koennten mehr Leute mit deine moralischen Auffassung gebrauchen.")
				SAY("Was war deine Auftrag? %NPC_NAME(1) in %NPC_WORLD(1)? Okay, gut. Diese Lieferung wurde vor ein paar Minuten bestaetigt. Hier sind deine Creds, %REWARD_MONEY() um genau zu sein. Nun entschuldige mich, ich hab zu tun.")
				ACTIVATEDIALOGTRIGGER(2)
				ENDDIALOG()
			end
	NODE(3)
		TAKEQUESTITEM(91)
			if (result==0) then
				SAY("Erzaehl miir nicht, dass du mein Paket vergessen hast!")
				SAY("Wenn ich nicht bald das Paket sehe, wirst du einen exklusiven Blick auf deine Eingeweide werfen koennen.")
				SAY("Wenn du mein Paket verloren hast, was zum Teufel suchst du dann hier? Raus und finde es!")
				ENDDIALOG()
			else	
				SAY("Ist das das Paket von den Guardians? Grossartig! Sie sagten, sie haben niemanden fuer den Job, aber anscheinend ja doch. Danke nochmal. Ich fuehl mich ein wenig schlecht, dass ich dir nichts dafuer geben kann, aber ich denke, dein Auftraggeberr wird dich schon entsprechend entlohnen.")
				SAY("Phew... als die mir sagten, dass niemand liefern kann, dachte ich schon, ich muss Wochen auf mein Paket warten. Danke, dass du die Sache beschleunigt hast. Dein Auftraggeber wird dir deinen Lohn zahlen.")
				SAY("Gut, das Paket. Koordiniert immer noch %NPC_NAME(0) die Lieferungen für den Guardian? Ha! Oh, wir kommen vom Thema ab... du musst ja noch dein Geld abholen. Ich will dich nicht weiter mit alten Geschichten aufhalten.")
				SAY("Danke. Ich wuerde mich ja noch mit dir unterhalten, aber ich bin gerade sehr beschaeftigt. Und wenn ich mich an meine Tage als Runner erinnere, hast du noch etwas vor. Ich hab die Bestaetigung der Lieferung schon an %NPC_NAME(0) geschickt, als ich dich kommen sah. Er wird das Geld fuer dich bereit halten.")
				SAY("Ah richtig! Du musst mich entschuldigen. Ich habe da einen komplizierten Job zu erledigen, der meine ganze Konzentration erfordert. Keine Angst wegen der Bezahlung. Ich schicke die Bestaetigung gleich an %NPC_NAME(0). Deine Credits werden dann bei ihm fuer dich bereit liegen.")
				SAY("Ah! Ein Runner. Dachte, alle Guardian sind derzeit mit irgendwas beschaeftigt. Egal, ich werd die Bestaetigung der Lieferung an %NPC_NAME(0) senden. Hol dir dein Geld dort ab.")
				ACTIVATEDIALOGTRIGGER(1)
				SETNEXTDIALOGSTATE(5)
				ENDDIALOG()
			end
	NODE(4)
		SAY("Schade. Wenn du deine Meinung aenderst, weisst du, wo du mich findest.")
		SAY("Diese Netrunner sagten, dass sie bald jemanden vorbei schicken. Wer auch immer das ist, ich hoffe, er kommt bald. Sorry fuer die Verwechslung.")
		SAY("Ok, wenn du nicht der Runner bist, muss ich auf Wiedersehen sagen. Ich muss meine Augen nach dem Richtigen offenhalten, damit ich ihn nicht verpasse.")
		ENDDIALOG()
	NODE(5)
		SAY("Hey was machst Du noch hier? Los geh zu %NPC_NAME(0) um Deine Belohnung abzuholen.")
		ENDDIALOG()
end