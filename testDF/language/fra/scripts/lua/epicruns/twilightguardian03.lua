--new
--Twilight Guardian
--
--Trigger
--Triggernumber,Type,Person
--0,D,SIMMONS
--1,D,FIGARO 150
--2,D,DONNOVAN 200
--3
--
--Startnode, Person
--0, Contact Person
--50, DONNOVAN
--100, SIMMONS
--150, FIGARO
--200, DONNOVAN
--250,
--
--Items
--PROPAGANDA CUBE 50

function DIALOG()
--------------------------------------------------------------------
--Contact Person
--0
	
	NODE(0)
		SAY("Les Fils de l'Anarchie ont des problèmes avec CityAdmin, une fois de plus. Heureusement, Reza ne leur a pas envoyé ses CopBots cette fois. Sinon, nos amis seraient dans une sale situation.")

		ANSWER("Les Fils de l'Anarchie? Au fait, pourquoi est-ce qu'on est alliés avec eux?",1)
	NODE(1)
		SAY("Parce que Reza est notre ennemi commun. On a différents projets au final, une fois que Reza sera renversé, mais pour l'instant on n'y pense pas trop.")

		ANSWER("Très bien. Je voulais savoir si Donnovan avait un autre boulot pour moi.",2)
	NODE(2)
		SAY("J'en sais rien, mais va lui demander. Tu sais où le trouver, non?")
		STARTMISSION()
		SETNEXTDIALOGSTATE(3)
		ENDDIALOG()
	
	NODE(3)
		SAY("Donnovan n'est pas loin, il doit traîner quelque part dans le QG.")
		ENDDIALOG()

--------------------------------------------------------------------
--DONNOVAN
--50
	NODE(50)
		SAY("Il faut que ça s'arrête d'urgence! J'ai vu des rapports, et la situation est franchement pas bonne. On perd des membres par dizaines. Ils diffusent nos idées au sein de la population, mais quand ils se font repérer, ils ne durent pas bien longtemps. Pourtant, c'est indispensable, ça fait partie de notre lutte!")

		ANSWER("Je pensais qu'on n'avait qu'à frapper un grand coup pour renverser Reza.",51)
	NODE(51)
		SAY("Ca serait trop beau. Mais la population elle-même doit se soulever. C'est pour ça qu'on diffuse tous ces cubes de propagande. Tu as déjà vu ce qu'ils contiennent?")

		ANSWER("La liste de tous les crimes de Reza. Evidemment, je connais.",52)
	NODE(52)
		SAY("Oui. Un criminel doit payer pour ce qu'il fait, c'est notre politique. Reza n'est pas seulement un dictateur et un criminel, c'est aussi un couard. Réfléchis un peu... Qui tire parti de Neocron? Reza, et personne d'autre.")

		ANSWER("Je n'arrive pas à croire que la population se lasse avoir comme ça.",53)
	NODE(53)
		SAY("Tu penses qu'ils ont le choix? Leur seule solution, c'est de se soulever en masse. Et ça, on ne pourra le réussir que si tout le monde connaît la vérité. Nous diffusons cette vérité aux gens. Et tu vas nous aider. Tu vas distribuer ces cubes.")

		ANSWER("D'accord. Dis-moi ce que je dois faire exactement.",54)
	NODE(54)
		SAY("Va à Neocron et donne-les à des gens. Tu as deux personnes à aller voir, et tu donneras le troisième à la personne que tu veux. Passe par les entrées secrètes de Neocron, et infiltre-toi dans Pepper Park. Attention aux CopBots, si on te surprend avec ces cubes, c'est la peine de mort immédiate.")

		ANSWER("Où sont ces entrées?",55)
	NODE(55)
		SAY("Il y en a une dans le même secteur que l'entrée principale. Il y en a d'autres aussi. L'une d'elles mène à l'Outzone, et elle n'est pas gardée. L'aytre mène à l'église de Crahn, et je ne pense pas qu'ils nous créent des ennuis si on passe par là. Mais fais attention, l'Outzone est un quartier dangereux.")

		ANSWER("Je vais aller voir ça.",56)
	NODE(56)
		GIVEITEM(9482)
		GIVEITEM(9482)
		GIVEITEM(9482)
--PROPAGANDACUBES
		SAY("Voilà les trois datacubes. Donnes-en un à Simmons, et un autre à Figaro. Les deux se trouvent à Pepper Park. Tu en donneras un troisième à un runner. Essaie de le convaincre. Prends n'importe qui. Et attention, reviens en un seul morceau.")
		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()
	

