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
-- Fraktion wird überprüft
		if(result==-1)then 
			SAY("Tu n'es pas des nôtres. Arrête de me faire perdre mon temps... Mais peut-être veux-tu nous rejoindre?")
			
			ANSWER("Je viens pour ça en effet. J'aimerais rejoindre la Fraternitér.",301)
			ANSWER("Ca ne m'intéresse pas. Au revoir.",300)
			ENDDIALOG()
		else
-- Alle Missionen erfüllt? wird geprüft
			CANDOEPICRUN(10,0)
			if(result==-2)then
				SAY("La seule aide que tu peux nous apporter maintenant, c'est en créant un clan pour défendre notre cause.")
				ENDDIALOG()
			else
-- Abfrage ob Skillevel stimmt und dann ob die Mission schon erfüllt wurde
				CANDOEPICRUN(10,0)
				if(result==-5)then
					SAY("Tu n'as pas encore assez d'expérience, disciple. (prochaine mission au niveau 10)")
					ENDDIALOG()
				else
						CANDOEPICRUN(10,0)
				        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------2
						CANDOEPICRUN(10,1)
						if(result==-5)then
							SAY("Tu n'as pas encore assez d'expérience, disciple. (prochaine mission au niveau 20)")
							ENDDIALOG()
						else
								CANDOEPICRUN(10,1)
				        		if(result==-4)then
-------------------------------------------------------------------------------------------------------------------3
						CANDOEPICRUN(10,2)
						if(result==-5)then
							SAY("Tu n'as pas encore assez d'expérience, disciple. (prochaine mission au niveau 30)")
							ENDDIALOG()
						else
								CANDOEPICRUN(10,2)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------4
						CANDOEPICRUN(10,3)
						if(result==-5)then
							SAY("Tu n'as pas encore assez d'expérience, disciple. (prochaine mission au niveau 35)")
							ENDDIALOG()
						else
								CANDOEPICRUN(10,3)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------5
						CANDOEPICRUN(10,4)
						if(result==-5)then
							SAY("Tu n'as pas encore assez d'expérience, disciple. (prochaine mission au niveau 40)")
							ENDDIALOG()
						else
								CANDOEPICRUN(10,4)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------6
						CANDOEPICRUN(10,5)
				if(result==-5)then
					SAY("Tu n'as pas encore assez d'expérience, disciple. (prochaine mission au niveau 45)")
					ENDDIALOG()
				else
								CANDOEPICRUN(10,5)
				        if(result==-4)then
						SAY("La seule aide que tu peux nous apporter maintenant, c'est en créant un clan pour défendre notre cause.")
						ENDDIALOG()
					else
--Mission 6 wird hier gestartet
		SAY("Bienvenue, ô père du cercle noir. Frère Agnus m'a informé du fait que tu avais en ta possession cinq reliques Tacholytium.")

		ANSWER("C'est uniquement grâce à l'aide du père Manus et du frère Agnus que je dois ma réussite.",251)

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------6
					else
--Mission 5 wird hier gestartet
		SAY("Bienvenue mon frère. Le conseil m'a demandé de quelle façon je t'évaluerais. J'ai ouï-dire que père Agnus t'a recommandé pour le Cercle Noir. A en juger par tes actes héroiques, je ne serais pas surpris que tu sois accepté bientôt dans ce cercle.") 

		ANSWER("Merci pour tes prières mon frère. Il est vrai que la lumière de Crahn a resplendi sur moi ces derniers mois.",201)

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------5
					else
--Mission 4 wird hier gestartet
		SAY("Père Manus n'a pas pu trouver de nouveaux éléments au sujet de tes reliques. Malheureusement, notre bibliothèque est pauvre, et nous avons donc décidé de sollicité l'aide de frère Agnus. Agnus est un des loyaux serviteurs de Crahn qui ont décidé de demeurer dans le vieux monastère de l'Outzone, dans Neocron. Il a comparé les reliques avec plusieurs des plus anciens écrits consignés, et cela l'a mené à une découverte. Il était fébrile quand il m'en a parlé. Mais tu ferais mieux de lui parler en personne. Rends-toi à la vieille abbaye dans l'Outzone et parle-lui.")

		ANSWER("Merci infiniment pour cette bonne nouvelle. J'y vais tout de suite.",151)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------4
					else
--Mission 3 wird hier gestartet
		SAY("Tu deviens progressivement un des membres les plus indispensables de notre ordre, jeune moine. Le conseil a décidé de t'accepter officiellement dans le cercle bleu de la fraternité.")

		ANSWER("Je te remercie. J'accomplirai mon devoir avec l'aide de Crahn.",101)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------3
							else
