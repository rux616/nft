--new
--Crahn
function DIALOG()
NODE(0)
--CANDOEPICRUN(10, epicmissionid)
--EPICMISSIONERROR_WRONGFACTION		-1
--EPICMISSIONERROR_FULLYACCOMPLISHED	-2
--EPICMISSIONERROR_MISSIONMISSIONS		-3
--EPICMISSIONERROR_ALREADYFINISHED		-4
--EPICMISSIONERROR_WRONGSKILLLEVEL		-5
--EPICRUNFINISHED(10, epicmissionid)
--STARTMISSION( missionid aus missionbase def)

	CANDOEPICRUN(10,0)
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
			CANDOEPICRUN(10,0)
			if(result==-2)then
				SAY("Es tut mir leid, aber die einzige M�glichkeit wie ihr uns noch helfen k�nnt, ist einen Clan zu gr�nden und uns so unterst�tzen.")
				ENDDIALOG()
			else
-- Abfrage ob Skillevel stimmt und dann ob die Mission schon erf�llt wurde
				CANDOEPICRUN(10,0)
				if(result==-5)then
					SAY("Tut mir leid, aber ihr m�sst noch mehr Erfahrungen sammeln, damit Crahn euch einen weitere wichtigen Auftrag geben kann. (next mission at level 10)")
					ENDDIALOG()
				else
						CANDOEPICRUN(10,0)
				        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------2
						CANDOEPICRUN(10,1)
						if(result==-5)then
							SAY("Tut mir leid, aber ihr m�sst noch mehr Erfahrungen sammeln, damit Crahn euch einen weitere wichtigen Auftrag geben kann. (next mission at level 20)")
							ENDDIALOG()
						else
								CANDOEPICRUN(10,1)
				        		if(result==-4)then
-------------------------------------------------------------------------------------------------------------------3
						CANDOEPICRUN(10,2)
						if(result==-5)then
							SAY("Tut mir leid, aber ihr m�sst noch mehr Erfahrungen sammeln, damit Crahn euch einen weitere wichtigen Auftrag geben kann. (next mission at level 30)")
							ENDDIALOG()
						else
								CANDOEPICRUN(10,2)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------4
						CANDOEPICRUN(10,3)
						if(result==-5)then
							SAY("Tut mir leid, aber ihr m�sst noch mehr Erfahrungen sammeln, damit Crahn euch einen weitere wichtigen Auftrag geben kann. (next mission at level 35)")
							ENDDIALOG()
						else
								CANDOEPICRUN(10,3)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------5
						CANDOEPICRUN(10,4)
						if(result==-5)then
							SAY("Tut mir leid, aber ihr m�sst noch mehr Erfahrungen sammeln, damit Crahn euch einen weitere wichtigen Auftrag geben kann. (next mission at level 40)")
							ENDDIALOG()
						else
								CANDOEPICRUN(10,4)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------6
						CANDOEPICRUN(10,5)
				if(result==-5)then
					SAY("Tut mir leid, aber ihr m�sst noch mehr Erfahrungen sammeln, damit Crahn euch einen weitere wichtigen Auftrag geben kann. (next mission at level 45)")
					ENDDIALOG()
				else
								CANDOEPICRUN(10,5)
				        if(result==-4)then
						SAY("Es tut mir leid, aber die einzige M�glichkeit wie ihr uns noch helfen k�nnt, ist einen Clan zu gr�nden und uns so unterst�tzen.")
						ENDDIALOG()
					else
--Mission 6 wird hier gestartet
		SAY("Seid gegr�sst, oh Pater des schwarzen Zirkels. Pater Agnus hat mir mitgeteilt, dass ihr euch mittlerweile im Besitz der 5 Tacholytium Relikte befindet.")

		ANSWER("Das war nur m�glich durch die Hilfe von Pater Agnus und Pater Manus.",251)

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------6
					else
--Mission 5 wird hier gestartet
		SAY("Seid gegr�sst, Bruder. Der Rat hat mich angesprochen und sich nach meiner Beurteilung �ber eure F�higkeiten erkundigt. Ich habe geh�rt, dass Pater Agnus euch f�r den Schwarzen Zirkel vorgeschlagen hat. Bei euren Heldentaten w�rde es micht nicht wundern, wenn ihr bald in diesen Zirkel aufgenommen werdet.")

		ANSWER("Danke f�r euer Lob, Bruder. Es ist richtig, dass mir das Licht des Crahn in den vergangenen Monaten den Weg wohl gewiesen hat.",201)

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------5
					else
