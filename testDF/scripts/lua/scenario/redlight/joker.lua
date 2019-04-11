function DIALOG()
	
	NODE(0)
	if (node==state) then
		kosten=150
		repcount=0
		SAY("Yey! Hier haben wir mal wieder einen gut augelegten Runner der sich einen meiner berühmten Witze anhören will! Das erfreut! Was solls denn sein?")
		ANSWER("Wie, was solls denn sein?",1)
	end
				
	NODE(1)
		SAY("Ich biete Witze aus den verschiedensten Kategorien. Wir haben Politikwitze, Vermischtes und natürlich für die hartgesottenen auch die Sexistischen. Die kosten natürlich am meisten!")
		ANSWER("Kosten? Ich soll also für die Witze zahlen?",2)
		
	NODE(2)
	if (node==state) then
		SAY("Na sicher Mann. Das ist mein Geschäft. "..(kosten*2).." Credits für Politik und Vermischtes, "..(kosten*4).." für die Sexwitze. Was sagste?")
		ANSWER("Na Ok. Schieß los.",6)
		ANSWER("Wizte für Geld? Nee, las mal stecken.",3)
	end
	
	NODE(3)
	if (node==state) then
		SAY("Hey Mann. Apropos stecken lassen. Da hätt ich nen Witz auf Lager. "..(kosten*2).." und ich erzähl ihn Dir.")
		ANSWER(""..(kosten*2).."? Na dann schieß schon los.",4)
		ANSWER("Ich sagte vergiss es.",100)
	end
	
	NODE(4)
		SAY("Aber Vorsicht! ist Sexistisch, diskreminierend und Frauenfeindlich! Hehe...")
		ANSWER("Erzähl schon Du Sau.",5)
		ANSWER("Dann vergisses. Ich hasse solche Witze.",100)

	NODE(5)
	if (node==state) then
		TAKEMONEY(kosten*2)
		SAY("Zwei Lesben treffen sich in der Mittagspause. Fragt die eine: 'Was hast du denn zu essen dabei?' - darauf die andere: 'Eine Gurke. Willst du was abhaben?' - 'Nee danke, lass mal stecken...'! Muhahaha.")
		ANSWER("Geiler Witz. Haste noch mehr davon?",6)
		ANSWER("Du Ferkel. Über solche Witze lachen doch nur Gehirnamputierte!.",100)
	end

	NODE(6)
		SAY("Klar. Welche Sorte?")
		ANSWER("Sexwitze. Was sonst!",7)
		ANSWER("Nimm mal nen Politikerwitz!",10)
		ANSWER("Gib mir einen Vermischten.",7)