--Mission 2 wird hier gestartet
		SAY("Que Crahn te bénisse, jeune moine. A ce que je vois, tu as fait un entraînement intensif... L'ordre est prêt à t'accepter dans un cercle supérieur. Je crois qu'il est temps de te confier une autre tâche importante. Es-tu prêt pour ce défi?")

		ANSWER("Oui père. Je souhaite servir Crahn de mon mieux.",51)
		ANSWER("J'aimerais que tu me donnes un peu de répit, père.",60)

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------2
					else
--Mission 1 wird hier gestartet
		SAY("Je vois que tu as travaillé fort pour prouver ta loyauté envers notre ordre. Au nom de saint Crahn, je te remercie pour ton dévouement. Si tu désires continuer de servir l'ordre, nous serions prêts à te confier des missions plus complexes. Es-tu prêt pour ce défi?")

		ANSWER("Oui père. Je me soumets corps et âme à la volonté de Crahn.",11)
		ANSWER("Désolé, je ne suis pas encore prêt pour une telle tâche.",19)

						
					end
				end			
			end
		end

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Crahn 1
	NODE(11)
		Voici les faits... Mark Cole, un ex-membre des Anges Déchus, nous a informé qu'il est en possession d'un objet d'une grande valeur. Il n'a pas mentionné de quel objet il s'agissait. L'ordre n'est pas sûr que Cole soit honnête et nous ne voulons pas qu'il soit méfiant.")

		ANSWER("Il n'est même pas des nôtres, pourquoi s'abaisserait-on à aller le voir?",12)
	NODE(12)		
		SAY("C'est juste. C'est pourquoi l'ordre a décidé de ne pas lui envoyer un frère haut placé. Mais vu que nous avons besoin de savoir quel est cet objet, je te demande de le prendre à Cole et d'aller le porter à Père Manus, que tu trouveras ici dans notre cathédrale, dans l'Outzone. Père Manus va pouvoir l'examiner de plus près.")

		ANSWER("Qui donc est Mark Cole et qui sont les Anges Déchus?",13)
	NODE(13)
		SAY("Cole a longtemps travaillé pour les Anges Déchus. Les Anges Déchus sont une association de scientifiques qui vivent live exilés dans les Terres Brûlées. Leur base d'opérations, une Mecque du péché, se nomme Tech Haven. Aujourd'hui, ils ont choisi d'habituer dans ce qui reste du Dôme d'York. Les rapports entre la fraternité et les Anges Déchus sont tendus à cause de certains événements malheureux, mais cela ne signifie pas que nous rejetons en bloc toute coopération avec les savants de Tech Haven.")

		ANSWER("Cole ne travaille plus pour eux, alors? Que s'est-il passé?",14) 
	NODE(14)
		SAY("Contrairement à ce qu'il dit, Cole fut banni des Anges Déchus après avoir essayé de vendre des projets scientifiques secrets des Anges.")

		ANSWER("Où exactement puis-je trouver Cole?",15)
	NODE(15)
		SAY("Cole t'attend au Dôme d'York, dans un secteur où on vend toutes sortes d'armes. Personne n'a cherché à contrôler l'endroit, parce que tout le monde en bénéficie. C'est là que se trouve Cole. Dans le secteur 6.")

		ANSWER("CONTINUER",16)
	NODE(16) 
		SAY("Ensuite, transmets mes hommages à Père Manus. Son oeuvre est une source d'inspiration pour nous tous. Acceptes-tu cette mission?")

		ANSWER("Oui père... Je ne décevrai pas Crahn.",17)
	NODE(17)
		SAY("Que le saint Crahn protège ta mission.")
		STARTMISSION(3540)
		SETNEXTDIALOGSTATE(150)

		ENDDIALOG()


	NODE(18)
		SAY("Je te rappelle que tu as une tâche. La mission n'est pas encore terminée. Tu trouveras Mark dans le secteur 6, et père Manus attend également ta venue.")
		ENDDIALOG()
	NODE(19)
		SAY("Reviens ici quand tu te sentiras de taille à relever le défi.")
		ENDDIALOG()

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Crahn 2
	NODE(51)
		SAY("Bien... Jadis, quand Shirkan et Neopha Kansil prêchaient encore la parole de Crahn dans les rues de Neocron, et que nos pères contrôlaient la ville, un petit groupe de scientifiques parvint à échapper à notre emprise.")

		ANSWER("Cela me dit quelque chose...",52)
	NODE(52)
		SAY("Tu l'as deviné, je parle des Anges Déchus. Le tout premier groupe partit dans les Terres Brûlées en 2633 afin d'y édifier le laboratoire de Tech Haven.")

		ANSWER("Oui père, j'ai étudié toute l'histoire de Neocron et de notre ordre.",53)
	NODE(53)
		SAY("Jeune moine, les livres d'histoire ne disent pas toute la vérité. Aux yeux d'un citoyen de Neocron, les Anges Déchus sont un groupe de savants inoffensifs... mais nous, moines PSI, connaissons la vérité.")

		ANSWER("CONTINUER",54)
	NODE(54)
		SAY("Les Anges Déchus sont des tueurs d'enfants et des voleurs. Dans leurs laboratoires secrets, ils font des expériences répugnantes sur des humains, dont je t'épargnerai les détails.")

		ANSWER("Mais je croyais que les Anges Déchus se consacraient au bien de l'humanité...",55)
	NODE(55)
		SAY("Silence! ... Ne crois jamais la propagande mensongère des Anges. Seule la Fraternité de Crahn connaît le chemin de la lumière... C'est déjà suffisamment diabolique que les Anges Déchus fassent leurs sinistres expériences au nez et à la barbe de la population.")

		ANSWER("C'est donc une mascarade...",56)
	NODE(56)
		SAY("... mais le pire pour notre ordre, est que leurs travaux sont basés sur nos recherches. Les Anges Déchus n'auraient jamais développé le Système NeuroLink si leur chef Thomas Cooper n'avait pas eu nos documents de recherches pour l'aider.")

		ANSWER("Père, dis-moi comment je peux aider l'ordre.",57)

	NODE(57)
		SAY("L'heure de notre revanche a sonné. Frère Gabriel a réussi à infiltrer les Anges Déchus et à y être reconnu comme un des leurs, après des années de planification méticuleuse. Il travaille pour eux depuis deux ans à Tech Haven et est devenu le bras droit de Sylvia Bennet.")

		ANSWER("J'imagine que je vais devoir le rencontrer. Où se trouve-t-il?",58)
	NODE(58)
		SAY("Il devrait être rentré de sa réunion chez les Anges Déchus. Tu le verras aux portes du Dôme qui donnent sur la zone contrôlée par les Gardiens du Crépuscule. Il te donnera un holodisque, que tu transmettras au père Manus. Le père Manus t'attend dans la cathédrale de Crahn.")

		ANSWER("Il en sera fait ainsi, père.",59)
	NODE(59)
		SAY("Attention de ne pas attirer l'attention sur toi. Il pourrait y avoir des Anges Déchus aux alentours. Ils ne doivent pas s'apercevoir que frère Gabriel est notre contact. Marche dans la lumière de Crahn.")
		STARTMISSION(3541)
		SETNEXTDIALOGSTATE(11)

		ENDDIALOG()

	NODE(60)
		SAY("Tu ferais mieux de te préparer et revenir plus tard.")
		ENDDIALOG()

	NODE(61)
		SAY("Cette tâche ne se fera pas toute seule, tu sais? Tu étais supposé rencontrer Gabriel dans le secteur 01, puis transmettre le holodisque au père Manus, dans notre cathédrale.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Crahn 3
	NODE(101)
		SAY("Cela signifie que tu vas être chargé de missions qui relèvent des affaires internes de l'Ordre. Tu dois exécuter ces missions secrètement.")

		ANSWER("Je suis honoré, père. Comment puis-je servir l'ordre cette fois?",102)
		ANSWER("Je ne me sens pas encore assez éclairé, père.",106)
	NODE(102)
		SAY("Notre ami, Mark Cole, a contacté le conseil. Il aurait eu vent d'une rencontre secrète entre les Anges Déchus et les représentants des Fils de l'Anarchie.")

		ANSWER("Une rencontre secrète? Sait-on ce qu'ils préparent?",103)
	NODE(103)
		SAY("Il existe des rumeurs d'alliance entre ces deux factions depuis longtemps, mais jusqu'à maintenant, nous n'avons pas pu connaître l'état de leurs négociations. Va voir Cole et écoute ce qu'il a à dire.")

		ANSWER("Où vais-je le rencontrer?",104)
	NODE(104)
		SAY("Où devrait être ce bon à rien? Il est encore aux alentours du marché des armes, dans le secteur 06, à essayer de vendre ses tuyaux percés au plus offrant.")

		ANSWER("Très bien.",105)
	NODE(105)
		SAY("Mais sois prudent... tu sais, c'est un individu détestable. Que Crahn bénisse ta mission.")
		STARTMISSION(3542)

		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()
		
	NODE(106)
		SAY("Maintenant, va et travaille en gardant cet objectif à l'esprit. Si tu te sens prêt nous t'offrirons le même une fois de plus.")

		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Crahn 4
	NODE(151)
		SAY("Que Crahn te bénisse.")
		STARTMISSION(3543)
		ENDDIALOG()		
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Crahn 5
	NODE(201)
		SAY("C'est ce qu'on dit dans l'Ordre. Bien… Si tu veux entrer dans le cercle noir, tu devras passer une épreuve à laquelle te soumettra un des pères du cercle noir.")

		ANSWER("Je me sens prêt. Dis-m'en plus.",202)
		ANSWER("Je ne me sens pas encore assez digne de cet honneur.",204)
	NODE(202)
		SAY("Les moines PSI du cercle noir excellent non seulement dans leur sagesse, mais aussi dans leur puissance et leur force. Un moine du cercle noir doit être capable de survivre même dans les zones les plus obscures et les plus dangereuses des Terres Brûlées.")

		ANSWER("CONTINUER",203)
	NODE(203)
		SAY("Va voir le père Morpheus, tu pourras le trouver dans les ruines abandonnées de Crest Village. Il va te donner ta mission, et t'envoyer à ton pèlerinage. Que Crahn bénisse ta route.")
		STARTMISSION(3544)
		SETNEXTDIALOGSTATE(5)
		ENDDIALOG()
		
	NODE(204)
		SAY("Tu ferais mieux de te préparer.")
		ENDDIALOG()
	NODE(205)
		SAY("Tu dois parler au père Morpheus dans Crest village.")
		ENDDIALOG()	
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Crahn 6
	NODE(251)
		SAY("Avant que j'oublie, père Agnus pense que le vieux Kev Critter possède encore un plan permettant de construire l'amplificateur PSI à partir des pièces détachées.")

		ANSWER("Bonnes nouvelles. Où puis-je trouver ce Kev Critter?",252)
	NODE(252)
		SAY("Kev tient un commerce de pièces de métal usagée dans les Terres Brûlées, à la Blakkmist Creek. Officiellement, son commerce est un dépotoir. Tu peux le trouver dans ce dépotoir.")

		ANSWER("CONTINUER",253)
	NODE(253)
		SAY("Critter est un vieil homme stupide qui peut se transformer en un fin renard s'il flaire une bonne affaire.")

		ANSWER("Il ne serait pas le premier.",254)
	NODE(254)
		SAY("Alors sois prudent et ne lui laisse pas voir à quel point tu veux le plan de construction. Tu ne ferais que faire augmenter le prix inutilement. Père Agnus va sûrement t'aider une fois que tu auras le plan.")

		ANSWER("Merci, je vais tenir compte de tes conseils. Que Crahn t'accompagne.",255)
	NODE(255)
		SAY("Bonne chance dans ta mission.")
		STARTMISSION(3545)
		SETNEXTDIALOGSTATE(6)
		ENDDIALOG()	
		
	NODE(256)
		SAY("Ne voulais-tu pas aller voir Kev Critter au dépotoir de Blakkmist? Si tu as déjà tout ce qu'il te faut, je te conseille d'aller voir père Agnus pour construire l'artefact.")

		ENDDIALOG()	

--FRAKTIONSWECHSEL
	NODE(300)
		SAY("Je suis occupé. Dégage.")
		ENDDIALOG()

	NODE(301)
		GETFACTIONSYMPATHY(10)
		if(result>49)then
			SAY("Ravi de l'entendre... Bon dossier! Ca fera 300.000 creds pour rentrer chez nous.")
	
			ANSWER("C'est pas donné...",302)
		else
			SAY("Alors fiche le camp si tu veux pas payer.")
			ENDDIALOG()
		end
	NODE(302)
		SAY("Si tu veux pas payer, on te prendra jamais au sérieux. On aime les gens sérieux ici.")

		ANSWER("Compris, je paie.",303)
		ANSWER("Pas question que je débourse un centime pour ça.",300)
	NODE(303)
		TAKEMONEY(300000)
		if(result==0)then
			SAY("On diraît bien que tu es sur la paille...")
			ENDDIALOG()
		else
			CHANGEFACTION(10)
			SAY("Bienvenue dans la Fraternité.")
			ENDDIALOG()
		end

end