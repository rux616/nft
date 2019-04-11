--new
function DIALOG()
--Trigger
--50 Dialog
--6, 66 Kill Multiple
-----------------------------------------------------------------
--Resource officer

	NODE(0)
		SAY("Mein junger M�nch. Pater Manus konnte nichts weiter �ber die Relikte herausfinden, mit den begrenzten Unterlagen, die wir hier haben. Deshalb hat er Pater Agnus gebeten, sich mit den Relikten zu besch�ftigen. Er ist mit einigen anderen treuen Crahn Anh�ngern im gut versteckten Kloster in der Outzone geblieben. Und nach einer Abgleichung mit uralten Dokumenten hat Pater Agnus Neuigkeiten �ber die Tacholytium Relikte herausgefunden. Er war sehr aufgeregt, als er mir davon berichtete. Aber du sprichst am besten selbst mit ihm. Gehe in die alte Abtei in der Outzone und triff dich dort mit ihm.")

		ANSWER("Vielen Dank f�r die frohe Kunde. Ich werde mich sofort auf den Weg machen.",1)
	NODE(1)
		SAY("M�ge Crahn deinen Weg segnen.")
		ENDDIALOG()		

-----------------------------------------------------------------
--Pater Agnus

	NODE(50)
		SAY("Ah, endlich kommst du. Ich habe dich schon erwartet.")

		ANSWER("Man hat mir mitgeteilt, dass ihr Neuigkeiten �ber die Tacholytium Fragmente in Erfahrung gebracht habt?",51)
	NODE(51)
		SAY("So ist es. Wie ich anfangs schon vermutet hatte, reicht das Entstehungsdatum dieser Fragmente in die Zeit zur�ck, in der unsere Vorfahren noch unter der Erde lebten und sich ausschliesslich auf die Ausbildung unserer telekinetischen Kr�fte konzentrierten.")

		ANSWER("Und? Was haben sie nun herausgefunden?",52)
	NODE(52)
		SAY("Immer mit der Ruhe. Die Kraft des Tacholytiums bezieht das Metall direkt aus der Erdenergie, der so genannten Gaya. Gaya ist die Summe aller Kr�fte, die auf unserer Erde wirken.")

		ANSWER("Dann tr�gt es also diese Energie in sich?",53)
	NODE(53)
		SAY("Jedes Material, welches unter der enormen Energie des grossen Lichtes hochgradig aus anderen Elementen komprimiert wurde, tr�gt Gaya in sich. Genau dies trifft auch auf Tacholytium zu.")

		ANSWER("Soll das bedeuten, dass Gegenst�nde aus Tacholytium die Kraft der Gaya auf einen Menschen �bertragen k�nnen?",54)
	NODE(54)
		SAY("Nicht direkt. Aber jedes PSI talentierte Lebewesen, kann unter Zuhilfenahme des Tacholytiums seine telekinetischen Kr�fte verst�rken. Richtig angewandt wirkt das Material dementprechend wie ein PSI-Verst�rker.")

		ANSWER("Bei Crahn, dann sind meine 3 Relikte m�chtiger und wertvoller als ich es mir je zu ertr�umen gewagt h�tte.",55)
	NODE(55)
		SAY("Ja. In ihrer jetzigen Form sind sie jedoch noch nutzlos. Sie m�ssen zun�chst zu einem ganzen zusammengef�gt werden. Nach meinen Studien fehlen Dir aber noch mindestens 2 weitere Fragmente, bevor du einen Gaya PSI Amplifier daraus konstruieren kannst.")

		ANSWER("Wo k�nnte ich die fehlenden Fragmente finden? Bitte, Pater Agnus, helft mir bei der Suche.",56)
	NODE(56)
		SAY("Das habe ich bereits getan. Ich habe eine Gruppe von 5 M�nchen unter der Leitung von Bruder Harkon zu einem Ort in den Wastelands geschickt, an dem ich mindestens ein weiteres Fragment vermute. Die Gruppe wurde jedoch von einer Gang des Tsunami Syndikats �berfallen, ausgeraubt und get�tet.")

		ANSWER("Bei Crahn... das ist ja furchtbar. Wir sollten diese Tat vergelten.",57)
	NODE(57)
		SAY("Ich hatte gehofft, dass du genau das vorschlagen w�rdest. Wie du weisst, vergelten wir grunds�tzlich Gleiches mit Gleichem. Da aber Crahns Geduld unendlich ist, so kann diese Vergeltung den richtigen Moment abwarten. Es w�rde reichen, nur einen Tsunami recht bald zu t�ten. Und wenn dann mit der Zeit mehr und mehr von ihnen sterben wird der Zweifel und die Angst an ihnen nagen.")

		ANSWER("So sei es. Ich werde einen Runner des Tsunami Syndikats t�ten.",58)
		ANSWER("Ich f�hle mich dieser Aufgabe noch nicht gewachsen, Pater.",62)
	NODE(58)
		SAY("Wichtig ist, dass du ausschliesslich Runner t�test, die sich auf deinem Rang Niveau befinden. T�te keine Kinder oder unbedeutende Mitglieder des Syndikats. Nimm ihnen Leute, die dem Syndikat so wichtig sind, wie du es uns bist.")

		ANSWER("Gibt es noch etwas was ich bedenken sollte?",59)
	NODE(59)
		SAY("Also achte darauf, dass das Tsunami Mitglied, welches Du t�test nicht tiefer als 10 R�nge unter dir ist. Nach oben sind dir keine Grenzen gesetzt. Denke daran, es m�ssen Runner sein, keine Angestellten oder Wachen.")

		ANSWER("So sei es. M�ge Crahn's Wille geschehen.",60)
	NODE(60)
		SAY("Du kannst dir auch Gef�hrten suchen, die dich bei dieser Aufgabe unterst�tzen. Achte jedoch darauf, dass du bei den K�mpfen gegen den jeweiligen Runner am meisten Schaden verursachst und komme nachdem Du den Runner des Syndikats get�tet hast zu mir zur�ck, damit wir weiter �ber die Relikte sprechen k�nnen. M�ge Crahn deine Waffen segnen.")
		SETNEXTDIALOGSTATE(61)
		ENDDIALOG()

