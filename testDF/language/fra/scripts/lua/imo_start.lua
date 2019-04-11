--************************
--name   : imo_start
--version: 0.01
--author :
--date   :
--lang   : de
--description:
--purpose:
--npc    :
--************************


function DIALOG()

	NODE(0)
		SAY("Hallo Runner. Ich bin hier der Apartmentbeauftragte und werde Dir eine kleine Einweisung geben.")

		ANSWER("Einweisung? Es handelt sich um ein Apartment. Was gibt's da noch gro� zu erkl�ren?",1)
		ANSWER("Einweisung? Ich bin doch nicht bl�d. Halt die Klappe und verschwinde!",10)
	NODE(1)
		SAY("Jetzt aber mal halblang! Es handelt sich hierbei nicht um irgendein Apartment. Dies ist Dein Primary Apartment. Dein Wohnsitz f�r wahrscheinlich lange Zeit. So wie Du aussiehst wirst Du Dir nicht so schnell was anderes leisten k�nnen.")

		ANSWER("OK, OK. Leg los.",2)

	NODE(2)
		SAY("Schon besser. Diese Bleibe wird Dir von unserer Seite aus ohne Miete zur Verf�gung gestellt. Wir erwarten daf�r von dir das du f�r uns arbeitest, dir das Bleiberecht verdienst.")

		ANSWER("Hmm...",3)


	NODE(3)
		SAY("Die Apartments die wir f�r Neuank�mmlinge bereithalten, bieten grundlegenden Service wie eine GoGuaridan- und eine GenRep Station, sowie einen unlimitierten Zugang zu allen �ffentlichen Teilen des Citycom Systems, wie zum Beispiel Email.")

		ANSWER("Aber was ist denn....",4)
		

	NODE(4)
		SAY("Das muss als Erkl�rung reichen. Die Zeit ist knapp und Du bist nicht der Einzige auf meiner Liste. Um Zeit zu sparen haben wir noch ein Schnellinfo System in dieser Art Apartment eingebaut. Es wird Dir noch einige n�tzliche Hinweise geben k�nnen. Den Rest musst Du schon selbst rausfinden. ")

		ANSWER("OK. Ich lass mich �berraschen. Aber hast Du nicht gesagt ich soll f�r Euch arbeiten?",5)
		

	NODE(5)
		SAY("Das ist korrekt. Wenn Du Dich hier umgeschaut hast begib Dich bitte auf dem schnellsten Weg zu einem Angestellten unseres Recruitment Bereichs. Am besten wirst Du ihn finden indem Du die NavRay Funktion in Deinem R.P.O.S. verwendest. Es kann allerdings sein das sich innerhalb des Apartments Empfangsst�rungen ergeben. Falls das passiert gehe einfach hinaus auf die Strasse. Dann sollte es gehen.")

		ANSWER("Alles Klar. Danke soweit. Ich werde mich dann melden.",6)
		ANSWER("So. Genug Gequatsche. Und ob ich f�r Euch arbeite �berlege ich mir auch noch gut. Zieh jetzt leine!",11)


	NODE(6)
		SAY("Das ist was ich h�ren wollte. Wir sehen uns noch.")

		ENDDIALOG()


	NODE(10)
		SAY("Na, wenn Du meinst. Sorge aber daf�r dass du dich auf dem schnellsten Weg zu einem Angestellten unseres Recruitment Bereichs begibst. Sonst gibt's �rger. Dies Apartment ist schlie�lich kein Almosen!")

		ENDDIALOG()


	NODE(11)
		SAY("Ich rate Dir keinen Fehler zu machen. Dies Apartment ist schlie�lich kein Almosen!")

		ANSWER("Ich hab aber auch nicht drum gebeten!",12)


	NODE(12)
		SAY("Hast du nicht?! Na dann raus hier!!!")

		ANSWER("Schon gut. Kommt schon in Ordnung....",13)


	NODE(13)
		SAY("Na das will ich hoffen. Und jetzt reicht mir das hier. Ich kann Dir nur raten: Halt Dich an die Regeln!")

		ENDDIALOG()

end



