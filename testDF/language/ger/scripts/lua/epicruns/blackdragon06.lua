--new
--BlackDragon
--
--Trigger
--Triggernumber,Type,Person
--0,D, LUCY 50
--1,NPCTYPEloot, Mercurus
--2,LOOTNPC, CHANG
--3
--
--Startnode, Person
--0, WISEGUY
--50, LUCY 1650
--100, MERCURUS 1653 
--150, Chang 1690
--200, LUCY
--250,
--
--Items
--DrogenProduzent
--Missionbase Eintrag
--NPC0	NPC1	NPC2	NPC3	TRG0	VAL01	VAL02	VAL03	TRG1	VAL01	VAL02	VAL03	TRG2	VAL01	VAL02	VAL03	TRG3	VAL01	VAL02	
--1650	1653	1690		3	0	0	0	10	2	9463	0	11	-14	2	9464	3	0	3
--START	START	START	START
--50	150	200	250
--

function DIALOG()
--------------------------------------------------------------------
--WISEGUY
--0
	
	NODE(0)
 		SAY("Die Zeit ist reif. Lucy hat mich gebeten dir mitzuteilen, sie möchte mit dir reden. Aber pass ja auf, es wird nicht gerne gesehen, wenn man mit Geckos Freundin so viel zu tun hat.")
		STARTMISSION()
 		SETNEXTDIALOGSTATE(1)
 		ENDDIALOG()
 	NODE(1)
 		SAY("Hast du schon mit Lucy gesprochen?")
		ENDDIALOG()


--------------------------------------------------------------------
--LUCY
--50
	NODE(50)
		SAY("Ahh, mein Lieblingsrunner. Ich hoffe du hast deine Freizeit genossen und bist nun bereit, reich zu werden. Ich habe mich ein wenig umgehört.")

		ANSWER("Da kann ich nicht nein zu sagen.",51)
	NODE(51)
		SAY("Also hör zu. Der Tsunami Clan Monsun hat in seiner Zeit viele Überfälle auf Black Dragon Vorhaben geführt. Normalerweise töteten sie alle, die sie trafen und strichen die ganze Beute ein. Mit der Zeit müssen sie eine enorme Menge von Drogen angehäuft haben und sie irgendwo in Sicherheit gebracht haben.")

		ANSWER("Ein El Dorado aus Drogen sozusagen.",52)
	NODE(52)
		SAY("Richtig. Es ist ein Schatz, der nur darauf wartet von uns gefunden zu werden. Stell dir vor, was wir beide dadurch gewinnen würden. ")

		ANSWER("Wir wären reich… ich bin dabei. Wann geht’s los?",53)
	NODE(53)
		SAY("Sobald du bereit bist. Ich habe etwas Unterstützung aus den Crahn Reihen bekommen können. Sie können dir vielleicht dabei helfen, diesen Lagerplatz zu finden.")

		ANSWER("Mir? Aber wenn ich alles alleine tue, wofür brauche ich dich dann?",54)
	NODE(54)
		SAY("Mal angenommen du hättest dann die Drogen gefunden, wem würdest du sie geben? Was würdest du damit tun? So wie ich das sehe ist deine einzige Chance, sie an mich zu verkaufen. Immerhin hast du Lucky und Leone sehr wütend auf dich gemacht. Ich mach dir auch einen fairen Preis.")

		ANSWER("Ich sehe schon, du hast an alles gedacht wie es scheint. Wo soll ich mit meiner Suche dann beginnen?",55)
	NODE(55)
		SAY("Mercurus bei den Crahn hat mir versichert, dass die Crahn Seher mindestens eine Spur offenbaren würden. Ich schlage vor, du besuchst sie als erstes. Niemand weiss viel über die Seher, aber sie haben mit Sicherheit ein Talent Dinge zu erahnen, die noch nicht geschehen sind. Sobald du irgendwas findest, bring es zu mir.")
		SETNEXTDIALOGSTATE(200)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()



