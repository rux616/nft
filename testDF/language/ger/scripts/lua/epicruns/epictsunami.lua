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
			CANDOEPICRUN(8,0)
			if(result==-2)then
				SAY("Es tut mir leid, aber die einzige M�glichkeit wie sie uns noch helfen k�nnten ist, einen Clan zu gr�nden, der uns unterst�tzt.")
				ENDDIALOG()
			else
-- Abfrage ob Skillevel stimmt und dann ob die Mission schon erf�llt wurde
				CANDOEPICRUN(8,0)
				if(result==-5)then
					SAY("Sie sind im Moment nicht erfahren genug, kommen sie sp�ter wieder. (n�chste Mission Level 10)")
					ENDDIALOG()
				else
						CANDOEPICRUN(8,0)
				        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------2
						CANDOEPICRUN(8,1)
						if(result==-5)then
							SAY("Sie sind im Moment nicht erfahren genug, kommen sie sp�ter wieder. (n�chste Mission Level 20)")
							ENDDIALOG()
						else
								CANDOEPICRUN(8,1)
				        		if(result==-4)then
-------------------------------------------------------------------------------------------------------------------3
						CANDOEPICRUN(8,2)
						if(result==-5)then
							SAY("Sie sind im Moment nicht erfahren genug, kommen sie sp�ter wieder. (n�chste Mission Level 30)")
							ENDDIALOG()
						else
								CANDOEPICRUN(8,2)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------4
						CANDOEPICRUN(8,3)
						if(result==-5)then
							SAY("Sie sind im Moment nicht erfahren genug, kommen sie sp�ter wieder. (n�chste Mission Level 35)")
							ENDDIALOG()
						else
								CANDOEPICRUN(8,3)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------5
						CANDOEPICRUN(8,4)
						if(result==-5)then
							SAY("Sie sind im Moment nicht erfahren genug, kommen sie sp�ter wieder. (n�chste Mission Level 40)")
							ENDDIALOG()
						else
								CANDOEPICRUN(8,4)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------6
						CANDOEPICRUN(8,5)
				if(result==-5)then
					SAY("Sie sind im Moment nicht erfahren genug, kommen sie sp�ter wieder. (n�chste Mission Level 45)")
					ENDDIALOG()
				else
								CANDOEPICRUN(8,5)
				        if(result==-4)then
						SAY("Es tut mir leid, aber die einzige M�glichkeit wie sie uns noch helfen k�nnten ist, einen Clan zu gr�nden, der uns unterst�tzt.")
						ENDDIALOG()
					else
--Mission 6 wird hier gestartet
		SAY("Die Situation ist immer noch nicht gekl�rt. Du kannst etwas Auszeit nehmen.")
		
		ANSWER("Ich denke ich sollte Jester einen Besuch abstatten und die ganze Situation selbst aufkl�ren. Wenn etwas erledigt werden soll, mach es selbst.",251)

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------6
					else
--Mission 5 wird hier gestartet
		SAY("Mitglieder von Tsunami deren Loyalit�t immer noch in Frage steht werden hier nicht gebraucht. Solange nicht bis dieser ganze Mist aufgekl�rt ist.")
		
		ANSWER("Das ist schade, dann muss ich wohl doch auf die Hilfe von Leila zur�ckgreifen.",201)

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------5
					else
--Mission 4 wird hier gestartet
		SAY("Es gibt immer mehr und mehr Berichte von Spionen in unseren eigenen Reihen. Diese Ger�chte verteilen sich zunehmend und nichts, was wir tun scheint dem Einhalt gebieten zu k�nnen. Man kann den Leuten nicht mehr vertrauen. Sogar Veronique hat davon schon Wind bekommen und eine weisse Liste herausgebracht. Dort stehen alle Mitglieder drauf, auf deren Loyalit�t man sich verlassen kann.")
		
		ANSWER("Und was bedeutet das f�r mich?",151)
					
					end
				end	
-------------------------------------------------------------------------------------------------------------------4
					else
