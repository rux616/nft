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

	CANDOEPICRUN(8,0)
-- Prüfen ob bereits eine Mission läuft
		if (result==-6) then
			SAY("Bevor ich sie hier aufhalte, beenden sie mal lieber ihre laufenden Missionen.")
			ENDDIALOG()
			-- now prevent any other node to come through
			state = -1
		end
-- Fraktion wird überprüft
		if(result==-1)then 
			SAY("Sie gehören leider nicht unserer Fraktion an. Bitte verschwenden sie nicht weiter meine Zeit. Es sei denn, sie würden gerne unserer Fraktion beitreten?")
			
			ANSWER("Genau deswegen bin ich hier, ich würde gerne ihrer Fraktion beitreten.",301)
			ANSWER("Nein, kein Interesse. Bis dann...",300)
		else
-- Alle Missionen erfüllt? wird geprüft
			CANDOEPICRUN(8,0)
			if(result==-2)then
				SAY("Es tut mir leid, aber die einzige Möglichkeit wie sie uns noch helfen könnten ist, einen Clan zu gründen, der uns unterstützt.")
				ENDDIALOG()
			else
-- Abfrage ob Skillevel stimmt und dann ob die Mission schon erfüllt wurde
				CANDOEPICRUN(8,0)
				if(result==-5)then
					SAY("Sie sind im Moment nicht erfahren genug, kommen sie später wieder. (nächste Mission Level 10)")
					ENDDIALOG()
				else
						CANDOEPICRUN(8,0)
				        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------2
						CANDOEPICRUN(8,1)
						if(result==-5)then
							SAY("Sie sind im Moment nicht erfahren genug, kommen sie später wieder. (nächste Mission Level 20)")
							ENDDIALOG()
						else
								CANDOEPICRUN(8,1)
				        		if(result==-4)then
-------------------------------------------------------------------------------------------------------------------3
						CANDOEPICRUN(8,2)
						if(result==-5)then
							SAY("Sie sind im Moment nicht erfahren genug, kommen sie später wieder. (nächste Mission Level 30)")
							ENDDIALOG()
						else
								CANDOEPICRUN(8,2)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------4
						CANDOEPICRUN(8,3)
						if(result==-5)then
							SAY("Sie sind im Moment nicht erfahren genug, kommen sie später wieder. (nächste Mission Level 35)")
							ENDDIALOG()
						else
								CANDOEPICRUN(8,3)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------5
						CANDOEPICRUN(8,4)
						if(result==-5)then
							SAY("Sie sind im Moment nicht erfahren genug, kommen sie später wieder. (nächste Mission Level 40)")
							ENDDIALOG()
						else
								CANDOEPICRUN(8,4)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------6
						CANDOEPICRUN(8,5)
				if(result==-5)then
					SAY("Sie sind im Moment nicht erfahren genug, kommen sie später wieder. (nächste Mission Level 45)")
					ENDDIALOG()
				else
								CANDOEPICRUN(8,5)
				        if(result==-4)then
						SAY("Es tut mir leid, aber die einzige Möglichkeit wie sie uns noch helfen könnten ist, einen Clan zu gründen, der uns unterstützt.")
						ENDDIALOG()
					else
--Mission 6 wird hier gestartet
		SAY("Die Situation ist immer noch nicht geklärt. Du kannst etwas Auszeit nehmen.")
		
		ANSWER("Ich denke ich sollte Jester einen Besuch abstatten und die ganze Situation selbst aufklären. Wenn etwas erledigt werden soll, mach es selbst.",251)

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------6
					else
--Mission 5 wird hier gestartet
		SAY("Mitglieder von Tsunami deren Loyalität immer noch in Frage steht werden hier nicht gebraucht. Solange nicht bis dieser ganze Mist aufgeklärt ist.")
		
		ANSWER("Das ist schade, dann muss ich wohl doch auf die Hilfe von Leila zurückgreifen.",201)

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------5
					else
--Mission 4 wird hier gestartet
		SAY("Es gibt immer mehr und mehr Berichte von Spionen in unseren eigenen Reihen. Diese Gerüchte verteilen sich zunehmend und nichts, was wir tun scheint dem Einhalt gebieten zu können. Man kann den Leuten nicht mehr vertrauen. Sogar Veronique hat davon schon Wind bekommen und eine weisse Liste herausgebracht. Dort stehen alle Mitglieder drauf, auf deren Loyalität man sich verlassen kann.")
		
		ANSWER("Und was bedeutet das für mich?",151)
					
					end
				end	
-------------------------------------------------------------------------------------------------------------------4
					else
