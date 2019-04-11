--new
--Fallen Angel Muster
--
--Trigger
--Triggernumber,Type,Person
--0,D,Grimm(50)
--1,D,Max(150)
--2,D,Grimm(300)
--3,D,Constantine(350)
--
--Startnode, Person
--0, Personal Director
--50, Grimm 1639
--100, Constantine 1640
--150, Max Delavare 1614
--200, Constantine 1640
--250, Ethan Cole(Chemikalie) 1601
--300, Grimm(nimmt Chemikalie)
--350, Constantine
--
--Missionbase Eintrag
--NPC0	NPC1	NPC2	NPC3	TRG0	VAL01	VAL02	VAL03	TRG1	VAL01	VAL02	VAL03	TRG2	VAL01	VAL02	VAL03	TRG3	VAL01	VAL02	
--1639	1640	1614	1601	3	0	0	0	3	2	1	0	3	0	2	0	3	1	3	
--START	START	START	START
--50	100	150 	250

--Items
--cHEMIKALIENkonzentrat 9300
--Whiteflash720

function DIALOG()
--------------------------------------------------------------------
--
--0
	
	NODE(0)
		SAY("Grimm möchte mit ihnen reden. Er klang recht aufgebracht und suchte sie schon überall. Jedoch mit uns wollte er noch nicht reden. Wissen sie vielleicht worum es geht?")

		ANSWER("Nein ich habe leider auch keinen blassen Schimmer.",1)
		ANSWER("Ich habe noch etwas dringendes zu erledigen...",3)
	NODE(1)
		SAY("Suchen sie ihn lieber schnell auf, nicht das etwas schlimmes passiert ist. ")
		SETNEXTDIALOGSTATE(2)
		STARTMISSION()
		ENDDIALOG()		
	NODE(2)
		SAY("Haben sie schon Grimm im hier Forschungstrakt besucht? Es klang recht wichtig.")
		ENDDIALOG()
		
	NODE(3)
		SAY("Nun, wie sie meinen, aber das wird Grimm sicher sauer aufstossen.")
		ENDDIALOG()
