--new
function DIALOG()

--Trigger
--Triggernumber,Type,Person
--0
--0,D,Foster
--1,SPieler killt Taylor
--2,D,Recruiter
--200

--Startnode, Person
--0 Human Resource
--50 Foster
--100 Taylor
--150 Recruiter
--200
--250

-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("Die Situation ist immer noch nicht gekl�rt. Du kannst etwas Auszeit nehmen.")
		
		ANSWER("Ich denke ich sollte Jester einen Besuch abstatten und die ganze Situation selbst aufkl�ren. Wenn etwas erledigt werden soll, mach es selbst.",1)
	NODE(1)
		SAY("Ziemlich grosse Worte. Wenn es dir gelingen sollte, diese Situation trotzdem zu kl�ren w�rde Tsunami dir auf jeden Fall sehr dankbar sein.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()
		

-----------------------------------------------------
--Jester

	NODE(50)
		GIVEITEM(3185)
		GIVEITEM(3185)
		GIVEITEM(3185)
		SAY("Es hat mich einiges an Zeit gekostet die Waffe zu designen, die ich ihnen gab! Hier ist etwas Munition dafuer. Die Waffe sollte ihnen helfen mit Taylor fertig zu werden.")
		SETNEXTDIALOGSTATE(51)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
	NODE(51)
		SAY("Ich hoffe die Waffe gef�llt ihnen?")
		ENDDIALOG()
		
		

-----------------------------------------------------
--Taylor

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Du wagst es dich hier noch blicken zu lassen?")
			ENDDIALOG()
		else
			SAY("Du! Du wagst es mir entgegenzutreten? Verr�ter!")
		
			ANSWER("Verdreh nicht die Tatsachen. Du bist der Verr�ter und ich kann es mit diesem Datacube beweisen.",101)
		end
	NODE(101)
		SAY("Was?! Lass mich mal sehen. Wo hast du das her?! Es sieht fast echt aus, aber ich muss dir leider mitteilen, dass es gef�lscht ist. Ungl�cklicherweise.")
		
		ANSWER("Was meinst du damit? Ich habe das von einer zuverl�ssigen Quelle.",102)
	NODE(102)
		SAY("Ein Kontaktmann? Aber du meinst nicht zuf�llig Hontoka, oder?")
		
		ANSWER("Allerdings.",103)
	NODE(103)
		SAY("Ich glaube es nicht, Hontoka hat das alles von Anfang an geplant. Er hat mich wie ein kleines Kind an der Nase herumgef�hrt. Glaub mir, er war es, er ist derjenige, der immer davon spricht, wie sehr er die alten Zeiten vermisst und Ehre und den ganzem Mist wieder herstellen will. Ich wette er hat dir auch erz�hlt, dass eine Drohung von Aussen den gew�nschten Effekt haben k�nnte, oder?")
		
		ANSWER("Ja... was ist damit?",104)
	NODE(104)
		SAY("Er spricht immer dar�ber, es ist so offensichtlich!")
		
		ANSWER("Ich bin nicht �berzeugt! Was ist mit Gruber? Du schicktest mich dorthin um get�tet zu werden.",105)
	NODE(105)
		SAY("Nein, das tat ich nicht! Er hatte die Order, dir eine Mission zu geben! Falls er dich t�ten wollte war das ganze von Hontoka arrangiert. Er ist derjenige, den du t�ten solltest.")
		
		ANSWER("Nein, du planst nur mich zu verwirren. Ich glaube trotz deiner L�gengeschichten, dass du der Spion bist. Bereite dich auf die gerechte Belohnung f�r deinen Verrat vor.",106)
	NODE(106)
		SAY("Das ist schade. Nun muss ich dich leider t�ten.")
		ATTACK()
		SETNEXTDIALOGSTATE(107)
		ENDDIALOG()
	NODE(107)
		SAY("So leicht kommst du mir nicht davon!")
		ATTACK()
		ENDDIALOG()

--Spieler killt entweder Hontoka oder Taylor...Taylor ist der verantwortliche Trigger 1
-----------------------------------------------------
--Recruiter

	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Ich dachte ich h�tte dir schon gesagt, dass du nicht zur�ckkommen sollst bis die Lage gekl�rt ist.")
			ENDDIALOG()
		else
			ISMISSIONTARGETACCOMPLISHED(0)
			if(result==0)then
				SAY("Schon mal versucht mit Taylor zu reden?")
				ENDDIALOG()	
			else
				SAY("Komm wieder, wenn wir endlich wissen, wer der Spion ist.")
		
				ANSWER("Nicht mehr n�tig. Ich habe herausgefunden, dass es Taylor ist und ich habe ihn schon eliminiert. Ich habe alle relevanten Daten , die ihn als Spion ausweisen auf diesem Datacube.",151)
			end
		end
	NODE(151)
		TAKEITEM(9254)
		if(result==0)then
			SAY("Aber du hast keinen Datacube! Wenn du keine Beweise hast, stehen wir genau am Anfang.")
			ENDDIALOG()
		else
			SAY("Es scheint wahr zu sein. Kaum vorstellbar, dass Taylor Gomez so etwas tun w�rde...")
		
			ANSWER("Er war ein gerissener Teufel. Ich hoffe er �berlebt das ganze hier nicht.",152)
		end
	NODE(152)
		SAY("Du hast Tsunami einen unbezahlbaren Dienst geleistet, vielen Dank. Ich bin mir sicher, Veronique w�rde dir pers�nlich die Hand daf�r sch�ttel, wenn sie nicht so besch�ftigt w�re. Du hast dir die Belohnung verdient, die auf die Ergreifung des Spions ausgesetzt worden ist. 150 000 credits. Vielen Dank noch einmal.")
		
		ANSWER("Ich sagte euch, dass ich so loyal wie kein zweiter bin. Noch eine Sache. Leila ist der Name von einem Tsunami Mitglied, dass als Spion im Black Dragon HQ arbeitet. Ihre wahre Identi�t ist aufgeflogen und nun muss sie jeden Tag um ihr Leben f�rchten.",153)
	NODE(153)
		GIVEMONEY(150000)
		SAY("Wir werden uns nat�rlich darum k�mmern. Sei versichert. Wir w�rden doch kein Tsunami Mitglied im Stich lassen, oder? Warum gr�ndest du keinen Clan und unterst�tzt so die Tsunami noch besser? Du scheinst sehr f�hig darin zu sein, auf eigenen F�ssen zu stehen. Von nun an gibt es niedrigere Mitglieder die diese l�stigen Jobs f�r dich �bernehmen werden. Ich hoffe, dass du gut in unsere Reihen passen wirst. Viel Gl�ck.")
        EPICRUNFINISHED(8,5)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
		

end