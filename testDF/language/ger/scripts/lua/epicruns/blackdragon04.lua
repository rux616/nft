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
		SAY("H�r zu, Lucky weiss, dass du ihn beschissen hast. Ich w�rde sagen, deine Tage sind gez�hlt. Aber ich verstehe nicht, warum er dann ein pers�nliches Treffen mit dir haben will. Du bist anscheinend ein Gl�ckspilz. Wegen mir w�rdest du schon tot den Fluss hinuntertreiben.")
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
		SAY("Warum tust du mir das an, eh? Ich hatte gedacht wir sind Freunde. Du solltest Leone t�ten und was tust du? Nichts! Absolut nichts.")

		ANSWER("Es ist etwas dazwischen gekommen.",51)
	NODE(51)
		SAY("Das ist keine Ausrede. Du solltest dankbar sein, dass ich mir dar�ber noch keine Gedanken gemacht habe. Aber es gibt etwas wichtigeres hier und jetzt. Diese verdammten Monsun Tsunamis haben sich zu einem echten Problem entwickelt. Und als w�re das noch nicht genug �rger verweigern ein paar Mieter mir ihre Wohnungen. Es ist alles Chaos und ich kann es nicht alleine l�sen.")

		ANSWER("Vielleicht k�nnte ich dir gegen eine entsprechende Belohnung helfen?",52)
	NODE(52)
		SAY("Sch�n, dann werden wir �ber Leone sp�ter reden. Aber ersteinmal wirst du gegen diese Tsunamis vorgehen und sie in ihre Schranken verweisen. T�te zwei ihrer Runner, da sie f�r all dies verantwortlich sind. Aber nur Runner, ist das klar? Keine Wachen, keine Zuh�lter oder anderes Personal. Wir wollen ihnen keinen Hinweis darauf geben, worauf wir es abgesehen haben. Geh jetzt.")

		SETNEXTDIALOGSTATE(53)
		ENDDIALOG()

--PvP ZWEI TSUNAMIS
	NODE(53)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Du kannst in dieser kurzen Zeit unm�glich einen Tsunami umgebracht haben.")
			ENDDIALOG()
		else
			SAY("Gut gemacht. Das wird hoffentlich einige ihrer Pl�ne verz�gern. Hier geht es nur um Zeit, und wenn wir nun etwas Zeit gewonnen haben, war es dies schon wert.")

			ANSWER("Tsunamis sind keine Gegner f�r mich. Es war wie ein Spaziergang.",54)
		end
	NODE(54)
		SAY("Gut, dann wirst du keine Probleme mit dieser Aufgabe haben. Statte dem Vertreter der Immobilienfirma einen Besuch ab und zeig ihm die wahre Bedeutung von Schmerz. Ich denke du wei�t, was du ihm zu sagen hast. Nein, besser, leg ihn einfach um und verschwende deine Zeit nicht mit Palavern. Das beeindruckt immer.")

		ANSWER("�berlass nur alles mir.",55)
	NODE(55)
		SAY("Geh auf Nummer sicher, dass diese Leute ihre Wohnungen verlassen. Der Repr�sentant sollte irgendwo in Sektor 06 warten.")
		SETNEXTDIALOGSTATE(56)
		ENDDIALOG()

--SPIELER KILL MIETERVORSTAND

	NODE(56)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Solange der Repr�sentant der Mietvereinigung noch atmet gibt es keine M�glichkeit f�r mich, diese Wohnungen zu bekommen. Ich brauche sie  aber dringend, verstanden? Du weisst, was du zu tun hast.")
			ENDDIALOG()
		else
			SAY("Du bist schon fertig? Was f�r ein netter Zufall. Weisst du, was ich h�rte w�hrend du unterwegs warst?")

			ANSWER("Nein, aber ich bin mir sicher, dass du es mir in einer Sekunde sagen wirst.",57)
		end
	NODE(57)
		SAY("Du hattest dich mit Leone verb�ndet und wolltest mich verraten. Gecko ist nun ziemlich w�tend mit mir und das ist alles deine Schuld. Du weisst, dass ich sehr viel Geduld mit dir hatte aber, bei Gott, dieses Mal bist du zu weit gegangen. (n�chste Mission ab Level 40)")

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
		SAY("Wurden sie von den Black Dragon gesandt um unseren Disput �ber die ausstehenden Zahlungen und Reperaturen zu schlichten?")

		ANSWER("Ahh, eigentlich wurde ich gesandt...",101)
	NODE(101)
		SAY("Sehr gut. Dieser ganze Disput existiert schon viel zu lange und wir wollten ihn so schnell wie m�glich beenden.")

		ANSWER("Das ist alles gut und sch�n, aber Lucky schickt mich um dich zu t�ten.",102)
	NODE(102)
		SAY("Das werden sie bereuen. Die Vereinigung wird weiterk�mpfen falls ich get�tet werde.")
		ENDDIALOG()


end