--------------------------------------------------------------------
-- SIMMONS
--100
	NODE(100)
		TAKEITEM(9482)
		if(result==0)then
			SAY("Dégage, je veux pas qu'on me voie parler à un Gardien du Crépuscule.")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(101)
			SAY("Hein? Quoi? Qu'est-ce que t'as?")

			ANSWER("J'ai un datacube bourré de preuves des crimes de Reza. Ca t'intéresse?",101)
		end
	NODE(101)
		SAY("Ouais, évidemment. J'ai beaucoup bossé pour vous, mais je tiens à ma vie. Mais je connais quelqu'un qui pourrait diffuser ça.")

		ANSWER("Ah oui? Qui ça?",102)
	NODE(102)
		SAY("Le type à qui je pense est un ancien employé de CityAdmin qui en a ras la casquette du régime, et qui vendrait sa propre mère pour ce genre de cause. Si tu veux, je vous arrange un rendez-vous.")

		ANSWER("Le genre de personne que je recherche. Mais attention, il faut qu'il soit sérieux.",103)
	NODE(103)
		SAY("Ouais, mais seulement si c'est le genre de truc qui peut faire plonger Reza rapidement. Je transmettrai à ton QG le lieu de rendez-vous.")
		SETNEXTDIALOGSTATE(104)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
		
	NODE(104)
		SAY("Je préférerais qu'on nous voie pas ensemble. Dès que je j'aurai le lieu du rendez-vous, je te le ferai savoir.")
		ENDDIALOG()

--------------------------------------------------------------------
--FIGARO
--150
	NODE(150)
		TAKEITEM(9482)
		if(result==0)then
			SAY("J'ai toute une panoplie de belles drogues à vendre, mais la liste d'attente est pleine. Tu vas devoir repasser plus tard.")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(151)
			SAY("Tu viens voir ce que j'ai en stock?")

			ANSWER("Pas vraiment, j'ai un datacube avec ton nom dessus.",151)
		end
	NODE(151)
		SAY("Ah, enfin! Tu sais depuis combien de temps j'attends ça? Grâce à toi, on va enfin savoir toutes les saloperies commises par CityAdmin.")

		ANSWER("Ce que j'ai du mal à comprendre, c'est pourquoi tu as besoin qu'on t'explique tout ça, alors que tu es quand même dans une position privilégiée pour t'en rendre compte par toi-même.",152)
	NODE(152)
		SAY("Ouais, mais c'est pas totalement vrai. CityAdmin se débrouille pas mal pour cacher toutes ses magouilles, il y a pas grand chose d'intéressant qui sort. De temps en temps, on apprend quand même des trucs, mais c'est rare.")

		ANSWER("Du genre?",153)
	NODE(153)
		SAY("Du genre, les attaques du NCPD de temps en temps. Il y a pas longtemps, ils ont attaqué quelques appartements, ils ont trouvé des Gardiens du Crépuscule, ils les ont alignés contre le mur, et paf, une balle dans la tête. Ils y vont pas de main morte.")

		ANSWER("Ils les ont exécutés en pleine rue? Les pauvres gars...",154)
	NODE(154)
		SAY("Ca arrive tous les jours, les exécutions en pleine rue. Mais tire-toi avant qu'on nous voie ensemble, traîne pas trop dans le coin.")
		SETNEXTDIALOGSTATE(155)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
	NODE(155)
		SAY("Je t'ai dit qu'ils ont failli m'exécuter, une fois?")
		ENDDIALOG()


--------------------------------------------------------------------
-- DONNOVAN
--200
	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Transmets ces informations à Simmons, ils sont à Pepper Park.")
			ENDDIALOG()
		else
			ISMISSIONTARGETACCOMPLISHED(1)
			if(result==0)then
				SAY("Transmets ces informations à Figaro, ils sont à Pepper Park.")
				ENDDIALOG()
			else
				TAKEITEM(9482)
				if(result==0)then
					SETNEXTDIALOGSTATE(201)
					SAY("Tu as réussi? J'espère que tout s'est bien passé. Je suis toujours content quand un runner revient au QG Après une mission. Cette ville est corrompue, et moi-même je n'aime pas y rester longtemps. Le Dôme, lui, est un nouvel espoir, l'espoir que même les plus grandes villes peuvent changer un jour..")

					ANSWER("J'ai donné tous les cubes de propagande. Simmons semble vouloir nous assister davantage. Il voulait même organiser une rencontre secrète avec un ancien CityAdmin qui veut renverser Reza.",201)
				else
					GIVEITEM(9482)
					SAY("Va parler à un runner de notre action, essaie de le convaincre. Ensuite, reviens ici.")
					ENDDIALOG()
				end
			end
		end
	NODE(201)
		SAY("Simmons? Tout ce qu'il lui faut, c'est un peu de courage, et il sera quelqu'un de très bien. Quand est-ce que la rencontre aura lieu?")

		ANSWER("Il nous le fera savoir.",202)
	NODE(202)
		GIVEMONEY(10000)
		SAY("Excellent, Hagen sera fier de toi. Tiens, voilà ta récompense. Ne gaspille pas tout, va t'entraîner, tu en auras besoin. (prochaine mission au niveau 35)")
		EPICRUNFINISHED(15,2)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()


end