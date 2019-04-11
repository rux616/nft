--new
--Twilight Guardian
--
--Trigger
--Triggernumber,Type,Person
--0,D,donnovan
--1,D,tovall
--2,D,donnovan
--3,D,tovall
--
--Startnode, Person
--0, Contact Person
--50, Donnovan 2262
--100, TOVALL 2263
--150, DONNOVAN
--200, TOVALL
--250,
--
--NPC0	NPC1	NPC2	NPC3	TRG0	VAL01	VAL02	VAL03	TRG1	VAL01	VAL02	VAL03	TRG2	VAL01	VAL02	VAL03	TRG3	VAL01	VAL02	
--2262	2263			3	0	0	0	3	1	1	0	3	0	2	0	3	1	2	
--START	START	START	START
--50	100
--Items
--PAKET F�R JADE 100
--powerbooze gold 804
function DIALOG()
--------------------------------------------------------------------
--Contact Person
--0
	
	NODE(0)
		SAY("Willkommen. Willkommen bei den Twilight Guardian. Ich versichere dir, du bist nicht der einzige, der genug hat von den L�gen und der Gewalt, die Lion Reza verbreitet. Wenn du dich noch nicht lange bei uns befindest, wurdest du wohl noch keiner Zelle zugewiesen, oder? ")

		ANSWER("Nein, ich bin gerade erst hier angekommen um es Reza heim zu zahlen.",1)
	NODE(1)
		SAY("Sehr gut, ich freue mich immer wieder jemanden auf unserer Seite willkommen zu heissen. Ich denke, wir k�nnen dich Donnovan anvertrauen, er ist ein f�higer K�mpfer f�r die Guardians und ist mit allen Wassern gewaschen. Ist das in Ordnung?")

		ANSWER("Mehr als gut, ich mache mich sofort auf den Weg. ",2)
	NODE(2)
		SAY("Du kannst ihn gar nicht verfehlen, er steht in der N�he des Eingangs in unsere Canyons. Er hat seine Augen immer auf dem Eingang, auf dass wir keine b�se �berraschung von den Grausamkeiten Rezas erleben.")

		STARTMISSION()
		SETNEXTDIALOGSTATE(3)
		ENDDIALOG()
	NODE(3)
		SAY("Na, vergessen, wo du hin musst? Donnovan steht nah am Eingang zu unserem HQ.")
		ENDDIALOG()