--------------------------------------------------------------------
-- Grimm
--50
	NODE(50)
		SAY("Wer?!")

		ANSWER("Sie wollten mit mir über irgendetwas sprechen?",51)
	NODE(51)
		SAY("Da ist ja endlich unser grosser Wissenschaftler höchstpersönlich. Wie heisst es so schön, Großmut kommt vor dem Fall. Ich habe ja eh schon wenig von euch gehalten, aber das schlägt dem Fass den Boden aus. ")

		ANSWER("Worum geht es hier eigentlich? Ich habe keine Ahnung wovon ihr da redet.",52)
	NODE(52)
		SAY("Stellt euch nicht dümmer als ihr seid. Die Chemikalie, die ihr meiner Abteilung besorgt habt war verseucht! Euretwegen ist ein treuer Mitarbeiter, Paul Deveraux, in einer Laborexplosion umgekommen ! Ihr seid ein verdammter inkompetenter Wicht!")

		ANSWER("Aber das, wie kann das sein? Das wusste ich nicht, ich habe die Chemikalie direkt hierher gebracht.",53)
	NODE(53)
		SAY("Euer Gestammel könnt ihr euch sparen, das ganze ist unverzeihlich! Aber euch einfach zu entlassen bringt Paul auch nicht mehr zurück zu den Lebenden. Deshalb biete ich folgendes an, ich verrate nicht, dass ihr diese verseuchte Chemikalie nach Tech Haven gebracht habt und ihr besorgt mir eine weitere, reine Form dieser Chemikalie. Wir benötigen diese nämlich auch weiterhin für unsere Forschung.")

		ANSWER("Das tut mir leid mit Paul. Klar werde ich euch noch eine reine Version dieser Chemikalie bringen. Auch wenn ich nicht weiss, wo ich da anfangen soll. Vielleicht sollte ich Constantine ja auch mal fragen.",54)
	NODE(54)
		SAY("Schauen sie dabei nicht mich an. Woher soll ich wissen wo ihr diese Chemikalie ursprünglich her habt? Soweit ich weiss bieten nur die ProtoPharm Labore diese Chemikalie an. Vielleicht solltet ihr dort euer Glück versuchen. Falls ihr die Chemikalie habt, bringt sie zu mir, ist das klar? Ansonsten wird der Forscherrat sehr schnell bescheid wissen, wer die verseuchte Chemikalie hier eingeschleppt hat.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(300)
		ENDDIALOG()
		
--------------------------------------------------------------------
-- Constantine
--100

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Gleich, ich bin gerade dabei etwas herunterzuladen...")
			ENDDIALOG()
		else
			SAY("Ahem… leider noch ein bischen früh, ich habe noch nicht alles beisammen. Wir können noch nicht mit der Forschung beginnen.")

			ANSWER("Keine Angst, das ist auch nicht der Grund, warum ich dich sprechen will. Erinnerst du dich an die Chemikalie, die ich besorgt habe?",101)
		end
	NODE(101)
		SAY("Ja, klar, die BioAbteilung war sehr dankbar dafür. ")

		ANSWER("Genau die, ich muss wissen, wo ich diese Chemikalie noch herbekommen kann. Weißt du vielleicht eine Möglichkeit?",102)
	NODE(102)
		SAY("Eigentlich stellt nur ProtoPharm dieses Produkt her. ")

		ANSWER("Das kommt nicht in Frage, ich traue ProtoPharm nicht mehr.",103)
	NODE(103)
		SAY("Ähh… na gut, wie du willst. Ich kann ja noch einmal auf dem Schwarzmarkt nachsehen. Aber das kann ziemlich unsicher sein…")

		ANSWER("Das ist schon in Ordnung, Hauptsache ich bekomme dieses Zeug irgendwoher.",104)
	NODE(104)
		SAY("Hier ist ein gewisses Angebot von einem Max. Das klingt aber nicht so gut. Der vereinbarte Treffpunkt ist in der Outzone 5. Abgesehen davon, dass dieses schwer zu finden ist, ist es auch noch eine sehr gefährliche Gegend.  Ich rate davon ab. Leider ist das auch das einzige Angebot.")

		ANSWER("Dann muss es eben sein. In Outzone Sektor 5 sagtest du? Dann mach ich mich mal auf den Weg.",105)
	NODE(105)
		SAY("Pass auf dich auf, nimm dir sicherheitshalber ein paar Medipacks mit. Vielleicht habe ich später noch mehr Angebote… Komm danach auf jeden Fall noch einmal zu mir, ja? Viel Glück.")
		SETNEXTDIALOGSTATE(200)
		
		ENDDIALOG()
--------------------------------------------------------------------
-- mAX Delavare
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Verpiss dich Runner! Du hast hier nichts zu suchen.")
			ENDDIALOG()
		else
			SAY("Sprich schnell, was willst du hier? Hab immerhin nicht den ganzen Tag Zeit.")

			ANSWER("Ich bin wegen dem Angebot hier. Du weißt schon, die Chemikalie.",151)
		end
	NODE(151)
		SAY("Das können ja viele Behaupten, zeig mir deinen ID Cube.")

		ANSWER("Was hat denn das damit zu tun? Ich möchte doch nur etwas kaufen.",152)
	NODE(152)
		SAY("Ich muss doch irgendwie herausfinden ob du überhaupt genug Credits hast, um meinen Preis zu bezahlen, oder? Also her mit dem Würfel.")

		ANSWER("In Ordnung. Hier bitte.",153)
	NODE(153)
		SAY("Sehr gut, das erklärt jetzt einiges. Ich habe schon auf dich gewartet Freundchen. Ich wurde von den Crahn gut bezahlt, um dir dein Licht auszublasen. Also halt still, dann tut es nicht so weh…")
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(154)
		ATTACK()
		ENDDIALOG()
		
	NODE(154)
		SAY("Stirb!")
		ATTACK()
		ENDDIALOG()




--------------------------------------------------------------------
--Constantine
--200
	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Hast du Max schon in der Outzone 5 getroffen?")
			ENDDIALOG()
		else
			SAY("Ich bin froh, dich in einem Stück wiederzusehen. Ich selbst würde mich ja nie in eine solche Gegend wagen.")
	
			ANSWER("Da tust du auch gut dran. Dieser Max wollte mir ans Leder. Als ob er gewusst hätte, dass ich dorthin kommen werde.",201)
		end
	NODE(201)
		SAY("Bist du sicher? Ich meine, woher sollte er das wissen?")

		ANSWER("Keine Ahnung, er nuschelte irgendetwas davon, dass Crahn dahinter stecken würde.",202)
	NODE(202)
--Chemiekonzentrat
		TAKEITEM(9300)
		if(result==0)then
			SAY("Bei Crahn! Das gibt es doch nicht! Immer wenn einem Fallen Angel etwas zustösst steckt mit Sicherheit Crahn dahinter. Es scheint ihnen noch nicht genug zu sein, dass wir Jahrzehntelang als Sklaven für sie geschuftet haben.")

			ANSWER("Um ein Haar wäre auch ich ihnen zum Opfer gefallen. Gibt es denn sonst gar niemanden, der diese Chemikalie verkauft?",203)
		else
			GIVEITEM(9300)
			SAY("Da du aber die Chemikalie anscheinend eh schon besitzt, solltest du sie Grimm jetzt übergeben.")
			SETNEXTDIALOGSTATE(350)
			ENDDIALOG()		
		end
	NODE(203)
		SAY("Mist, das habe ich in der ganzen Aufregung vergessen gehabt. Kurz nachdem du gegangen bist, ist noch ein Angebot aufgetaucht. ")

		ANSWER("Bist du sicher, dass es die Chemikalie ist, nach der ich suche?",204)
	NODE(204)
		SAY("Ja, Kaboxorid. Es wird von einem gewissen Mark Cole angeboten. Das ist zwar auch nicht der nächste Weg, aber es ist die letzte Möglichkeit.  Man kann ihn im Sektor 06 finden. So zumindest sagt es die Anzeige.")

		ANSWER("Vielen Dank, Constantine, du bist die Beste.",205)
	NODE(205)
		SAY("Danke, pass aber ja auf, nicht das das schon wieder eine Falle ist.")
		SETNEXTDIALOGSTATE(350)
		ENDDIALOG()


--------------------------------------------------------------------
--Cole
--250	
	NODE(250)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Ich empfange im Moment niemanden, also sieh zu, dass du hier verschwindest.")
			ENDDIALOG()
		else
			SAY("Ahh, ich hoffe mal, dass du gute Nachrichten bringst.")

			ANSWER("Ich bin nicht eigentlich als Bote hier, sondern ich bin an einer gewissen Chemikalie interessiert, die sie hier verkaufen wollten.",251)
		end
	NODE(251)
		SAY("Na, das sind doch gute Nachrichten. Dann kommen wir doch einfach mal zum Geschäft. Du willst dieses Kaboxorid, ich will davon profitieren. Hier ist der Deal. Du besorgst mir etwas, womit ich richtigen Handel betreiben kann und ich geb dir diesen wertlosen Müll. Falls dir das nicht passt, verschwinde.")

		ANSWER("Nein, nein, das ist perfekt. Was willst du?",252)
	NODE(252)
		SAY("Bring mir etwas wertvolles. Am besten Drogen. Und nicht den billigen Scheiss, ich habe lange gebraucht bis ich diesen ProtoPharm Typen diese Chemikalie abnehmen konnte. Whiteflash würde mir gerade recht kommen. Dafür hätte ich auch schon einen Abnehmer. Also mach dich ran, drei Einheiten Whiteflash sollten reichen…")
		SETNEXTDIALOGSTATE(253)
		ENDDIALOG()

--Spieler besorgt Whiteflash720

	NODE(253)
		TAKEITEMCNT(720,3)
		if(result==0)then
			SAY("Ist das wirklich so schwer? Ich brauche einfach nur ein bischen von der Droge Whiteflash.")
			ENDDIALOG()
		else
			GIVEITEM(9300)
			SAY("Gut gemacht. Dann bist du ja doch zu etwas nutze. Nicht so wie diese Fallen Angels Nichtsnutze. Gut, dass ich mich damals dort aus dem Staub gemacht habe. Die leben mit ihren Köpfen so hoch in den Wolken, dass sie ihre eigenen Füsse nicht mehr sehen. Hier hast du auf jeden Fall mal diese Chemikalie. Viel Spass mit diesem Schrott.")
			SETNEXTDIALOGSTATE(254)
			ENDDIALOG()
		end
	NODE(254)
		SAY("Ich habe keine Lust heute noch ein Geschäft mit dir auszumachen. Geh doch einfach dorthin zurück, wo du her gekommen bist.")
		ENDDIALOG()

--------------------------------------------------------------------
--gRIMM
--300
--Chemikalie
	NODE(300)
		TAKEITEM(9300)
		if(result==0)then
			SAY("Lassen sie sich nicht ohne diese Chemikalie blicken. Sie muss in reinem Zustand sein, verstanden?")
			ENDDIALOG()
		else
			SAY("Sie?! Aber wie kann das sein, ich habe doch eigentlich alle Vorkehrungen getroffen…")

			ANSWER("Was? Wovon reden sie?",301)	
		end
	NODE(301)
		SAY("Nun gut, dann muss ich mich halt umstellen. Falls sie das gewünschte Preparat wegen ihrer Inkompetenz nicht bekommen konnten, dann habe ich auch keinen Grund dem Rat gewisse Informationen vorzuenthalten. Also…")

		ANSWER("Sparen sie sich die Worte, ich bin zwar fast ums Leben gekommen, aber ich habe ihre Chemikalie.",302)
	NODE(302)
		SAY("Wirklich?! Das haben sie doch sicher wieder mit einem Trick hingekriegt. Geben sie es her.")

		ANSWER("Ich habe mich an meinen Teil der Abmachung gehalten, jetzt halten sie den ihren.",303)
	NODE(303)
		SAY("Schon gut! Sie haben Glück, dass ich so ehrlich bin. Ich halte mich an die Abmachung. Jetzt verschwinden sie aber. Constantine wollte auch noch einmal mit ihnen reden.")
		ACTIVATEDIALOGTRIGGER(2)
		SETNEXTDIALOGSTATE(304)
		ENDDIALOG()
		
	NODE(304)
		SAY("Nur weil sie es geschafft haben, diese Chemikalie aufzutreiben müssen sie sich noch lange nichts einbilden.")

		ENDDIALOG()

--------------------------------------------------------------------
--Constantine
--350

	NODE(350)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Irgendwas hast du falsch gemacht, versuch es doch später nochmal.")
			ENDDIALOG()
		else
		
			ISMISSIONTARGETACCOMPLISHED(1)
			if(result==0)then
				SAY("Irgendwas hast du falsch gemacht, versuch es doch später nochmal.")
				ENDDIALOG()
			else
			
				ISMISSIONTARGETACCOMPLISHED(2)
				if(result==0)then
					SAY("Du musst Grimm doch noch die Chemikalie geben.")
					ENDDIALOG()
				else
					SAY("Ich bin gerade noch dabei, die letzten Informationen einzusortieren und auszuwerten. Wenn du mir jetzt noch ein bisschen Zeit gibst, dann können wir mit dem Projekt starten. Aber du kannst dich ja auch noch weiter einarbeiten um einen besseren Überblick zu bekommen. (nächste Mission Level 35)")
				GIVEMONEY(10000)

				EPICRUNFINISHED(14,2)
				ACTIVATEDIALOGTRIGGER(3)
				ENDDIALOG()
				end	
			end
		end

end