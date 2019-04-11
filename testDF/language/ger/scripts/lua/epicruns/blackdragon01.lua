--new
--BlackDragon
--
--Trigger
--Triggernumber,Type,Person
--0,D, MANUEL50
--1,D, WISEGUY 100
--2,D,
--3
--
--Startnode, Person
--0, WISEGUY
--50, MANUEL 1649
--100, WISEGUY
--150, LUCY 1650
--200, LEONE 1651
--250, LUCKY 1652
--
--Items
--Drogenpaket
--Missionbase Eintrag
--NPC0	NPC1	NPC2	NPC3	TRG0	VAL01	VAL02	VAL03	TRG1	VAL01	VAL02	VAL03	TRG2	VAL01	VAL02	VAL03	TRG3	VAL01	VAL02	
--1649	1650	1651	1652	3	0	0	0	3	4	1	0
--START	START	START	START
--50	150	200	250
--


function DIALOG()
--------------------------------------------------------------------
--Soldat
--0
	
	NODE(0)
		SAY("Noch so einer, der glaubt bei uns das leichte Geld machen zu können. Stell dir das mal nicht zu leicht vor. Hier musst du hart arbeiten, wir sind ja immerhin nicht die Wohlfahrt.")

		ANSWER("Gut, aber dann sag mir doch mal, was genau ihr hier tut. Vorher mache ich keinen Finger für euch krumm.",1)
	NODE(1)
		SAY("Mann, das wirst du schon merken, Runner. Am besten du verdienst dir erst einmal etwas mehr Respekt, dann nehmen dich die Leute gleich viel ernster! Und diese Einstellung kannst du dir hier gleich abschminken.")

		ANSWER("Verstanden, kein Grund mich so anzufahren.",2)
	NODE(2)
		SAY("Ja, ist ja gut. Ich möchte dich ja nicht gleich vergraulen. Hör zu, ich habe ja keinen blassen Schimmer ob du nicht so ein verdammter Tsunami bist, der uns infiltrieren will. Daher wirst du dich hier erst beweisen müssen, bevor ich dir irgendwelche Fragen beantworte.")

		ANSWER("Keine Angst, Skrupel werdet ihr bei mir nicht finden. Ich bin zu allem bereit.",3)
	NODE(3)
		SAY("Wenn das stimmt, dann kannst du es hier noch weit bringen. Die erste Regel solltest du dir merken, denn ohne sie würdest du hier schon bald untergehen.")

		ANSWER("Ich höre…",4)
	NODE(4)
		GIVEITEM(9460)