--Mission 4 wird hier gestartet
		SAY("Mein junger M�nch. Pater Manus konnte nichts weiter �ber die Relikte herausfinden, mit den begrenzten Unterlagen, die wir hier haben. Deshalb hat er Pater Agnus gebeten, sich mit den Relikten zu besch�ftigen. Er ist mit einigen anderen treuen Crahn Anh�ngern im gut versteckten Kloster in der Outzone geblieben. Und nach einer Abgleichung mit uralten Dokumenten hat Pater Agnus Neuigkeiten �ber die Tacholytium Relikte herausgefunden. Er war sehr aufgeregt, als er mir davon berichtete. Aber du sprichst am besten selbst mit ihm. Gehe in die alte Abtei in der Outzone und triff dich dort mit ihm.")

		ANSWER("Vielen Dank f�r die frohe Kunde. Ich werde mich sofort auf den Weg machen.",151)

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------4
					else
--Mission 3 wird hier gestartet
		SAY("Mein junger M�nch. Langsam wirst Du zu einem unentbehrlichen Mitglied unseres Ordens. Der Rat der hohen Br�der hat beschlossen, dich offiziell in den blauen Zirkel unserer Mitglieder aufzunehmen.")

		ANSWER("Das ist eine grosse Ehre f�r mich. Ich werde mich w�rdig erweisen.",101)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------3
							else
--Mission 2 wird hier gestartet
		SAY("Crahn segne Dich, mein junger M�nch. Wie ich sehe, hast du hart trainiert... Der Orden ist bereit, dich in einen h�heren Zirkel aufzunehmen. Ich denke, die Zeit ist reif, dich mit einer neuen, wichtigen Aufgabe zu betrauen. Bist Du bereit f�r eine neue Herausforderung?")

		ANSWER("Ja, Schwester. Es ist nach wie vor mein ganzer Wunsch, Crahn zu dienen.",51)
		ANSWER("Gebt mir noch ein wenig Zeit, Pater.",60)

						STARTMISSION(3541)
					end
				end	
-------------------------------------------------------------------------------------------------------------------2
					else