--------------------------------------------------------------------
--MERCURUS
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Crahns Jünger stehen nicht auf Abruf bereit.")
			ENDDIALOG()
		else
			SAY("Wir sind uns ja schon einmal begegnet. Ich hoffe Crahn hat deinen Pfad inzwischen erleuchtet. Also sprich, was genau führt dich her?")

			ANSWER("Mir wurde versichert, dass eure Seher mir eine Spur offenbaren können. Eine Spur zu einer besonderen Lagerstelle des Tsunami Monsun Clans.  An diesem speziellen Ort bunkern sie nämlich alle Drogen, die sie uns, den Dragons, jemals abgenommen haben.",101)
		end
	NODE(101)
		SAY("Ich verstehe. Also willst du unsere Hilfe, die Hilfe der Seher Crahns, um diese Drogen zu finden? Und du meinst, dass wir nicht selbst genug in diese Richtung zu tun haben? Du meinst, dass unsere Seher nichts besseres zu tun haben?")

		ANSWER("Ich weiss nichts von euren Problemen, ich brauche aber trotzdem die Hilfe von euch.",102)
	NODE(102)
		SAY("Wenn du die Hilfe unserer Seher bedarfst, dann musst du uns zuersteinmal helfen. Unsere Seher können dir nur helfen, wenn du uns auf einem anderen Wege entlastest. Kurz, besorge uns etwas, was wir gebrauchen können.")

		ANSWER("Und wovon redest du?",103)
	NODE(103)
		SAY("Für einige unserer Experimente könnten wir noch ein paar Spendernieren benötigen. Dabei ist es uns egal, ob diese mit oder ohne Erlaubnis des Spenders zu uns gelangen. Ich hoffe du hast diesen Wink verstanden? Allerdings gibt es ein Problem, wir hätten gerne Nieren von Fallen Angels mitarbeitern. Zwei dürften erst einmal genügen.")

		ANSWER("Ich soll mir also irgendeinen Fallen Angels Angestellten schnappen, ihn aufschlitzen und eine seiner Nieren klauen?",104)
	NODE(104)
		SAY("Hast du ein Problem damit?")

		ANSWER("Nein, nein, wenn es mich an mein Ziel bringt, liefere ich euch diese zwei Nieren.",105)
	NODE(105)
		SAY("Gut, dann gib aber acht drauf, Angestellte und keine Runner zu erwischen. Runner haben oft viel zu kranke oder beschädigte Nieren.")

		SETNEXTDIALOGSTATE(106)
		ENDDIALOG()
--SPIELER LOOTED 2 FA NPCS 

	NODE(106)
		TAKEITEMCNT(9464,2)
--NIERE
		if(result==0)then
			SAY("Wir benötigen diese Nieren als Teil für unsere Experimente. Worauf wartest du noch?")
			ENDDIALOG()
		else
			SAY("Exzellent. Als ich einen von Crahns Sehern fragte, hat er schon voraus gesehen, dass du uns die Nieren bringen würdest. Daraufhin hat er mir sofort die Antwort auf deine Frage genannt. Da wir nun die Nieren haben, kann ich dir auch sagen, was du wissen willst.")

			ANSWER("Darauf habe ich gewartet, nur heraus damit.",107)
		end
	NODE(107)
		SAY("Suche nach Chang. Du wirst ihn in Sektor 07, dem Tsunami Gebiet finden. Er hält den Schlüssel zu dem, wonach du suchst.")

		ANSWER("Das war schon alles?",108)
	NODE(108)
		SAY("Ja, und nun geh. Ich habe keine Zeit mehr an dich zu verschwenden.")
		SETNEXTDIALOGSTATE(109)
		ENDDIALOG()
	NODE(109)
		SAY("Suche nach Chang in Sektor 07.")
		ENDDIALOG()

		