--Mission 3 wird hier gestartet
		SAY("Es gibt einige aufschlussreiche Informationen über das Geschäft zwischen den Black Dragon und ProtoPharm. Wir wissen nun wann und wo es abgehandelt wird. Aber den Deal einfach nur platzen zu lassen wird uns nicht bringen, da er dann an einem anderen Ort stattfinden wird. Wir müssen den Representanten von ProtoPharm töten und es so aussehen lassen, als ob die Black Dragon ihn getötet haben. ")
		
		ANSWER("Ja, aber wie können wir das tun? Ich meine, ProtoPharm ist ja immerhin nicht so blöd, dass sie nicht zwischen Tsunami und Black Dragon unterscheiden könnten.",101)
		ANSWER("Ich glaube nicht, dass ich schon bereit für so etwas bin.",103)

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------3
							else
--Mission 2 wird hier gestartet
		SAY("Das ist vielleicht ein Zufall. Gerade wenn wir jemanden benötigen kommst du hier reingeschneit. Wir haben Probleme mit dem Black Dragon Abschaum. Es gab einen offenen Konflikt vor den Türen von Club Veronique. Sie wagten es mit Feuerwaffen anzugreifen. Natürlich liefen sie wie die Hasen, nachdem sie eingesehen haben, dass sie tief drin stecken. Aber ihre Nachricht war unmissverständlich. Sie griffen uns auf unserem Grund und Boden an. Es wird Zeit, dass etwas dagegen unternommen wird. Bist du bereit mehr für die Tsunami zu tun?")
		
		ANSWER("Diese Black Dragon sind ziemlich aufmüpfig. I melde mich freiwillig ein paar dieser Ratten höchstpersönlich ins Jenseits zu befördern.",51)
		ANSWER("Ich kann das im Moment noch nicht machen. Ich bin nicht gut genug vorbereitet.",56)

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------2
					else
