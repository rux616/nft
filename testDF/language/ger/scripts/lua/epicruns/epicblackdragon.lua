--new
--Tsunami

function DIALOG()
NODE(0)
--CANDOEPICRUN(factionid, epicmissionid)
--EPICMISSIONERROR_WRONGFACTION		-1
--EPICMISSIONERROR_FULLYACCOMPLISHED	-2
--EPICMISSIONERROR_MISSIONMISSIONS		-3
--EPICMISSIONERROR_ALREADYFINISHED		-4
--EPICMISSIONERROR_WRONGSKILLLEVEL		-5
--EPICRUNFINISHED(factionid, epicmissionid)
--STARTMISSION( missionid aus missionbase def)

	CANDOEPICRUN(9,0)
-- Pr�fen ob bereits eine Mission l�uft
		if (result==-6) then
			SAY("Bevor ich sie hier aufhalte, beenden sie mal lieber ihre laufenden Missionen.")
			ENDDIALOG()
			-- now prevent any other node to come through
			state = -1
		end
-- Fraktion wird �berpr�ft
		if(result==-1)then 
			SAY("Sie geh�ren leider nicht unserer Fraktion an. Bitte verschwenden sie nicht weiter meine Zeit. Es sei denn, sie w�rden gerne unserer Fraktion beitreten?")
			
			ANSWER("Genau deswegen bin ich hier, ich w�rde gerne ihrer Fraktion beitreten.",301)
			ANSWER("Nein, kein Interesse. Bis dann...",300)
		else
-- Alle Missionen erf�llt? wird gepr�ft
			CANDOEPICRUN(9,0)
			if(result==-2)then
				SAY("Es tut mir leid, aber die einzige M�glichkeit wie sie uns noch helfen k�nnten ist, einen Clan zu gr�nden, der uns unterst�tzt.")
				ENDDIALOG()
			else
-- Abfrage ob Skillevel stimmt und dann ob die Mission schon erf�llt wurde
				CANDOEPICRUN(9,0)
				if(result==-5)then
					SAY("Sie sind im Moment nicht erfahren genug, kommen sie sp�ter wieder. (n�chste Mission Level 10)")
					ENDDIALOG()
				else
						CANDOEPICRUN(9,0)
				        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------2
						CANDOEPICRUN(9,1)
						if(result==-5)then
							SAY("Sie sind im Moment nicht erfahren genug, kommen sie sp�ter wieder. (n�chste Mission Level 20)")
							ENDDIALOG()
						else
								CANDOEPICRUN(9,1)
				        		if(result==-4)then
-------------------------------------------------------------------------------------------------------------------3
						CANDOEPICRUN(9,2)
						if(result==-5)then
							SAY("Sie sind im Moment nicht erfahren genug, kommen sie sp�ter wieder. (n�chste Mission Level 30)")
							ENDDIALOG()
						else
								CANDOEPICRUN(9,2)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------4
						CANDOEPICRUN(9,3)
						if(result==-5)then
							SAY("Sie sind im Moment nicht erfahren genug, kommen sie sp�ter wieder. (n�chste Mission Level 35)")
							ENDDIALOG()
						else
								CANDOEPICRUN(9,3)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------5
						CANDOEPICRUN(9,4)
						if(result==-5)then
							SAY("Sie sind im Moment nicht erfahren genug, kommen sie sp�ter wieder. (n�chste Mission Level 40)")
							ENDDIALOG()
						else
								CANDOEPICRUN(9,4)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------6
						CANDOEPICRUN(9,5)
				if(result==-5)then
					SAY("Sie sind im Moment nicht erfahren genug, kommen sie sp�ter wieder. (n�chste Mission Level 45)")
					ENDDIALOG()
				else
								CANDOEPICRUN(9,5)
				        if(result==-4)then
						SAY("Es tut mir leid, aber die einzige M�glichkeit wie sie uns noch helfen k�nnten ist, einen Clan zu gr�nden, der uns unterst�tzt.")
						ENDDIALOG()
					else
--Mission 6 wird hier gestartet
		SAY("Die Zeit ist reif. Lucy hat mich gebeten dir mitzuteilen, sie m�chte mit dir reden. Aber pass ja auf, es wird nicht gerne gesehen, wenn man mit Geckos Freundin so viel zu tun hat.")
		STARTMISSION(3620)
		ENDDIALOG()

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------6
					else
--Mission 5 wird hier gestartet
		SAY("Lucky m�chte gerne mit dir reden. Du bist schon ganz sch�n bekannt in unseren Reihen. Aber sei lieber vorsichtig, Bekanntheit ist nicht immer W�nschenswert.")
		STARTMISSION(3619)
		SETNEXTDIALOGSTATE(0)
		ENDDIALOG()

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------5
					else
--Mission 4 wird hier gestartet
		SAY("H�r zu. Lucky wei�, dass du ihn beschissen hast. Du hast es dir versaut, w�rde ich sagen. Deswegen verstehe ich auch nicht, warum er jetzt noch mal ein pers�nliches Gespr�ch mit dir haben will. Du bist wohl einfach ein Gl�ckskind. Bei mir w�rst du schon l�ngst eine aufgedunsene Wasserleiche in den Sewern.")
		STARTMISSION(3618)
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()
					end
				end	
-------------------------------------------------------------------------------------------------------------------4
					else