--DRUGPAKET
		SAY("Keine Gnade und kein Mitleid, die sind schlecht fürs Geschäft, klar? So, da dies geklärt ist kannst du ja jetzt einen Botengang für uns erledigen.  Manuel ist einer unserer Dealer, ihm ist der Stoff ausgegangen. Du wirst ein frisches Päckchen zu ihm hier in Sektor 08 bringen. Du kannst ihn in einem der Hinterhöfe treffen. Danach kommst du sofort wieder zurück. Es sei denn du möchtest noch etwas mit einigen Leuten hier reden. Leone und Lucky sind beide recht mächtige Personen. Aber von Lucy lässt du besser deine Finger. Du kannst ja mal mit Leone, Lucy und Lucky reden, wenn du willst.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(100)
		ENDDIALOG()
		


--------------------------------------------------------------------
-- MANUEL
--50
	NODE(50)
		SAY("Ja? Was ist? Willst du mal so richtigen Stoff probieren? Hier, ich kann dir alles besorgen. Auch Extrawünsche kann ich berücksichtigen.")

		ANSWER("Nein, danke. Hier ist ein Paket mit neuen Drogen. Ist so ne Art Test Job für mich.",51)
	NODE(51)
		TAKEITEM(9460)
--Drogenpaket
		if(result==0)then
			SAY("Du redest hier gross, dass du etwas für mich hast und stehst jetzt mit leeren Händen da? Toll.")
			ENDDIALOG()
		else
			SAY("Test? Naja, mir wär’n Päckchen mit Kohle lieber, ehrlich. Verdammt harter Job ist das hier! Wenn ich das noch zwanzig Jahre mache, dann verrecke ich noch dabei.")

			ANSWER("Zwanzig Jahre? Das ist eine lange Zeit. Da kennst du dich hier sicher schon besser aus, oder?",52)
		end
	NODE(52)
		SAY("Klar, Mann, immerhin bin ich in den Strassen aufgewachsen. Auf der Strasse solltest du die Tsunamis meiden, es sein denn du bist ihnen zahlenmäßig überlegen. Bei den Dragons solltest du versuchen dich mit Leone und Lucky gut stellen, die haben hier das sagen. Abgesehen von den ganz hohen Tieren natürlich. Kannst froh sein, wenn du Gecko überhaupt mal zu sehen bekommst. Meistens sieht man ihn nur mit seiner Freundin Lucy. Lass dich aber von Lucy besser nicht bezirzen, sie gehört Gecko und … vielleicht auch noch Lucky, aber sonst niemandem. Aber jetzt hör mal, ich hab ne Bitte.")

		ANSWER("Was gibt’s noch? Das Paket habe ich dir doch schon übergeben.",53)
	NODE(53)
		SAY("Schon klar, aber zur Zeit geht’s mir sehr schlecht. Keiner will mehr kaufen und ich hab auch keine Kohle mehr. Ich hab schon seitn paar Tagen nichts mehr gegessen wegen diesem Scheiss. Bitte, ich bräuchte wirklich ein bischen Kohle. Komm schon, 1000 würden mir schon reichen. Bitte, das wäre echt nett von dir.")

		ANSWER("Na gut, aber nur dieses eine Mal.",54)
		ANSWER("Kommt nicht in Frage, Mann, sieh zu wie du alleine klar kommst.",55)
	NODE(54)
		SAY("Runner, du hast wirklich nichts kapiert. Hahaha, oh Mann. Wechsele doch lieber zu den Fallen Angels, die stehen nicht so auf das rauhe Leben  hier. Vielleicht wirst du dort ja froh, Weichei! Den Test hast du auf jeden Fall versiebt.")
		SETNEXTDIALOGSTATE(56)
		ENDDIALOG()
		
	NODE(55)
		SAY("Respekt, meinem Geflenne zu widerstehen ist schon ne Leistung. Du hast den Test bestanden, wir können so einen gewissenlosen Runner wie dich immer gebrauchen.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(57)
		ENDDIALOG()
	NODE(56)
		SAY("Tut mir leid, von mir gibt es keine zweite Chance. Vielleicht kannst du es ja noch einmal versuchen? Frag denjenigen, der dich geschickt hat.")
		ENDDIALOG()

	NODE(57)
		SAY("Geh zu dem Wiseguy, der dich geschickt hat. Sag ihm, du hast den Test bestanden.")
		ENDDIALOG()



--------------------------------------------------------------------
--WISEGUY
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Sorry, aber du musst erst mit Manuel sprechen. Aber wenn er dich abweist, musst du nochmal von vorne beginnen.")
			ENDDIALOG()
		else
			SAY("Gut gemacht, du hast den Test bestanden. Die erste Regel scheinst du ja ganz gut befolgt zu haben.")

			ANSWER("Ja, ist schon gut, kriege ich jetzt ne Belohnung oder was?",101)
		end
	NODE(101)
		GIVEMONEY(1000)
		SAY("Werd nicht frech, aber ja, in meinem Großmut bekommst du 1000 Credits. Mach was draus! Je besser du bist, desto weiter wirst du es hier bringen. Du kannst, wenn du schlau bist hier jede Menge Kohle abgreifen. Allerdings schaffen das die wenigsten. Wenn du dich stärker fühlst, komm wieder zu mir. Solche Anfänger wie dich können wir momentan nicht gebrauchen. (nächste Mission ab Level 20)")

		EPICRUNFINISHED(9,0)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()

		

--------------------------------------------------------------------
--Lucy
--150
	NODE(150)
		SAY("Ich kenne dich nicht, du bist wohl neu hier bei den Dragons? Schade eigentlich. Vielleicht sollten wir unser Gespräch besser auf ein andermal verschieben. Auf einen Zeitpunkt wenn du reich und mächtig bist zum Beispiel.")

		ANSWER("Manuel hatte mir von dir erzählt. Ich habe grosse Ambitionen, aus mir wird noch etwas werden. Du wirst schon sehen.",151)
	NODE(151)
		SAY("Das haben schon viele gemeint, aber wenn du das ernst meinst, versuch dich mit Gecko gut zu stellen. Er ist die rechte Hand vom Don und hat hier jede Menge Einfluss. Maximilian Trond ist für dich wohl eh unerreichbar. Wirst Glück haben, wenn du ihn jemals zu Gesicht bekommen wirst. Vielleicht sieht man sich ja mal wieder.")
		SETNEXTDIALOGSTATE(152)
		ENDDIALOG()
	NODE(152)
		SAY("Ich wünschte ich könnte mit mehr Leuten reden, aber Gecko ist sehr eifersüchtig.")

		ENDDIALOG()
--------------------------------------------------------------------
--Leone
--200

	NODE(200)
		SAY("Was soll das? Ich habe keine Lust meine Zeit mit einem Niemand zu vergeuden. Sonst geht es mir noch wie Wan Tokai und der ist bekanntlich Tod.")
	
		ANSWER("Warts nur ab, ich werde schon etwas aus mir machen, aber wer ist Wan?",201)
	NODE(201)
		SAY("Du kennst nicht mal Wan Tokai den Dragon? Der, der den Black Dragon den Namen gab? Runner, du bist noch weit davon entfernt mich auch nur im geringsten zu interessieren. Geh mir aus der Sicht.")
		SETNEXTDIALOGSTATE(202)
		ENDDIALOG()
	NODE(202)
		SAY("Muss ich mich denn ständig wiederholen? Du musst hier nach gewissen Regeln spielen, ansonsten gehst du unter. Kapiert?")
		ENDDIALOG()	

--------------------------------------------------------------------
--Lucky
--250
	NODE(250)
		SAY("Ein neues Gesicht?! Und was willst du bei mir? Ich hab noch nie was von dir gehört. Schenken werde ich dir mit Sicherheit nichts. Aber merk dir, unser Geschäft, also Drogen und Wohnungshandel, werden immer viel Geld abwerfen. Ein kluger Mann würde versuchen dort seine Erfahrungen zu suchen, kapiert? Und wenn du’n Job brauchst kannst du ja einen x- beliebigen Wiseguy fragen.")
	
		SETNEXTDIALOGSTATE(251)
		ENDDIALOG()
	NODE(251)
		SAY("Arbeite dich erst einmal hoch und dann sehen wir weiter.")
	
		ENDDIALOG()
end