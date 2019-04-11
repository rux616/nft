
--new
function DIALOG()
-----------------------------------------------------------------
--resources officer
	NODE(0)
		SAY("Crahn segne Dich, mein junger M�nch. Wie ich sehe, hast du hart trainiert... Der Orden ist bereit, dich in einen h�heren Zirkel aufzunehmen. Ich denke, die Zeit ist reif, dich mit einer neuen, wichtigen Aufgabe zu betrauen. Bist Du bereit f�r eine neue Herausforderung?")

		ANSWER("Ja, Schwester. Es ist nach wie vor mein ganzer Wunsch, Crahn zu dienen.",1)
		ANSWER("Gebt mir noch ein wenig Zeit, Pater.",10)
	NODE(1)
		SAY("Nun denn... schon in den alten Zeiten, als Shirkan und Neopha Kansil das Wort Crahn's in den Strassen von Neocron verbreiteten und die Stadt unter der Kontrolle unserer V�ter war, gelang es einer kleinen Gruppe von aufst�ndigen Wissenschaftlern, sich unserem Einfluss zu entziehen.")

		ANSWER("Ich denke, ich habe davon schon einmal gelesen.",2)
	NODE(2)
		SAY("Wie du weisst, spreche ich von den Fallen Angels, jener Gruppe, die im Jahre 2633 in die Wastelands zog um dort im Exil das Tech Haven Laboratorium zu errichten.")

		ANSWER("Ja Schwester, ich habe die Geschichte Neocrons und die unseres Ordens ausf�hrlich studiert.",3)
	NODE(3)
		SAY("In den Geschichtsb�chern steht nicht die ganze Wahrheit, mein junger M�nch. In den Augen der B�rger Neocrons sind die Fallen Angels eine harmlose Gruppe von Wissenschaftlern... aber wir PSI M�nche kennen die Wahrheit.")

		ANSWER("Das m�chte ich mit eigenen Ohren h�ren..",4)
	NODE(4)
		SAY("Die Fallen Angels sind Kinderm�rder und Diebe. In geheimen Laboratorien betreiben sie menschenverachtende Experimente, deren detaillierte Darstellung ich dir lieber ersparen m�chte.")

		ANSWER("Aber ich dachte, dass die Fallen Angels ausschliesslich zum Wohle der Menschheit...",5)
	NODE(5)
		SAY("Schweig! ... Glaube niemals der verlogenen Propaganda der Angels. Nur die Br�der des Crahn kennen den Weg des Lichts... Nun denn, es ist Unheil genug, dass die Fallen Angels ihre dunklen Experimente vor den Augen der schweigenden �ffentlichkeit durchf�hren, ...")

		ANSWER("Beim heiligen Crahn.",6)
	NODE(6)
		SAY("... aber das schlimmste f�r unseren Orden ist, dass sich ihre Arbeit auf von uns gestohlene Forschungsergebnisse st�tzt. Die Fallen Angels h�tten niemals das NeuroLink System entwickeln k�nnen, wenn sich ihr Anf�hrer, Thomas Cooper, damals nicht grossz�gig an unseren Forschungsunterlagen bedient h�tte.")

		ANSWER("Oh Schwester, sagt mir wie ich dem Orden in dieser Sache dienen kann.",7)

	NODE(7)
		SAY("Nun, wir wollen Gleiches mit Gleichem vergelten. Unserem hohen Bruder Gabriel ist es nach jahrelanger Vorbereitung gelungen, von den Fallen Angels als einer der ihren anerkannt zu werden. Er hat in den letzten zwei Jahren in Tech Haven gearbeitet und ist ein enger Vertrauter von Sylvia Bennet geworden.")

		ANSWER("Ich nehme an, ich soll mich mit ihm treffen?",8)
	NODE(8)
		SAY("Richtig. Er wird dir eine HoloDisk mit wichtigen Forschungsergebnissen der Fallen Angels �bergeben. Bring diese Disk zu Pater Manus hierher, damit dieser mit der Auswertung der Daten beginnen kann. Bruder Gabriel wird seinen Weg zum Guardian Gate in Sektor 01 schon zur�ckgelegt haben. Also spute dich.")

		ANSWER("So sei es, Schwester.",9)
	NODE(9)
		SAY("Achte darauf, dich unauff�llig zu verhalten. Es k�nnten Mitglieder der Fallen Angels in der N�he sein. Sie d�rfen nicht sehen, dass Bruder Gabriel Kontakt zu uns hat. Gehe hin, im Lichte des Crahn.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(11)
		ENDDIALOG()

	NODE(10)
		SAY("Dann bereite dich besser vor und komme dann erst wieder.")
		ENDDIALOG()

	NODE(11)
		SAY("Diese Aufgabe erledigt sich nicht von selbst, weisst du? Bruder Gabriel wartet in Sektor 01 und Pater Manus wartet hier.")
		ENDDIALOG()
-----------------------------------------------------------------
--Bruder Gabriel
	NODE(50)
		ACTIVATEDIALOGTRIGGER(0)
		SAY("*ARGH* Endlich ... kommst Du, Bruder...")

		ANSWER("Was ist dir zugestossen, Bruder Gabriel?",51)
	NODE(51)
		--Spieler organisiert ein Medpack
		TAKEITEM(35)
		if(result==0)then
			SAY("Die Angels... *ARGH* Ich bin verwundet... Schnell, ... ich brauche dringend ein Med Pack.")
			SETNEXTDIALOGSTATE(51)
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(52)
			SAY("*ARGH*")	

			ANSWER("Hier, nimm diese MedPack von mir und erz�hle mir, was passiert ist.",52)
		end
	NODE(52)
		
		SAY("Danke... ahhhh. Das tut gut!")

		ANSWER("Nun rede schon... Hast Du die HoloDisk, die ich Pater Manus bringen soll?",53)
	NODE(53)
		SAY("Nein... ich habe es nur noch mit letzter Kraft zu diesem Treffpunkt geschafft. Scheint so, als wenn Sylvia Bennet dahinter gekommen ist, dass ich kein Fallen Angel, sondern ein J�nger Crahn's bin.")

		ANSWER("Woher weisst du das?",54)
	NODE(54)
		SAY("Ein maskierter Runner der Fallen Angels lauerte mir auf. Er stach mehrfach mit einem Stiletto auf mich ein, nahm die HoloDisk an sich und verschwand. Ich habe versagt. Crahn's Zorn ist mir gewiss.")

		ANSWER("Mach dir keine Sorgen, Bruder. Ich werde niemandem von deinem Fehlschlag berichten... �rgerlich ist die Angelegenheit allerdings schon. Die Daten der HoloDisk wurden von der Bruderschaft dringend ben�tigt.",55)
	NODE(55)
		SAY("Ich weiss, ich weiss... Warte... Der Runner dachte ich sei tot und murmelte etwas von ProtoPharm und El Farid... Danach trat  er mir ins Gesicht und ich wurde ohnm�chtig.")

		ANSWER("Hmmm... Aber das ergibt keinen Sinn. Wenn er ein Mitglied der Fallen Angels war, warum sollte er die Disk dann zu ProtoPharm bringen?",56)
	NODE(56)
		SAY("Vielleicht gibt es eine geheime Allianz zwischen den Angels und BioTech... Ein B�ndnis, von dem wir noch nichts wissen? Wenn du dich beeilst, kannst du die Disk ja vielleicht noch abfangen. Ich bitte dich.")

		ANSWER("Aber wie? Die Disk kann �ber tausend Wege nach Neocron gelangen.",57)
	NODE(57)
		SAY("Das stimmt nicht ganz, es gibt nur wenige Kontaktleute, die mit Neocron zu tun haben. Und da ich etwas von DoY City Center geh�rt habe, muss es jemand sein, von dem ich schon einmal geh�rt habe. Ein Hehler namens Ray oder so etwas. Er k�nnte die Disk bekommen haben. Ich weiss, dass es nur eine kleine Chance ist, aber es ist unsere einzige.")

		ANSWER("Sch�tze, dass ich DoY City Center also besuchen werde.",58)
	NODE(58)
		SAY("Such Raymon und setz ihn ausser Gefecht, da er dir die Disk sicher nicht freiwillig gibt. Danach kannst Du ihn durchsuchen. Aber sei vorsichtig, er ist sicher bewaffnet.")

		ANSWER("Ruh Dich aus Bruder... ich werde der Sache auf den Grund gehen.",59)
	NODE(59)
		SAY("M�ge Crahn's Licht dir den Weg weisen.")
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(60)
		ENDDIALOG()
	NODE(60)
		SAY("Hast du schon etwas neues herausgefunden? Falls du die Holodisk schon aus DoY City Center von Raymon geholt hast, bringe sie zu Pater Manus.")
		ENDDIALOG()


--Spieler killt Wissenschaftler Trigger 6
-----------------------------------------------------------------
--Pater Manus
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Wo ist die HoloDisk?")
			ENDDIALOG()
		else
			ISMISSIONTARGETACCOMPLISHED(1)
			if(result==0)then
				SAY("Wo ist die Holodisk?")
				ENDDIALOG()
			else
				SAY("Ahhh... mein junger Freund. Willkommen in der Kathedrale von Crahn. Hast Du die HoloDisk von Bruder Gabriel bekommen?")

				ANSWER("Nicht von Bruder Gabriel... aber ich hab sie. Hier... nehmen sie, Pater.",101)
			end
		end
	NODE(101)
		TAKEITEM(9005)
		if(result==0)then
			SAY("Wo ist die HoloDisk?")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(102)
			SAY("Danke. Die Bruderschaft weiss deinen Einsatz und deine Zuverl�ssigkeit mittlerweise sehr zu sch�tzen. Wenn ich eines Tages auch einmal etwas f�r dich tun kann, so lass es mich wissen.")

			ANSWER("Danke Pater, das werde ich tun. Haben sie schon etwas �ber den mystiri�sen Gegenstand aus Tacholytium herausgefunden?",102)
		end
	NODE(102)
		SAY("Ja, das h�tte ich fast vergessen. In unserem Archiv befand sich tats�chlich noch ein weiterer Gegenstand aus dem Material. Ich fand ihn in einer verstaubten Kiste. Seine Gr��e ist fast identisch, mit deinem Fragment, aber die Form weicht etwas ab.")

		ANSWER("Was k�nnte dies bedeuten?",103)
	NODE(103)
		SAY("Es wirkt fast so, als ob die beiden Fragmente irgendwie zusammengeh�ren.  Ich weiss noch immer nicht, was es mit diesen Gegenst�nden auf sich hat, aber alles was ich bisher rausgefunden hab, deutet darauf hin, dass die Fragmente sehr wertvoll sind.")

		ANSWER("Danke f�r ihre M�he Pater.",104)
	NODE(104)
		SAY("Der Orden hat mich auch beauftragt, dir diese 4.000 Credits als Belohnung f�r die erfolgreiche Mission zu geben. Investiere das Geld weise und perfektioniere deine F�higkeiten weiter.")

		ANSWER("So Crahn es will, werde ich mich verbessern.",105)
	NODE(105)
		SAY("Die n�chste Mission wird mit Sicherheit nicht leichter werden, als die beiden bisherigen... Gehe hin in Frieden und m�ge Crahn deinen Weg segnen.(n�chste Mission Level 30)")
		GIVEMONEY(4000)
		EPICRUNFINISHED(10,1)
		ACTIVATEDIALOGTRIGGER(3)
		ENDDIALOG()

--Raymon

	NODE(150)
		SAY("Falls du keine Deals mit mir machen willst, verschwinde, Freak!")
		ENDDIALOG()
		
end
