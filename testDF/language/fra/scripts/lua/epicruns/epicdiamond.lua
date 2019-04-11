--new
--BioTech

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

	CANDOEPICRUN(2,0)
-- Fraktion wird überprüft
		if(result==-1)then 
			SAY("Vous n'êtes pas des nôtres. Arrêtez de me faire perdre mon temps... Mais peut-être voulez-vous nous rejoindre?")
			ANSWER("Je viens pour ça en effet. J'aimerais rejoindre Diamond.",301)
			ANSWER("Ca ne m'intéresse pas. Au revoir.",300)
		else
-- Alle Missionen erfüllt? wird geprüft
			CANDOEPICRUN(2,0)
			if(result==-2)then
				SAY("Navré, mais vous avez déjà fait tout ce qui était en votre pouvoir pour nous aider. Vous pourriez continuer en créant votre propre clan.")
				ENDDIALOG()
			else
-- Abfrage ob Skillevel stimmt und dann ob die Mission schon erfüllt wurde
				CANDOEPICRUN(2,0)
				if(result==-5)then
					SAY("Vous n'avez pas encore assez d'expérience. Revenez quand vous avez un peu plus d'entraînement. (prochaine mission au niveau 10)")
					ENDDIALOG()
				else
						CANDOEPICRUN(2,0)
				        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------2
						CANDOEPICRUN(2,1)
						if(result==-5)then
							SAY("Vous n'avez pas encore assez d'expérience. Revenez quand vous avez un peu plus d'entraînement. (prochaine mission au niveau 20)")
							ENDDIALOG()
						else
								CANDOEPICRUN(2,1)
				        		if(result==-4)then
-------------------------------------------------------------------------------------------------------------------3
						CANDOEPICRUN(2,2)
						if(result==-5)then
							SAY("Vous n'avez pas encore assez d'expérience. Revenez quand vous avez un peu plus d'entraînement. (prochaine mission au niveau 0)")
							ENDDIALOG()
						else
								CANDOEPICRUN(2,2)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------4
						CANDOEPICRUN(2,3)
						if(result==-5)then
							SAY("Vous n'avez pas encore assez d'expérience. Revenez quand vous avez un peu plus d'entraînement. (prochaine mission au niveau 35)")
							ENDDIALOG()
						else
								CANDOEPICRUN(2,3)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------5
						CANDOEPICRUN(2,4)
						if(result==-5)then
							SAY("Vous n'avez pas encore assez d'expérience. Revenez quand vous avez un peu plus d'entraînement. (prochaine mission au niveau 40)")
							ENDDIALOG()
						else
								CANDOEPICRUN(2,4)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------6
						CANDOEPICRUN(2,5)
				if(result==-5)then
					SAY("Vous n'avez pas encore assez d'expérience. Revenez quand vous avez un peu plus d'entraînement. (prochaine mission au niveau 45)")
					ENDDIALOG()
				else
								CANDOEPICRUN(2,5)
				        if(result==-4)then
						SAY("Navré, mais vous avez déjà fait tout ce qui était en votre pouvoir pour nous aider. Vous pourriez continuer en créant votre propre clan.")
						ENDDIALOG()
					else
--Mission 6 wird hier gestartet
		SAY("J'ai maintenant une réponse définitive d'Eric Danmund en personne. Il semble avoir déclaré l'état d'urgence, et a accepté de coopérer avec Tsunami. C'est une information secrète, et je ne vous en parle que parce que vous avez ma confiance. Alors, vous êtes prêt à débarrasser Diamond du Dragon Noir?")

		ANSWER("Et pas qu'un peu!",251)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------6
					else
--Mission 5 wird hier gestartet
		SAY("Vous tombez à pic, on a justement besoin de vous pour une nouvelle mission. Nos pertes grandissent jour après jour parce que le Dragon Noir continue de faire fuir nos clients. De nombreux employés ont peur pour leur poste, et je ne fais pas exception à la règle.")

		ANSWER("La situation est vraiment si mauvaise? Je ne pensais pas qu'on en était arrivé là.",201)
		ANSWER("J'ai des choses plus urgentes à faire en ce moment.",207)			
					end
				end	
-------------------------------------------------------------------------------------------------------------------5
					else