--Mission 3 wird hier gestartet
		SAY("H�r zu, das ist eine Chance f�r dich. Also gib acht, dass du dich dementsprechend verh�ltst. Sprich mit Lucky hier im Hauptquartier. Er l�sst dir mitteilen es geht um euren gemeinsamen Freund Leone. Ich hab allerdings keine Ahnung worum es geht. Wenn du mir sp�ter gerne mitteilen willst, worum es sich handelt, dann habe ich noch eine kleine Belohnung f�r dich.")
		STARTMISSION(3617)
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()


						
					end
				end	
-------------------------------------------------------------------------------------------------------------------3
							else
--Mission 2 wird hier gestartet
		SAY("Verdammte Tsunamis. Ich nehme an du hast auch schon ein paar Erfahrungen mit diesen Bastarden gesammelt?")

		ANSWER("Ab und zu. Allerdings waren sie nie freundlich gesinnt.",51)


						
					end
				end	
-------------------------------------------------------------------------------------------------------------------2
					else
--Mission 1 wird hier gestartet
		SAY("Noch so einer, der glaubt bei uns das leichte Geld machen zu k�nnen. Stell dir das mal nicht zu leicht vor. Hier musst du hart arbeiten, wir sind ja immerhin nicht die Wohlfahrt.")

		ANSWER("Gut, aber dann sag mir doch mal, was genau ihr hier tut. Vorher mache ich keinen Finger f�r euch krumm.",11)

						
					end
				end			
			end
		end

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--BlackDragon 1
	NODE(11)
		SAY("Mann, das wirst du schon merken, Runner. Am besten du verdienst dir erst einmal etwas mehr Respekt, dann nehmen dich die Leute gleich viel ernster! Und diese Einstellung kannst du dir hier gleich abschminken.")

		ANSWER("Verstanden, kein Grund mich so anzufahren.",12)
	NODE(12)
		SAY("Ja, ist ja gut. Ich m�chte dich ja nicht gleich vergraulen. H�r zu, ich habe ja keinen blassen Schimmer ob du nicht so ein verdammter Tsunami bist, der uns infiltrieren will. Daher wirst du dich hier erst beweisen m�ssen, bevor ich dir irgendwelche Fragen beantworte.")

		ANSWER("Keine Angst, Skrupel werdet ihr bei mir nicht finden. Ich bin zu allem bereit.",13)
	NODE(13)
		SAY("Wenn das stimmt, dann kannst du es hier noch weit bringen. Die erste Regel solltest du dir merken, denn ohne sie w�rdest du hier schon bald untergehen.")

		ANSWER("Ich h�re�",14)
	NODE(14)
		GIVEITEM(9460)
--DRUGPAKET
		SAY("Keine Gnade und kein Mitleid, die sind schlecht f�rs Gesch�ft, klar? So, da dies gekl�rt ist kannst du ja jetzt einen Botengang f�r uns erledigen.  Manuel ist einer unserer Dealer, ihm ist der Stoff ausgegangen. Du wirst ein frisches P�ckchen zu ihm hier in Sektor 08 bringen. Du kannst ihn in einem der Hinterh�fe treffen. Danach kommst du sofort wieder zur�ck. Es sei denn du m�chtest noch etwas mit einigen Leuten hier reden. Leone und Lucky sind beide recht m�chtige Personen. Aber von Lucy l�sst du besser deine Finger. Du kannst ja mal mit Leone, Lucy und Lucky reden, wenn du willst.")

		STARTMISSION(3615)
		ENDDIALOG()

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--BlackDragon 2
	NODE(51)
		SAY("Kein Wunder, sind es doch unsere Erzfeinde. Erst gestern haben sie wieder ein paar Dealer von uns zusammengeschlagen. Bastarde! Wie auch immer. Sieh zu, dass du zu Leone im Hauptquartier kommst, er hat was f�r dich.")
		STARTMISSION(3616)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--BlackDragon 3

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--BlackDragon 4

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--BlackDragon 5
		
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--BlackDragon 6

----------------------------------------------------
----------------------------------------------------
--FRAKTIONSWECHSEL
	NODE(300)
		SAY("Dann st�ren sie mich nicht weiter.")
		ENDDIALOG()

	NODE(301)
		GETFACTIONSYMPATHY(9)
		if(result>49)then
			SAY("Das h�ren wir gerne. Laut unserer Daten haben sie auch eine reine Weste. Nun gut, die Aufnahmegeb�hr betr�gt 300 000 Credits.")
	
			ANSWER("Das ist aber eine ganz sch�ne Summe.",302)
		else
			SAY("Verschwinden sie lieber, mit Abschaum wie ihnen m�chten wir nichts zu tun haben.")
			ENDDIALOG()
		end
	NODE(302)
		SAY("Wenn es ihnen nicht so viel Wert ist, dann wissen wir zumindest, dass sie nicht wirklich vorhaben, l�ngere Zeit bei uns zu verbringen.")

		ANSWER("Nun gut, ich bezahle es.",303)
		ANSWER("Das k�nnt ihr gleich vergessen, soviel Geld will ich daf�r nicht ausgeben.",300)
	NODE(303)
		TAKEMONEY(300000)
		if(result==0)then
			SAY("Besch�mend, dass sie die finanziellen Mittel nicht aufbringen k�nnen, finden sie nicht?")
			ENDDIALOG()
		else
			CHANGEFACTION(9)
			SAY("Willkommen bei den Black Dragon.")
			ENDDIALOG()
		end
end