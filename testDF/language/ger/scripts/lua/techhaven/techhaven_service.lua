
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
		SAY("Grüße. Kann ich helfen?") ;
		SAY("Grüße. Kann ich irgendwie behilflich sein?") ;
		ANSWER("Hey, was ist das hier für ein Ort?",51);
		ANSWER("Nein, Danke. Ich kenne meinen Weg.",80);
	NODE(51)
		SAY("Tech Haven ist eine unabhängige Handelsstation. Händler und Conster von überall leben und arbeiten oder treffen sich einfach hier.");
		ANSWER("Aha. Aber was macht diesen Ort so besonders attraktiv für Händler, dass so viele von ihnen hier wohnen wollen?",52);
	NODE(52)
		SAY("Unser hoch-entwickeltes Sicherheitssystem bietet unseren Gästen rund um die Uhr absoluten persönlichen Schutz. Es ist unmöglich jedwede Art von Waffe in den Tech Haven Sektoren 1-3 abzufeuern. In der heutigen Zeit, die von einer nie dagewesenen Welle der Gewalt und Kriminalität überrollt wird, ist diese Dienstleistung etwas, das unsere Gäste sehr zu schätzen wissen.");
		ANSWER("Ja, das ist jedenfalls ein zugkräftiges Argument. Was kann ich noch hier finden?",53);
	NODE(53)
		SAY("Nach was suchst Du im Besonderen?");
		ANSWER("Ich denke ich möchte auch hier leben. Gibt es noch freie Apartments in Tech Haven?",60);
		ANSWER("Ich suche nach anderen Händlern, Forschern und Technikern für gegenseitigen Erfahrungsaustausch.",65);
		ANSWER("Ich bin hier eigentlich nur zum Einkaufen. Wo bekomme ich die besten Waren?",70);
		ANSWER("Wo ist hier der nächste Gene Replicator?",75);
	NODE(60)
		SAY("Ja, wir bieten verschiedenste Arten von kleinen Wohnungen bis zu Apartments innerhalb des Tech Haven Komplex. Melde Dich einfach bei einem unserer Mitarbeiter in der Tech Haven Administration. Diese findest Du in Sektor 2.");
		ANSWER("Ok, hört sich gut an. Danke für Deine Hilfe. Ciao.",90);
		ANSWER("Hört sich gut an, aber ich brauche etwas mehr Information.",53);
	NODE(65)
		SAY("Dafür solltest Du die Tech Haven Mall in Sektor 3 besuchen. Dort findest Du Händler und Conster von überall her, die Dir ihre Waren und Expertise anbieten. Daneben haben wir besondere Conster-Zonen geschaffen, die über den ganzen Komplex verteilt sind, in denen sich Händler aller Art häufig treffen.");
		ANSWER("Ok, hört sich gut an. Danke für Deine Hilfe. Ciao.",90);
		ANSWER("Hört sich gut an, aber ich brauche etwas mehr Information.",53);
	NODE(70)
		SAY("In der Tech Haven Mall bieten Händler und Conster aus der ganzen Welt ihre Produkte an. Da solltest Du Dich mal umschauen. Ansonsten möchte ich Dich an unsere Tech Haven Händler verweisen, die zumindest die nötigsten Dinge zu den üblichen Verkaufspreisen bieten und in allen Sektoren anzutreffen sind.");  
		ANSWER("Ok, hört sich gut an. Danke für Deine Hilfe. Ciao.",90);
		ANSWER("Hört sich gut an, aber ich brauche etwas mehr Information.",53);
	NODE(75)
		SAY("Die Gene Replicator Einheit befindet sich in Sektor 2 unter dem großen Stiegenhaus.");
		ANSWER("Ok, hört sich gut an. Danke für Deine Hilfe. Ciao.",90);
		ANSWER("Hört sich gut an, aber ich brauche etwas mehr Information.",53);
	NODE(80)
		SAY("Einen schönen und produktiven Tag, wünsche ich.");
		ENDDIALOG()
	NODE(90)
		SAY("Auf wiedersehen. Einen schönen und produktiven Tag.");
		ENDDIALOG()	
	-- ******************************************************
	-- ******************************************************
	-- Is FA
	NODE(100)
		SAY("Ein Hoch auf die Fallen Angels und bewahre Dir einen freien Geist mein Freund. Wie kann ich helfen?") ;
		SAY("Bewahre Dir einen freien Geist und sei gegrüßt mein Fallen Angels Freund. Kann ich Dir behilflich sein?");
		ANSWER("Forme eine freie Gesellschaft. Tja, ich bin neu bei den FA und möchte gerne wissen was in Tech Haven so abgeht.",110);
		ANSWER("Forme eine freie Gesellschaft. Wo war nochmal das geheime Fallen Angels Faction Office nochmal zu finden?",120);
		ANSWER("Forme eine freie Gesellschaft. Ich kenn mich hier aus, aber Danke für das Angebot.",130);
	NODE(110)
		SAY("Tech Haven ist eine unabhängige Handelsstation. Händler und Conster von überall leben und arbeiten oder treffen sich einfach hier. Es ist außerdem das ehemalige Hauptquartier der Fallen Angels Fraktion, aber nach dem letzten Big Bang sind die FAs nach Dome of York in ein neues HQ gezogen.");
		ANSWER("Tja, wirklich 'ne Schande mit diesem teuflischen Reza. Aber das neue Fraktions-Hauptquartier ist auch nicht schlecht. Und Reza samt seinen Lakaien lassen Euch hier in Frieden Euren Geschäften nachgehen?",111);
	NODE(111)
		SAY("Ja, denn unser hoch-entwickeltes Sicherheitssystem unterbindet jedweden Waffeneinsatz in den Sektoren 1, 2 und 3. Zudem sind wir in keinerlei politische Aktionen eingebunden, sondern eher auf uns alleine gestellt. Wir suchen keinen Ärger, nur ein gutes Geschäft.");
		ANSWER("Also nicht einmal Reza persönlich könnte in diesem Komplex seine Waffe abfeuern?",112);
		ANSWER("Gut zu wissen. Also ich muss jetzt los. Danke für Deine Hilfe.",130);
	NODE(112)
		SAY("Korrekt. Dieses System bietet unseren Gästen rund um die Uhr Schutz gegen jede Art von bekanntem und unbekanntem Waffensystem. Selbst Rezas Waffen sind hier nutzlos.");
		ANSWER("Wow, das hört sich ja wie das Paradies eines jeden Händlers an. Und wie läuft das Geschäft so?",113);
		ANSWER("Das gibt einem jedenfalls ein beruhigendes Gefühl der Sicherheit. Tja, aber ich muss jetzt los. Danke für Deine Hilfe.",130);
	NODE(113)
		SAY("Nun gut, wir haben die Tech Haven Mall in Sektor 3. Dort bieten Händler und Conster von überall her ihre Waren und Expertise an. Daneben haben wir besondere Conster-Zonen geschaffen, die über den ganzen Komplex verteilt sind, in denen sich Händler aller Art häufig treffen.");
		ANSWER("Hört sich sehr gut an. Aber noch etwas anderes. Ich habe von einem geheimen Fallen Angels Factions Office gehört, das es noch immer hier geben soll.",114);
	NODE(114)
		SAY("*räusper* Ja, da gibt es ein geheimes Fallen Angels Faction Office im Energy Core-2. Das ist aber absolut geheim: Kein Wort zu irgendwem darüber! Und sei vorsichtig dort unten. Unser Sicherheitssystem funktioniert so nahe am Energiekern und dessen Strahlung nicht. Immerhin ist das Büro aber durch schwere Geschütztürme gegen feindliche Angriffe befestigt. Hinter einem Haufen Fässern und verrotteten Kisten findest du einen versteckten Zutrittsmechanismus - er öffnet eine Tür direkt dahinter. Vergewissere Dich aber, dass kein fremder Runner Dich dabei beobachten kann!");
		ANSWER("Ok, ich erzähl' niemanden etwas. Noch etwas: Wo kann ich den Gene Replicator finden?",115);
	NODE(115)
		SAY("Die Gene Replicator Einheit befindet sich in Sektor 2 unter dem großen Stiegenhaus.");
		ANSWER("Danke für die ganze Information. Ich muss jetzt los. Gib auf Dich Acht.",130);
	NODE(120)
		SAY("Das Faction Office befindet sich im Energy Core-2, aber sei vorsichtig dort unten. Unser Sicherheitssystem funktioniert so nahe am Energiekern und dessen Strahlung nicht. Such nach einem Haufen Fässern und verrotteten Kisten - Das ist der getarnte Eingang ins Büro. Aber halt das geheim und sei vorsichtig, dass Dich kein Fremder sieht, wenn Du hinuntergehst!");
		ANSWER("Ok, Danke für die Informationen. Ciao.",130);
	NODE(130)
		SAY("Auf wiedersehen. Noch einen schönen und produktiven Tag.");
		ENDDIALOG()
end