-- für jede faction
-- + jede missionbase

-- script for NC-friendly information minister
-- *******************************************

faction = 9 							-- CA
factionname = "Black Dragon"				-- CA in text

fractionsayhello = "Votre sécurité est notre but"		-- Fraktionsansprache
fractionanswer = "Si vous payez pas, pas de garantie."				-- Antwort darauf

-- factionfriends exitcodes:
lowloyalexit  = "Beau travail!\nContinuez comme ça!"
midloyalexit  = "C'est toujours un plaisir de voir un fidèle employé de "..factionname.."."
highloyalexit = "Excellent travail. Ca c'est du travail de vétéran!"

-- descriptions of HQ-Sections			-- first part for allied & loyal
area_info_1 = "Medicare : Le fournisseur officiel de produits de santé. Mais attention, plus les drogues sont puissantes, plus les effets secondaires sont handicapants.\nVous pouvez aussi utiliser des MedKits.
area_info_2 = "Conseiller personnel : Si vous ne savez pas ce qui est bon pour vous, il pourra vous aiguiller."
area_info_3 = "Bureat de faction : Vous y trouverez vos assistants de faction. Posez-leur une question, ils vous répondront."
area_info_4 = "Bureaux principaux : Vous y trouverez nos responsables du personnel. En cas de besoin, ils peuvent vous renseigner, voire vous demander de l'aide."
area_info_5 = "Sécurité : Vous êtes en sécurité ici. Les gardes sont surentraînés et protègent le bâtiment contre les intrus.
-- additional descriptions			--only viewable by loyal members
area_info_6 = "Responsable du dépôt : Notre faction fournit divers produits, développés spécialement pour ses runners. Le responsable du dépôt peut vous renseigner si vous avez une question."
area_info_7 = "Responsable des ressources : Le responsable des ressources acquert des objets en importantes quantités, afin de faire bénéficier les membres de la faction de réductions de prix lorsqu'ils viennent s'approvisionner."

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
		SAY("Dégage, raclure") ;
		SAY("Tu n'iras pas plus loin!") ;
		ATTACK()
		ENDDIALOG()
	-- **********************************************
	-- **********************************************
	-- **********************************************
	-- neutral
	NODE(100) 
		SAY("Bienvenue dans le quartier général de "..factionname..".") ;
		ANSWER("Oh, un quartier général? Qu'est-ce qu'il y a là-dedans?",102) ;
		ANSWER("Je vous ai pris pour quelqu'un d'autre.",101) ;
	NODE(101)
		SAY("J'espère que vous trouverez ce que vous cherchez.") ;
		ENDDIALOG()
	NODE(102)
		SAY("Qu'est-ce qui soulève des questions?") ;
		ANSWER("Medicare",103) ;
		ANSWER("Les conseillers personnels",104) ;
		ANSWER("Les bureaux de faction",105) ;
		ANSWER("Le bureau principal",106) ;
		ANSWER("La sécurité",107) ;
	NODE(103)
		SAY(area_info_1) ;
		ANSWER("Et pour ce qui est des autres zones?",102) ;
		ANSWER("Merci, c'était très intéressant. Il faut que je m'en aille.",149) ;
	NODE(104)
		SAY(area_info_2) ;
		ANSWER("Et pour ce qui est des autres zones?",102) ;
		ANSWER("Merci, c'était très intéressant. Il faut que je m'en aille.",149) ;
	NODE(105)
		SAY(area_info_3) ;
		ANSWER("Et pour ce qui est des autres zones?",102) ;
		ANSWER("Merci, c'était très intéressant. Il faut que je m'en aille.",149) ;
	NODE(106)
		SAY(area_info_4) ;
		ANSWER("Et pour ce qui est des autres zones?",102) ;
		ANSWER("Merci, c'était très intéressant. Il faut que je m'en aille.",149) ;
	NODE(107)
		SAY(area_info_5) ;
		ANSWER("Et pour ce qui est des autres zones?",102) ;
		ANSWER("Merci, c'était très intéressant. Il faut que je m'en aille.",149) ;
	NODE(149)
		SAY("Bonne journée") ;
		SAY("A la prochaine") ;
		SAY("C'est moi...") ;
		ENDDIALOG()
	-- **********************************************
	-- **********************************************
	-- **********************************************
	-- friend	
	NODE(150) ;
		SAY(fractionsayhello) ;
		ANSWER(fractionanswer,151) ;
	NODE(151) ;
		SAY("Qu'est-ce que je peux faire pour vous, l'ami?") ;
		ANSWER("Je suis nouveau chez "..factionname..". J'ai besoin de prendre mes repères.",152) ;
		ANSWER("Ouah, c'est tout nouveau ici, non?",153) ;
		ANSWER("Merci, je vais visiter par moi-même.",154)
	NODE(152) ;
		-- Info + Possible quickjob
		SAY("Qu'est-ce qui soulève des questions?") ;
		ANSWER("Il y a du boulot pour moi?",180) ;
		if (node==state) then
			state = 172	-- get answeres from 172
		end
	NODE(153)
		-- Just Info
		SAY("Qu'est-ce qui soulève des questions?") ;
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
		ANSWER("Les conseillers personnels",174) ;
		ANSWER("Les responsables des dépôts",178) ;
		ANSWER("Les bureaux de faction",175) ;
		ANSWER("Les responsables des ressources",179) ;
		ANSWER("Le bureau principal",176) ;
		ANSWER("La sécurité",177) ;
	NODE(173)
		SAY(area_info_1) ;
		ANSWER("Et pour ce qui est des autres zones?",152) ;
		ANSWER("Merci, c'était très intéressant. Il faut que je m'en aille.",154) ;
	NODE(174)
		SAY(area_info_2) ;
		ANSWER("Et pour ce qui est des autres zones?",152) ;
		ANSWER("Merci, c'était très intéressant. Il faut que je m'en aille.",154) ;
	NODE(175)
		SAY(area_info_3) ;
		ANSWER("Et pour ce qui est des autres zones?",152) ;
		ANSWER("Merci, c'était très intéressant. Il faut que je m'en aille.",154) ;
	NODE(176)
		SAY(area_info_4) ;
		ANSWER("Et pour ce qui est des autres zones?",152) ;
		ANSWER("Merci, c'était très intéressant. Il faut que je m'en aille.",154) ;
	NODE(177)
		SAY(area_info_5) ;
		ANSWER("Et pour ce qui est des autres zones?",152) ;
		ANSWER("Merci, c'était très intéressant. Il faut que je m'en aille.",154) ;
	NODE(178)
		SAY(area_info_6) ;
		ANSWER("Et pour ce qui est des autres zones?",152) ;
		ANSWER("Merci, c'était très intéressant. Il faut que je m'en aille.",154) ;
	NODE(179)
		SAY(area_info_7) ;
		ANSWER("Et pour ce qui est des autres zones?",152) ;
		ANSWER("Merci, c'était très intéressant. Il faut que je m'en aille.",154) ;
	-- job
	NODE(180)
		SAY("On a toujours des livraisons à faire. C'est très pratique pour prendre ses marques ici.") ;
		ANSWER("Et à propos des conseillers personnels pour tanks?",181) ;
		ANSWER("Et à propos des conseillers personnels pour Privés?",182) ;
		ANSWER("Et à propos des conseillers personnels pour Espions?",183) ;
		ANSWER("Et à propos des conseillers personnels pour moines PSI?",184) ;
		ANSWER("Que fait un responsable du dépôt?",185) ;
		ANSWER("Que fait un responsable des ressources?",186) ;
		ANSWER("Je viens de me rendre compte que j'étais déjà en retard pour autre chose...",151) ;
	NODE(181)
		SAY("Voilà la livraison.") ;
		GIVEITEM(delivery_item_id) ;
		STARTMISSION(mission_id1)
		ENDDIALOG() ;
	NODE(182)
		SAY("Voilà la livraison.") ;
		GIVEITEM(delivery_item_id) ;
		STARTMISSION(mission_id2)
		ENDDIALOG() ;
	NODE(183)
		SAY("Voilà la livraison.") ;
		GIVEITEM(delivery_item_id) ;
		STARTMISSION(mission_id3)
		ENDDIALOG() ;
	NODE(184)
		SAY("Voilà la livraison.") ;
		GIVEITEM(delivery_item_id) ;
		STARTMISSION(mission_id4)
		ENDDIALOG() ;
	NODE(185)
		SAY("Voilà la livraison.") ;
		GIVEITEM(delivery_item_id) ;
		STARTMISSION(mission_id5)
		ENDDIALOG() ;
	NODE(186)
		SAY("Voilà la livraison.") ;
		GIVEITEM(delivery_item_id) ;
		STARTMISSION(mission_id6)
		ENDDIALOG() ;	
	NODE(200)
		-- check if he has delivery bag
		result = 0 ;
		TAKEITEM(91)
		if (result==1) then
			SAY("Merci. Retourne au QG si tu veux une autre mission.") ;
			ACTIVATEDIALOGTRIGGER(0) ;
			ENDDIALOG() ;
		else
			SAY("L'important dans ce genre de métier, c'est de pas perdre sa livraison.") ;
			ENDDIALOG()
		end
end