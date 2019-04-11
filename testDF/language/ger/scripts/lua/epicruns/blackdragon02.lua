--new
--BlackDragon
--
--Trigger
--Triggernumber,Type,Person
--0,D,LEONE 50
--1,D,MERCURUS 150
--2,D,LEONE 200
--3
--
--Startnode, Person
--0, WISEGUY
--50, LEONE 1651
--100, LUCKY 1652
--150, MERCURUS 1673
--200, LEONE 1651
--250,
--
--Items
--DESTROSOL FORTE 723
--
--Missionbase Eintrag
--NPC0	NPC1	NPC2	NPC3	TRG0	VAL01	VAL02	VAL03	TRG1	VAL01	VAL02	VAL03	TRG2	VAL01	VAL02	VAL03	TRG3	VAL01	VAL02	
--1651	1652	1653		3	0	0	0	3	2	1	0	3	0	2	0
--START	START	START	START
--50	100	150
--

function DIALOG()
--------------------------------------------------------------------
--WISEGUY
--0
	
	NODE(0)
		SAY("Verdammte Tsunamis. Ich nehme an du hast auch schon ein paar Erfahrungen mit diesen Bastarden gesammelt?")

		ANSWER("Ab und zu. Allerdings waren sie nie freundlich gesinnt.",1)
	NODE(1)
		SAY("Kein Wunder, sind es doch unsere Erzfeinde. Erst gestern haben sie wieder ein paar Dealer von uns zusammengeschlagen. Bastarde! Wie auch immer. Sieh zu, dass du zu Leone im Hauptquartier kommst, er hat was für dich.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)
		SAY("Leone hängt immer im Hauptquartier rum, du wirst ihn schon finden.")	
		ENDDIALOG()
	

--------------------------------------------------------------------
--LEONE
--50
	NODE(50)
		SAY("Tja, wie es das Schicksal so will, hast du nun doch eine Chance zu beweisen aus welchem Holz du geschnitzt bist. Ein besonders aggressiver  Tsunami Clan mit dem Namen Monsun hat uns ein paar Dealer zusammengeschlagen. Dabei wollten diese lediglich ein paar Drogen an die Mädchen der Tsunamis verkaufen.")

		ANSWER("Und? Was interessiert mich das?",51)
	NODE(51)
		SAY("Sag mal, hast du kein Hirn? Wenn du hier Erfolg haben willst, solltest du deine Worte etwas sorgfältiger auswählen und tun was ich dir sage. ")

		ANSWER("Schon gut, reg dich nicht so auf, ich bin ganz Ohr. Was ist meine Aufgabe?",52)
	NODE(52)
		SAY("Da wir dadurch einiges an Drogen verloren haben, musst du zusehen, dass wir unsere Abmachung mit den Crahn trotzdem einhalten. Sie erwarten von uns ein dutzend Destrosol Forte Drogen. Der Kontaktmann ist ein Typ namens Mercurus, wahrscheinlich beim Crahn HQ zu finden. Also mach dich ran, ich geb dir hier eine einmalige Chance, vergiss das nicht.")

		ANSWER("Kein Problem, wo sind diese Drogen?",53)
	NODE(53)
		SAY("Habe ich nicht gesagt, dass wir diese im Moment nicht vorrätig haben?")

		ANSWER("Doch, aber normalerweise…",54)
	NODE(54)
		SAY("Komm hierher zurück, wenn du die Drogen gemäß der Abmachung bei Mercurus abgeliefert hast. Such sie dir von irgendwoher! Ich sagte nicht, dass es Kinderleicht wäre. Mehr habe ich dazu nicht zu sagen. Er erwartet 12 Destrosol Forte Drogen, du kannst sie dir ja vielleicht von Lucky oder irgend jemand anderem besorgen.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()


--------------------------------------------------------------------
--LUCKY
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Wirst es nicht glauben, aber auch ich muss manchmal etwas arbeiten.")
			ENDDIALOG()
		else
			SAY("Ich habe etwas, was dich interessieren könnte. ")

			ANSWER("Ich kann mir zwar nicht vorstellen, was das sein kann, aber bitte sehr.",101)
		end
	NODE(101)
		SAY("12 Destrosol Forte um genau zu sein. Nett in einem Paket verschnürt. Na, interesse?")

		ANSWER("Woher wusstest du das? Ich brauche genau diese Art von Drogen für nen kleinen Job.",102)
	NODE(102)
		SAY("Ich habe meine Informationen. Aber jetzt hör mir genau zu, ich gebe dir diese Drogen unter einer Bedingung. Du schuldest mir einfach einen Gefallen für später und wir sind quitt, ja? Also? Das Angebot gilt nicht ewig.")

		ANSWER("Gut, ich akzeptiere. Einem geschenkten Gaul schaut man nicht ins Maul.",103)
		ANSWER("Kommt nicht in Frage, das ist doch sicher ne Falle.",105)
	NODE(103)
--DESTROSOL FORTE 9460

		GIVEITEM(9460)
		SAY("Prima. Ich denke, dies wird sich zu unser beider Vorteil entwickeln.")

		SETNEXTDIALOGSTATE(104)
		ENDDIALOG()
	NODE(104)
		SAY("Die Drogen habe ich dir schon gegeben, was kannst du noch mehr wollen?")
		ENDDIALOG()
	NODE(105)
		SAY("Wie du meinst, dann komm wieder wenn du dich entschieden hast. Ich bin mir sicher du wirst es noch einmal überdenken.")
		ENDDIALOG()
		

--------------------------------------------------------------------
--MERCURUS
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Ich dachte wir hatten einen Deal?! Haltet euch an euer Wort, du und die Black Dragon, sonst wird es dich noch deinen Kopf kosten.")
			ENDDIALOG()
		else
			TAKEITEM(9460)
			if(result==0)then
				SAY("Ich dachte wir hatten einen Deal?! Haltet euch an euer Wort, du und die Black Dragon, sonst wird es dich noch deinen Kopf kosten.")
				ENDDIALOG()
			else
				SAY("Sage mir dein Anliegen. Freund oder Feind?")

				ANSWER("Ich bringe eine Lieferung von den Dragons. Drogen um präzise zu sein.",151)
			end
		end
	NODE(151)
		SAY("Na endlich! Wir haben schon gedacht ihr hättet sie euch selbst einverleibt. Jetzt können wir endlich mit unseren Experimenten fortfahren… aber… aber dies sind nur 12 Destrosol Forte. Wir haben jedoch 16 bestellt. Wo ist der Rest geblieben?")

		ANSWER("Mir wurde nichts von 16 erzählt. Ein Dutzend waren abgemacht.",152)
	NODE(152)
		SAY("Schön wäre es, was? Ich wette du hast sie dir selbst genommen, Junkie. Du bringst mir jetzt die letzten vier auch noch, oder diese Sache wird Konsequenzen haben.")
		SETNEXTDIALOGSTATE(153)
		ENDDIALOG()
	NODE(153)
		TAKEITEMCNT(723,4)
		if(result==0)then
			SAY("Abgemacht waren noch vier extra Destrosol Forte, klar?")
			ENDDIALOG()
		else
			SAY("Na bitte, damit sollten unsere Beziehungen auch weiterhin vorteilhaft ausfallen, ich danke euch. Berichtet eurem Boss, dass wir die Lieferung erhalten haben.")
			ACTIVATEDIALOGTRIGGER(1)
			SETNEXTDIALOGSTATE(154)
			ENDDIALOG()
		end

	NODE(154)
		SAY("Wenn wir mehr benötigen, dann wissen wir, an wen wir uns wenden müssen. Geht zurück zu eurem Boss.")
		ENDDIALOG()
--------------------------------------------------------------------
--LEONE
--200
	
	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Komm hierher zurück, wenn du die Drogen gemäß der Abmachung bei Mercurus abgeliefert hast.")
			ENDDIALOG()
		else
			SAY("So, du hast es also geschafft, was? Gut, damit hast du schon einen Schritt auf deiner Karriere Leiter getan. Ich hoffe du bist mir dankbar, dass ich dir diese Möglichkeit gegeben habe.")

			ANSWER("Ja, klar. Aber ein paar Credits wären mir lieber, wenn du verstehst was ich meine.",201)
		end
	NODE(201)
		GIVEMONEY(2000)
		SAY("Mein Dank ist dir wohl nicht genug, was? Nun denn, hier hast du 2000 Credits. Mehr ist deine Arbeit nicht wert. Um genau zu sein bist du damit schon überbezahlt. Wenn du wieder einen Job willst, dann sprich mit einem der Wiseguys hier. (nächste Mission ab Level 30)")
		EPICRUNFINISHED(9,1)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()


end