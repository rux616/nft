--************************
--name   : SINGLE_AG_TG_01.lua
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
		SAY("Hallo. Du siehst so aus, als ob du mir bei einem Problem helfen koenntest.")
		SAY("Ah... ja, bist Du der Typ aus der Nachricht, die ich erhalten habe?")
		SAY("Hmm, Du siehst aus, als ob Du irgendetwas willst.")
		SAY("Ho! Kann ich Dir irgendwie helfen?")
		SAY("Hallo, kann ich Dir irgendwie helfen?")
		SAY("Hey Mann, ich wuerde wirklich gern mit Dir plaudern, aber mein Pad quillt ueber vor Nachrichten. Also machs kurz, was willst Du?")
		
		ANSWER("Ich bin wegen dem Ungezieferproblem hier. Was soll ich machen?",1)
		ANSWER("Ich will den Saeuberungsauftrag. Wofuer werde ich genau gebraucht?",1)
		ANSWER("Bist du der Kontaktmann fuer den Saeuberungsauftrag? Wenn das so ist, brauche ich die Details.",1)
		ANSWER("Sorry Mann, ich schwirr ab.",4)
		ANSWER("Oops, falsche Person. Tschuldigung.",4)
		ANSWER("Ist nichts, ich suche nach jemand anderen.",4)
	NODE(1)
		SAY("Ah, jemand, der gleich auf den Punkt kommt, nicht wahr? Eine Sekunde, lass mich auf dem Pad nachschaun... Okay, du sollst %TARGET_VALUE(0,1) %TARGET_NPCNAME(0) toeten; du solltest sie hier in der Gegend finden. Komm zu mir zurueck, wenn du fertig bist. Natuerlich wirst du nicht vergessen, dir die Belohnung abzuholen. Und hoer zu Freund, der Guardian vergisst nicht, wer ihm hilft.")
		SAY("Grossartig! Hoer zu, wir haben ein echtes Problem hier und du, mein Freund, wirst es loesen. Sieh dich in der Gegend hier um und erledige %TARGET_VALUE(0,1) %TARGET_NPCNAME(0). Wenn du fertig bist, komm hierher zurueck fuer die Bezahlung. Oh, und danke, dass du dem Guardian in dieser Angelegenheit hilfst. Du kannst dir sicher sein, dass wir nicht vergessen, wer unsere Freunde sind, wenn die Revolution beginnt.")
		SAY("Perfekt, kommen wir zu den Details, mein Fraund. Wir haben ein Ungezieferproblem hier. Geh und durchstoeber die naehere Umgebung, bis du etwas findest, dass besser mit Blei, Plasma oder was immer du benutzt, gefuettert werden sollte. Eigentlich kein Problem. Genauer gesagt sollst du %TARGET_VALUE(0,1) %TARGET_NPCNAME(0) umnieten. Wenn du damit fertig bist, hau da ab und komm hierher zurueck, damit ich dich bezahlen kann. Oh, und viel Glueck dabei; der Guardian waere nicht, was er ist, ohne Kameraden wie dich.")
		SAY("Einer von der stillen Sorte, wie? Egal, das spielt keine Rolle, die Revolution braucht jeden. Zurueck zum Thema. Fuer den Job musst du die Gegend hier durchsuchen und %TARGET_VALUE(0,1) %TARGET_NPCNAME(0) dahin zurueckschicken, wo auch immer sie hergekommen sind. Wenn sie alle unter der Erde sind, wartet hier bei mir deine Belohnung auf dich.")
		SAY("Verdammt, das hat ja gedauert, bis die Computerjunkies mal jemanden hier runter schicken. Diese Net Heads sind absolut nutzlos in der realen Welt... aber auf ihrem Gebiet genau die Richtigen. Ich hab gehoert, dass sie Reza manchmal ordentlich einheizen. Okay, der Job. Schaun wir mal. Ah, hier sind die Daten. Der Bewerber - das bist du, Chummer - soll mindestens %TARGET_VALUE(0,1) %TARGET_NPCNAME(0) toeten und dann zu seinem Kontakt zurueckkommen - welcher ich bin, falls du das nicht verstanden hast - um seine Belohnung abzuholen. Das ist alles. War das fuer dich verstaendlich genug?")
		SAY("Was?! Oh, der Job, ja. Schau dich in der Gegend hier um und finde %TARGET_VALUE(0,1) %TARGET_NPCNAME(0). Wenn du sie gefunden hast, nutze deine Fantasie; es wird wohl nicht ohne eine gewissen Laermpegel abgehen, herumfliegende Fetzen, zuckende Energieblitze... oder irgend etwas Scharfes. Nu´zieh schon los! Achso, wenn du damit fertig bist und zurueck kommst, wirst du um ein paar Credits reicher sein.")
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				SAY("Wie? Was willst du hier? Ich sehe keine Leichen und keine Leichen bedeutet, dass der Job noch nicht erledigt ist. Also geh raus und beende den Job.")
				SAY("Schau, ich habe noch andere Sachen zu tun und du verschwendest meine Zeit. Erledige den Job, dann koennen wir reden.")
				SAY("Als ich das letzte mal nachgesehen habe, wurde Neocron immer noch tyrannisiert. Also erledige deinen Job und ich kuemmere mich um meine Angelegenheiten.")
				ENDDIALOG()
			else
				SAY("Gratulation, Chummer. Du hast mir echt geholfen. Hier sind deine %REWARD_MONEY() Creds fuer die Arbeit. Wenn es in Neocron mehr von deiner Sorte gaebe, waere dieser Bastard Reza niemals an die Macht gekommen. Aber keine Sorge, Kamerad, die Freiheit wird wieder uns gehoeren!")
				SAY("Gute Arbeit, Hier sind deine %REWARD_MONEY() Credits. Ich hoffe, du bist damit zufrieden. Der Widerstand lebt, mein Freund!")
				SAY("Ha! Dieses Ungeziefer wird niemanden mehr in naechster Zeit belaestigen. Hier sind die %REWARD_MONEY() Credits fuer deine Hilfe. Und Kamerad, halte die Hoffnung am Leben, unsere Zeit wird kommen!")
				SAY("Dank dir, jetzt ist es schon deutlich ruhiger hier. Nimm die %REWARD_MONEY() Credits als Belohnung fuer deine Hilfe. Nieder mit Reza und Freiheit fuer die Menschen! Und eine ruhige Nacht fuer mich...")
				SAY("Was willst du?! Oh, es geht um den Job, oder? Okay, %REWARD_MONEY() Creds sollten genug sein, fuer die Arbeit, die du geleistet hast. Nun zisch ab, ich hab zu tun.")
				SAY("Erledigt? Gut, deinem Konto wurden gerade %REWARD_MONEY() Credits gutgeschrieben. Der Guardian dankt dir fuer deine Hilfe. Haetten wir tausend von deiner Sorte, waere Neocron in einem Tag befreit.")
				ACTIVATEDIALOGTRIGGER(1)
				ENDDIALOG()
			end
	NODE(4)
		SAY("Verdammt, jeder in dieser Stadt muss mich belaestigen. Okay, egal.")
		SAY("Ich denke, du bist nicht die Person, nach der ich gesucht habe. Nun lass mich meine Arbeit machen.")
		SAY("Ok, komm zurueck, wenn du deine Meinung geaendert hast. In der Zwischenzeit hoer auf, andere Leute zu nerven; nicht alle sind so nett wie ich.")
		ENDDIALOG()
end