--Sex
	NODE(7)
	if (node==state) then
		if (repcount==0) then
			TAKEMONEY(kosten*4)
			SAY("Kohle her. "..(kosten*4)..". Wie abgemacht.")
			ANSWER("Ok. Hier. Leg los.",8)
		else
			if (repcount==1) then
				repcount=0
				TAKEMONEY(kosten*2)
				SAY("Ok. Also Wiederholungswitz Ermäßigung. "..(kosten*2)..".")
				ANSWER("Ok. Hier. Leg los.",8)
			else
				repcount=0
				TAKEMONEY(kosten*8)
				SAY("Na schön. Dann aber wirklich doppelte Kohle. Also "..(kosten*8)..".")
				ANSWER("Da. Leg schon los.",8)
				ANSWER("Da ist mir mein Geld dann doch zu schade.",101)
			end
		end
	end

	NODE(8)
		SAY("Also los: Sind ein Säufer ein Kettenraucher,und ein Schwuler beim Arzt. Geht der Säufer rein. Meint der Arzt: 'Wenn du noch ein Glas Wein trinkst, stirbst du auf der Stelle.' Geht der Kettenraucher rein. Meint der Arzt: 'Wenn du noch eine Zigarette rauchst, stirbst du auf der Stelle.'. Geht der Schwule rein. Meint der Arzt: 'Wenn du noch einen von hinten nimmst, stirbst du auf der Stelle.'. Gehen alle zusammen raus, sieht der Säufer einen Weinstand kann nicht wiederstehen, trinkt ein Glas Wein und kippt tot um. Sieht der Kettenraucher eine Zigarette auf dem Boden liegen. Meint der Schwule zum Kettenraucher: 'Wenn du dich jetzt bückst sind wir beide tot!'...-... Geiler Witz, oder?")
		SAY("Here we go: Sagt der eine Schwule zum anderen: 'Ich probier es mal mit Frauen.' Zwei Wochen später treffen die beiden sich wieder und der andere will wissen, wie es war: 'War nicht so prall unten keine Haare und oben so flach'. Sagt der andere: 'Mensch bist du blöd! Du mußt sie doch umdrehen! ...-... Ein Brüller, oder?")
		SAY("Da kommt er: Zwei Schwule unterhalten sich. Sagt der Eine: 'Menschenskinder, gestern ist mir doch tatsächlich ein Kondom geplatzt.' - 'Im Ernst???' - 'Nein, im Dieter!' ...-... Ein Brüller, oder?")
		SAY("Los gehts: 2 Schwule spielen Tennis. Sagt der Eine zum Anderen: 'Mann, Du hast ja 'nen Ständer.' Antwortet sein Freund: 'Naja, Du spielst ja auch wie ein ARSCH!' ...-... Ein Brüller, oder?")
		SAY("Bist Du bereit: Zwei alte Tennisspieler treffen sich nach dem Match unter der Dusche. Der Erste: 'Du bist ja im unten rasiert! Wofür?' Antwort: 'Wenn Er nicht mehr steht, soll Er auch nicht weich liegen!' ...-... Ein Brüller, oder?")
		SAY("Pass auf: Die Lehrerin fragt:'Sitzen fünf Geier auf dem Ast, der Jäger erschiesst einen. Wieviel bleiben übrig?' Ein Junge:'Keiner, weil wenn der Jäger schiesst, fällt einer vom Baum und die anderen fliegen davon.' Lehrerin:'Das ist zwar mathematisch nicht ganz richtig aber es gefällt mir deine Art zu denken!' Junge:'Frau Lehrerin, sitzen zwei Weiber im Cafe und bestellen Eis. Die eine ist es, die andere lutscht es, welche ist verheiratet?' Lehrerin:'...Die, die es lutscht?' Junge:'Natürlich die die einen Ehering trägt, aber es gefällt mir ihre Art zu denken?' ...-... Ein Brüller, oder?")
		SAY("Mein Favorit. Pass auf: Eine dicke Frau kommt zu ihrer ersten Untersuchung zum Arzt. Dieser erklärt ihr den Stuhl und wie sie sich draufzusetzen hat.Die Frau steigt mühsam auf den Stuhl und spreizt schön die Beine. Der Arzt schaut die Frau eine Weile an und sagt:'So, jetzt furzen Sie mal ordentlich.' 'Gehört das zur Untersuchung?' 'Nein, das dient nur meiner Orientierung!' ...-... Ein Brüller, oder?")
		SAY("Here we go: Bernd hat zum ersten Mal eine Freundin. Er liegt neben ihr im Bett, aber sie stellt sich noch immer ziemlich zickig an. 'Ach Mann, nix darf ich machen, darf ich wenigstens meinen Finger in deinen Bauchnabel stecken?' 'Meinetwegen!' Plötzlich ruft sie: 'Bernd, das ist aber nicht mein Bauchnabel.' 'Haeh, haeh, das ist auch nicht mein Finger!' ...-... Ein Brüller, oder?")
		SAY("Kennste den schon: Der Hometerm (H) meldet sich beim Runner (R): H:Create new passwort!R: Hö,hö, ich nehme 'Penis' tipp,tipp,tipp...H:Sorry, your password isn't long enough  ...-... Ein Brüller, oder?")
		SAY("Alos los: Warum täuschen 50% Prozent der Frauen den Orgasmus vor? - Weil sie meinen, es interessiert uns Männer!  ...-... Ein Brüller, oder?")
		SAY("Pass auf: Fragt der Vater den kleinen Sprössling:'Hast du deine kleine Freundin eigentlich schon mal geküsst?' 'Na klar!' 'Und, was hat sie gesagt?' 'Keine Ahnung, sie hat mir mit ihren Schenkeln die Ohren zugehalten!' ...-... Ein Brüller, oder?")
		SAY("Kennste den schon: Der Sohn kommt ins Schlafzimmer und sieht, wie Mutter stöhnend auf Papa reitet. 'Was macht ihr denn da?' Mama antwortet: 'Ich massiere Papa gerade den Bauch weg!' Meint Fritzchen: 'Das bringt doch nichts! Jeden Donnerstag kommt die Nachbarin und bläst ihn wieder auf!' ...-... Ein Brüller, oder?")

		ANSWER("Hahah...haha..absolut, Mann. selten so gelacht! hau noch so einen raus",6)
		ANSWER("Nicht schlecht. Aber den kannte ich schon!",20)
		ANSWER("Man der Witz war absolute Scheiße. Und dafür soll man noch Geld ausgeben. Verzisch Dich.",100)

