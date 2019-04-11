
-- definitionen aus der missionheader die in der dialogheader fehlen:

function CANDOEPICRUN( factionid, missionid)

	if (node==state) then
		SendScriptMsg("candoepicrun", dialogclass, factionid, missionid)
	end
end

-- ende der Definitionen aus der missionheader
-- Definitionen der eigenen Funktionen

function CHECKFACTION(facid)
	CANDOEPICRUN(facid,0)
	if (result==-1) then
		result = 0 
	else
		result = 1
	end
end

function DIALOG()
	-- ******************************************************
	-- ******************************************************
	-- Reserved
	NODE(0)		
		-- Verweist NODE 0 auf die Node 50 oder Node 100.
		CHECKFACTION(14) ;
		if (node==state) then
			if (result==1) then		-- ist Fallen Angel
				state = 100		-- springe ohne Umwege nach node 100
			else				-- ansonsten
				state = 50		-- springe zur node 50
			end
		end
	-- ******************************************************
	-- ******************************************************
	-- Not FA
	NODE(50)
		SAY("Gr��e. Kann ich helfen?") ;
		SAY("Gr��e. Kann ich irgendwie behilflich sein?") ;
		ANSWER("Hey, was ist das hier f�r ein Ort?",51);
		ANSWER("Nein, Danke. Ich kenne meinen Weg.",80);
	NODE(51)
		SAY("Tech Haven ist eine unabh�ngige Handelsstation. H�ndler und Conster von �berall leben und arbeiten oder treffen sich einfach hier.");
		ANSWER("Aha. Aber was macht diesen Ort so besonders attraktiv f�r H�ndler, dass so viele von ihnen hier wohnen wollen?",52);
	NODE(52)
		SAY("Unser hoch-entwickeltes Sicherheitssystem bietet unseren G�sten rund um die Uhr absoluten pers�nlichen Schutz. Es ist unm�glich jedwede Art von Waffe in den Tech Haven Sektoren 1-3 abzufeuern. In der heutigen Zeit, die von einer nie dagewesenen Welle der Gewalt und Kriminalit�t �berrollt wird, ist diese Dienstleistung etwas, das unsere G�ste sehr zu sch�tzen wissen.");
		ANSWER("Ja, das ist jedenfalls ein zugkr�ftiges Argument. Was kann ich noch hier finden?",53);
	NODE(53)
		SAY("Nach was suchst Du im Besonderen?");
		ANSWER("Ich denke ich m�chte auch hier leben. Gibt es noch freie Apartments in Tech Haven?",60);
		ANSWER("Ich suche nach anderen H�ndlern, Forschern und Technikern f�r gegenseitigen Erfahrungsaustausch.",65);
		ANSWER("Ich bin hier eigentlich nur zum Einkaufen. Wo bekomme ich die besten Waren?",70);
		ANSWER("Wo ist hier der n�chste Gene Replicator?",75);
	NODE(60)
		SAY("Ja, wir bieten verschiedenste Arten von kleinen Wohnungen bis zu Apartments innerhalb des Tech Haven Komplex. Melde Dich einfach bei einem unserer Mitarbeiter in der Tech Haven Administration. Diese findest Du in Sektor 2.");
		ANSWER("Ok, h�rt sich gut an. Danke f�r Deine Hilfe. Ciao.",90);
		ANSWER("H�rt sich gut an, aber ich brauche etwas mehr Information.",53);
	NODE(65)
		SAY("Daf�r solltest Du die Tech Haven Mall in Sektor 3 besuchen. Dort findest Du H�ndler und Conster von �berall her, die Dir ihre Waren und Expertise anbieten. Daneben haben wir besondere Conster-Zonen geschaffen, die �ber den ganzen Komplex verteilt sind, in denen sich H�ndler aller Art h�ufig treffen.");
		ANSWER("Ok, h�rt sich gut an. Danke f�r Deine Hilfe. Ciao.",90);
		ANSWER("H�rt sich gut an, aber ich brauche etwas mehr Information.",53);
	NODE(70)
		SAY("In der Tech Haven Mall bieten H�ndler und Conster aus der ganzen Welt ihre Produkte an. Da solltest Du Dich mal umschauen. Ansonsten m�chte ich Dich an unsere Tech Haven H�ndler verweisen, die zumindest die n�tigsten Dinge zu den �blichen Verkaufspreisen bieten und in allen Sektoren anzutreffen sind.");  
		ANSWER("Ok, h�rt sich gut an. Danke f�r Deine Hilfe. Ciao.",90);
		ANSWER("H�rt sich gut an, aber ich brauche etwas mehr Information.",53);
	NODE(75)
		SAY("Die Gene Replicator Einheit befindet sich in Sektor 2 unter dem gro�en Stiegenhaus.");
		ANSWER("Ok, h�rt sich gut an. Danke f�r Deine Hilfe. Ciao.",90);
		ANSWER("H�rt sich gut an, aber ich brauche etwas mehr Information.",53);
	NODE(80)
		SAY("Einen sch�nen und produktiven Tag, w�nsche ich.");
		ENDDIALOG()
	NODE(90)
		SAY("Auf wiedersehen. Einen sch�nen und produktiven Tag.");
		ENDDIALOG()	
	-- ******************************************************
	-- ******************************************************
	-- Is FA
	NODE(100)
		SAY("Ein Hoch auf die Fallen Angels und bewahre Dir einen freien Geist mein Freund. Wie kann ich helfen?") ;
		SAY("Bewahre Dir einen freien Geist und sei gegr��t mein Fallen Angels Freund. Kann ich Dir behilflich sein?");
		ANSWER("Forme eine freie Gesellschaft. Tja, ich bin neu bei den FA und m�chte gerne wissen was in Tech Haven so abgeht.",110);
		ANSWER("Forme eine freie Gesellschaft. Wo war nochmal das geheime Fallen Angels Faction Office nochmal zu finden?",120);
		ANSWER("Forme eine freie Gesellschaft. Ich kenn mich hier aus, aber Danke f�r das Angebot.",130);
	NODE(110)
		SAY("Tech Haven ist eine unabh�ngige Handelsstation. H�ndler und Conster von �berall leben und arbeiten oder treffen sich einfach hier. Es ist au�erdem das ehemalige Hauptquartier der Fallen Angels Fraktion, aber nach dem letzten Big Bang sind die FAs nach Dome of York in ein neues HQ gezogen.");
		ANSWER("Tja, wirklich 'ne Schande mit diesem teuflischen Reza. Aber das neue Fraktions-Hauptquartier ist auch nicht schlecht. Und Reza samt seinen Lakaien lassen Euch hier in Frieden Euren Gesch�ften nachgehen?",111);
	NODE(111)
		SAY("Ja, denn unser hoch-entwickeltes Sicherheitssystem unterbindet jedweden Waffeneinsatz in den Sektoren 1, 2 und 3. Zudem sind wir in keinerlei politische Aktionen eingebunden, sondern eher auf uns alleine gestellt. Wir suchen keinen �rger, nur ein gutes Gesch�ft.");
		ANSWER("Also nicht einmal Reza pers�nlich k�nnte in diesem Komplex seine Waffe abfeuern?",112);
		ANSWER("Gut zu wissen. Also ich muss jetzt los. Danke f�r Deine Hilfe.",130);
	NODE(112)
		SAY("Korrekt. Dieses System bietet unseren G�sten rund um die Uhr Schutz gegen jede Art von bekanntem und unbekanntem Waffensystem. Selbst Rezas Waffen sind hier nutzlos.");
		ANSWER("Wow, das h�rt sich ja wie das Paradies eines jeden H�ndlers an. Und wie l�uft das Gesch�ft so?",113);
		ANSWER("Das gibt einem jedenfalls ein beruhigendes Gef�hl der Sicherheit. Tja, aber ich muss jetzt los. Danke f�r Deine Hilfe.",130);
	NODE(113)
		SAY("Nun gut, wir haben die Tech Haven Mall in Sektor 3. Dort bieten H�ndler und Conster von �berall her ihre Waren und Expertise an. Daneben haben wir besondere Conster-Zonen geschaffen, die �ber den ganzen Komplex verteilt sind, in denen sich H�ndler aller Art h�ufig treffen.");
		ANSWER("H�rt sich sehr gut an. Aber noch etwas anderes. Ich habe von einem geheimen Fallen Angels Factions Office geh�rt, das es noch immer hier geben soll.",114);
	NODE(114)
		SAY("*r�usper* Ja, da gibt es ein geheimes Fallen Angels Faction Office im Energy Core-2. Das ist aber absolut geheim: Kein Wort zu irgendwem dar�ber! Und sei vorsichtig dort unten. Unser Sicherheitssystem funktioniert so nahe am Energiekern und dessen Strahlung nicht. Immerhin ist das B�ro aber durch schwere Gesch�tzt�rme gegen feindliche Angriffe befestigt. Hinter einem Haufen F�ssern und verrotteten Kisten findest du einen versteckten Zutrittsmechanismus - er �ffnet eine T�r direkt dahinter. Vergewissere Dich aber, dass kein fremder Runner Dich dabei beobachten kann!");
		ANSWER("Ok, ich erz�hl' niemanden etwas. Noch etwas: Wo kann ich den Gene Replicator finden?",115);
	NODE(115)
		SAY("Die Gene Replicator Einheit befindet sich in Sektor 2 unter dem gro�en Stiegenhaus.");
		ANSWER("Danke f�r die ganze Information. Ich muss jetzt los. Gib auf Dich Acht.",130);
	NODE(120)
		SAY("Das Faction Office befindet sich im Energy Core-2, aber sei vorsichtig dort unten. Unser Sicherheitssystem funktioniert so nahe am Energiekern und dessen Strahlung nicht. Such nach einem Haufen F�ssern und verrotteten Kisten - Das ist der getarnte Eingang ins B�ro. Aber halt das geheim und sei vorsichtig, dass Dich kein Fremder sieht, wenn Du hinuntergehst!");
		ANSWER("Ok, Danke f�r die Informationen. Ciao.",130);
	NODE(130)
		SAY("Auf wiedersehen. Noch einen sch�nen und produktiven Tag.");
		ENDDIALOG()
end