--------------------------------------------------------------------
--donnovan
--50
	NODE(50)
		SAY("Ein neues Gesicht sehe ich da. Das lobe ich mir, je mehr wir sind, desto eher k�nnen wir Reza in seinen fetten Hintern treten. Du wei�t aber sicher, warum wir das alles tun, nicht?")

		ANSWER("Weil Reza schon viel zu lange das gemacht hat, was er wollte? ",51)
	NODE(51)
		SAY("Auf eine Weise stimmt das. Wir tun es, da er die Todesstrafe �ber Kleinigkeiten verh�ngt, da er sich selbst �ber die Bev�lkerung stellt und weil er uns verraten hat. Reza ist ein Diktator, der nur sein eigenes Wohl im Auge hat. In Wahrheit bietet er den Leuten keinen Schutz hinter den Mauern von Neocron sondern Unterdr�ckung. Und wir sind die einzigen, die im Namen aller vern�nftigen Neocron Bewohner den Kampf mit ihm aufnehmen k�nnen. ")

		ANSWER("Und wir werden Neocron dann den B�rgern wiedergeben.",52)
	NODE(52)
		SAY("Hagen Yager hat f�r diesen Fall ein paar ausgereifte Pl�ne. Auf jeden Fall wird die ganze Reza Regierung die Wut der Bev�lkerung zu sp�ren bekommen, wenn wir sie in Grund und Boden stampfen. In Wahrheit regiert Reza n�mlich so wie es ihm gerade passt ohne auch nur im geringsten auf seinen Regierungsstab zu h�ren. ")

		ANSWER("Das kann so nicht weitergehen.",53)
	NODE(53)
		SAY("Ganz richtig und genau deswegen m�ssen wir darauf acht geben, dass unser Eifer nicht nachl�sst. Es liegt an uns, an uns alleine, Neocron aus den Klauen von Reza zu befreien. Deshalb d�rfen wir nie nachlassen oder unsere eigenen Regeln brechen. So wie Tovall. Zum Gl�ck hat er nur eine kleine Regel durchbrochen, aber ich muss deswegen trotzdem ein Gespr�ch mit ihm f�hren. Gehe zu ihm und sage ihm, dass ich ihn zu einem Gespr�ch erwarte.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()

--------------------------------------------------------------------
--TOVALL
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Sorry, ich hab im Moment keine Sprechstunde. Soll heissen, keine Zeit.")
			ENDDIALOG()
		else
			SAY("Ah, was kann ich f�r dich tun? Ich denke, du bist noch nicht lange hier, richtig? Sonst h�tte ich dich mit Sicherheit schon mal gesehen.")
	
			ANSWER("Das mag stimmen, ich fange gerade erst richtig an. Donnovan schickt mich.",101)
		end
	NODE(101)
		SAY("Was will denn der alte? Der macht immer stress, kaum zu glauben.")

		ANSWER("Er erwartet dich zu einem pers�nlichen Gespr�ch, wegen einer Regel�bertretung.",102)
	NODE(102)
		SAY("Und da soll ich freiwillig hin? Woher weiss ich denn, dass du mir keinen B�ren aufbinden willst? Ich traue doch nicht einfach jedem dahergelaufenen Runner �ber den Weg. ")

		ANSWER("Mann, ich bin doch nicht dein Gegner hier. Reicht es nicht, dass Reza mitsamt seinen ganzen tollen Freunden uns im Nacken h�ngt?",103)
	NODE(103)
		SAY("Sollte man meinen, aber warum sollte ich etwas von so einem Gespr�ch haben? Ich weiss doch, dass ich eine Regel �bertreten habe.")

		ANSWER("Tja, da will man mal jemandem helfen und dann so etwas. Du kannst hier meinetwegen verrecken, so verantwortungslos wie du bist. Mit Leuten wie dir werden wir Reza wohl nie von seinem Thron kippen k�nnen.",104)
		ANSWER("H�r mal, ich bin nicht hier um dich zu kritisieren, aber vielleicht machst du es so nur noch schlimmer. ",106)
	NODE(104)
		SAY("Was? Was hast du gesagt?")

		ANSWER("Ich sagte, dass so ein Verantwortungsloser Kerl wie du uns doch nur in den Dreck ziehst.",105)
		ANSWER("Ach vergiss es.",106)
	NODE(105)
		SAY("Du wagst es so mit mir zu sprechen? Na warte�")

		ATTACK()
		ENDDIALOG()
	NODE(106)
		GIVEITEM(804)
		SETNEXTDIALOGSTATE(107)
		SAY("Ja, ich weiss ja, dass ich es nur noch schlimmer mache, aber ich bin ein furchtbarer Dicksch�del. Du bist schon in Ordnung, hier hast du auch etwas zu trinken. Na, da sind wir ja fast aneinander geraten, was? ")

		ANSWER("Nicht der Rede wert, ich weiss, wie das ist, wenn man gereizt ist.",107)
	NODE(107)
		GIVEITEM(9480)
--PAKET F�R JADE		

		SAY("Tja, vielleicht werde ich jetzt ja doch mal zu Donnovan schauen. K�nntest du ihm Bescheid sagen? Ach ja, ich gebe dir auch gleich noch ein Paket mit, dass f�r Jade ist. Donnovan wird schon Bescheid wissen. Danke.")
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()


	
--------------------------------------------------------------------
--DONNOVAN
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Sprich erst einmal mit Tovall, dann sehen wir weiter.")
			ENDDIALOG()

		else
			SAY("Na, hast du dem Dicksch�del meine Nachricht �berbracht? ")

			ANSWER("Ja, er stimmte dem Treffen mit ein bischen �berredung zu.",151)
		end
	NODE(151)
		SAY("Gut zu h�ren, sonst f�hrt er sich ja immer wie ein st�rrisches Drom auf. Gibt es sonst noch etwas?")

		ANSWER("Er hat mir auch ein Paket f�r Jade mitgegeben, auch wenn ich keinen blassen Schimmer habe, wer das ist.",152)
	NODE(152)
		SAY("Jade? � Wei�t du, dass ist keine sch�ne Geschichte. Die letzte Nachricht, die wir von ihr bekamen berichtete von verst�rkten Eins�tzen der NCPD und das sie nicht w�sste, wie lange sie noch unentdeckt bleiben k�nnte. Allerdings haben wir diese Nachricht schon vor einer Woche erhalten.")

		ANSWER("Eine Woche? Was kann ihr denn passiert sein?",153)
	NODE(153)
		GIVEITEM(806)
		SETNEXTDIALOGSTATE(154) 
		SAY("Bei unserer Aufgabe ist es nun mal so, dass wir dem Tod ins Auge sehen. Jeder einzelne hier hat nichts zu verlieren und alles zu gewinnen. Aber es gibt nat�rlich auch diejenigen, die den Tag unseres Triumphes nicht miterleben k�nnen. Aber auch wenn sie tot sind, sie leben weiter. Durch uns und unsere Taten und so lange wir ihrer Gedenken. Denn es ist eine Ehre und ein guter Tod f�r die Sache zu sterben, f�r die man lebt. Hier, bringe diese Flasche Wein zu Tovall. Er wird wissen, was passiert ist.")

		ANSWER("Und was ist dann meine Aufgabe?",154)
	NODE(154)
		SAY("Dann, werter Mitstreiter, wirst du dich erst einmal in Form bringen m�ssen. Das heisst, Training, Training und noch einmal Training. Wenn du dann bereit bist f�r mehr, setze dich mit einer Contact Person in Kontakt.")
		ACTIVATEDIALOGTRIGGER(2)
		SETNEXTDIALOGSTATE(155)
		ENDDIALOG()
	NODE(155)
		SAY("Gib Tovall die Flasche Wein. Danach kannst du ein bischen trainieren, bis es mit dem Kampftraining weitergeht.")
		ENDDIALOG()



--------------------------------------------------------------------
--TOVALL
--200
	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Keine Angst, ich werde Donnovan schon noch besuchen.")
			ENDDIALOG()
		else
			TAKEITEM(9480)
			if(result==0)then
				SAY("Wenn du das Paket schon nicht abgeben kannst, dann bringe es mir wenigstens wieder zur�ck.")
				ENDDIALOG()
			else
				SETNEXTDIALOGSTATE(201)
				SAY("Aber was sehe ich? Du bringst mir das Paket zur�ck und eine Flasche Wein noch dazu? Das ist gar nicht gut.")

				ANSWER("Ich denke, du wei�t, was damit gemeint ist.",201)
			end
		end
	NODE(201)
		GIVEMONEY(5000)
		SAY("Klar weiss ich das, aber Donnovan irrt sich, die kleine ist so z�h, die lebt sicher noch. Wenn ich hier nur irgendwie rausk�me. Nun ja, aber die Flasche Wein lasse ich mir aber trotzdem schmecken. Man sieht sich.(n�chste Mission ab Level 20)")
		EPICRUNFINISHED(15,0)
		ACTIVATEDIALOGTRIGGER(3)
		ENDDIALOG()


end