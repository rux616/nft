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
-- Fraktion wird �berpr�ft
		if(result==-1)then 
			SAY("Tu n'es pas des n�tres. Arr�te de me faire perdre mon temps... Mais peut-�tre veux-tu nous rejoindre?")
			
			ANSWER("Je viens pour �a en effet. J'aimerais rejoindre la Fraternit�r.",301)
			ANSWER("Ca ne m'int�resse pas. Au revoir.",300)
			ENDDIALOG()
		else
-- Alle Missionen erf�llt? wird gepr�ft
			CANDOEPICRUN(10,0)
			if(result==-2)then
				SAY("La seule aide que tu peux nous apporter maintenant, c'est en cr�ant un clan pour d�fendre notre cause.")
				ENDDIALOG()
			else
-- Abfrage ob Skillevel stimmt und dann ob die Mission schon erf�llt wurde
				CANDOEPICRUN(10,0)
				if(result==-5)then
					SAY("Tu n'as pas encore assez d'exp�rience, disciple. (prochaine mission au niveau 10)")
					ENDDIALOG()
				else
						CANDOEPICRUN(10,0)
				        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------2
						CANDOEPICRUN(10,1)
						if(result==-5)then
							SAY("Tu n'as pas encore assez d'exp�rience, disciple. (prochaine mission au niveau 20)")
							ENDDIALOG()
						else
								CANDOEPICRUN(10,1)
				        		if(result==-4)then
-------------------------------------------------------------------------------------------------------------------3
						CANDOEPICRUN(10,2)
						if(result==-5)then
							SAY("Tu n'as pas encore assez d'exp�rience, disciple. (prochaine mission au niveau 30)")
							ENDDIALOG()
						else
								CANDOEPICRUN(10,2)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------4
						CANDOEPICRUN(10,3)
						if(result==-5)then
							SAY("Tu n'as pas encore assez d'exp�rience, disciple. (prochaine mission au niveau 35)")
							ENDDIALOG()
						else
								CANDOEPICRUN(10,3)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------5
						CANDOEPICRUN(10,4)
						if(result==-5)then
							SAY("Tu n'as pas encore assez d'exp�rience, disciple. (prochaine mission au niveau 40)")
							ENDDIALOG()
						else
								CANDOEPICRUN(10,4)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------6
						CANDOEPICRUN(10,5)
				if(result==-5)then
					SAY("Tu n'as pas encore assez d'exp�rience, disciple. (prochaine mission au niveau 45)")
					ENDDIALOG()
				else
								CANDOEPICRUN(10,5)
				        if(result==-4)then
						SAY("La seule aide que tu peux nous apporter maintenant, c'est en cr�ant un clan pour d�fendre notre cause.")
						ENDDIALOG()
					else
--Mission 6 wird hier gestartet
		SAY("Bienvenue, � p�re du cercle noir. Fr�re Agnus m'a inform� du fait que tu avais en ta possession cinq reliques Tacholytium.")

		ANSWER("C'est uniquement gr�ce � l'aide du p�re Manus et du fr�re Agnus que je dois ma r�ussite.",251)

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------6
					else
--Mission 5 wird hier gestartet
		SAY("Bienvenue mon fr�re. Le conseil m'a demand� de quelle fa�on je t'�valuerais. J'ai ou�-dire que p�re Agnus t'a recommand� pour le Cercle Noir. A en juger par tes actes h�roiques, je ne serais pas surpris que tu sois accept� bient�t dans ce cercle.") 

		ANSWER("Merci pour tes pri�res mon fr�re. Il est vrai que la lumi�re de Crahn a resplendi sur moi ces derniers mois.",201)

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------5
					else
--Mission 4 wird hier gestartet
		SAY("P�re Manus n'a pas pu trouver de nouveaux �l�ments au sujet de tes reliques. Malheureusement, notre biblioth�que est pauvre, et nous avons donc d�cid� de sollicit� l'aide de fr�re Agnus. Agnus est un des loyaux serviteurs de Crahn qui ont d�cid� de demeurer dans le vieux monast�re de l'Outzone, dans Neocron. Il a compar� les reliques avec plusieurs des plus anciens �crits consign�s, et cela l'a men� � une d�couverte. Il �tait f�brile quand il m'en a parl�. Mais tu ferais mieux de lui parler en personne. Rends-toi � la vieille abbaye dans l'Outzone et parle-lui.")

		ANSWER("Merci infiniment pour cette bonne nouvelle. J'y vais tout de suite.",151)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------4
					else
--Mission 3 wird hier gestartet
		SAY("Tu deviens progressivement un des membres les plus indispensables de notre ordre, jeune moine. Le conseil a d�cid� de t'accepter officiellement dans le cercle bleu de la fraternit�.")

		ANSWER("Je te remercie. J'accomplirai mon devoir avec l'aide de Crahn.",101)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------3
							else
