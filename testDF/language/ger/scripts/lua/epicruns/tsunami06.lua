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
		SAY("Die Situation ist immer noch nicht geklärt. Du kannst etwas Auszeit nehmen.")
		
		ANSWER("Ich denke ich sollte Jester einen Besuch abstatten und die ganze Situation selbst aufklären. Wenn etwas erledigt werden soll, mach es selbst.",1)
	NODE(1)
		SAY("Ziemlich grosse Worte. Wenn es dir gelingen sollte, diese Situation trotzdem zu klären würde Tsunami dir auf jeden Fall sehr dankbar sein.")
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
		SAY("Ich hoffe die Waffe gefällt ihnen?")
		ENDDIALOG()
		
		

-----------------------------------------------------
--Taylor

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Du wagst es dich hier noch blicken zu lassen?")
			ENDDIALOG()
		else
			SAY("Du! Du wagst es mir entgegenzutreten? Verräter!")
		
			ANSWER("Verdreh nicht die Tatsachen. Du bist der Verräter und ich kann es mit diesem Datacube beweisen.",101)
		end
	NODE(101)
		SAY("Was?! Lass mich mal sehen. Wo hast du das her?! Es sieht fast echt aus, aber ich muss dir leider mitteilen, dass es gefälscht ist. Unglücklicherweise.")
		
		ANSWER("Was meinst du damit? Ich habe das von einer zuverlässigen Quelle.",102)
	NODE(102)
		SAY("Ein Kontaktmann? Aber du meinst nicht zufällig Hontoka, oder?")
		
		ANSWER("Allerdings.",103)
	NODE(103)
		SAY("Ich glaube es nicht, Hontoka hat das alles von Anfang an geplant. Er hat mich wie ein kleines Kind an der Nase herumgeführt. Glaub mir, er war es, er ist derjenige, der immer davon spricht, wie sehr er die alten Zeiten vermisst und Ehre und den ganzem Mist wieder herstellen will. Ich wette er hat dir auch erzählt, dass eine Drohung von Aussen den gewünschten Effekt haben könnte, oder?")
		
		ANSWER("Ja... was ist damit?",104)
	NODE(104)
		SAY("Er spricht immer darüber, es ist so offensichtlich!")
		
		ANSWER("Ich bin nicht überzeugt! Was ist mit Gruber? Du schicktest mich dorthin um getötet zu werden.",105)
	NODE(105)
		SAY("Nein, das tat ich nicht! Er hatte die Order, dir eine Mission zu geben! Falls er dich töten wollte war das ganze von Hontoka arrangiert. Er ist derjenige, den du töten solltest.")
		
		ANSWER("Nein, du planst nur mich zu verwirren. Ich glaube trotz deiner Lügengeschichten, dass du der Spion bist. Bereite dich auf die gerechte Belohnung für deinen Verrat vor.",106)
	NODE(106)
		SAY("Das ist schade. Nun muss ich dich leider töten.")
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
			SAY("Ich dachte ich hätte dir schon gesagt, dass du nicht zurückkommen sollst bis die Lage geklärt ist.")
			ENDDIALOG()
		else
			ISMISSIONTARGETACCOMPLISHED(0)
			if(result==0)then
				SAY("Schon mal versucht mit Taylor zu reden?")
				ENDDIALOG()	
			else
				SAY("Komm wieder, wenn wir endlich wissen, wer der Spion ist.")
		
				ANSWER("Nicht mehr nötig. Ich habe herausgefunden, dass es Taylor ist und ich habe ihn schon eliminiert. Ich habe alle relevanten Daten , die ihn als Spion ausweisen auf diesem Datacube.",151)
			end
		end
	NODE(151)
		TAKEITEM(9254)
		if(result==0)then
			SAY("Aber du hast keinen Datacube! Wenn du keine Beweise hast, stehen wir genau am Anfang.")
			ENDDIALOG()
		else
			SAY("Es scheint wahr zu sein. Kaum vorstellbar, dass Taylor Gomez so etwas tun würde...")
		
			ANSWER("Er war ein gerissener Teufel. Ich hoffe er überlebt das ganze hier nicht.",152)
		end
	NODE(152)
		SAY("Du hast Tsunami einen unbezahlbaren Dienst geleistet, vielen Dank. Ich bin mir sicher, Veronique würde dir persönlich die Hand dafür schüttel, wenn sie nicht so beschäftigt wäre. Du hast dir die Belohnung verdient, die auf die Ergreifung des Spions ausgesetzt worden ist. 150 000 credits. Vielen Dank noch einmal.")
		
		ANSWER("Ich sagte euch, dass ich so loyal wie kein zweiter bin. Noch eine Sache. Leila ist der Name von einem Tsunami Mitglied, dass als Spion im Black Dragon HQ arbeitet. Ihre wahre Identiät ist aufgeflogen und nun muss sie jeden Tag um ihr Leben fürchten.",153)
	NODE(153)
		GIVEMONEY(150000)
		SAY("Wir werden uns natürlich darum kümmern. Sei versichert. Wir würden doch kein Tsunami Mitglied im Stich lassen, oder? Warum gründest du keinen Clan und unterstützt so die Tsunami noch besser? Du scheinst sehr fähig darin zu sein, auf eigenen Füssen zu stehen. Von nun an gibt es niedrigere Mitglieder die diese lästigen Jobs für dich übernehmen werden. Ich hoffe, dass du gut in unsere Reihen passen wirst. Viel Glück.")
        EPICRUNFINISHED(8,5)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
		

end