--Spieler killt Tsunami Spieler Trigger 6 kill multiple

	NODE(61)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Vergeltung zu �ben war deine Idee und so sollst du sie auch ausf�hren. Ein Tsunami soll durch deine Haende sterben.")
			ENDDIALOG()
		else
			SAY("Gute Arbeit, mein junger Bruder. Der Orden hat zugestimmt, dich nach dieser heldenhaften Tat in den roten Zirkel der M�nche zu erheben. Das bedeutet auch, dass du mich ab jetzt an nicht mehr mit Pater, sondern mit Bruder anreden darfst.")

			ANSWER("Danke Bruder Agnus. Ich werde mich des Ranges w�rdig erweisen und keine Schande �ber den roten Zirkel bringen.",63)
		end
	NODE(62)
		SAY("Dann musst du deine Ausbildung zuerst fortsetzen. Aber kehre sobald es geht zur�ck.")
		ENDDIALOG()


	NODE(63)
		SAY("Dessen bin ich mir sicher, Bruder. Lass uns nun zur�ck zu deinen Relikten kommen. Im Nord-Westen der Wastelands liegt die Gaya Mine. Dorthin hatte ich auch die Br�der, die unter der Leitung von Bruder Harkon wanderten, geschickt.")

		ANSWER("Dann ist dort ein weiteres Relikt?",64)
	NODE(64)
		SAY("Irgendwo in diesen riesigen Minen befindet sich ein Titan Warbot, der sich dort in den alten Kriegen zu Neopha Kansils Zeiten verirrt hatte. Die Legenden bezeichnen diesen Warbot als unbesiegbar und die Bewohner der alten Yucida Village im Norden der Wastelands nannten ihn respektvoll H�ter der Gaya.")

		ANSWER("Was soll ich tun? Muss ich gegen den Warbot k�mpfen?",65)
	NODE(65)
		SAY("Ich zitiere aus den Legenden des alten Yucida Volkes: Der eiserne W�chter der Mine besitzt ein Herz aus gl�hendem Metall, welches ihm das Temperament und die Kraft eines wilden Drachen gibt.")

		ANSWER("Steht da noch mehr?",66)
	NODE(66)
		SAY("Und trotz seiner metallischen Erscheinung, wirkt es warm und als sei es mit der Mine oder gar mit der ganzen Erde verbunden. ... Wenn meine Vermutung richtig ist, so ist dieses Herz eines der beiden Tacholytium Fragmente, die dir fehlen um einen PSI Amplifier zu bauen.")

		ANSWER("Aber wie soll ich einen angeblich unbesiegbaren Titan Warbot zu Fall bringen.",67)
	NODE(67)
		SAY("Du kannst ihn wahrscheinlich nicht vernichten, aber mit Sicherheit kannst du ihn f�r einen Moment kampfunf�hig machen. Dann kannst du ihm sein Herz abnehmen.")

		ANSWER("Was ist, wenn ich ihn nicht alleine besiegen kann?",68)
	NODE(68)
		SAY("Du kannst Dir auch Gef�hrten suchen, die dich auf deiner Mission begleiten und dir helfen, aber achte immer darauf, dass du im Kampf gegen den WarBot den gr�ssten Schaden anrichtest und nicht einer deiner Gef�hrten, denn sonst wird er sein Herz aus Tacholytium nicht offenbaren.")

		ANSWER("Ich verstehe, Bruder.",69)
	NODE(69)
		SAY("So begebe dich zu den Gaya Minen, um den dir vorbestimmten Pfad zu erf�llen. Komm zu mir zur�ck, wenn du das Herz des WarBots gefunden hast. M�ge Crahn deine Mission segnen.")
		SETNEXTDIALOGSTATE(70)
		ENDDIALOG()

