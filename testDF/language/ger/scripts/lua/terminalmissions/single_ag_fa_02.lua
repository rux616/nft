--************************
--name   : SINGLE_AG_FA_02.lua
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
		SAY("Hallo, was kann ich fuer Sie tun?")
		SAY("Gruesse, kann ich Ihnen helfen?")
		SAY("Ja? Wie kann ich helfen?")
		SAY("Brauchen Sie irgendetwas?")
		
		ANSWER("Yeah, ich hab mich fuer eine Ungezieferbeseitigung eingeschrieben.",1)
		ANSWER("Ich hab mich fuer einen Job gemeldent, bei dem ich mich um Ungeziefer kuemmern soll und das Terminal hat mich an Sie verwiesen.",1)
		ANSWER("Dem Terminal zufolge soll ich mich hier wegen der Ungezieferbeseitigung melden.",1)
		ANSWER("Ach nichts. Bye.",3)
	NODE(1)
		SAY("%TARGET_NPCNAME(0) haben grundlos Leute angegriffen. Wir muessen versuchen, Ihre Zahl stark zu minimieren. Toeten Sie mindestens %TARGET_VALUE(0,1). Hier erhalten Sie danach Ihren Lohn.")
		SAY("Die hiesige Population von %TARGET_NPCNAME(0) ist auﬂer Kontrolle geraten und wir versuchen, der Sache Herr zu werden. Sie muessen %TARGET_VALUE(0,1) toeten, um das Geld zu verdienen.")
		SAY("Die hohe Population von %TARGET_NPCNAME(0) schraenkt unsere Expansion in andere Gebiete ein. Wir brauchen Sie, um mindestens %TARGET_VALUE(0,1) von denen auszurotten. Dann koennen unsere Kundschafter ihre Arbeit fortsetzen.")
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				SAY("Ich wuerde mich gern unterhalten, aber wir haben beide unsere Jobs zu erledigen. Wo wir gerade davon reden....sollten Sie nicht ein paar Plagegeister umnieten?")
				SAY("Sie erhalten fuer diese Mission erst das Geld, wenn Sie sie beendet haben.")
				SAY("Sie haben noch nicht genug getoetet. Kommen Sie erst wieder, wenn das erledigt ist.")
				SAY("Sind Sie irgendwo falsch abgebogen? Sie werden hier keine dieser Kreaturen finden...")
				ENDDIALOG()
			else
				SAY("Gute Arbeit. Hier ist Ihr Geld, %REWARD_MONEY() Credits. Wenn Sie nach mehr Arbeit suchen, sind unsere Terminals der richtige Ort dafuer.")
				SAY("Gut gemacht. Das sollte sie fuer eine Weile im Zaum halten... %REWARD_MONEY() Credits wurden auf Ihr Konto ueberwiesen. Viel Glueck noch.")
				SAY("Exzellent. Hier sind Ihre %REWARD_MONEY() Credits fuer diesen Job. Wir koennten mehr von Ihrer Sorte gebrauchen. Wenn Sie an weiteren Jobs interessiert sind, versuchen Sie es an den Terminals.")
				ACTIVATEDIALOGTRIGGER(1)
				ENDDIALOG()
			end
	NODE(3)
		SAY("Bye.")
		SAY("Ich bin beschaeftigt. Wenn Sie nichts wichtiges wollen, suchen Sie sich bitte jemand anderen zum Reden.")
		SAY("Kommen Sie wieder, wenn Sie wissen, was Sie wollen. Bye")
		SAY("Wenn nichts weiter ist, ich warte auf jemanden, der sich um die Ungezieferplage kuemmert. Bye.")
		ENDDIALOG()
	
end
