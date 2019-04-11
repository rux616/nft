--************************
--name   : SINGLE_AS_CS_02.lua
--ver    : 0.1
--author : Ferron
--date   : 2004/09/08
--lang   : de
--desc	 : terminal mission
--npc    :
--************************
--changelog:
--2004/09/08(0.1): recheck(Ferron)
--YYYY/MM/DD(0.0)
--************************

function DIALOG()

	NODE(0)
		if (result==1) then
			SAY("Gruesse Bruder. Kann ich dir behilflich sein?")
			SAY("Gepriesen sei Crahn, Bruder. Nun, was suchst du?")
			SAY("Brauchst du meine Hilfe, Bruder?")
				
			ANSWER("Schoen hier. Was machst du gerade?",1)
			ANSWER("Hast du einen Lieferjob zu vergeben?",2)
			ANSWER("Ach nichts. Bye",4)

		else
			SAY("Gruesse Schwester. Kann ich dir behilflich sein?")
			SAY("Gepriesen sei Crahn, Schwester. Nun, was suchst du?")
			SAY("Brauchst du meine Hilfe, Schwester?")
				
			ANSWER("Schoen hier. Was machst du gerade?",1)
			ANSWER("Hast du einen Lieferjob zu vergeben?",2)
			ANSWER("Ach nichts. Bye",4)
		end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Entferne dich, Bruder. Deine Anwesenheit stoert meine innere Balance!")
				SAY("Keine Zeit fuer tiefgreifende Gespraeche, Bruder. Bitte stoere mich nicht.")
				ENDDIALOG()
			else
				SAY("Entferne dich, Schwester. Deine Anwesenheit stoert meine innere Balance!")
				SAY("Keine Zeit für tiefgreifende Gespraeche, Schwester. Bitte stoere mich nicht.")
				ENDDIALOG()
			end
	NODE(2)
		
				SAY("%NPC_NAME(1) scheint der Anfuehrer einer Gruppe von Spione der City Admin zu sein, die versucht haben, die Bruderschaft zu infiltrieren. Gehe nach %NPC_WORLD(1) und finde %NPC_NAME(1). Dann beende seine Existenz fuer immer. Wenn deine Aufgabe beendet ist, komme wieder um deine verdiente Belohnung entgegen zu nehmen.")				
				SAY("Vor zwei Wochen musste die Bruderschaft einen Rueckschlag in Kauf nehmen, als eine Warenkarawane fuer Tech Heaven von den Anarchy Breeds ueberfallen wurde. Nicht nur, dass bei diesem Angriff viele unser Juenger ihr Leben lassen mussten, die Breed schafften es auch mit einer Ladung wichtiger HighTech-PSI-Module zu entkommen. Unseren Nachforschungen zufolge war %NPC_NAME(1) der Drahtzieher hinter dieser Aktion der Breeds. Er hat die Module verheizt. Am Morgen haben wir einen Ueberraschungsangriff auf das Appartement von %NPC_NAME(1) durchgefuehrt. Einige Waren und Waffen wurden dabei sichergestellt. Allerdings schaffte es %NPC_NAME(1), uns zu entkommen. Wir glauben, dass er in %NPC_WORLD(1) untergetaucht ist, bis die Breeds einen Weg finden, ihn unentdeckt wieder in die Wastes zu bringen. Deine Aufgabe ist einfach. Gehe nach %NPC_WORLD(1) und eliminiere %NPC_NAME(1). Wenn das erledigt ist, werde ich dich hier entsprechend entlohnen.")
				SAY("Vor ein paar Tagen wurde eine unserer Schwestern im Pepper Park das Opfer eines brutalen Verbrechens. Auch wenn es keine direkten Augenzeugen gab, erbrachten psychische Scans der Leute, die zu dieser Zeit in der Gegend waren, den Namen des Taeters, %NPC_NAME(1). Tiefere Scans von einem unserer aelteren Brueder, ergab, dass dies nicht das erste Mal war, dass so etwas vorgefallen ist. Leider stiessen unsere Versuche, ihm der gerechten Strafe zuzufuehren, bei den City Admin auf taube Ohren. Die einzige Loesung ist es, dass in unsere eigenen Haende zu nehmen. Du wirst %NPC_NAME(1) in %NPC_WORLD(1) finden. Geh zu dieser Person und tue, was noetig ist, um diese Missgeburt eines Menschen aus der Welt zu verbannen. Wenn das erledigt ist, wirst du hier von mir entsprechen belohnt werden.")
				SETNEXTDIALOGSTATE(3)
				ENDDIALOG()

	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				SAY("Ich denke, deine Anweisungen waren klar genug, Schueler. Komme erst wieder, wenn du die Zielperson ausgeloescht hast. Nur dann wirst du deinen Lohn erhalten.")
				SAY("Warum troedelst du, Juenger. Zeit ist essenziell. Toete die Zielperson, bevor es zu spaet ist. Nur dann wirst du die Grosszuegigkeit Crahns erfahren koennen.")
				ENDDIALOG()
			else
				GENDERCHECK()
					if (result==1) then
						SAY("Exzellente Arbeit, Bruder. Aktzeptiere diese %REWARD_MONEY() Credits als Zeichen, dass die Brudeschaft grosses Vertrauen in deine Faehigkeiten hat. Nun entferne dich und sprich mit niemanden ueber diese Angelegenheit.")
						SAY("Dein Erfolg hat Golon Kalah hoechst persoenlich beeindruckt. Er bat mich, dir diese %REWARD_MONEY() Credits zu geben, als Geste seiner Zufriedenheit, Bruder. Nun entferne dich und sprich mit niemanden ueber diese Angelegenheit.")
						SAY("Dein Erfolg ist nicht umsonst, Bruder. Nimm diese %REWARD_MONEY() Credits als Zeichen der Zufriedenheit der Bruderschaft. Nun entferne dich und sprich mit niemanden ueber diese Angelegenheit.")  
						ACTIVATEDIALOGTRIGGER(1)
						ENDDIALOG()
					else
						SAY("Exzellente Arbeit, Schwester. Aktzeptiere diese %REWARD_MONEY() Credits als Zeichen, dass die Brudeschaft grosses Vertrauen in deine Faehigkeiten hat. Nun entferne dich und sprich mit niemanden ueber diese Angelegenheit.")
						SAY("Dein Erfolg hat Golon Kalah hoechst persoenlich beeindruckt. Er bat mich, dir diese %REWARD_MONEY() Credits zu geben, als Geste seiner Zufriedenheit, Schwester. Nun entferne dich und sprich mit niemanden ueber diese Angelegenheit.")
						SAY("Dein Erfolg ist nicht umsonst, Schwester. Nimm diese %REWARD_MONEY() Credits als Zeichen der Zufriedenheit der Bruderschaft. Nun entferne dich und sprich mit niemanden ueber diese Angelegenheit.")  
						ACTIVATEDIALOGTRIGGER(1)
						ENDDIALOG()
					end
			end
	NODE(4)
		SAY("Bye.")
		ENDDIALOG()
end
						
		
			