--new
--BlackDragon
--
--Trigger
--Triggernumber,Type,Person
--0,PvP, LUCKY 50 (2 Tsunamis)
--1,kill, MIETERVORSTAND PAIN
--2,D, Lucky 50
--3
--
--Startnode, Person
--0, WISEGUY
--50, LUCKY 1652
--100, PAIN 1655
--150, 
--200,
--250,
--Mietervorstand Pain 1675

--Items
--
--Missionbase Eintrag
--NPC0	NPC1	NPC2	NPC3	TRG0	VAL01	VAL02	VAL03	TRG1	VAL01	VAL02	VAL03	TRG2	VAL01	VAL02	VAL03	TRG3	VAL01	VAL02	
--1652	1655			9	8	2	10	1	1	0	0	3	0	2	0	0	0	0	
--START	START	START	START
--50	100	
--

function DIALOG()
--------------------------------------------------------------------
--WISEGUY
--0
	
	NODE(0)
		SAY("Hör zu, Lucky weiss, dass du ihn beschissen hast. Ich würde sagen, deine Tage sind gezählt. Aber ich verstehe nicht, warum er dann ein persönliches Treffen mit dir haben will. Du bist anscheinend ein Glückspilz. Wegen mir würdest du schon tot den Fluss hinuntertreiben.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()
	NODE(1)
		SAY("Lucky wird nicht ewig warten. Du solltest seine Geduld besser nicht auf die Probe stellen.")

		ENDDIALOG()

--------------------------------------------------------------------
--LUCKY
--50
	NODE(50)
		SAY("Warum tust du mir das an, eh? Ich hatte gedacht wir sind Freunde. Du solltest Leone töten und was tust du? Nichts! Absolut nichts.")

		ANSWER("Es ist etwas dazwischen gekommen.",51)
	NODE(51)
		SAY("Das ist keine Ausrede. Du solltest dankbar sein, dass ich mir darüber noch keine Gedanken gemacht habe. Aber es gibt etwas wichtigeres hier und jetzt. Diese verdammten Monsun Tsunamis haben sich zu einem echten Problem entwickelt. Und als wäre das noch nicht genug Ärger verweigern ein paar Mieter mir ihre Wohnungen. Es ist alles Chaos und ich kann es nicht alleine lösen.")

		ANSWER("Vielleicht könnte ich dir gegen eine entsprechende Belohnung helfen?",52)
	NODE(52)
		SAY("Schön, dann werden wir über Leone später reden. Aber ersteinmal wirst du gegen diese Tsunamis vorgehen und sie in ihre Schranken verweisen. Töte zwei ihrer Runner, da sie für all dies verantwortlich sind. Aber nur Runner, ist das klar? Keine Wachen, keine Zuhälter oder anderes Personal. Wir wollen ihnen keinen Hinweis darauf geben, worauf wir es abgesehen haben. Geh jetzt.")

		SETNEXTDIALOGSTATE(53)
		ENDDIALOG()

--PvP ZWEI TSUNAMIS
	NODE(53)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Du kannst in dieser kurzen Zeit unmöglich einen Tsunami umgebracht haben.")
			ENDDIALOG()
		else
			SAY("Gut gemacht. Das wird hoffentlich einige ihrer Pläne verzögern. Hier geht es nur um Zeit, und wenn wir nun etwas Zeit gewonnen haben, war es dies schon wert.")

			ANSWER("Tsunamis sind keine Gegner für mich. Es war wie ein Spaziergang.",54)
		end
	NODE(54)
		SAY("Gut, dann wirst du keine Probleme mit dieser Aufgabe haben. Statte dem Vertreter der Immobilienfirma einen Besuch ab und zeig ihm die wahre Bedeutung von Schmerz. Ich denke du weißt, was du ihm zu sagen hast. Nein, besser, leg ihn einfach um und verschwende deine Zeit nicht mit Palavern. Das beeindruckt immer.")

		ANSWER("Überlass nur alles mir.",55)
	NODE(55)
		SAY("Geh auf Nummer sicher, dass diese Leute ihre Wohnungen verlassen. Der Repräsentant sollte irgendwo in Sektor 06 warten.")
		SETNEXTDIALOGSTATE(56)
		ENDDIALOG()

--SPIELER KILL MIETERVORSTAND

	NODE(56)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Solange der Repräsentant der Mietvereinigung noch atmet gibt es keine Möglichkeit für mich, diese Wohnungen zu bekommen. Ich brauche sie  aber dringend, verstanden? Du weisst, was du zu tun hast.")
			ENDDIALOG()
		else
			SAY("Du bist schon fertig? Was für ein netter Zufall. Weisst du, was ich hörte während du unterwegs warst?")

			ANSWER("Nein, aber ich bin mir sicher, dass du es mir in einer Sekunde sagen wirst.",57)
		end
	NODE(57)
		SAY("Du hattest dich mit Leone verbündet und wolltest mich verraten. Gecko ist nun ziemlich wütend mit mir und das ist alles deine Schuld. Du weisst, dass ich sehr viel Geduld mit dir hatte aber, bei Gott, dieses Mal bist du zu weit gegangen. (nächste Mission ab Level 40)")

		ANSWER("Soll das eine Drohung sein?",58)
	NODE(58)
		SAY("...")

		ACTIVATEDIALOGTRIGGER(2)
		EPICRUNFINISHED(9,3)
		ENDDIALOG()

--------------------------------------------------------------------
--PAIN
--100
	NODE(100)
		SAY("Wurden sie von den Black Dragon gesandt um unseren Disput über die ausstehenden Zahlungen und Reperaturen zu schlichten?")

		ANSWER("Ahh, eigentlich wurde ich gesandt...",101)
	NODE(101)
		SAY("Sehr gut. Dieser ganze Disput existiert schon viel zu lange und wir wollten ihn so schnell wie möglich beenden.")

		ANSWER("Das ist alles gut und schön, aber Lucky schickt mich um dich zu töten.",102)
	NODE(102)
		SAY("Das werden sie bereuen. Die Vereinigung wird weiterkämpfen falls ich getötet werde.")
		ENDDIALOG()


end