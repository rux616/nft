--new
--BlackDragon
--
--Trigger
--Triggernumber,Type,Person
--0,D, LUCKY 100
--1,LOOT, HUNG 200
--2,D, LUCY 250
--3
--
--Startnode, Person
--0, WISEGUY
--50, LEONE
--100, LUCKY 1652
--150, REGY 1656
--200, HUNG 1657
--250, LUCY 1650
--
--Items
--DROGENPAKET HUNG 9461
--Missionbase Eintrag
--NPC0	NPC1	NPC2	NPC3	TRG0	VAL01	VAL02	VAL03	TRG1	VAL01	VAL02	VAL03	TRG2	VAL01	VAL02	VAL03	TRG3	VAL01	VAL02	
--1652	1656	1657	1650	3	0	0	0	10	2	9461	0	3	3	2	0	
--START	START	START	START
--100	150	200	250
--

function DIALOG()

--------------------------------------------------------------------
--WISEGUY
--0
	NODE(0)
		SAY("Lucky möchte gerne mit dir reden. Du bist schon ganz schön bekannt in unseren Reihen. Aber sei lieber vorsichtig, Bekanntheit ist nicht immer Wünschenswert. Lucky ist total zugekifft, also pass lieber auf, was du sagst. Er wird leicht agressiv.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()
		
	NODE(1)
		SAY("Warum erledigst du nicht einfach deinen Job?")
		ENDDIALOG()

--------------------------------------------------------------------
--LEONE
--50
	NODE(50)
		SAY("Ich sage dir eines, ich mag dich nicht. Ich hab dich noch nie gemocht. Aber du kannst mir trotzdem noch helfen. Allerdings, wurde dir der Auftrag von Gecko selbst übergeben. Du weißt ja, dass Lucky etwas mit Geckos Mädchen hat. Gecko mag das nicht. Er ist noch ein Mann der alten Schule. Er will Lucky erst eine Nachricht geben bevor es Konsequenzen gibt. ")

		ANSWER("Ja, ja, diese verdammte Diebesehre, was?",51)
	NODE(51)
		SAY("Du wirst Lucky besuchen und ihm zu verstehen geben, dass Lucy sein Mädchen ist, klar? Du kannst ihn ruhig ein wenig zusammenschlagen nachdem du ihm die Nachricht überbracht hast. Er soll die Nachricht schließlich  auch verstehen. Danach kriegst du von mir deine Belohnung, also zeige etwas Dankbarkeit. ")
		SETNEXTDIALOGSTATE(52)
		ENDDIALOG()
	NODE(52)
		SAY("Hast du Lucky die frohe Botschaft schon überbracht?")
		ENDDIALOG()


--------------------------------------------------------------------
--LUCKY
--100
	NODE(100)
		SAY("Wer bist du denn? Hab dich noch nie hier geschehen. Doch, warte… ne, es ist wieder weg. Mein Kopf ist wie mit Watte ausgefüllt. Was ist mit mir?")

		ANSWER("Das kommt davon wenn man zu viele Drogen zu sich nimmt.",101)
	NODE(101)
		SAY("Wie? Die Drogenlieferung ist schon gekommen? Nee, Regie hätte mich doch informiert. Nicht? Direkt aus Neocron, yup. Jede Menge Rohmaterial. Das wird mir helfen.")

		ANSWER("Sag mal, Lucky, hörst du mir überhaupt zu?",102)
	NODE(102)
		SAY("Sorry, was? Ich hab glaub ich ein paar zuviel Drogen geschluckt. Ich fühle meine Beine nicht mehr. Was will...")

		ANSWER("Vielleicht sollte ich mal diesen Regie besuchen und ihm diese Drogen abnehmen, was?",103)
	NODE(103)
		SAY("Regie? Der hängt gerne im Sektor 08 rum, mein Kopf tut so weh. Er wird dir weiterhelfen können. Ich muss mich erst einmal ausruhen, sorry.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(104)
		ENDDIALOG()

--MISSING

	NODE(104)
		SAY("Ja, Regie kannst du in Sektor 08 nahe des Haupteingangs finden.")

		ENDDIALOG()

--------------------------------------------------------------------
--REGY
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Ich steh hier nicht zum Spass rum, Runner. Ich mache hier einen sehr wichtigen Job für uns alle. Ich sorge dafür, dass der Nachschub an Drogen nie abbricht.")
			ENDDIALOG()
		else
			SAY("Hey, was ist denn mit dir los, Runner? Haste dich verlaufen?")

			ANSWER("Sehr witzig, Mann. Ich komme von Lucky. Der hat sich schon wieder mit Drogen vollgeknallt.",151)
		end
	NODE(151)
		SAY("Ja, das sieht ihm ähnlich, aber dagegen kann ich nichts tun. Ist das alles, oder wolltest du mir auch etwas wichtiges sagen?")

		ANSWER("Nein, nicht ganz. Ich soll hier noch ne Menge Drogen abholen. Befehl von Lucky.",152)
	NODE(152)
		SAY("Die Drogen, ahh, die habe ich nicht mehr, du kommst etwas zu spät.")

		ANSWER("Was soll das heissen, Mann?! Drogen lösen sich nicht einfach in Luft auf.",153)
	NODE(153)
		SAY("Ich bin doch nicht bescheuert, dass weiss ich auch! Ich hab ja auch nicht gesagt, dass die Drogen weg sind. Nur… die Drogen, oder besser das Rohmaterial kommt den weiten Weg von Neocron herunter.  Normalerweise passiert schon auf dem Transport immer irgendwas. Mal ein Mutantenüberfall, mal wird ein Teil der Ladung verloren. Das ist aber noch längst nicht alles. ")

		ANSWER("Die Drogen kommen aus Neocron?",154)
	NODE(154)
		SAY("Teilweise ja. Und wenn die Drogen erst in die Nähe vom Dome kommen dann passiert es halt manchmal, dass die Tsunamis einen kleinen Überfall starten.")

		ANSWER("Die Tsunamis schon wieder? Diese Nervensägen wird man wohl auch nie los, was? Wo sind sie hin?",155)
	NODE(155)
		SAY("Keine Ahnung, ich war bei dem Überfall ja nicht selbst dabei. Aber einer unserer Jungs hatte gesagt, einer der Tsunamis wäre Myaki Hung gewesen. Der Typ ist ein Stadtbekannter Zuhälter und Monsun Clan Mitglied. Warum fragst du?")

		ANSWER("Ich werde mir diese Drogen schnappen. Ist doch klar.",156)
	NODE(156)
		SAY("Diese Drogen gehören Lucky und er wird es nicht gerne hören, wenn er hört, dass du sie dir unter den Nagel reissen willst.")

		ANSWER("Lucky ist mit Drogen vollgepumpt, der sagt ersteinmal überhaupt nichts. Ausserdem werde ich sie ja auch nicht Lucky bringen, sondern Lucy.",157)
	NODE(157)
		SAY("Versuch es meinetwegen, aber ich weine dir keine Träne nach, wenn sie dich massakrieren. Am besten, du tötest diesen Hung erst und nimmst ihm das Zeug dann ab. Er ist normalerweise in Sektor 07 zu finden. Aber vorsicht, dass ist Tsunami Gebiet.")
		SETNEXTDIALOGSTATE(158)
		ENDDIALOG()

	NODE(158)
		SAY("Hast wohl vergessen wo man diesen Hung finden kann, was? Er ist normalerweise in sektor 07 zu finden.")

		ENDDIALOG()
--------------------------------------------------------------------
--HUNG
--200
--SPIELER LOOTED HUNG
	NODE(200)
		SAY("Verschwinde von Tsunami Territorium oder du wirst um einen Kopf kürzer gemacht. Klar?")

		ENDDIALOG()
--------------------------------------------------------------------
--LUCY
--250

	NODE(250)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Ahh, du hast schon einen zweifelhaften Ruf bekommen. Also bleib fern von mir.")
			ENDDIALOG()				
		
		else
			SAY("Was führt dich denn wieder zu mir? Ich habe inzwischen einiges von dir gehört. ")

			ANSWER("Na, und was zum Beispiel?",251)
		end
	NODE(251)
		SAY("Beispielsweise, dass du unberechenbar sein sollst. Ich mag solche Personen. Erzähl, was dich herführt.")

		ANSWER("Ich habe ein Angebot. Ich würde vorschlagen, ich gebe dir dieses Paket mit Drogen und du bezahlst mir eine hübsche Summe dafür. Interessiert?",252)
	NODE(252)
		SAY("Das hört sich interessant an, aber woher hast du diese Drogen? Solche Sachen fallen normalerweise nicht aus der Luft. Und… was ist der Preis?")

		ANSWER("Ich bin ein Mensch mit dem man reden kann. 50 000 sollten es aber schon sein.",253)
	NODE(253)
		SAY("Der Inhalt scheint in Ordnung zu sein. Ich nehme es und ich sage dir noch etwas… Falls du noch mehr Drogen finden solltest, dann komm wieder zu mir. Ich nehme sie dir alle ab.")

		ANSWER("Exzellent, auf so etwas habe ich gehofft.",254)
	NODE(254)
		TAKEITEM(9461)
--DROGENPAKET
		if(result==0)then
			SAY("Sorry, but without the drugs there is no deal.")
			ENDDIALOG()
		else
			GIVEMONEY(50000)
			SAY("Ich werde dir ausserdem eine Möglichkeit geben, noch mehr Credits zu bekommen. Aber die Zeit dazu ist noch nicht reif. Ich werde den Wiseguys Bescheid geben, wenn es soweit ist. (nächste Mission ab Level 45)")
			ACTIVATEDIALOGTRIGGER(2)
			EPICRUNFINISHED(9,4)
			ENDDIALOG()
		end

end