--------------------------------------------------------------------
--Chang
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Ich habe nichts mit dir zu schaffen, Mann.")
			ENDDIALOG()		
		else
			SAY("Ich habe überhaupt keine Lust mit so jemandem wie dir zu reden.")

			ANSWER("Dir ist sicher bekannt, wo die Tsunamis all ihre erbeuteten Drogen gebunkert haben, oder nicht?",151)
		end
	NODE(151)
		SAY("Runner, du spinnst. Tsunamis haben nicht das geringste Interesse an Drogen.")

		ANSWER("Ich weiss es aus sicherer Quelle. Muss ich es erst aus dir herausprügeln?",152)
	NODE(152)
		RAND(2)
		if(result==0)then
			SAY("Ich sag dir was. Steck deine Nase nicht so tief in Sachen die dich nichts angehen. Jungs macht diesen neugierigen Runner kalt.")
			HELP()
			SETNEXTDIALOGSTATE(153)	
			ENDDIALOG()
		else
			SAY("Du gehst mir auf die Nerven. Ich werde dieses Problem wohl höchstpersönlich lösen müssen.")
			ATTACK()
			SETNEXTDIALOGSTATE(153)	
			ENDDIALOG()
		end
	NODE(153)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Du hast hier absolut nichts zu suchen. Verschwinde!")
			ATTACK()
			ENDDIALOG()
		else
			SAY("Mein Gott, du hast doch hoffentlich nicht meinen Key gestohlen? Verdammt, das würde mich meinen Kopf kosten.")

			ANSWER("Du meinst diesen hier?",154)
		end
	NODE(154)
		TAKEITEM(9463)
--KEY FÜR DROGEN EL DORADO
		if(result==0)then
			SAY("Ha, den Schlüssel bekommst du nie! Dafür werde ich sorgen!")
			
			ATTACK()
			ENDDIALOG()
		else
			GIVEITEM(9463)
			SAY("Wie hast du den Schlüssel von mir bekommen?! Gib ihn wieder her! Sofort!")
			ATTACK()
			ENDDIALOG()
		end

--------------------------------------------------------------------
--LUCY
--200
	NODE(200)
		TAKEITEM(9463)
--KEY FÜR DROGEN
		if(result==0)then
			SAY("Wir brauchen zuerst einen Hinweis auf den Lagerplatz der Drogen. Sprich mit Mercurus, er kann uns mit den Crahn Sehern sicher weiterhelfen.")
			ENDDIALOG()
		else
			ISMISSIONTARGETACCOMPLISHED(0)
			if(result==0)then
				SAY("Tu es so wie es dir gesagt wurde.")
				ENDDIALOG()
			else	
				ISMISSIONTARGETACCOMPLISHED(1)
				if (result==0)then
					SAY("Tu es so wie es dir gesagt wurde.")
					ENDDIALOG()
				else			
					SAY("Respekt, mein Freund. Du hast da einen dicken Fang gemacht. Also, gibst du mir den Schlüssel?")

					ANSWER("Zuerst möchte ich wissen, über wieviel Drogen wir hier reden.",201)
				end
			end
		end
	NODE(201)
		SAY("Ich vermute Drogen im Wert von über einigen Millionen Credits. Aber ich müsste die Ware auch erst einmal sehen. Der Schlüssel weist den Lagerplatz immerhin sehr gut aus, soviel ist sicher.")

		ANSWER("Gut, dann ist mein Preis ja hoffentlich klar. Zwei Millionen sollten genug sein und der Key ist dein.",202)
	NODE(202)
		SAY("Sehr witzig, wo meinst du, soll ich diesen Betrag hernehmen? Ich habe einen anderen Vorschlag.")

		ANSWER("Nur heraus damit. Ich bin ganz Ohr.",203)
	NODE(203)
		SAY("Ich werde dir Zugang zu unserem Drogen Outlet organisieren, ja? Damit kannst du dir soviele Drogen besorgen, wie du willst.")

		ANSWER("Ist zwar nicht so gut wie Kohle, aber damit könnte ich leben. Wo ist der Haken dabei? ",204)
	NODE(204)
		SAY("Der Kontaktmann kann dir wahrscheinlich nur immer eine kleine Menge geben, ansonsten würde es auffallen.. Aber du kannst immer wieder Drogen dort bekommen.")

		ANSWER("Abgemacht. Was ist jetzt mit meiner Karriere? Bekomme ich noch Aufträge?",205)
	NODE(205)
		SAY("Von mir nicht mehr, Gecko könnte sonst eifersüchtig werden. Und mit Leone und Lucky hast du es dir ja auch verscherzt. Also wahrscheinlich nicht. Mach dir deinen eigenen Namen. Mach dir einen Namen der überall bekannt ist. Ich wünsch dir viel Glück. Vielleicht solltes du ja einen Clan gründen.")
		ACTIVATEDIALOGTRIGGER(3)
		EPICRUNFINISHED(9,5)
		ENDDIALOG()

end