--Mission 1 wird hier gestartet
		SAY("Wie ich sehe, hast Du hart gearbeitet, um uns Deine Loyalit�t zum Orden zu beweisen. Im Namen des heiligen Crahns danke ich Dir f�r Deinen Einsatz. Wenn du dem Orden weiterhin dienen willst, w�ren wir bereit, dich von nun an mit etwas komplexeren Missionen zu beauftragen. Bist du bereit f�r diese Herausforderung?")

		ANSWER("Ja, Schwester. Ich unterstelle meinen K�rper und meinen Geist vollkommen dem Wohle Crahn's.",11)
		ANSWER("Es tut mir leid, aber ich f�hle mich noch nicht bereit f�r eine solche Aufgabe.",19)

						
					end
				end			
			end
		end

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Crahn 1
	NODE(11)
		SAY("Nun denn... Mark Cole, ein ehemaliges Mitglied der Fallen Angels, hat uns mitgeteilt, dass er angeblich im Besitz eines sehr wertvollen Gegenstandes sei. Er hat uns jedoch nicht gesagt, um was f�r einen Gegenstand es sich dabei handelt. Der Orden ist sich nicht sicher, was er von Cole's Glaubw�rdigkeit halten soll und wir m�chten nicht, dass Cole sich selbst zu wichtig nimmt.")

		ANSWER("Aber das kann man doch nicht so leicht verhindern, oder?",12)
	NODE(12)		
		SAY("Daher hat der Orden beschlossen, keinen hohen Bruder zu ihm zu schicken. Da wir der Sache aber trotzdem auf den Grund gehen muessen, wuerde ich Dich gern bitten, den Gegenstand abzuholen und dann zu Pater Manus hier in der Kathedrale Crahns zu bringen, damit dieser den Gegenstand begutachten kann.")

		ANSWER("Wer genau ist dieser Mark Cole und wer sind die Fallen Angels?",13)
	NODE(13)
		SAY("Cole hat lange f�r die Fallen Angels gearbeitet. Die Fallen Angels sind eine Vereinigung von Wissenschaftlern, die im Exil der Wastelands lebten. Ihre Basis, ein Mekka der S�nde, hiess Tech Haven. Aber nun haben auch sie sich ein St�ckchen von dem abgeschnitten was von Dome of York �brig ist. Das Verh�ltnis zwischen der Bruderschaft und den Fallen Angels ist aufgrund einiger unangenehmer Ereignisse in der Vergangenheit getr�bt und wir sind nun sehr an der Kooperation mit ehemaligen Tech Haven Wissenschaftlern interessiert.")

		ANSWER("Ehemalige Mitarbeiter? Arbeitet Cole nun nicht mehr f�r sie?",14) 
	NODE(14)
		SAY("Entgegen seiner Aussage, ist Cole von den Fallen Angels verstossen worden, nachdem er versucht hat wissenschaftliche Geheimprojekte der Angels zu verkaufen.")

		ANSWER("Wo genau finde ich Cole?",15)
	NODE(15)
		SAY("Du solltest deine Suche im Sektor 06 hier im dome starten. Dort gibt es einen Waffenumschlagsplatz, den keine Fraktion f�r sich beansprucht und der f�r alle Fraktionen etwas bietet.")

		ANSWER("Ich hoffe er h�lt sich nicht zu sehr im Verborgenen.",16)
	NODE(16) 
		SAY("Wenn alles wie geplant l�uft, �berbringe Pater Manus meine Gl�ckw�nsche. Seine Arbeit ist eine Inspiration f�r uns alle. Moechtest Du den Auftrag annehmen?")

		ANSWER("Ja, ... ich werde Euch nicht entt�uschen.",17)
	NODE(17)
		SAY("So gehe denn hin, im Schutze Crahns. Gesegnet sei Deine Mission.")
		STARTMISSION(3540)
		SETNEXTDIALOGSTATE(150)

		ENDDIALOG()


	NODE(18)
		SAY("Ich darf dich auf die Aufgabe aufmerksam machen. Das Ziel ist noch nicht erreicht. Mark Cole wartet noch immer im Sektor 06 auf dich. Pater Manus kann man in unserer Kathedrale hier finden.")
		ENDDIALOG()
	NODE(19)
		SAY("Dann kehre zur�ck, wenn du dich der Aufgabe gewachsen f�hlst.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Crahn 2
	NODE(51)
		SAY("Nun denn... schon in den alten Zeiten, als Shirkan und Neopha Kansil das Wort Crahn's in den Strassen von Neocron verbreiteten und die Stadt unter der Kontrolle unserer V�ter war, gelang es einer kleinen Gruppe von aufst�ndigen Wissenschaftlern, sich unserem Einfluss zu entziehen.")

		ANSWER("Ich denke, ich habe davon schon einmal gelesen.",52)
	NODE(52)
		SAY("Wie du weisst, spreche ich von den Fallen Angels, jener Gruppe, die im Jahre 2633 in die Wastelands zog um dort im Exil das Tech Haven Laboratorium zu errichten.")

		ANSWER("Ja Schwester, ich habe die Geschichte Neocrons und die unseres Ordens ausf�hrlich studiert.",53)
	NODE(53)
		SAY("In den Geschichtsb�chern steht nicht die ganze Wahrheit, mein junger M�nch. In den Augen der B�rger Neocrons sind die Fallen Angels eine harmlose Gruppe von Wissenschaftlern... aber wir PSI M�nche kennen die Wahrheit.")

		ANSWER("Das m�chte ich mit eigenen Ohren h�ren..",54)
	NODE(54)
		SAY("Die Fallen Angels sind Kinderm�rder und Diebe. In geheimen Laboratorien betreiben sie menschenverachtende Experimente, deren detaillierte Darstellung ich dir lieber ersparen m�chte.")

		ANSWER("Aber ich dachte, dass die Fallen Angels ausschliesslich zum Wohle der Menschheit...",55)
	NODE(55)
		SAY("Schweig! ... Glaube niemals der verlogenen Propaganda der Angels. Nur die Br�der des Crahn kennen den Weg des Lichts... Nun denn, es ist Unheil genug, dass die Fallen Angels ihre dunklen Experimente vor den Augen der schweigenden �ffentlichkeit durchf�hren, ...")

		ANSWER("Beim heiligen Crahn.",56)
	NODE(56)
		SAY("... aber das schlimmste f�r unseren Orden ist, dass sich ihre Arbeit auf von uns gestohlene Forschungsergebnisse st�tzt. Die Fallen Angels h�tten niemals das NeuroLink System entwickeln k�nnen, wenn sich ihr Anf�hrer, Thomas Cooper, damals nicht grossz�gig an unseren Forschungsunterlagen bedient h�tte.")

		ANSWER("Oh Schwester, sagt mir wie ich dem Orden in dieser Sache dienen kann.",57)

	NODE(57)
		SAY("Nun, wir wollen Gleiches mit Gleichem vergelten. Unserem hohen Bruder Gabriel ist es nach jahrelanger Vorbereitung gelungen, von den Fallen Angels als einer der ihren anerkannt zu werden. Er hat in den letzten zwei Jahren in Tech Haven gearbeitet und ist ein enger Vertrauter von Sylvia Bennet geworden.")

		ANSWER("Ich nehme an, ich soll mich mit ihm treffen?",58)
	NODE(58)
		SAY("Richtig. Er wird dir eine HoloDisk mit wichtigen Forschungsergebnissen der Fallen Angels �bergeben. Bring diese Disk zu Pater Manus hierher, damit dieser mit der Auswertung der Daten beginnen kann. Bruder Gabriel wird seinen Weg zum Guardian Gate in Sektor 01 schon zur�ckgelegt haben. Also spute dich.")

		ANSWER("So sei es, Schwester.",59)
	NODE(59)
		SAY("Achte darauf, dich unauff�llig zu verhalten. Es k�nnten Mitglieder der Fallen Angels in der N�he sein. Sie d�rfen nicht sehen, dass Bruder Gabriel Kontakt zu uns hat. Gehe hin, im Lichte des Crahn.")
		STARTMISSION(3541)
		SETNEXTDIALOGSTATE(11)

		ENDDIALOG()

	NODE(60)
		SAY("Dann bereite dich besser vor und komme dann erst wieder.")
		ENDDIALOG()

	NODE(61)
		SAY("Diese Aufgabe erledigt sich nicht von selbst, weisst du? Bruder Gabriel wartet in Sektor 01 und Pater Manus wartet hier.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Crahn 3
	NODE(101)
		SAY("Das bedeutet, dass Du von nun an mit Missionen betraut werden wirst, die auch innere Angelegenheiten des Ordens betreffen und die daher von dir �usserst vertraulich zu behandeln sind.")

		ANSWER("Ich f�hle mich geehrt, Schwester. Wie kann ich dem Orden dieses mal dienen?",102)
		ANSWER("Ich f�hle mich dazu noch nicht weit genug, Pater.",106)
	NODE(102)
		SAY("Unser gemeinsamer Freund, Mark Cole, hat dem Rat mitgeteilt, dass er angeblich Informationen �ber ein geheimes Treffen zwischen den Fallen Angels und Vertretern der Anarchy Breed hat.")

		ANSWER("Wozu? Was f�r eine Teufelei m�gen sie wohl planen?",103)
	NODE(103)
		SAY("Es gibt schon lange Ger�chte �ber ein B�ndnis zwischen beiden Parteien, aber bisher konnten wir noch keine Details �ber den Stand der Verhandlungen in Erfahrung bringen. Triff dich mit Cole und h�r dir an, was er zu sagen hat.")

		ANSWER("Wo treffe ich Cole?",104)
	NODE(104)
		SAY("Wo soll dieser Taugenichts schon sein? Er treibt sich nach wie vor auf dem Waffenmarkt Sektor 06 herum und versucht sich und seine angeblich wichtigen Informationen an den Meistbietenden zu verkaufen.")

		ANSWER("Dann weiss ich, was ich zu tun habe.",105)
	NODE(105)
		SAY("Sieh dich vor... Du weisst ja, dass er ein unangenehmer Zeitgenosse ist. M�ge Crahn deine Mission segnen.")
		STARTMISSION(3542)

		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()
		
	NODE(106)
		SAY("Dann gehe und arbeite darauf hin. Wenn du dich bereit f�hlst, werden wir dir dasselbe Angebot  noch einmal machen.")

		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Crahn 4
	NODE(151)
		SAY("M�ge Crahn deinen Weg segnen.")
		STARTMISSION(3543)
		ENDDIALOG()		
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Crahn 5
	NODE(201)
		SAY("So jedenfalls erz�hlt man es sich innerhalb des gesamten Ordens. Nun denn... Wenn ihr in den schwarzen Zirkel aufgenommen werden m�chtet, so m�sst ihr zun�chst eine Pr�fung bei einem anderen Pater des schwarzen Zirkels ablegen.")

		ANSWER("Ich bin bereit f�r diese Pr�fung. Erz�hlt mir mehr.",202)
		ANSWER("Ich f�hle, dass ich f�r eine solche Aufgabe noch nicht bereit bin.",204)
	NODE(202)
		SAY("Die PSI M�nche des schwarzen Zirkels zeichnen sich durch ihre Weisheit, aber vor allem auch durch ihre Macht und St�rke aus. Ein M�nch des schwarzen Zirkels muss f�hig sein, allein selbst in den dunkelsten und gef�hrlichsten Regionen der Wastelands zu bestehen.")

		ANSWER("WEITER",203)
	NODE(203)
		SAY("Begib dich zu Pater Morpheus, der in den Ruinen des verlassenen Crest Village lebt. Er wird dir deine Pr�fung geben und dich auf deinen Pilgerzug schicken. M�ge Crahn deine Pr�fung segnen.")
		STARTMISSION(3544)
		SETNEXTDIALOGSTATE(5)
		ENDDIALOG()
		
	NODE(204)
		SAY("Dann wird wohl noch etwas mehr Vorbereitung n�tig sein. Aber ihr solltet nicht zu lange brauchen.")
		ENDDIALOG()
	NODE(205)
		SAY("Ihr solltet doch mit Pater Morpheus in der Crest Village sprechen.")
		ENDDIALOG()	
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Crahn 6
	NODE(251)
		SAY("Da f�llt mir ein, Pater Agnus ist sich sicher, dass der alte Kev Critter einen Bauplan besitzen d�rfte, der es euch erlaubt, euren Gaya Psi Amplifier aus den Fragmenten zusammenzubauen.")

		ANSWER("Das sind wahrlich gute Nachrichten. Wo finde ich diesen Kev?",252)
	NODE(252)
		SAY("Kev betreibt einen Altmetallhandel in den Wastelands, am Blakkmist Creek. Offiziell ist sein Gesch�ft eine M�lldeponie. Ihr trefft ihn an der Blakkmist Garbage Dump.")

		ANSWER("Gibt es noch etwas, was ihr mir dar�ber sagen k�nnt?",253)
	NODE(253)
		SAY("Critter ist ein n�rrischer alter Mann, der sich jedoch schnell in einen kleveren Fuchs verwandelt, wenn er ein Gesch�ft wittert. ")

		ANSWER("Er w�re nicht der erste.",254)
	NODE(254)
		SAY("Seid also auf der Hut und lasst ihn nicht sp�ren, wie sehr ihr den Bauplan haben wollt. Ihr treibt den Preis sonst nur unn�tig in die H�he. Pater Agnus hilft euch sicherlich weiter, sobald ihr den Blueprint habt.")

		ANSWER("Danke, ich werde euren Ratschlag beachten. Crahns Segen sei mit euch.",255)
	NODE(255)
		SAY("Danke Pater. Ich w�nsche euch viel Erfolg auf eurer Mission.")
		STARTMISSION(3545)
		SETNEXTDIALOGSTATE(6)
		ENDDIALOG()	
		
	NODE(256)
		SAY("Wolltet ihr nicht Kev Critter beim Blakkmist Garbage Dump besuchen?")

		ENDDIALOG()	
----------------------------------------------------
----------------------------------------------------
--FRAKTIONSWECHSEL
	NODE(300)
		SAY("Dann st�ren sie mich nicht weiter.")
		ENDDIALOG()

	NODE(301)
		GETFACTIONSYMPATHY(10)
		if(result>49)then
			SAY("Das h�ren wir gerne. Laut unserer Daten hast du auch eine reine Weste. Nun gut, die Aufnahmegeb�hr betr�gt 300 000 Credits.")
	
			ANSWER("Das ist aber eine ganz sch�ne Summe.",302)
		else
			SAY("Verschwinden sie lieber, mit Abschaum wie dir m�chten wir nichts zu tun haben.")
			ENDDIALOG()
		end
	NODE(302)
		SAY("Wenn es dir nicht so viel Wert ist, dann wissen wir zumindest, dass du nicht wirklich vorhast, eine l�ngere Zeit bei uns zu verbringen.")

		ANSWER("Nun gut, ich bezahle es.",303)
		ANSWER("Das k�nnt ihr gleich vergessen, soviel Geld will ich daf�r nicht ausgeben.",300)
	NODE(303)
		TAKEMONEY(300000)
		if(result==0)then
			SAY("Besch�mend, dass du die finanziellen Mittel nicht aufbringen kannst, findest du nicht?")
			ENDDIALOG()
		else
			CHANGEFACTION(10)
			SAY("Willkommen bei der Bruderschaft.")
			ENDDIALOG()
		end
end