--Mission 4 wird hier gestartet
		SAY("Si vous vous sentez prêt, voilà une nouvelle chance de convaincre Simmons. Grâce à vos efforts, il a finalement décidé de nous rejoindre. Il semblait très déterminé.")

		ANSWER("Il a été rapide pour récupérer de la mort de sa femme.",151)
		ANSWER("I am sorry, but I don't yet feel ready for another assignment.",152)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------4
					else
--Mission 3 wird hier gestartet
		SAY("Ravi de vous revoir. Les choses ont évolué pendant votre absence. Le Dragon Noir ne nous laisse pas de répit, et en attendant la mise en place du contrat avec CityMercs nous perdons beaucoup de clients. Et maintenant, on sait que certains ont pensé tirer avantage de la situation actuelle.")

		ANSWER("Je vois que les vautours se pressent...",101)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------3
							else
--Mission 2 wird hier gestartet
		SAY("Bonne journée à vous. Je crois que vous pourriez avez envie de faire quelque chose pour Diamond, non?")

		ANSWER("Vous avez bien deviné. Je pense que je me suis bien préparé.",51)
		ANSWER("Pour être honnête, je crois que je ne suis pas encore prêt.",54)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------2
					else
--Mission 1 wird hier gestartet
		SAY("Ahh, bienvenue à Diamond. Nous avons suivi de près votre progrès jusqu'ici et certains ici ont été très impressionnés. Pour le prouver, on a décidé de vous donner une tâche qui exige une certaine compétence.")

		ANSWER("Je suis heureux d'apprendre cela.",11)
		ANSWER("Avant d'accepter une telle tâche, je crois que je devrais me préparer un peu mieux.",16)
						
					end
				end			
			end
		end

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 1
	NODE(11)
		SAY("Comme vous devez déjà le savoir, nous faisons face à certaines difficultés à cause de ces imprévisibles Dragons Noirs . Ce sont des criminels impitoyables qui ne renonceraient à rien pour atteindre leurs buts. Même avant que Diamond ne soit privatisé en 2046, le Dragon Noir a été la menace la plus sérieuse que nous ayons eu à traiter.")

		ANSWER("Pourquoi? Que veulent-ils? Diamond ne fait des affaires que dans l'immobilier.",12)
	NODE(12)
		SAY("Oui, exactement. Le but du Dragon Noir est de dominer le marché de l'immobilier, et la seule manière de l'atteindre est de neutraliser Diamond. Nous déjà avons dû diminuer nos efforts dans la région de Pepper Park, puisque le Dragon Noir menace nos clients. Même Eric Danmund lui-même, le chef de Diamond a décrété l'état d'urgence.")

		ANSWER("C'est dommage, mais je croyais que vous vouliez me parler au sujet de ma tâche.",13)
	NODE(13)
		SAY("Naturellement, mais je suis d'avis que vous devriez avoir quelques connaissances de base. Trop de gens ne savent pas que presque tous les appartements et magasins sont propriété de Diamond. Sauf que les problèmes avec le Dragon Noir se sont aggravés encore récemment. Ils ont déjà éloigné certains de nos clients. Diamond voudrait que vous rendiez visite à deux personnes qui veulent clore leurs contrats avec nous. Vous devrez les convaincre de revenir sur leur décision. Évidemment le Dragon Noir ont quelque chose faire avec ceci. Après que vous les aurez convaincus, vous pourriez aller au NCPD et vous assurer qu'ils soient au courant du problème avec le Dragon Noir.")

		ANSWER("Où puis-je trouver ces deux personnes? Je ferai de mon mieux.",14)
	NODE(14)
		SAY("Vous trouverez le premier client dans Plaza 02, il a accepté une rencontre dans le restaurant Gariots. Vous trouverez l'autre dans ViaRosso 03. S'il vous reste du temps, ensuite vous devriez vraiment aller au NCPD et venir me faire un compte-rendu de votre travail.")
		STARTMISSION(3582)
		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()

	NODE(15)
		SAY("N'oubliez pas d'être amical. Vous pouvez trouver les clients dans Plaza 02 et ViaRosso 03. Ils attendront probablement dans un des restaurants là.")
		ENDDIALOG()
	NODE(16)
		SAY("Faites donc. Soyez toujours en forme, c'est important. Revenez une fois que vous penserez vous être suffisamment préparé.")
		ENDDIALOG()
		
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 2
	NODE(51)
		SAY("C'est bien. La menace constituée par ces groupes de criminels se développe constamment. Bien sûr, chacun d'eux a été envoyé par le Dragon Noir, il n'y a aucun doute à ce sujet. M. Danmund a donc préparé un contrat entre nous et CityMercs pour la protection de nos appartements. Une réunion a été organisée près d'une station de radiodiffusion abandonnée dans les Terres Brûlées.")

		ANSWER("C'était grandement nécessaire. On ne peut pas continuer comme ça.",52)

	NODE(52)
		SAY("Exactement... Nous avons encore besoin de quelques documents pour cette réunion, cependant. Il y a deux copies à rassembler chez CityAdmin. Ils les avaient examinées pour assurer les clauses de rupture dans le contrat.")

		ANSWER("J'y vais.",53)
	NODE(53)
		SAY("Très bien, n'oubliez pas de me renvoyer ces documents. L'employé CityAdmin devrait avoir tout préparé pour vous.")
		STARTMISSION(3583)
		SETNEXTDIALOGSTATE(100)
		ENDDIALOG()
	NODE(54)
		SAY("Ne perdez pas de temps.")
		ENDDIALOG()		


