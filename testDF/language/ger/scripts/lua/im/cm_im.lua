-- für jede faction
-- + jede missionbase

-- script for NC-friendly information minister
-- *******************************************

faction = 11 							-- CA
factionname = "City Mercs"				-- CA in text

fractionsayhello = "Die Welt steckt voller Gefahren."		-- Fraktionsansprache
fractionanswer = "Gegen die Gefahr wurde ich erschaffen."				-- Antwort darauf

-- factionfriends exitcodes:
lowloyalexit  = "Mach' weiter mit Deiner guten Arbeit!\nNoch einen schönen Tag!"
midloyalexit  = "Es ist immer erfreulich ein loyales "..factionname.."-Mitglied zu treffen."
highloyalexit = "Wirklich gut gemacht. Wir brauchen mehr Veteranen wie Dich."

-- descriptions of HQ-Sections			-- first part for allied & loyal
area_info_1 = "Medicare: Hier findest Du Medikamente, für alle Deine Bedürfnisse. Aber gib' Acht: je stärker die Droge, desto stärker die möglichen Nebenwirkungen.\nNatürlich kannst Du dort auch einfach nur MedKits kaufen."
area_info_2 = "Personal Skill Advisor: Wenn Du nicht genau weißt was zu Dir passt, dann sind die diese Berater die richtigen Leute für Dich und können Dir wertvolle Ratschläge bezüglich Deiner Fähigkeiten erteilen."
area_info_3 = "Faction Office: Dort findest Du unsere Faction Office Assistenten. Frage sie ruhig, was sie für Dich tun können."
area_info_4 = "Main Office: Dort findest Du unsere Personalmanager. Wenn etwas wirklich wichtiges passiert, dann können sie Dich mit Informationen versorgen, und bitten Dich vielleicht sogar um Deine Hilfe."
area_info_5 = "Security: Du kannst Dich hier frei und sicher bewegen. Die Wachmannschaft ist gut ausgebildet und wird das Büro gegen jegliche Bedrohung von Außen schützen."
-- additional descriptions			--only viewable by loyal members
area_info_6 = "Faction Supply Manager: Unsere Fraktion bietet Zugriff auf einige ganz besondere Gegenstände, die nur von und für uns produziert werden. Dieser Mitarbeiter kann Dir auch ausgefallenes Zeug besorgen."
area_info_7 = "Resource Supply Manager: Als Großhändler kauft der Resource Supply Manager einiges in überaus großen Mengen. Er wird Mitgliedern der Fraktion daher einen Preisnachlass gewähren können."

-- Infos on available missions
delivery_item_id = 91						-- the delivery bag
mission_id1 = 4000 + 6 * (faction-1)				-- index to the 6 different mission ids
mission_id2 = 4001 + 6 * (faction-1)
mission_id3 = 4002 + 6 * (faction-1)
mission_id4 = 4003 + 6 * (faction-1)
mission_id5 = 4004 + 6 * (faction-1)
mission_id6 = 4005 + 6 * (faction-1)

-- startmission is not defined in dialogheader (since this is no mission NPC himself)
-- but it is needed since the NPC starts different missions

function STARTMISSION( missionid)

	if (node==state) then
		SendScriptMsg("startmission", dialogclass, missionid)
	end
end

function CANDOEPICRUN( factionid, missionid)

	if (node==state) then
		SendScriptMsg("candoepicrun", dialogclass, factionid, missionid)
	end
end

-- ISFACTION(facid)

function ISFACTION(facid)
	if (state==node) then
		CANDOEPICRUN(facid,0) ;
		if (result ~= -1) then
			result = 1 ;
		else
			result = 0 ;
		end
	end
end

-- end define