--Mission 1 wird hier gestartet
		SAY("Du bist neu hier, richtig? Komm näher her, wir müssen reden.")
		
		ANSWER("Ich bin ganz Ohr.",11)
						
					end
				end			
			end
		end

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tsunami 1
	NODE(11)
		SAY("Wir wissen jedes neue loyale Mitglied sehr zu schätzen. Tsunami ist eine grossartige Organisation wie du herausfinden wirst. Wir bieten unseren Mitgliedern viel aber man sollte sich immer im Gedächtnis behalten, dass es hier sehr starkes Konkurrenzdenken gibt. Fühlst du dich etwas Konkurrenz gewachsen?")
		
		ANSWER("Natürlich! Ich will mein bestes geben.",12)
	NODE(12)
		SAY("Dann verstehst du sicherlich, dass ich nicht jedem so einfach trauen kann. Ansonsten wäre ich schon lange Tod. Das heisst aber auch, dass ich dir nicht trauen kann. Noch nicht, auf jeden Fall. Wir werden deine Loyalität erst auf irgendeine Weise prüfen müssen.")
		
		ANSWER("Ich habe nicht den geringsten Zweifel daran, dass ich diese Prüfung bestehen werde.",13)
	NODE(13)
		SAY("Es sollte einfach genug sein. Wir wollen dich ja immerhin nicht gleich im ersten Auftrag aufreiben, oder? Aber wenn du trotzdem nicht mal diese erste Prüfung schaffst bist du draussen. Es ist wirklich ganz einfach. Also sieh zu, dass du immer gut in Form bist.")
		
		ANSWER("Ich bin kein Versager. Ihr werdet das schon früh genug herausfinden.",14)
	NODE(14)
		SAY("Du solltest schon wissen, dass Veronique Duchamps der Kopf von Tsunami ist. Sie zieht all die Fäden im Hintergrund und sie kann so boshaft sein wie keine zweite. Falls irgendetwas los ist, kannst du drauf wetten, dass sie auch darin verwickelt ist. Und da sie sich um so viele Geschäfte und Beziehungen kümmern muss, braucht sie ab und zu einen Boten.")
		
		ANSWER("Verstehe, was ist dann also mein Auftrag?",15)
	NODE(15)
		GIVEITEM(9250)
		SAY("Es ist ein einfacher Lieferauftrag, also versau ihn nicht. Bringe dieses Paket zu Maxime. Sie wird dafür sorgen, dass es an Eric Danmund höchstpersönlich geliefert wird. Maxime hat lange Jahre Erfahrung darin für Neocron und Dome of York zu arbeiten. Du kannst sie in Sektor 10 finden.")
		
		ANSWER("Also wirklich, dass ist doch fast zu einfach. Betrachtet es als schon erledigt.",16)
	NODE(16)
		SAY("Du wirst etwas zurückbekommen, das du Jester in Sektor 07 bringen sollst. Er arbeitet auch für uns. Zumindest manchmal. Er ist ein Freelancer. Jetzt sieh zu, dass du deine Aufgabe erledigst.")
		STARTMISSION(3570)
		SETNEXTDIALOGSTATE(7)
		
		ENDDIALOG()
		
	NODE(17)
		SAY("Was ist denn daran so schwierig? Gehe in den %NPC_WORLD(0) Distrikt, liefere das Paket ab und liefere das Paket, das du bekommst Jester in ViaRosso 03.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tsunami 2
	NODE(51)
		SAY("Nein, dafür ist die Zeit noch nicht reif. Da du deine Loyalität zu uns schon bewiesen hast wirst du mit einem anderen Auftrag betraut werden. Es ist wichtig, dass wir soviel wie möglich über die Pläne der Black Dragon herausbekommen bevor wir unsere Aktion planen. Aber bevor wir unsere Aktion starten, werden wir einen kleinen Vergeltungsschlag gegen die Black Dragon führen.")
		
		ANSWER("Wie gross ist denn die Gefahr?",52)
	NODE(52)
		SAY("Momentan gibt es Strassenschöachten zwischen Tsunami und Black Dragon fast jeden Tag. Sie mischen sich gewaltsam in unsere Geschäfte ein. Sie bedrohen gleichsam unsere Klienten als auch unsere Tänzerinnen. Wir können einfach nicht mehr zusehen, wir werden diesen Bastarden schon beibringen, dass Tsunami keinen Millimeter weichen wird.")
		
		ANSWER("Aber was können wir tun, ausser ihnen den Garaus zu machen?",53)
	NODE(53)
		SAY("Wir konnten einen unserer Leute getarnt in die Black Dragon Hierarchy einschleusen. Ihr eigentlicher Name ist Leila. Du wirst ihr ein kleines Paket überbringen und sie wird dann für etwas Chaos innerhalb der Black Dragon sorgen.")
		
		ANSWER("Und wo bekomme ich das her?",54)
	NODE(54)
		SAY("Das Paket, das du ihr bringen solltest befindet sich immer noch in den Händen von Jester. Hole dir das Paket von ihm und bringe es zu Leila. Es sollte eine recht grosse Überraschung für sie sein, wenn sie herausfinden was passiert ist. Vergiss nicht Leila zu sagen, dass das Implantat für Gecko oder Trond selbst bestimmt ist. Trond ist der Anführer der Black Dragon. Geh jetzt.")
		
		ANSWER("Wo kann ich Leila finden?",55)
	NODE(55)
		SAY("Ach ja. Du kannst sie in der Nähe des Black Dragon HQs finden. Das ist der abgemachte Treffpunkt. Nachdem du das Paket abgeliefert hast, melde dich bei Taylor Gomez im Tsunami HQ.")
		STARTMISSION(3571)
		SETNEXTDIALOGSTATE(7)
		ENDDIALOG()
		
	NODE(56)
		SAY("Tsunami bietet dir diese Aufgaben nicht an, weil du so toll bist. Das du diese Aufgaben ablehnst sagt eine Menge über dich aus.")
		ENDDIALOG()
		
	NODE(57)
		SAY("Du hast deine Mission.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tsunami 3
	NODE(101)
		SAY("Wir haben einige Freunde bei der Anarchy Breed. Hauptsächlich, da sie unsere Clubs im Pepper Park so sehr mögen. Ich bin mir ziemlich sicher, dass sie einige Waffen die einstmals die Black Dragon benutzten in ihrem Besitz haben. Diese Waffen könnten wir dazu verwenden, ProtoPharm auszutricksen. Triff dich mit Crazy Dillan und denk dran, dass Crazy nicht nur sein SPitzname ist.")
		
		ANSWER("Keine Angst, ich habe Erfahrung in so etwas.",102)
	NODE(102)
		SAY("Danach wartet ein gewisser Raymon in Dome of York Sektor 06 auf dich. Er hat Kontakte zu ProtoPharm und er mag Geld, was auch der Grund dafür ist, warum wir ihn so leicht überreden konnten mitzumachen. Es sollte ihm möglich sein, den Mord so aussehen zu lassen, als ob die Black dragon daran Schuld sind. Gib einfach die Waffe, die du von Dillan bekommst an Mastersen. Beim Treffpunkt im Pepper Park solltest du dann diesen Mr Cook von ProtoPharm umlegen.")
		STARTMISSION(3572)
		SETNEXTDIALOGSTATE(4)
		
		ENDDIALOG()
		
	NODE(103)
		SAY("Es ist deine Entscheidung, aber du bist dir hoffentlich klar darüber, dass Tsunami Faulpelze nicht leiden kann.")
		
		ENDDIALOG()
	NODE(104)
		SAY("Führe den Plan aus. Triff die Anarchy Breed vor dem Hauptausgang von Neocron und statte Mastersen in Plaza 04 einen Besuch ab. Wenn alles getan ist, berichte Taylor, wie es gelaufen ist.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tsunami 4
	NODE(151)
		SAY("Das bedeutet, dass im Moment viele kleine Mitglieder auf Distanz gehalten werden. Du eingechlossen. Ich weiss, dass du in der Tat einiges für Tsunami in der letzten Zeit getan hast. Vielleicht könnte ich dich sogar auf diese Liste bringen. Allerdings müsstest du es durch Taten schaffen deine Loyalität für Tsunami zu zeigen. Nur um über deine Absichten Klarheit zu erlangen.")
		
		ANSWER("Das ist doch eine verdammte Schweinerei. Ich habe meinen Wert schon mehrmals unter Beweis gestellt. Ich muss mir das hier doch nicht anhören.",154)
		ANSWER("Ich habe meinen Wert bewiesen. Wenn ich es wieder tun muss, werde ich es wieder tun.",152)
	NODE(152)
		SAY("Offiziell stimmt deine Aussage, aber es gibt mit Sicherheit ein Leck innerhalb von Tsunami. Deine letzte Mission war nicht der einzige Hinweis auf Insider Information. Ich weiss auch, dass du dort draussen dein Leben riskiert hast, aber mit all den Generep Kopien heutzutage bedeutet das nicht mehr so viel. Aber es gäbe die Möglichkeit eine Aufgabe für ein höheres Mitglied zu erledigen und so auf die weisse Liste zu gelangen.")
		
		ANSWER("Na toll. Ihr zieht hier wirklich über den falschen her.",153)
	NODE(153)
		SAY("Falls du loyal bist, wirst du bestehen. Falls nicht, brauchen wir dich eh nicht. Gehe zu Taylor Gomez. Er hatte mir gesagt, dass er eine Mission für dich hat. Es scheint so, als ob er glaubt, dass du loayl zu Tsunami bist.")
		STARTMISSION(3573)
		SETNEXTDIALOGSTATE(5)
		ENDDIALOG()
		
	NODE(154)
		SAY("Das ist keine kluge Entscheidung. Tsunami ist doch kein Club dem man einfach beitreten kann oder austreten kann. Denk daran.")
		ENDDIALOG()
		
	NODE(155)
		SAY("Ich weiss nicht ob Gomez ewig darauf warten wird, dir diese Aufgabe zu übergeben.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tsunami 5
	NODE(201)
		SAY("Entschuldige mich. Diese Sache erfordert meine ganze Konzentration.")
		STARTMISSION(3574)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
		
	NODE(202)
		SAY("Zwinge mich nicht die Wachen zu rufen. Besuchen sie halt mal diese Leila von der sie eben gesprochen haben.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tsunami 6
	NODE(251)
		SAY("Ziemlich grosse Worte. Wenn es dir gelingen sollte, diese Situation trotzdem zu klären würde Tsunami dir auf jeden Fall sehr dankbar sein.")
		STARTMISSION(3575)
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()
----------------------------------------------------
----------------------------------------------------
--FRAKTIONSWECHSEL
	NODE(300)
		SAY("Dann stören sie mich nicht weiter.")
		ENDDIALOG()

	NODE(301)
		GETFACTIONSYMPATHY(8)
		if(result>49)then
			SAY("Das hören wir gerne. Laut unserer Daten haben sie auch eine reine Weste. Nun gut, die Aufnahmegebühr beträgt 300 000 Credits.")
	
			ANSWER("Das ist aber eine ganz schöne Summe.",302)
		else
			SAY("Verschwinden sie lieber, mit Abschaum wie ihnen möchten wir nichts zu tun haben.")
			ENDDIALOG()
		end
	NODE(302)
		SAY("Wenn es ihnen nicht so viel Wert ist, dann wissen wir zumindest, dass sie nicht wirklich vorhaben, längere Zeit bei uns zu verbringen.")

		ANSWER("Nun gut, ich bezahle es.",303)
		ANSWER("Das könnt ihr gleich vergessen, soviel Geld will ich dafür nicht ausgeben.",300)
	NODE(303)
		TAKEMONEY(300000)
		if(result==0)then
			SAY("Beschämend, dass sie die finanziellen Mittel nicht aufbringen können, finden sie nicht?")
			ENDDIALOG()
		else
			CHANGEFACTION(8)
			SAY("Willkommen bei Tsunami.")
			ENDDIALOG()
		end
end