--Mission 3 wird hier gestartet
		SAY("Es gibt einige aufschlussreiche Informationen �ber das Gesch�ft zwischen den Black Dragon und ProtoPharm. Wir wissen nun wann und wo es abgehandelt wird. Aber den Deal einfach nur platzen zu lassen wird uns nicht bringen, da er dann an einem anderen Ort stattfinden wird. Wir m�ssen den Representanten von ProtoPharm t�ten und es so aussehen lassen, als ob die Black Dragon ihn get�tet haben. ")
		
		ANSWER("Ja, aber wie k�nnen wir das tun? Ich meine, ProtoPharm ist ja immerhin nicht so bl�d, dass sie nicht zwischen Tsunami und Black Dragon unterscheiden k�nnten.",101)
		ANSWER("Ich glaube nicht, dass ich schon bereit f�r so etwas bin.",103)

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------3
							else
--Mission 2 wird hier gestartet
		SAY("Das ist vielleicht ein Zufall. Gerade wenn wir jemanden ben�tigen kommst du hier reingeschneit. Wir haben Probleme mit dem Black Dragon Abschaum. Es gab einen offenen Konflikt vor den T�ren von Club Veronique. Sie wagten es mit Feuerwaffen anzugreifen. Nat�rlich liefen sie wie die Hasen, nachdem sie eingesehen haben, dass sie tief drin stecken. Aber ihre Nachricht war unmissverst�ndlich. Sie griffen uns auf unserem Grund und Boden an. Es wird Zeit, dass etwas dagegen unternommen wird. Bist du bereit mehr f�r die Tsunami zu tun?")
		
		ANSWER("Diese Black Dragon sind ziemlich aufm�pfig. I melde mich freiwillig ein paar dieser Ratten h�chstpers�nlich ins Jenseits zu bef�rdern.",51)
		ANSWER("Ich kann das im Moment noch nicht machen. Ich bin nicht gut genug vorbereitet.",56)

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------2
					else