--Politik
	NODE(10)
	if (node==state) then
		if (repcount==0) then
			TAKEMONEY(kosten*2)
			SAY("Kohle her. "..(kosten*2)..". Wie abgemacht.")
			ANSWER("Ok. Hier. Leg los.",11)
		else
			if (repcount==1) then
				repcount=0
				TAKEMONEY(kosten*1)
				SAY("Ok. Also Wiederholungswitz Ermäßigung. "..kosten..".")
				ANSWER("Ok. Hier. Leg los.",11)
			else
				repcount=0
				TAKEMONEY(kosten*4)
				SAY("Na schön. Dann aber wirklich doppelte Kohle. Also "..(kosten*4)..".")
				ANSWER("Da. Leg schon los.",11)
				ANSWER("Da ist mir mein Geld dann doch zu schade.",101)
			end
		end
	end

	NODE(11)
		SAY("Also los: Warum sieht man in Neocron nie drei CopBots nebeneinander gehen? - Man könnte meinen, der Mittlere werde abgeführt......-... Geiler Witz, oder?")
		SAY("Here we go: Können CopBots Schwimmen? Einerseits ja, weil sie innen hohl sind, und andererseits nein, weil sie nicht dicht sind. ...-... Ein Brüller, oder?")
		SAY("Da kommt er: Ein Polizist steht auf der Strasse und hat einen weissen und einen schwarzen Stiefel an. Kommt eine Funkstreife und hält an. 'Kollege!, sagt der Fahrer, du hast einen weissen und einen schwarzen Stiefel an. Geh nach Hause und kleide dich richtig.' - 'Das kann ich nicht,' sagt der Polizist, 'da steht auch bloss ein weisser und ein schwarzer Stiefel.' ...-... Ein Brüller, oder?")
		SAY("Los gehts: Morgens, 7 Uhr. Die Frau stellt dem Mitarbeiter der CitAdmin das Frühstück vor die Nase, inklusive Neocronicle. Sie frühstücken, er liest die die wöchentliche Ausgabe, keiner sagt etwas. - Drei Stunden später sitzt er immer noch am Tisch, liest die Zeitung, nickt ab und zu ein, schaut manchmal aus dem Fenster... Da sagt die Frau: 'Sag mal, Schatz, musst du heute gar nicht in die CityAdmin?' Er springt total erschrocken auf: 'Mist, ich dachte, da wäre ich längst.' ...-... Ein Brüller, oder?")
		SAY("Bist Du bereit: Im NCPD kurz vor 12.00 Uhr: Der Administrator nimmt die Personalien auf. Da springt der grosse Zeiger auf die 12: 'So, Runner, und Ihren Vornamen können Sie mir morgen sagen.' ...-... Ein Brüller, oder?")
		SAY("Pass auf: Der Unterschied zwischen einem Staubsauger und einem NCPD Fahrzeug? Im Staubsauger befindet sich nur ein Drecksack. ...-... Ein Brüller, oder?")
		SAY("Reza und Danmund treffen sich zum Essen mit Gästen. Fragt einer der Gäste: 'Mister President, worüber unterhalten Sie sich denn den ganzen Tag?' - 'Wir planen gerade den 3. Weltkrieg.' - 'Und wie sieht der aus?' - Reza: 'Wir töten alle 40000 Crahn Brüder und einen Zahnarzt ...'Der Gast schaut etwas verwirrt: 'Wieso einen Zahnarzt?' - Reza klopft Danmund auf die Schulter und meint: 'Was habe ich dir gesagt, Robert. Keiner wird nach den Crahntypen fragen ...' ...-... Geil oder?")
		SAY("Here we go: Reza kommt in den Himmel und wird von Petrus begrüßt. Er blickt sich um und sieht eine riesige Zahl von Uhren. Reza fragt Petrus, was das bedeuten soll. 'Nun, jede Regierung der Welt hat eine Uhr. Wenn die Regierung eine Fehlentscheidung trifft, rücken die Zeiger ein Stück weiter.' Reza schaut noch einmal in die Runde und fragt dann:' Und wo ist die Neocron Uhr?' 'Tja', meint Petrus, 'die hängt in der Küche als Ventilator!' ...-... Ein Brüller, oder?")
		SAY("Treffen sich Robert und Symour Jorden in Rezas Magen. Sagt Symour: 'Ich glaube, der Reza hat mich gefressen.' - Darauf Robert: 'Kann ich nichts zu sagen, ich kam von der anderen Seite rein.'   ...-... Ein Brüller, oder?")
		SAY("Alos los: Neocron hat Dome of York den Krieg erklärt. 'Wir haben 2 Panzer und 150 Soldaten.' Dome of York antwortet: 'OK, angenommen. Wir haben 15000 Panzer und 5 Millionen Soldaten.' Neocron telegrafiert zurück: 'Wir müssen doch absagen, haben nicht genug Platz für die Kriegsgefangenen.' !  ...-... Ein Brüller, oder?")

		ANSWER("Hahah...haha..absolut, Mann. selten so gelacht! hau noch so einen raus",6)
		ANSWER("Nicht schlecht. Aber den kannte ich schon!",20)
		ANSWER("Man der Witz war absolute Scheiße. Und dafür soll man noch Geld ausgeben. Verzisch Dich.",100)

