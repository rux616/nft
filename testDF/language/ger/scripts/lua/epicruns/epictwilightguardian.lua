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

	CANDOEPICRUN(15,0)
		if (result==-6) then
			SAY("Bevor ich dich hier aufhalte, beende mal lieber deine laufenden Missionen.")
			ENDDIALOG()
			-- now prevent any other node to come through
			state = -1
		end
-- Fraktion wird �berpr�ft
		if(result==-1) then 
			SAY("Sie geh�ren leider nicht unserer Fraktion an. Bitte verschwenden sie nicht weiter meine Zeit. Es sei denn, sie w�rden gerne unserer Fraktion beitreten?")
			
			ANSWER("Genau deswegen bin ich hier, ich w�rde gerne ihrer Fraktion beitreten.",301)
			ANSWER("Nein, kein Interesse. Bis dann...",300)
		else
-- Alle Missionen erf�llt? wird gepr�ft
			CANDOEPICRUN(15,0)
			if(result==-2)then
				SAY("Es tut mir leid, aber die einzige M�glichkeit wie sie uns noch helfen k�nnten ist, einen Clan zu gr�nden, der uns unterst�tzt.")
				ENDDIALOG()
			else
-- Abfrage ob Skillevel stimmt und dann ob die Mission schon erf�llt wurde
				CANDOEPICRUN(15,0)
				if(result==-5)then
					SAY("Sie sind im Moment nicht erfahren genug, kommen sie sp�ter wieder. (n�chste Mission Level 10)")
					ENDDIALOG()
				else
						CANDOEPICRUN(15,0)
				        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------2
						CANDOEPICRUN(15,1)
						if(result==-5)then
							SAY("Sie sind im Moment nicht erfahren genug, kommen sie sp�ter wieder. (n�chste Mission Level 20)")
							ENDDIALOG()
						else
								CANDOEPICRUN(15,1)
				        		if(result==-4)then
-------------------------------------------------------------------------------------------------------------------3
						CANDOEPICRUN(15,2)
						if(result==-5)then
							SAY("Sie sind im Moment nicht erfahren genug, kommen sie sp�ter wieder. (n�chste Mission Level 30)")
							ENDDIALOG()
						else
								CANDOEPICRUN(15,2)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------4
						CANDOEPICRUN(15,3)
						if(result==-5)then
							SAY("Sie sind im Moment nicht erfahren genug, kommen sie sp�ter wieder. (n�chste Mission Level 35)")
							ENDDIALOG()
						else
								CANDOEPICRUN(15,3)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------5
						CANDOEPICRUN(15,4)
						if(result==-5)then
							SAY("Sie sind im Moment nicht erfahren genug, kommen sie sp�ter wieder. (n�chste Mission Level 40)")
							ENDDIALOG()
						else
								CANDOEPICRUN(15,4)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------6
						CANDOEPICRUN(15,5)
				if(result==-5)then
					SAY("Sie sind im Moment nicht erfahren genug, kommen sie sp�ter wieder. (n�chste Mission Level 45)")
					ENDDIALOG()
				else
								CANDOEPICRUN(15,5)
				        if(result==-4)then
						SAY("Es tut mir leid, aber die einzige M�glichkeit wie sie uns noch helfen k�nnten ist, einen Clan zu gr�nden, der uns unterst�tzt.")
						ENDDIALOG()
					else
--Mission 6 wird hier gestartet
		SAY("Mir ist da zu Ohren gekommen, du w�rst auf dem Weg diesem Neokorps zu zeigen wo es lang geht. Stimmt das?")

		ANSWER("So ist der Plan.",251)

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------6
					else
--Mission 5 wird hier gestartet
		SAY("Mir wurde von Donnovan mitgeteilt, wo dieses Neokorps - Treffen abgehalten wird. Es ist Sektor A06 oder zumindest dort unten an der K�ste. Tut mir leid, ich kann mir Zahlen so schlecht merken. Dein Hauptziel ist es, den Anf�hrer des Neokorps zu erledigen. Du sollst danach noch eine kleine Zahlung an der Kontaktmann �berbringen, du wei�t ja selbst am besten wo der zu finden ist. Ausserdem wollte Tovall dich nach all dem Trouble auch noch mal privat unter vier Augen sprechen. Alles klar?")

		ANSWER("Ich glaube ja�",201)

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------5
					else
--Mission 4 wird hier gestartet
		SAY("Es gehen immer mehr Ger�chte um, die von einer neuen Geheimpolizei von Reza handeln. Angeblich haben sie schon viele Twilight Guardian umgebracht. Sie sollen angeblich unheimlich r�cksichtslos vorgehen.")

		ANSWER("Weiss man irgendetwas Genaueres?",151)
					end
				end	
-------------------------------------------------------------------------------------------------------------------4
					else
--Mission 3 wird hier gestartet
		SAY("Die Anarchy Breed haben mal wieder �rger mit den CityAdmins. Reza scheint ihnen ganz sch�n zuzusetzen. Sie haben nur Gl�ck, dass Reza seine Schosshund CopBots nicht alle ihnen hinterher schickt. Ansonsten s��en unsere Verb�ndeten ganz sch�n in der Klemme. ")

		ANSWER("Die Anarchy Breed? Wieso sind wir eigentlich mit denen alliiert?",101)


						
					end
				end	
