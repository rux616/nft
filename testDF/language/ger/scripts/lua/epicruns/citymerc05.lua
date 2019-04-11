--new
--CityMerc

--
--Trigger
--Triggernumber,Type,Person
--0,PVP,1 Black D
--1,PVP,1 Twilight G
--2,D, Marcel
--3
--
--Startnode, Person
--0, Soldat
--50, Marcel 1681
--100, 
--150,
--200,
--250,
--
--Items
--Red Ribbon...Marcel
--Missionbase Eintrag
--NPC0	NPC1	NPC2	NPC3	TRG0	VAL01	VAL02	VAL03	TRG1	VAL01	VAL02	VAL03	TRG2	VAL01	VAL02	VAL03	TRG3	VAL01	VAL02	
--1681	0		0		0 		9		9		1		10		9		15		1		10		3		0		2
--START	START	START	START
--50
--

function DIALOG()
--------------------------------------------------------------------
--Human Resource Director
--0
	
	NODE(0)
		SAY("Dieses Mal wird es ernst, Soldat. Es scheint so, als ob all unsere alten Feinde aus ihren L�chern gekrochen sind und nun versuchen uns �rger zu machen. So k�nnen wir das aber nat�rlich nicht einfach hinnehmen, es muss etwas unternommen werden.")

		ANSWER("Wer uns bedroht, sollte mit starker Gegenwehr rechnen. Ich bin dabei.",1)
		ANSWER("Ich muss davor noch etwas anderes erledigen.",4)
	NODE(1)
		SAY("Sehr gut, dass h�rt man gerne. Das Problem ist nur, dass sie eine Art Guerilla Taktik anwenden. Jedes Mal, wenn wir unsere Kr�fte zusammenziehen um ihnen einen vernichtenden Schlag zu versetzen, dann l�sen sich ihre Verb�nde auf. Deshalb werden wir nun ebenso vorgehen, auch wenn sie das wahrscheinlich erwarten.")

		ANSWER("Das heisst kleine Gruppen von uns attackieren sie an ihren empfindlichen Stellen.",2)
	NODE(2)
		SAY("Mir scheint du hast deine Hausaufgaben gemacht. Ja, aber wir werden nur einzelne Soldaten losschicken um sie zu treffen, wo es weh tut. Deine Aufgabe wird sein je einen K�mpfer von Twilight Guardian und den Black Dragon zu eliminieren. Das wird uns die n�tige Zeit geben, einen ordentlichen Gegenschlag zu planen. Dabei wirst du nat�rlich nicht als einziger losgeschickt.")

		ANSWER("Wird erledigt, muss ich sonst noch auf etwas achten?",3)
	NODE(3)
		SAY("Ja, achte darauf  Krieger zu eliminieren, die ungef�hr deiner St�rke entsprechen. Die zu starken Gegner solltest du gar nicht erst beachten und zu schwache Gegner sind deiner nicht w�rdig. Wenn du das geschafft hast, wollte Marcel dich noch einladen. Viel Gl�ck, wir z�hlen auf dich.")
		SETNEXTDIALOGSTATE(5)
		STARTMISSION()
		ENDDIALOG()
		
	NODE(4)
		SAY("Wenns denn sein muss. Aber beeil dich, unsere Feinde werden sich auch keine Pause g�nnen.")
		ENDDIALOG()
	NODE(5)
		SAY("Nicht vergessen, einen Runner von jeweils Twilight Guardian und den Black Dragon zu eliminieren. Danach solltest du mit Marcel sprechen.")

		ENDDIALOG()

--Spieler killt je zwei BD und TG
--------------------------------------------------------------------
--MArcel
--50
	NODE(50)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Ich dachte du solltest je einen Black Dragon und Twilight Guardian eliminieren. Komm wieder, wenn deine Arbeit getan ist.")
			ENDDIALOG()
		else
			ISMISSIONTARGETACCOMPLISHED(1)
			if(result==0)then
				SAY("Ich dachte du solltest je einen Black Dragon und Twilight Guardian eliminieren. Komm wieder, wenn deine Arbeit getan ist.")
				ENDDIALOG()
			else	
				GIVEITEM(804)
--Red Ribbon
				SAY("Du wirst schon jetzt als der Red Ribbon gefeiert, der am schnellsten diesen Rang erreicht hat und ich gebe zu, du hast das Zeug dazu. Genau so einen Soldaten k�nnen wir in der nahen Zukunft gebrauchen. Es stehen grosse Ver�nderungen bevor. Aber genug davon, hiermit verleihe ich dir den Red Ribbon. Er steht f�r den Mut und den Einsatz, den du bewiesen hast.")

				ANSWER("Vielen Dank, ich werde ihn ihn Ehren halten. Was meintest du genau mit Ver�nderungen?",51)
			end
		end
	NODE(51)
		SAY("Da du nun etwas besch�ftigt warst, hast du die Ver�nderungen, die sich hier ereignet haben ja gar nicht mitbekommen. Gratulation, die Gegner hast du auf jeden Fall das F�rchten gelehrt. Hier waren wir indes aber auch nicht ganz unt�tig. Alles ist im Wandel begriffen. Ich habe viele der Mercs auf meiner Seite, die mich unterst�tzen. Ich denke, das Auge wird bald abtreten m�ssen.")

		ANSWER("Du planst doch nicht etwa, Cajun zu bek�mpfen?",52)
	NODE(52)
		GIVEMONEY(20000)
		SAY("Nur wenn es unbedingt notwendig ist. Ich bin mit Haut und Haaren ein CityMerc und deswegen werde ich auch alles tun, die Mercs so zu erhalten, wie es immer war. Aber es wird noch einige Zeit dauern, bis wir unsere Stimmen erheben k�nnen. Ruhe dich ersteinmal aus, ich z�hle auf deine Unterst�tzung beim n�chsten Mal. (n�chste Mission ab Level 45)")
		ACTIVATEDIALOGTRIGGER(2)
		EPICRUNFINISHED(11,4)	
		ENDDIALOG()


end