------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 3
	NODE(101)
		SAY("Une compagnie immobilière indépendante est en train de tirer avantage de la situation pour vendre ses logements à un prix plus élevé. Nous ne pouvons pas tolérer cette situation.")

		ANSWER("Je comprends, ça n'est pas bon pour les affaire. Qu'est-ce qu'on peut faire?",102)
	NODE(102)
		SAY("Diamond veut donner à tous ses vendeurs de Diamond un pourcentage sur leurs ventes. Ainsi, nous aurons plus de vendeurs, plus d'appartements, et cela nous permettra d'écraser la compétition.")

		ANSWER("Logique. Mais l'opération va coûter cher. Et moi, qu'est-ce que je fais dans cette histoire?",103)
		ANSWER("Si vous êtes en train de me proposer une mission, j'ai bien peur de devoir vous faire attendre.",105)
	NODE(103)
		SAY("J'allais vous demander de convaincre un revendeur indépendant de rejoindre notre compagnie. Salaire à débattre.")

		ANSWER("Je peux essayer. Mais ces indépendants ne sont en général pas faciles à convaincre.",104)
	NODE(104)
		SAY("Si vous réussissez, Diamond aura une prime pour vous aussi. Bonne chance. Il s'appelle Simmons, je pense que vous le trouverez dans Pepper Park 02. On a organisé une rencontre dans un des restaurants de ce quartier. Il n'y en a pas beaucoup, vous devriez le repérer facilement.")
		STARTMISSION(3584)
		SETNEXTDIALOGSTATE(300)
		ENDDIALOG()
	NODE(105)
		SAY("C'est comme vous voulez. Mais on ne sera pas toujours en mesure de vous proposer des missions.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 4
	NODE(151)

		SAY("Il n'a rien dit à ce sujet. Mais c'est à vous qu'il a fait appel, il était convaincu que vous pouviez l'aider à combattre le Dragon Noir. De plus, ces types nous donnent beaucoup de mal ces derniers temps. Je sais qu'il a accepté de venir grâce à vous, alors vous avez gagné une prime de 8.000 crédits. Vous l'aurez lorsque vous aurez terminé la mission. Mais ne perdez pas votre temps. Il devrait encore être dans Pepper Park 02.")
		STARTMISSION(3585)
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()

	NODE(152)
		SAY("Comme vous voulez. Mais revenez lorsque vous changez d'avis.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 5
NODE(201)
		SAY("Comme vous êtes parmi les rares personnes à ne pas avoir été affectées par ces incidents. Le Dragon Noir fait peur à notre base de clients en ayant recours à la violence et aux menaces. Nous reconnaissons bien là leurs tactiques.")

		ANSWER("Alors pourquoi ne peut-on pas les en empêcher, si on sait comment ils agissent?",202)

	NODE(202)
		SAY("Ce sont les Gardiens du Crépuscule qui font le sale travail pour eux. C'est la raison pour laquelle on a beaucoup de difficultés à remonter jusqu'à eux. Nous n'avons pas de preuve tangible de leur responsabilité, et le NCPD fait de son mieux mais cela n'est pas suffisant.")

		ANSWER("J'espère que nous n'avons pas perdu trop de clients.",203)
	NODE(203)
		SAY("C'est notre problème principal actuellement. Pour être honnête, tout est sur le point de s'écrouler. Nos clients s'enfuient, et personne ne veux plus des appartements de Diamond. Je ne veux pas vous sembler pessimiste, mais c'est la raison pour laquelle il nous faut vraiment toute l'aide dont nous pouvons disposer.")

		ANSWER("Mais vous n'avez pas signé un contrat avec CityMercs?",204)
	NODE(204)
		SAY("Si ce contrat était déjà en vigueur, la situation aurait été différente. Mais il y a une clause dans le contrat qui l'empêche de prendre effet maintenant. C'est pour cela que nous mobilisons toutes nos ressources personnelles.")

		ANSWER("Alors je vais avoir beaucoup de travail à faire. Qu'est-ce que vous attendez de moi?",205)
		
	NODE(205)
		SAY("Allez voir Foster, dans ViaRosso 03. D'après votre dossier, je vois que vous vous connaissez déjà, c'est exact?")

		ANSWER("Oui, mais il a déjà résilié son contrat chez Diamond. Il a eu une mauvaise expérience.",206)
		
	NODE(206)
		SAY("Alors c'est d'autant mieux que vous le connaissiez. Nous voulons que vous lui donniez des raisons de revenir chez nous. On a vraiment besoin de vous sur cette affaire, alors utilisez tous les moyens que vous jugerez nécessaires.")

		STARTMISSION(3586)
		SETNEXTDIALOGSTATE(300)
		ENDDIALOG()
	NODE(207)
		SAY("Revenez lorsque vous vous sentirez un peu plus concerné par ce qui nous arrive.  Je me demande vraiment si vous n'avez pas perdu votre sens des responsabilités.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 6
	NODE(251)
		SAY("Je n'en attendais pas moins de vous. La première chose à faire sera de transférer ces documents à votre contact chez Tsunami. Vous vous souvenez de lui?")

		ANSWER("Certainement, on s'est déjà parlés dans le secteur industriel 02. J'y vais tout de suite.",252)
	NODE(252)
		GIVEITEM(9353)
--Dokumente
		SAY("Alors sachez aussi que vous n'aurez pas qu'une livraison à faire. Vous serez directement impliqué dans la mission en elle-même. Vous devrez aider le temps que le contrat des Mercs entre en vigueur. Diamond mise beaucoup sur votre succès.")

		STARTMISSION(3587)
		SETNEXTDIALOGSTATE(300)
		ENDDIALOG()

----------------------------------------------------
----------------------------------------------------

--FRAKTIONSWECHSEL
	NODE(300)
		SAY("Je suis occupé. Circulez.")
		ENDDIALOG()

	NODE(301)
		GETFACTIONSYMPATHY(2)
		if(result>49)then
			SAY("Ravi de l'entendre. Selon votre dossier, vous avez une conduite acceptable. Très bien, il vous coûtera 300.000 crédits pour rentrer chez nous.")
	
			ANSWER("Une sacrée somme!",302)
		else
			SAY("Vous feriez mieux de vous en aller, on ne veut pas de vous ici.")
			ENDDIALOG()
		end
	NODE(302)
		SAY("Si vous n'êtes pas prêt à faire cette démarche, personne ne vous prendra au sérieux. On n'aime pas les poules mouillées ici.")

		ANSWER("Compris, je paie.",303)
		ANSWER("Pas question que je débourse un centime pour ça.",300)
	NODE(303)
		TAKEMONEY(300000)
		if(result==0)then
			SAY("Dommage que vous n'ayez pas assez d'argent sur votre compte...")
			ENDDIALOG()
		else
			CHANGEFACTION(2)
			SAY("Bienvenue chez Diamond Immobilier.")
			ENDDIALOG()
		end
end