--Spieler killt Warbot Titan Trigger 66
		
	NODE(70)
		TAKEITEM(9001)
		if(result==0)then
			SAY("Wo hast du das Herz gelassen? Ist es immer noch in der Gaya Mine?")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(71)
			SAY("Sei gegr�sst, Bruder. Wie ich sehe, tr�gst du das Herz des W�chters von Gaya bei dir. Es scheint, als wenn es mittlerweile kaum Gegner g�be, die deiner gewaltigen Macht gewachsen w�ren.")

			ANSWER("Es war ein harter, anstrengender Kampf, Bruder. Aber der Wille Crahns war mit mir.",71)
		end
	NODE(71)
		SAY("Du entwickelst dich nicht nur zu einem unserer wertvollsten Mitglieder, sondern auch zu einer unserer m�chtigsten Waffen. Ich habe beim Rat des Ordens angeregt, dich in den schwarzen Zirkel zu erheben.")

		ANSWER("Das ist zuviel der Ehre.",72)
	NODE(72)
		SAY("Aber bis ich hier eine Entscheidung erwarten darf, werden die K�sten des Midworld Ocean noch ein paar dutzend mal die Ebbe und die Flut sehen.")

		ANSWER("Danke Bruder Agnus. Ich weiss eure Hochachtung zu sch�tzen.",73)
	NODE(73)
		GIVEMONEY(10000)
		SAY("F�r den erfolgreichen Abschluss der Mission und f�r die erfolgreiche Vergeltung der M�nche unter Bruder Harkon, hat mich der Orden angewiesen, dir diese 10.000 Neocron Credits zu �berreichen. Nimm den Lohn f�r deine Arbeit und vervollst�ndige deine Ausr�stung und deine F�higkeiten. Gehe hin im Lichte Crahns.(n�chste Mission Level 40)")
		EPICRUNFINISHED(10,3)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
--Warbot
	NODE(100)
		SAY("zzzzt...")
		ATTACK()
		ENDDIALOG()

end