function DIALOG()
	NODE(0)
		-- faction loyality / faction will determinate which way to take
		result = 0 ;
		ISFACTION(faction)
		if (node==state) then 
			if (result == 1) then
				state = 150 ;
			else
				GETFACTIONSYMPATHY(faction)	
				if (node==state) then 
					if (result<0) then
						state = 50	-- Feinde werden ab node 50 behandelt
					else 
						state = 100	-- (keine feinde aber nicht faction) neutrale ab node 100
					end
				end
			end
		end
	-- **********************************************
	-- **********************************************
	-- **********************************************
	-- enemy	
	NODE(50)
		SAY("Verpiss Dich, Abschaum!") ;
		SAY("Deine Reise endet hier!") ;
		ATTACK()
		ENDDIALOG()
	-- **********************************************
	-- **********************************************
	-- **********************************************
	-- neutral
	NODE(100) 
		SAY("Willkommen im "..factionname.." Hauptquartier.") ;
		ANSWER("Hmm, ein neues Hauptquartier? Können Sie mich ein wenig herumführen?",102) ;
		ANSWER("Entschuldigung. Ich dachte Sie wären jemand anderes.",101) ;
	NODE(101)
		SAY("Ich hoffe Sie finden noch, wen Sie suchen.") ;
		ENDDIALOG()
	NODE(102)
		SAY("Sicher. Was möchten Sie über das neue Gebäude wissen?") ;
		ANSWER("Medicare",103) ;
		ANSWER("Personal Skill Advisor",104) ;
		ANSWER("Faction Office",105) ;
		ANSWER("Main Office",106) ;
		ANSWER("Security",107) ;
	NODE(103)
		SAY(area_info_1) ;
		ANSWER("Ok. Und was ist mit den anderen Abteilungen?",102) ;
		ANSWER("Danke. Das ist ja wirklich ein feines Hauptquartier, aber ich muss weiter.",149) ;
	NODE(104)
		SAY(area_info_2) ;
		ANSWER("Ok. Und was ist mit den anderen Abteilungen?",102) ;
		ANSWER("Danke. Das ist ja wirklich ein feines Hauptquartier, aber ich muss weiter.",149) ;
	NODE(105)
		SAY(area_info_3) ;
		ANSWER("Ok. Und was ist mit den anderen Abteilungen?",102) ;
		ANSWER("Danke. Das ist ja wirklich ein feines Hauptquartier, aber ich muss weiter.",149) ;
	NODE(106)
		SAY(area_info_4) ;
		ANSWER("Ok. Und was ist mit den anderen Abteilungen?",102) ;
		ANSWER("Danke. Das ist ja wirklich ein feines Hauptquartier, aber ich muss weiter.",149) ;
	NODE(107)
		SAY(area_info_5) ;
		ANSWER("Ok. Und was ist mit den anderen Abteilungen?",102) ;
		ANSWER("Danke. Das ist ja wirklich ein feines Hauptquartier, aber ich muss weiter.",149) ;
	NODE(149)
		SAY("Noch einen schönen Tag.") ;
		SAY("Viel Spaß noch.") ;
		SAY("Auf Wiedersehen.") ;
		ENDDIALOG()
	-- **********************************************
	-- **********************************************
	-- **********************************************
	-- friend	
	NODE(150) ;
		SAY(fractionsayhello) ;
		ANSWER(fractionanswer,151) ;
	NODE(151) ;
		SAY("Sag' mir Freund: Was kann ich für Dich tun?") ;
		ANSWER("Ich bin neu bei "..factionname..". Kannst Du mir etwas über dieses Hauptquartier erzählen?",152) ;
		ANSWER("Wow! Ein neues Hauptquartier?!",153) ;
		ANSWER("Ich werde mich mal selbst umschaun.",154)
	NODE(152) ;
		-- Info + Possible quickjob
		SAY("Sicher. Was möchtest Du über das neue Gebäude wissen?") ;
		ANSWER("Hast Du vielleicht einen kleinen Job für mich?",180) ;
		if (node==state) then
			state = 172	-- get answeres from 172
		end
	NODE(153)
		-- Just Info
		SAY("Sicher. Was möchten Sie über das neue Gebäude wissen?") ;
		if (node==state) then
			state = 172	-- get answeres from 172
		end
	NODE(154)
		-- Exit
		GETFACTIONSYMPATHY(faction)
		if (state==node) then
			if (result<30) then
				SAY(lowloyalexit) ;
			elseif (result<80) then
				SAY(midloyalexit) ;
			else
				SAY(highloyalexit) ;
			end
		end
		ENDDIALOG()
	-- uniformed info		
	NODE(172)
		ANSWER("Medicare",173) ;
		ANSWER("Personal Skill Advisor",174) ;
		ANSWER("Faction Supply Manager",178) ;
		ANSWER("Faction Office",175) ;
		ANSWER("Resource Supply Manager",179) ;
		ANSWER("Main Office",176) ;
		ANSWER("Security",177) ;
	NODE(173)
		SAY(area_info_1) ;
		ANSWER("Ok. Und was ist mit den anderen Abteilungen?",152) ;
		ANSWER("Danke schön. Wirklich ein nettes Hauptquartier, aber ich muss los.",154) ;
	NODE(174)
		SAY(area_info_2) ;
		ANSWER("Ok. Und was ist mit den anderen Abteilungen?",152) ;
		ANSWER("Danke schön. Wirklich ein nettes Hauptquartier, aber ich muss los.",154) ;
	NODE(175)
		SAY(area_info_3) ;
		ANSWER("Ok. Und was ist mit den anderen Abteilungen?",152) ;
		ANSWER("Danke schön. Wirklich ein nettes Hauptquartier, aber ich muss los.",154) ;
	NODE(176)
		SAY(area_info_4) ;
		ANSWER("Ok. Und was ist mit den anderen Abteilungen?",152) ;
		ANSWER("Danke schön. Wirklich ein nettes Hauptquartier, aber ich muss los.",154) ;
	NODE(177)
		SAY(area_info_5) ;
		ANSWER("Ok. Und was ist mit den anderen Abteilungen?",152) ;
		ANSWER("Danke schön. Wirklich ein nettes Hauptquartier, aber ich muss los.",154) ;
	NODE(178)
		SAY(area_info_6) ;
		ANSWER("Ok. Und was ist mit den anderen Abteilungen?",152) ;
		ANSWER("Danke schön. Wirklich ein nettes Hauptquartier, aber ich muss los.",154) ;
	NODE(179)
		SAY(area_info_7) ;
		ANSWER("Ok. Und was ist mit den anderen Abteilungen?",152) ;
		ANSWER("Danke schön. Wirklich ein nettes Hauptquartier, aber ich muss los.",154) ;
	-- job
	NODE(180)
		SAY("Also Lieferungen gehen hier immer rein und raus - da gibt es immer etwas zu tun. So findest Du auch gleich heraus, wer, wo zu finden ist.") ;
		ANSWER("Was ist mit dem Personal Skill Advisor - Tank Skills?",181) ;
		ANSWER("Was ist mit dem Personal Skill Advisor - Private Eye Skills?",182) ;
		ANSWER("Was ist mit dem Personal Skill Advisor - Spy Skills?",183) ;
		ANSWER("Was ist mit dem Personal Skill Advisor - Psi Skills?",184) ;
		ANSWER("Was ist mit dem Resource Supply Manager?",185) ;
		ANSWER("Was ist mit dem Faction Supply Manager?",186) ;
		ANSWER("Hmm, mir ist gerade aufgefallen, dass ich für so etwas keine Zeit habe...",151) ;
	NODE(181)
		SAY("Hier. Liefere ihm das Paket.") ;
		GIVEITEM(delivery_item_id) ;
		STARTMISSION(mission_id1)
		ENDDIALOG() ;
	NODE(182)
		SAY("Hier. Liefere ihm das Paket.") ;
		GIVEITEM(delivery_item_id) ;
		STARTMISSION(mission_id2)
		ENDDIALOG() ;
	NODE(183)
		SAY("Hier. Liefere ihm das Paket.") ;
		GIVEITEM(delivery_item_id) ;
		STARTMISSION(mission_id3)
		ENDDIALOG() ;
	NODE(184)
		SAY("Hier. Liefere ihm das Paket.") ;
		GIVEITEM(delivery_item_id) ;
		STARTMISSION(mission_id4)
		ENDDIALOG() ;
	NODE(185)
		SAY("Hier. Liefere ihm das Paket.") ;
		GIVEITEM(delivery_item_id) ;
		STARTMISSION(mission_id5)
		ENDDIALOG() ;
	NODE(186)
		SAY("Hier. Liefere ihm das Paket.") ;
		GIVEITEM(delivery_item_id) ;
		STARTMISSION(mission_id6)
		ENDDIALOG() ;	
	NODE(200)
		-- check if he has delivery bag
		result = 0 ;
		TAKEITEM(91)
		if (result==1) then
			SAY("Danke für das Paket. Du kannst Dich ruhig ein wenig umschauen. Wenn Du dann fertig bist gehe zurück zum Communications Officer - er kann Dir noch einen anderen schnell zu erledigenden Auftrag geben.") ;
			ACTIVATEDIALOGTRIGGER(0) ;
			ENDDIALOG() ;
		else
			SAY("Mann! Du hast auf dem kurzen Weg das Paket verloren?! Komm' erst zurück, wenn Du es wieder gefunden hast!") ;
			ENDDIALOG()
		end
end