--Vermischtes

	NODE(12)
	if (node==state) then
		if (repcount==0) then
			TAKEMONEY(kosten*2)
			SAY("Kohle her. "..(kosten*2)..". Wie abgemacht.")
			ANSWER("Ok. Hier. Leg los.",13)
		else
			if (repcount==1) then
				repcount=0
				TAKEMONEY(kosten*1)
				SAY("Ok. Also Wiederholungswitz Ermäßigung. "..kosten..".")
				ANSWER("Ok. Hier. Leg los.",13)
			else
				repcount=0
				TAKEMONEY(kosten*4)
				SAY("Na schön. Dann aber wirklich doppelte Kohle. Also "..(kosten*4)..".")
				ANSWER("Da. Leg schon los.",13)
				ANSWER("Da ist mir mein Geld dann doch zu schade.",101)
			end
		end
	end

	NODE(13)
		SAY("Also los: Eine Blondine erzählt einem Priester einen Mutantenwitz, dieser unterbricht sie nach der Hälfte des Witzes:'Sie wissen wohl nicht dass ich ein Mutant bin?' Darauf die Blondine: 'Oh Entschuldigung, soll ich von vorn anfangen und diesmal langsamer sprechen?'...-... Geiler Witz, oder?")
		SAY("Here we go: Wohlwollend schlägt der General bei der Truppenbesichtigung einem Rekruten auf die Schulter:'Wie geht es dir, mein Sohn?' Strahlt der Rekrut:'Freut mich, Papa, dass du dich endlich meldest. Mama sucht dich schon seit 20 Jahren!'")
		SAY("Da kommt er: Der Zahnarzt will sich gerade über die Patientin beugen und zu bohren anfangen, als er plötzlich aufschreckt. Arzt: 'Kann es sein dass sie ihre Hand an meinen Hoden haben?' Patientin: 'Genau, Herr Doktor. Und wir wollen uns ja nicht gegenseitig wehtun, oder?' ...-... Ein Brüller, oder?")
		SAY("Los gehts: Ein Arzt, ein Bauingenieur und ein Informatiker streiten sich darüber welcher von ihnen den ältesten Beruf ausübt. Der Arzt meint 'In der Genesis steht geschrieben: Und Gott schnitt eine Rippe aus Adam und erschuf damit Eva. Also ist mein Beruf der älteste. 'Der Bauingenieur entgegnet darauf 'In der Genesis steht aber auch: Und Gott schuf die Welt aus dem Chaos. Also ganz klar, eine bautechnische Leistung.' Daraufhin meint der Informatiker. 'Und was meint ihr, wer für das Chaos verantwortlich war.'")
		SAY("Der Chef feierlich zu seiner Belegschaft: 'Meine Herren, damit Sie es alle wissen, meine Frau wird in einem halben Jahr Mutter!' - 'Und, haben Sie schon jemanden in Verdacht?'")

		ANSWER("Hahah...haha..absolut, Mann. selten so gelacht! hau noch so einen raus",6)
		ANSWER("Nicht schlecht. Aber den kannte ich schon!",20)
		ANSWER("Man der Witz war absolute Scheiße. Und dafür soll man noch Geld ausgeben. Verzisch Dich.",100)







	NODE(20)
	if (node==state) then
		RAND(3)
		if (result==0) then
			SAY("Na mein Gott. Ich hab heute meinen großzügigen Tag. Dann erzähl ich Dir den Nächsten eben für die Hälfte.")
			repcount=1
			ANSWER("Das klingt gut.",6)
			ANSWER("Jaja. Alte Witze gegen Geld. Erfolgversprechendes Konzept!",100)
		else
			if (result==1) then
				SAY("Stell Dich nicht so an Mann. Dein Risiko. Willste noch einen?")
				ANSWER("Na Ok.",6)
				ANSWER("Alte Witze! Und dann noch bezahlen? V-E-R-G-I-S-S E-S.",101)
			else
				SAY("Heute können die Kunden nur mosern! Scheißtag. Verzieh Dich! Ich erzähl keinen mehr!")
				repcount=2
				ANSWER("Ach komm. Ich zahl auch das doppelte!",21)
				ANSWER("Jaja. Alte Witze gegen Geld. Erfolgversprechendes Konzept!",101)
			end
		end
	end

	NODE(21)
		SAY("Na von mir aus. Dann aber kein Gestänker mehr!")
		ANSWER("Ok, Ok.",7)

		
		
--Ausstiege		
	NODE(100)
		SAY("Oh, Oh! Der Runner ist unkomisch drauf. Schon kapiert.")
		ENDDIALOG()	
	NODE(101)
		SAY("Dann mach das Du wegkommst, Du Wichser!!!")
		ENDDIALOG()
		
end