-------------------------------------------------------------------------------------------------------------------3
							else
--Mission 2 wird hier gestartet
		SAY("Hast du schon geh�rt, wir haben wieder eine Waffenproduktion  der CityAdmin lahm gelegt. Der Kampf dauert zwar l�nger als wir dachten, aber Reza hat �berhaupt keine Unterst�tzung in der Bev�lkerung. Also hat er gar keine Chance auf lange Sicht.")

		ANSWER("Gibt es etwas Neues von Donnovan? Ich habe n�mlich trainiert und denke ich bin vorbereitet f�r was auch immer da kommen mag.",51)


						
					end
				end	
-------------------------------------------------------------------------------------------------------------------2
					else
--Mission 1 wird hier gestartet
		SAY("Willkommen. Willkommen bei den Twilight Guardian. Ich versichere dir, du bist nicht der einzige, der genug hat von den L�gen und der Gewalt, die Lion Reza verbreitet. Wenn du dich noch nicht lange bei uns befindest, wurdest du wohl noch keiner Zelle zugewiesen, oder? ")

		ANSWER("Nein, ich bin gerade erst hier angekommen um es Reza heim zu zahlen.",11)

						
					end
				end			
			end
		end

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Twilight Guardian 1
	NODE(11)
		SAY("Sehr gut, ich freue mich immer wieder jemanden auf unserer Seite willkommen zu heissen. Ich denke, wir k�nnen dich Donnovan anvertrauen, er ist ein f�higer K�mpfer f�r die Guardians und ist mit allen Wassern gewaschen. Ist das in Ordnung?")

		ANSWER("Mehr als gut, ich mache mich sofort auf den Weg. ",12)
	NODE(12)
		SAY("Du kannst ihn gar nicht verfehlen, er steht in der N�he des Eingangs unseres Hauptquartiers im Dome. Er hat seine Augen immer auf dem Eingang, auf dass wir keine b�se �berraschung von den Grausamkeiten Rezas erleben.")

		STARTMISSION(3621)
		SETNEXTDIALOGSTATE(3)
		ENDDIALOG()
	NODE(13)
		SAY("Na, vergessen, wo du hin musst? Donnovan steht nah am Eingang zu unserem HQ.")
		ENDDIALOG()



------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Twilight Guardian 2
	NODE(51)
		SAY("Ja, ich erinnere mich. Er sagte, du solltest dich mal gegen Heff und Tovall beweisen. Ein wenig training gegen echte Gegner kann dir nicht schaden. Heff kannst du auch irgendwo hier herumstreunen sehen. Bis vor kurzem hatte er noch in Neocron gearbeitet. Er musste jedoch fliehen um den H�schern der NCPD zu entgehen. Viel Gl�ck dabei. Donnovan erwartet dich dann. Er ist sich sicher, dass du es schaffen wirst. ")
		
		STARTMISSION(3622)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Twilight Guardian 3
	NODE(101)
		SAY("Ganz einfach, im Grunde genommen wollen sie Reza auch st�rzen. Vielleicht haben sie andere Pl�ne f�r danach, aber das ist dann etwas anderes. Es ist genauso mit dem B�ndnis zu den Crahn. Es ist einfach gesagt zweckm��ig. ")

		ANSWER("Nun gut, eigentlich wollte ich ja wissen, ob Donnovan wieder eine Verwendung f�r mich hat. Ich versumpfe hier sonst ja doch nur.",102)
	NODE(102)
		SAY("Am besten du fragst Donnovan mal selbst. Du wei�t ja, wo du ihn normalerweise finden kannst, oder?")
		STARTMISSION(3623)
		SETNEXTDIALOGSTATE(3)
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Twilight Guardian 4
	NODE(151)
		SAY("Weshalb meinst du, sage ich dir das? Ich hatte gehofft, du wei�t etwas genauer bescheid, aber ich sehe du stehst genauso im Dunkeln wie ich.  Ach ja, Donnovan hat etwas besonderes f�r dich.")

		ANSWER("Gut, ich werde ihn sofort aufsuchen.",152)
	NODE(152)
		SAY("Tu das. Vielleicht wei�t du ja sp�ter mehr. Mann, ich bin schon fast so weit, dass ich jedem was springen lassen w�rde, wenn er mir Neuigkeiten bringt.")
		STARTMISSION(3624)
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Twilight Guardian 5
	NODE(201)
		GIVEITEM(0)
--CASHCUBE
		SAY("Dann ist ja gut, sieh zu, dass du den Anf�hrer des Neokorps kr�ftig in den Arsch trittst. Dort unten gibt es einige Sendestationen, versuch es bei denen zuerst.")

		STARTMISSION(3625)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Twilight Guardian 6
	NODE(251)
		SAY("Mann, meinen Segen hast du auf jeden Fall. Jade erwartet dich schon in der Outzone. Mach sie alle.")
		STARTMISSION(3626)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
----------------------------------------------------
----------------------------------------------------
--FRAKTIONSWECHSEL
	NODE(300)
		SAY("Dann st�ren sie mich nicht weiter.")
		ENDDIALOG()

	NODE(301)
		GETFACTIONSYMPATHY(15)
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
			CHANGEFACTION(15)
			SAY("Willkommen bei den Twilight Guardian.")
			ENDDIALOG()
		end
end