--new
function DIALOG()
--Trigger
--100,150 Dialog
--
-----------------------------------------------------------------
--Resource officer

	NODE(0)
		SAY("Seid gegr�sst, Bruder. Der Rat hat mich angesprochen und sich nach meiner Beurteilung �ber eure F�higkeiten erkundigt. Ich habe geh�rt, dass Pater Agnus euch f�r den Schwarzen Zirkel vorgeschlagen hat. Bei euren Heldentaten w�rde es micht nicht wundern, wenn ihr bald in diesen Zirkel aufgenommen werdet.")

		ANSWER("Danke f�r euer Lob, Bruder. Es ist richtig, dass mir das Licht des Crahn in den vergangenen Monaten den Weg wohl gewiesen hat.",1)
	NODE(1)
		SAY("So jedenfalls erz�hlt man es sich innerhalb des gesamten Ordens. Nun denn... Wenn ihr in den schwarzen Zirkel aufgenommen werden m�chtet, so m�sst ihr zun�chst eine Pr�fung bei einem anderen Pater des schwarzen Zirkels ablegen.")

		ANSWER("Ich bin bereit f�r diese Pr�fung. Erz�hlt mir mehr.",2)
		ANSWER("Ich f�hle, dass ich f�r eine solche Aufgabe noch nicht bereit bin.",4)
	NODE(2)
		SAY("Die PSI M�nche des schwarzen Zirkels zeichnen sich durch ihre Weisheit, aber vor allem auch durch ihre Macht und St�rke aus. Ein M�nch des schwarzen Zirkels muss f�hig sein, allein selbst in den dunkelsten und gef�hrlichsten Regionen der Wastelands zu bestehen.")

		ANSWER("WEITER",3)
	NODE(3)
		SAY("Begib dich zu Father Morpheus, der in den Ruinen des verlassenen Crest Village lebt. Er wird dir deine Pr�fung geben und dich auf deinen Pilgerzug schicken. M�ge Crahn deine Pr�fung segnen.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(5)
		ENDDIALOG()
		
	NODE(4)
		SAY("Dann wird wohl noch etwas mehr Vorbereitung n�tig sein. Aber ihr solltet nicht zu lange brauchen.")
		ENDDIALOG()
	NODE(5)
		SAY("Ihr solltet doch mit Pater Morpheus in der Crest Village sprechen.")
		ENDDIALOG()	

-----------------------------------------------------------------
--Pater Morpheus

	NODE(50)
		SAY("Ihr seid also der junge M�nch des roten Zirkels, von dessen Taten der ganze Orden spricht?")

		ANSWER("Seid gegr�sst, Pater Morpheus. In die Erz�hlungen des Ordens mischt sich immer auch ein bisschen �bertreibung.",51)
	NODE(51)
		SAY("Bescheidenheit, mein Sohn, ist eine wichtige Voraussetzung, um in den schwarzen Zirkel aufgenommen zu werden. Zumindestens diese, kann ich euch schon jetzt bescheinigen. Wie es jedoch um euer Wissen und euren Mut bestellt ist, werden wir erst noch herausfinden m�ssen.")

		ANSWER("Bitte, Pater Morpheus... erweist mir die Ehre mich der Pr�fung stellen zu d�rfen.",52)
		ANSWER("Es tut mir leid, aber ich f�hle mich dieser Aufgabe noch nicht gewachsen.",60)
	NODE(52)
		SAY("Nun denn, so sei es... Die Pr�fung unterteilt sich in mehrere Aufgaben. Ziel der Pr�fung ist es, die zwei schwarzen Kristalle der V�ter Crahns zu sammeln und sie dann zu ihrem Ursprungsort, dem alten Yucida Dorf im Norden der Wastelands zu bringen.")

		ANSWER("Wo finde ich diese Kristalle?",53)
	NODE(53)
		SAY("Der erste Kristall wird von einem riesigen Mutanten namens Veskulus in den so genannten Crystal Caves versteckt. Den Eingang zu diesen H�hlen findest Du in Sektor ? der Wastelands.")

		ANSWER("WEITER",54)
	NODE(54)
		SAY("Der zweite befindet sich im Besitz eines gewaltigen Reapers namens Galopticus, der mit seinem Rudel in der N�he des Catlock Bay haust. ")

		ANSWER("Und wenn ich die Kristalle hab, soll ich sie ins Ancient Yucida Village bringen? Wem soll ich sie dort geben?",55)
	NODE(55)
		SAY("So ist es... gib die Kristalle Pater Tesara. Er wartet seit Jahrzehnten in den Ruinen des Villages auf die R�ckkehr der Kristalle. Er war einst der H�ter der schwarzen Kristalle, doch als ihm die Kristalle entwendet wurden, verstiess ihn der schwarze Zirkel ins Exil.")

		ANSWER("WEITER",56)
	NODE(56)
		SAY("Nur wenn du es schaffst, ihm die Kristalle zu bringen, wird er vom Zirkel rehabilitiert und wieder als einer der unseren anerkannt werden.")

		ANSWER("Ich werde mich bem�hen, euch nicht zu entt�uschen.",57)
	NODE(57)
		SAY("Auf deinem Weg durch die Wastelands werden dir viele Gefahren begegnen. F�rchte dich nicht. Einem so m�chtigen M�nch wie dir, k�nnen nur wenige Kreaturen gef�hrlich werden. ")

		ANSWER("WEITER",58)
	NODE(58)
		SAY("Wenn es dir gelingt, deine Aufgabe zu erf�llen, so komm danach wieder zu mir zur�ck, damit ich dich im Namen des schwarzen Zirkles weihen kann.")

		ANSWER("WEITER",59)
	NODE(59)
		SAY("Ausserdem hat Bruder Agnus mir berichtet, dass du sehr an der Gaya Energie interessiert bist und ich denke, dass ich einige interessante Informationen f�r dich habe... So gehe denn hin. M�ge das Licht Crahns dich auf all deinen Wegen erleuchten.")
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()
	NODE(60)
		SAY("Dann kehrt zur�ck, wenn ihr bereit seid.")
		ENDDIALOG()

-----------------------------------------------------------------
--Pater Tesara
		
	NODE(100)
		TAKEITEMCNT(9007,2)
		if(result==0)then
			SAY("Lasst mich in Frieden, ich suche diese Einsamkeit hier.")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(101)
			SAY("Sei gegr�sst, m�chtiger M�nch des roten Zirkels. Was f�hrt Euch zu mir?")

			ANSWER("Seid gegr�sst, Pater Tesara. Ich bringe euch die zwei schwarzen Kristalle der V�ter Crahns.",101)
		end
	NODE(101)
		SAY("Nein... soll ich das glauben? Die Kristalle waren seit Jahrzehnten verschollen. Wie ist es euch gelungen, alle Kristalle zu finden?")

		ANSWER("Nun, das finden war nicht das Problem. Father Morpheus nannte mir die Punkte, an denen ich sie finden w�rde. Viel unangenehmer war es, dass die Kristalle dort von recht unangenehmen Zeitgenossen bewacht wurden.",102)
	NODE(102)
		SAY("Ich wusste, Morpheus w�rde mich in diesen harten Zeiten nicht im Stich lassen. Er muss die Verstecke der Kristalle �ber Jahre ausspioniert haben, bevor er einen tapferen M�nch wie dich schicken konnte, die Kristalle zu bergen. Wie kann ich Euch nur danken.")

		ANSWER("Ihre Rehablitation in den schwarzen Zirkel ist mir Belohnung genug. Ich muss euch auch leider gleich wieder verlassen, da Pater Morpheus mich im alten Crest Village erwartet ...und bis dahin ist es noch ein weiter Weg. Leben sie wohl, Pater Tesara.",103)
	NODE(103)
		SAY("M�ge Crahn sie und ihre Tapferkeit segnen. Mein ewiger Dank ist euch gewiss. Leben sie wohl mein Sohn.",104)
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(104)
		ENDDIALOG()
	NODE(104)
		SAY("Habt nochmals vielen Dank. Crahn sei mit euch. Father Morpheus in Crest Village will sicherlich noch mit euch sprechen.")
		ENDDIALOG()

-----------------------------------------------------------------
--Pater Morpheus

	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Ihr solltet noch mit Pater Tesara sprechen. Die Kristalle sind in den Crystal Caves bei dem Giant Mutant Veskulus und in der N�he der Catlock Bay bei einem Giant Reaper Galopticus.")
			ENDDIALOG()	
		else
			SAY("Anscheinend neigen die Mitglieder des Ordens doch nicht zu �bertreibungen, wenn sie �ber eure F�higkeiten sprechen. Ihr habt die Pr�fung mit Bravour gemeistert, mein junger Bruder.")

			ANSWER("WEITER",151)
		end
	NODE(151)
		SAY("Hiermit segne ich ihren Weg und ihren Geist. Ab heute sind sie ein Mitglied des Schwarzen Zirkels. Sie haben damit die h�chste Auszeichnung erfahren, die die Bruderschaft des Crahn zu vergeben hat.")

		ANSWER("Ich f�hle mich geehrt, Bruder Morpheus. Ich werde mich meines Ranges w�rdig erweisen... Zu Beginn meiner Pr�fung sagten sie, dass sie Informationen �ber die magische Energie der Erde, Gaya, haben. K�nnen sie mir etwas dar�ber erz�hlen?",152)
	NODE(152)
		SAY("Gaya ist eine Kraft, die durch alles und jeden str�mt. Sie ist die Basis der Telekinese, also der PSI Kr�fte. M�nche mit m�chtigen PSI Kr�ften sind sich ihrer Gaya bewusst und k�nnen mit ihren Kr�ften sogar Tote wieder zum Leben erwecken.")

		ANSWER("WEITER",153)
	NODE(153)
		SAY("Wer Gaya versteht und beherrscht, wird stets im Einklang mit seinen Mitmenschen und seiner Umwelt leben.")

		ANSWER("Wieso k�nnen nur die M�nche die PSI Energie so gut steuern und einsetzen?",154)
	NODE(154)
		SAY("Das ist eine gute Frage, mein junger Bruder. Sehr selten gibt es auch andere Klassen, die die Macht beherrschen, aber wie du weisst, haben unsere Vorfahren nach dem grossen Licht f�r Jahrhunderte unter der Erde gelebt.")

		ANSWER("WEITER",155)
	NODE(155)
		SAY("In v�lliger Dunkelheit und Abgeschiedenheit konzentrierten sie sich auf ihre inneren Kr�fte. Ohne die Ablenkung durch das Licht und ohne optisches Reizempfinden, waren sie ganz auf ihre anderen Sinne angewiesen.")

		ANSWER("WEITER",156)
	NODE(156)
		SAY("Irgendwann werden sie die Macht der Erde einfach gesp�rt haben und sich von da an mit ihr auseinandergesetzt haben.")

		ANSWER("War das die Zeit, in der unserer Vorfahren verstanden haben, die komprimierten Elemente der neuen Erde zu nutzen?",157)
	NODE(157)
		
		SAY("Du meinst das Tacholytium, richtig? Ja... Ich erinnere mich. Bruder Agnus bat mich dir zu sagen, dass er noch ein weiteres Fragment gefunden hat. Es ist wohl das letzte noch fehlende Fragment zu deinem PSI Verst�rker.")

		ANSWER("WEITER",158)
	NODE(158)
		SAY("Ein m�chtiges Werkzeug. Du solltest stets darauf achten, dass es nicht in die falschen H�nde ger�t.")

		ANSWER("Vielen Dank Pater. Endlich habe ich alle 5 Fragmente. Wenn ich sie doch bloss schon zusammenbauen k�nnte. Ich brauche unbedingt eine alte Konstruktionsskizze des PSI Amplifiers oder einen Blueprint.",159)
	NODE(159)
		SAY("Da kann ich dir leider nicht helfen. Aber ich bin sicher, dass die L�sung deines Problems nicht mehr lange auf sich warten lassen wird. Gehe hin im Lichte Crahns, mein junger Bruder.(n�chste Mission Level 45)")
		GIVEMONEY(20000)
                SETNEXTDIALOGSTATE(160)
                EPICRUNFINISHED(10,4)
                ACTIVATEDIALOGTRIGGER(1)
                ENDDIALOG()
                
        NODE(160)
                        SAY("Hau ab")
                        ENDDIALOG()

end