--Mission 1 wird hier gestartet
		SAY("Du bist neu hier, richtig? Komm n�her her, wir m�ssen reden.")
		
		ANSWER("Ich bin ganz Ohr.",11)
						
					end
				end			
			end
		end

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tsunami 1
	NODE(11)
		SAY("Wir wissen jedes neue loyale Mitglied sehr zu sch�tzen. Tsunami ist eine grossartige Organisation wie du herausfinden wirst. Wir bieten unseren Mitgliedern viel aber man sollte sich immer im Ged�chtnis behalten, dass es hier sehr starkes Konkurrenzdenken gibt. F�hlst du dich etwas Konkurrenz gewachsen?")
		
		ANSWER("Nat�rlich! Ich will mein bestes geben.",12)
	NODE(12)
		SAY("Dann verstehst du sicherlich, dass ich nicht jedem so einfach trauen kann. Ansonsten w�re ich schon lange Tod. Das heisst aber auch, dass ich dir nicht trauen kann. Noch nicht, auf jeden Fall. Wir werden deine Loyalit�t erst auf irgendeine Weise pr�fen m�ssen.")
		
		ANSWER("Ich habe nicht den geringsten Zweifel daran, dass ich diese Pr�fung bestehen werde.",13)
	NODE(13)
		SAY("Es sollte einfach genug sein. Wir wollen dich ja immerhin nicht gleich im ersten Auftrag aufreiben, oder? Aber wenn du trotzdem nicht mal diese erste Pr�fung schaffst bist du draussen. Es ist wirklich ganz einfach. Also sieh zu, dass du immer gut in Form bist.")
		
		ANSWER("Ich bin kein Versager. Ihr werdet das schon fr�h genug herausfinden.",14)
	NODE(14)
		SAY("Du solltest schon wissen, dass Veronique Duchamps der Kopf von Tsunami ist. Sie zieht all die F�den im Hintergrund und sie kann so boshaft sein wie keine zweite. Falls irgendetwas los ist, kannst du drauf wetten, dass sie auch darin verwickelt ist. Und da sie sich um so viele Gesch�fte und Beziehungen k�mmern muss, braucht sie ab und zu einen Boten.")
		
		ANSWER("Verstehe, was ist dann also mein Auftrag?",15)
	NODE(15)
		GIVEITEM(9250)
		SAY("Es ist ein einfacher Lieferauftrag, also versau ihn nicht. Bringe dieses Paket zu Maxime. Sie wird daf�r sorgen, dass es an Eric Danmund h�chstpers�nlich geliefert wird. Maxime hat lange Jahre Erfahrung darin f�r Neocron und Dome of York zu arbeiten. Du kannst sie in Sektor 10 finden.")
		
		ANSWER("Also wirklich, dass ist doch fast zu einfach. Betrachtet es als schon erledigt.",16)
	NODE(16)
		SAY("Du wirst etwas zur�ckbekommen, das du Jester in Sektor 07 bringen sollst. Er arbeitet auch f�r uns. Zumindest manchmal. Er ist ein Freelancer. Jetzt sieh zu, dass du deine Aufgabe erledigst.")
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
		SAY("Nein, daf�r ist die Zeit noch nicht reif. Da du deine Loyalit�t zu uns schon bewiesen hast wirst du mit einem anderen Auftrag betraut werden. Es ist wichtig, dass wir soviel wie m�glich �ber die Pl�ne der Black Dragon herausbekommen bevor wir unsere Aktion planen. Aber bevor wir unsere Aktion starten, werden wir einen kleinen Vergeltungsschlag gegen die Black Dragon f�hren.")
		
		ANSWER("Wie gross ist denn die Gefahr?",52)
	NODE(52)
		SAY("Momentan gibt es Strassensch�achten zwischen Tsunami und Black Dragon fast jeden Tag. Sie mischen sich gewaltsam in unsere Gesch�fte ein. Sie bedrohen gleichsam unsere Klienten als auch unsere T�nzerinnen. Wir k�nnen einfach nicht mehr zusehen, wir werden diesen Bastarden schon beibringen, dass Tsunami keinen Millimeter weichen wird.")
		
		ANSWER("Aber was k�nnen wir tun, ausser ihnen den Garaus zu machen?",53)
	NODE(53)
		SAY("Wir konnten einen unserer Leute getarnt in die Black Dragon Hierarchy einschleusen. Ihr eigentlicher Name ist Leila. Du wirst ihr ein kleines Paket �berbringen und sie wird dann f�r etwas Chaos innerhalb der Black Dragon sorgen.")
		
		ANSWER("Und wo bekomme ich das her?",54)
	NODE(54)
		SAY("Das Paket, das du ihr bringen solltest befindet sich immer noch in den H�nden von Jester. Hole dir das Paket von ihm und bringe es zu Leila. Es sollte eine recht grosse �berraschung f�r sie sein, wenn sie herausfinden was passiert ist. Vergiss nicht Leila zu sagen, dass das Implantat f�r Gecko oder Trond selbst bestimmt ist. Trond ist der Anf�hrer der Black Dragon. Geh jetzt.")
		
		ANSWER("Wo kann ich Leila finden?",55)
	NODE(55)
		SAY("Ach ja. Du kannst sie in der N�he des Black Dragon HQs finden. Das ist der abgemachte Treffpunkt. Nachdem du das Paket abgeliefert hast, melde dich bei Taylor Gomez im Tsunami HQ.")
		STARTMISSION(3571)
		SETNEXTDIALOGSTATE(7)
		ENDDIALOG()
		
	NODE(56)
		SAY("Tsunami bietet dir diese Aufgaben nicht an, weil du so toll bist. Das du diese Aufgaben ablehnst sagt eine Menge �ber dich aus.")
		ENDDIALOG()
		
	NODE(57)
		SAY("Du hast deine Mission.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tsunami 3
	NODE(101)
		SAY("Wir haben einige Freunde bei der Anarchy Breed. Haupts�chlich, da sie unsere Clubs im Pepper Park so sehr m�gen. Ich bin mir ziemlich sicher, dass sie einige Waffen die einstmals die Black Dragon benutzten in ihrem Besitz haben. Diese Waffen k�nnten wir dazu verwenden, ProtoPharm auszutricksen. Triff dich mit Crazy Dillan und denk dran, dass Crazy nicht nur sein SPitzname ist.")
		
		ANSWER("Keine Angst, ich habe Erfahrung in so etwas.",102)
	NODE(102)
		SAY("Danach wartet ein gewisser Raymon in Dome of York Sektor 06 auf dich. Er hat Kontakte zu ProtoPharm und er mag Geld, was auch der Grund daf�r ist, warum wir ihn so leicht �berreden konnten mitzumachen. Es sollte ihm m�glich sein, den Mord so aussehen zu lassen, als ob die Black dragon daran Schuld sind. Gib einfach die Waffe, die du von Dillan bekommst an Mastersen. Beim Treffpunkt im Pepper Park solltest du dann diesen Mr Cook von ProtoPharm umlegen.")
		STARTMISSION(3572)
		SETNEXTDIALOGSTATE(4)
		
		ENDDIALOG()
		
	NODE(103)
		SAY("Es ist deine Entscheidung, aber du bist dir hoffentlich klar dar�ber, dass Tsunami Faulpelze nicht leiden kann.")
		
		ENDDIALOG()
	NODE(104)
		SAY("F�hre den Plan aus. Triff die Anarchy Breed vor dem Hauptausgang von Neocron und statte Mastersen in Plaza 04 einen Besuch ab. Wenn alles getan ist, berichte Taylor, wie es gelaufen ist.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tsunami 4
	NODE(151)
		SAY("Das bedeutet, dass im Moment viele kleine Mitglieder auf Distanz gehalten werden. Du eingechlossen. Ich weiss, dass du in der Tat einiges f�r Tsunami in der letzten Zeit getan hast. Vielleicht k�nnte ich dich sogar auf diese Liste bringen. Allerdings m�sstest du es durch Taten schaffen deine Loyalit�t f�r Tsunami zu zeigen. Nur um �ber deine Absichten Klarheit zu erlangen.")
		
		ANSWER("Das ist doch eine verdammte Schweinerei. Ich habe meinen Wert schon mehrmals unter Beweis gestellt. Ich muss mir das hier doch nicht anh�ren.",154)
		ANSWER("Ich habe meinen Wert bewiesen. Wenn ich es wieder tun muss, werde ich es wieder tun.",152)
	NODE(152)
		SAY("Offiziell stimmt deine Aussage, aber es gibt mit Sicherheit ein Leck innerhalb von Tsunami. Deine letzte Mission war nicht der einzige Hinweis auf Insider Information. Ich weiss auch, dass du dort draussen dein Leben riskiert hast, aber mit all den Generep Kopien heutzutage bedeutet das nicht mehr so viel. Aber es g�be die M�glichkeit eine Aufgabe f�r ein h�heres Mitglied zu erledigen und so auf die weisse Liste zu gelangen.")
		
		ANSWER("Na toll. Ihr zieht hier wirklich �ber den falschen her.",153)
	NODE(153)
		SAY("Falls du loyal bist, wirst du bestehen. Falls nicht, brauchen wir dich eh nicht. Gehe zu Taylor Gomez. Er hatte mir gesagt, dass er eine Mission f�r dich hat. Es scheint so, als ob er glaubt, dass du loayl zu Tsunami bist.")
		STARTMISSION(3573)
		SETNEXTDIALOGSTATE(5)
		ENDDIALOG()
		
	NODE(154)
		SAY("Das ist keine kluge Entscheidung. Tsunami ist doch kein Club dem man einfach beitreten kann oder austreten kann. Denk daran.")
		ENDDIALOG()
		
	NODE(155)
		SAY("Ich weiss nicht ob Gomez ewig darauf warten wird, dir diese Aufgabe zu �bergeben.")
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
		SAY("Ziemlich grosse Worte. Wenn es dir gelingen sollte, diese Situation trotzdem zu kl�ren w�rde Tsunami dir auf jeden Fall sehr dankbar sein.")
		STARTMISSION(3575)
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()
----------------------------------------------------
----------------------------------------------------
--FRAKTIONSWECHSEL
	NODE(300)
		SAY("Dann st�ren sie mich nicht weiter.")
		ENDDIALOG()

	NODE(301)
		GETFACTIONSYMPATHY(8)
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
			CHANGEFACTION(8)
			SAY("Willkommen bei Tsunami.")
			ENDDIALOG()
		end
end