--Mission 2 wird hier gestartet
		SAY("Que Crahn te b�nisse, jeune moine. A ce que je vois, tu as fait un entra�nement intensif... L'ordre est pr�t � t'accepter dans un cercle sup�rieur. Je crois qu'il est temps de te confier une autre t�che importante. Es-tu pr�t pour ce d�fi?")

		ANSWER("Oui p�re. Je souhaite servir Crahn de mon mieux.",51)
		ANSWER("J'aimerais que tu me donnes un peu de r�pit, p�re.",60)

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------2
					else
--Mission 1 wird hier gestartet
		SAY("Je vois que tu as travaill� fort pour prouver ta loyaut� envers notre ordre. Au nom de saint Crahn, je te remercie pour ton d�vouement. Si tu d�sires continuer de servir l'ordre, nous serions pr�ts � te confier des missions plus complexes. Es-tu pr�t pour ce d�fi?")

		ANSWER("Oui p�re. Je me soumets corps et �me � la volont� de Crahn.",11)
		ANSWER("D�sol�, je ne suis pas encore pr�t pour une telle t�che.",19)

						
					end
				end			
			end
		end

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Crahn 1
	NODE(11)
		Voici les faits... Mark Cole, un ex-membre des Anges D�chus, nous a inform� qu'il est en possession d'un objet d'une grande valeur. Il n'a pas mentionn� de quel objet il s'agissait. L'ordre n'est pas s�r que Cole soit honn�te et nous ne voulons pas qu'il soit m�fiant.")

		ANSWER("Il n'est m�me pas des n�tres, pourquoi s'abaisserait-on � aller le voir?",12)
	NODE(12)		
		SAY("C'est juste. C'est pourquoi l'ordre a d�cid� de ne pas lui envoyer un fr�re haut plac�. Mais vu que nous avons besoin de savoir quel est cet objet, je te demande de le prendre � Cole et d'aller le porter � P�re Manus, que tu trouveras ici dans notre cath�drale, dans l'Outzone. P�re Manus va pouvoir l'examiner de plus pr�s.")

		ANSWER("Qui donc est Mark Cole et qui sont les Anges D�chus?",13)
	NODE(13)
		SAY("Cole a longtemps travaill� pour les Anges D�chus. Les Anges D�chus sont une association de scientifiques qui vivent live exil�s dans les Terres Br�l�es. Leur base d'op�rations, une Mecque du p�ch�, se nomme Tech Haven. Aujourd'hui, ils ont choisi d'habituer dans ce qui reste du D�me d'York. Les rapports entre la fraternit� et les Anges D�chus sont tendus � cause de certains �v�nements malheureux, mais cela ne signifie pas que nous rejetons en bloc toute coop�ration avec les savants de Tech Haven.")

		ANSWER("Cole ne travaille plus pour eux, alors? Que s'est-il pass�?",14) 
	NODE(14)
		SAY("Contrairement � ce qu'il dit, Cole fut banni des Anges D�chus apr�s avoir essay� de vendre des projets scientifiques secrets des Anges.")

		ANSWER("O� exactement puis-je trouver Cole?",15)
	NODE(15)
		SAY("Cole t'attend au D�me d'York, dans un secteur o� on vend toutes sortes d'armes. Personne n'a cherch� � contr�ler l'endroit, parce que tout le monde en b�n�ficie. C'est l� que se trouve Cole. Dans le secteur 6.")

		ANSWER("CONTINUER",16)
	NODE(16) 
		SAY("Ensuite, transmets mes hommages � P�re Manus. Son oeuvre est une source d'inspiration pour nous tous. Acceptes-tu cette mission?")

		ANSWER("Oui p�re... Je ne d�cevrai pas Crahn.",17)
	NODE(17)
		SAY("Que le saint Crahn prot�ge ta mission.")
		STARTMISSION(3540)
		SETNEXTDIALOGSTATE(150)

		ENDDIALOG()


	NODE(18)
		SAY("Je te rappelle que tu as une t�che. La mission n'est pas encore termin�e. Tu trouveras Mark dans le secteur 6, et p�re Manus attend �galement ta venue.")
		ENDDIALOG()
	NODE(19)
		SAY("Reviens ici quand tu te sentiras de taille � relever le d�fi.")
		ENDDIALOG()

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Crahn 2
	NODE(51)
		SAY("Bien... Jadis, quand Shirkan et Neopha Kansil pr�chaient encore la parole de Crahn dans les rues de Neocron, et que nos p�res contr�laient la ville, un petit groupe de scientifiques parvint � �chapper � notre emprise.")

		ANSWER("Cela me dit quelque chose...",52)
	NODE(52)
		SAY("Tu l'as devin�, je parle des Anges D�chus. Le tout premier groupe partit dans les Terres Br�l�es en 2633 afin d'y �difier le laboratoire de Tech Haven.")

		ANSWER("Oui p�re, j'ai �tudi� toute l'histoire de Neocron et de notre ordre.",53)
	NODE(53)
		SAY("Jeune moine, les livres d'histoire ne disent pas toute la v�rit�. Aux yeux d'un citoyen de Neocron, les Anges D�chus sont un groupe de savants inoffensifs... mais nous, moines PSI, connaissons la v�rit�.")

		ANSWER("CONTINUER",54)
	NODE(54)
		SAY("Les Anges D�chus sont des tueurs d'enfants et des voleurs. Dans leurs laboratoires secrets, ils font des exp�riences r�pugnantes sur des humains, dont je t'�pargnerai les d�tails.")

		ANSWER("Mais je croyais que les Anges D�chus se consacraient au bien de l'humanit�...",55)
	NODE(55)
		SAY("Silence! ... Ne crois jamais la propagande mensong�re des Anges. Seule la Fraternit� de Crahn conna�t le chemin de la lumi�re... C'est d�j� suffisamment diabolique que les Anges D�chus fassent leurs sinistres exp�riences au nez et � la barbe de la population.")

		ANSWER("C'est donc une mascarade...",56)
	NODE(56)
		SAY("... mais le pire pour notre ordre, est que leurs travaux sont bas�s sur nos recherches. Les Anges D�chus n'auraient jamais d�velopp� le Syst�me NeuroLink si leur chef Thomas Cooper n'avait pas eu nos documents de recherches pour l'aider.")

		ANSWER("P�re, dis-moi comment je peux aider l'ordre.",57)

	NODE(57)
		SAY("L'heure de notre revanche a sonn�. Fr�re Gabriel a r�ussi � infiltrer les Anges D�chus et � y �tre reconnu comme un des leurs, apr�s des ann�es de planification m�ticuleuse. Il travaille pour eux depuis deux ans � Tech Haven et est devenu le bras droit de Sylvia Bennet.")

		ANSWER("J'imagine que je vais devoir le rencontrer. O� se trouve-t-il?",58)
	NODE(58)
		SAY("Il devrait �tre rentr� de sa r�union chez les Anges D�chus. Tu le verras aux portes du D�me qui donnent sur la zone contr�l�e par les Gardiens du Cr�puscule. Il te donnera un holodisque, que tu transmettras au p�re Manus. Le p�re Manus t'attend dans la cath�drale de Crahn.")

		ANSWER("Il en sera fait ainsi, p�re.",59)
	NODE(59)
		SAY("Attention de ne pas attirer l'attention sur toi. Il pourrait y avoir des Anges D�chus aux alentours. Ils ne doivent pas s'apercevoir que fr�re Gabriel est notre contact. Marche dans la lumi�re de Crahn.")
		STARTMISSION(3541)
		SETNEXTDIALOGSTATE(11)

		ENDDIALOG()

	NODE(60)
		SAY("Tu ferais mieux de te pr�parer et revenir plus tard.")
		ENDDIALOG()

	NODE(61)
		SAY("Cette t�che ne se fera pas toute seule, tu sais? Tu �tais suppos� rencontrer Gabriel dans le secteur 01, puis transmettre le holodisque au p�re Manus, dans notre cath�drale.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Crahn 3
	NODE(101)
		SAY("Cela signifie que tu vas �tre charg� de missions qui rel�vent des affaires internes de l'Ordre. Tu dois ex�cuter ces missions secr�tement.")

		ANSWER("Je suis honor�, p�re. Comment puis-je servir l'ordre cette fois?",102)
		ANSWER("Je ne me sens pas encore assez �clair�, p�re.",106)
	NODE(102)
		SAY("Notre ami, Mark Cole, a contact� le conseil. Il aurait eu vent d'une rencontre secr�te entre les Anges D�chus et les repr�sentants des Fils de l'Anarchie.")

		ANSWER("Une rencontre secr�te? Sait-on ce qu'ils pr�parent?",103)
	NODE(103)
		SAY("Il existe des rumeurs d'alliance entre ces deux factions depuis longtemps, mais jusqu'� maintenant, nous n'avons pas pu conna�tre l'�tat de leurs n�gociations. Va voir Cole et �coute ce qu'il a � dire.")

		ANSWER("O� vais-je le rencontrer?",104)
	NODE(104)
		SAY("O� devrait �tre ce bon � rien? Il est encore aux alentours du march� des armes, dans le secteur 06, � essayer de vendre ses tuyaux perc�s au plus offrant.")

		ANSWER("Tr�s bien.",105)
	NODE(105)
		SAY("Mais sois prudent... tu sais, c'est un individu d�testable. Que Crahn b�nisse ta mission.")
		STARTMISSION(3542)

		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()
		
	NODE(106)
		SAY("Maintenant, va et travaille en gardant cet objectif � l'esprit. Si tu te sens pr�t nous t'offrirons le m�me une fois de plus.")

		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Crahn 4
	NODE(151)
		SAY("Que Crahn te b�nisse.")
		STARTMISSION(3543)
		ENDDIALOG()		
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Crahn 5
	NODE(201)
		SAY("C'est ce qu'on dit dans l'Ordre. Bien� Si tu veux entrer dans le cercle noir, tu devras passer une �preuve � laquelle te soumettra un des p�res du cercle noir.")

		ANSWER("Je me sens pr�t. Dis-m'en plus.",202)
		ANSWER("Je ne me sens pas encore assez digne de cet honneur.",204)
	NODE(202)
		SAY("Les moines PSI du cercle noir excellent non seulement dans leur sagesse, mais aussi dans leur puissance et leur force. Un moine du cercle noir doit �tre capable de survivre m�me dans les zones les plus obscures et les plus dangereuses des Terres Br�l�es.")

		ANSWER("CONTINUER",203)
	NODE(203)
		SAY("Va voir le p�re Morpheus, tu pourras le trouver dans les ruines abandonn�es de Crest Village. Il va te donner ta mission, et t'envoyer � ton p�lerinage. Que Crahn b�nisse ta route.")
		STARTMISSION(3544)
		SETNEXTDIALOGSTATE(5)
		ENDDIALOG()
		
	NODE(204)
		SAY("Tu ferais mieux de te pr�parer.")
		ENDDIALOG()
	NODE(205)
		SAY("Tu dois parler au p�re Morpheus dans Crest village.")
		ENDDIALOG()	
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Crahn 6
	NODE(251)
		SAY("Avant que j'oublie, p�re Agnus pense que le vieux Kev Critter poss�de encore un plan permettant de construire l'amplificateur PSI � partir des pi�ces d�tach�es.")

		ANSWER("Bonnes nouvelles. O� puis-je trouver ce Kev Critter?",252)
	NODE(252)
		SAY("Kev tient un commerce de pi�ces de m�tal usag�e dans les Terres Br�l�es, � la Blakkmist Creek. Officiellement, son commerce est un d�potoir. Tu peux le trouver dans ce d�potoir.")

		ANSWER("CONTINUER",253)
	NODE(253)
		SAY("Critter est un vieil homme stupide qui peut se transformer en un fin renard s'il flaire une bonne affaire.")

		ANSWER("Il ne serait pas le premier.",254)
	NODE(254)
		SAY("Alors sois prudent et ne lui laisse pas voir � quel point tu veux le plan de construction. Tu ne ferais que faire augmenter le prix inutilement. P�re Agnus va s�rement t'aider une fois que tu auras le plan.")

		ANSWER("Merci, je vais tenir compte de tes conseils. Que Crahn t'accompagne.",255)
	NODE(255)
		SAY("Bonne chance dans ta mission.")
		STARTMISSION(3545)
		SETNEXTDIALOGSTATE(6)
		ENDDIALOG()	
		
	NODE(256)
		SAY("Ne voulais-tu pas aller voir Kev Critter au d�potoir de Blakkmist? Si tu as d�j� tout ce qu'il te faut, je te conseille d'aller voir p�re Agnus pour construire l'artefact.")

		ENDDIALOG()	

--FRAKTIONSWECHSEL
	NODE(300)
		SAY("Je suis occup�. D�gage.")
		ENDDIALOG()

	NODE(301)
		GETFACTIONSYMPATHY(10)
		if(result>49)then
			SAY("Ravi de l'entendre... Bon dossier! Ca fera 300.000 creds pour rentrer chez nous.")
	
			ANSWER("C'est pas donn�...",302)
		else
			SAY("Alors fiche le camp si tu veux pas payer.")
			ENDDIALOG()
		end
	NODE(302)
		SAY("Si tu veux pas payer, on te prendra jamais au s�rieux. On aime les gens s�rieux ici.")

		ANSWER("Compris, je paie.",303)
		ANSWER("Pas question que je d�bourse un centime pour �a.",300)
	NODE(303)
		TAKEMONEY(300000)
		if(result==0)then
			SAY("On dira�t bien que tu es sur la paille...")
			ENDDIALOG()
		else
			CHANGEFACTION(10)
			SAY("Bienvenue dans la Fraternit�.")
			ENDDIALOG()
		end

end