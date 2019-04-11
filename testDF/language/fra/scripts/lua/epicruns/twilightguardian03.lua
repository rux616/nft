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
		SAY("Les Fils de l'Anarchie ont des probl�mes avec CityAdmin, une fois de plus. Heureusement, Reza ne leur a pas envoy� ses CopBots cette fois. Sinon, nos amis seraient dans une sale situation.")

		ANSWER("Les Fils de l'Anarchie? Au fait, pourquoi est-ce qu'on est alli�s avec eux?",1)
	NODE(1)
		SAY("Parce que Reza est notre ennemi commun. On a diff�rents projets au final, une fois que Reza sera renvers�, mais pour l'instant on n'y pense pas trop.")

		ANSWER("Tr�s bien. Je voulais savoir si Donnovan avait un autre boulot pour moi.",2)
	NODE(2)
		SAY("J'en sais rien, mais va lui demander. Tu sais o� le trouver, non?")
		STARTMISSION()
		SETNEXTDIALOGSTATE(3)
		ENDDIALOG()
	
	NODE(3)
		SAY("Donnovan n'est pas loin, il doit tra�ner quelque part dans le QG.")
		ENDDIALOG()

--------------------------------------------------------------------
--DONNOVAN
--50
	NODE(50)
		SAY("Il faut que �a s'arr�te d'urgence! J'ai vu des rapports, et la situation est franchement pas bonne. On perd des membres par dizaines. Ils diffusent nos id�es au sein de la population, mais quand ils se font rep�rer, ils ne durent pas bien longtemps. Pourtant, c'est indispensable, �a fait partie de notre lutte!")

		ANSWER("Je pensais qu'on n'avait qu'� frapper un grand coup pour renverser Reza.",51)
	NODE(51)
		SAY("Ca serait trop beau. Mais la population elle-m�me doit se soulever. C'est pour �a qu'on diffuse tous ces cubes de propagande. Tu as d�j� vu ce qu'ils contiennent?")

		ANSWER("La liste de tous les crimes de Reza. Evidemment, je connais.",52)
	NODE(52)
		SAY("Oui. Un criminel doit payer pour ce qu'il fait, c'est notre politique. Reza n'est pas seulement un dictateur et un criminel, c'est aussi un couard. R�fl�chis un peu... Qui tire parti de Neocron? Reza, et personne d'autre.")

		ANSWER("Je n'arrive pas � croire que la population se lasse avoir comme �a.",53)
	NODE(53)
		SAY("Tu penses qu'ils ont le choix? Leur seule solution, c'est de se soulever en masse. Et �a, on ne pourra le r�ussir que si tout le monde conna�t la v�rit�. Nous diffusons cette v�rit� aux gens. Et tu vas nous aider. Tu vas distribuer ces cubes.")

		ANSWER("D'accord. Dis-moi ce que je dois faire exactement.",54)
	NODE(54)
		SAY("Va � Neocron et donne-les � des gens. Tu as deux personnes � aller voir, et tu donneras le troisi�me � la personne que tu veux. Passe par les entr�es secr�tes de Neocron, et infiltre-toi dans Pepper Park. Attention aux CopBots, si on te surprend avec ces cubes, c'est la peine de mort imm�diate.")

		ANSWER("O� sont ces entr�es?",55)
	NODE(55)
		SAY("Il y en a une dans le m�me secteur que l'entr�e principale. Il y en a d'autres aussi. L'une d'elles m�ne � l'Outzone, et elle n'est pas gard�e. L'aytre m�ne � l'�glise de Crahn, et je ne pense pas qu'ils nous cr�ent des ennuis si on passe par l�. Mais fais attention, l'Outzone est un quartier dangereux.")

		ANSWER("Je vais aller voir �a.",56)
	NODE(56)
		GIVEITEM(9482)
		GIVEITEM(9482)
		GIVEITEM(9482)
--PROPAGANDACUBES
		SAY("Voil� les trois datacubes. Donnes-en un � Simmons, et un autre � Figaro. Les deux se trouvent � Pepper Park. Tu en donneras un troisi�me � un runner. Essaie de le convaincre. Prends n'importe qui. Et attention, reviens en un seul morceau.")
		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()
	

--------------------------------------------------------------------
-- SIMMONS
--100
	NODE(100)
		TAKEITEM(9482)
		if(result==0)then
			SAY("D�gage, je veux pas qu'on me voie parler � un Gardien du Cr�puscule.")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(101)
			SAY("Hein? Quoi? Qu'est-ce que t'as?")

			ANSWER("J'ai un datacube bourr� de preuves des crimes de Reza. Ca t'int�resse?",101)
		end
	NODE(101)
		SAY("Ouais, �videmment. J'ai beaucoup boss� pour vous, mais je tiens � ma vie. Mais je connais quelqu'un qui pourrait diffuser �a.")

		ANSWER("Ah oui? Qui �a?",102)
	NODE(102)
		SAY("Le type � qui je pense est un ancien employ� de CityAdmin qui en a ras la casquette du r�gime, et qui vendrait sa propre m�re pour ce genre de cause. Si tu veux, je vous arrange un rendez-vous.")

		ANSWER("Le genre de personne que je recherche. Mais attention, il faut qu'il soit s�rieux.",103)
	NODE(103)
		SAY("Ouais, mais seulement si c'est le genre de truc qui peut faire plonger Reza rapidement. Je transmettrai � ton QG le lieu de rendez-vous.")
		SETNEXTDIALOGSTATE(104)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
		
	NODE(104)
		SAY("Je pr�f�rerais qu'on nous voie pas ensemble. D�s que je j'aurai le lieu du rendez-vous, je te le ferai savoir.")
		ENDDIALOG()

--------------------------------------------------------------------
--FIGARO
--150
	NODE(150)
		TAKEITEM(9482)
		if(result==0)then
			SAY("J'ai toute une panoplie de belles drogues � vendre, mais la liste d'attente est pleine. Tu vas devoir repasser plus tard.")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(151)
			SAY("Tu viens voir ce que j'ai en stock?")

			ANSWER("Pas vraiment, j'ai un datacube avec ton nom dessus.",151)
		end
	NODE(151)
		SAY("Ah, enfin! Tu sais depuis combien de temps j'attends �a? Gr�ce � toi, on va enfin savoir toutes les saloperies commises par CityAdmin.")

		ANSWER("Ce que j'ai du mal � comprendre, c'est pourquoi tu as besoin qu'on t'explique tout �a, alors que tu es quand m�me dans une position privil�gi�e pour t'en rendre compte par toi-m�me.",152)
	NODE(152)
		SAY("Ouais, mais c'est pas totalement vrai. CityAdmin se d�brouille pas mal pour cacher toutes ses magouilles, il y a pas grand chose d'int�ressant qui sort. De temps en temps, on apprend quand m�me des trucs, mais c'est rare.")

		ANSWER("Du genre?",153)
	NODE(153)
		SAY("Du genre, les attaques du NCPD de temps en temps. Il y a pas longtemps, ils ont attaqu� quelques appartements, ils ont trouv� des Gardiens du Cr�puscule, ils les ont align�s contre le mur, et paf, une balle dans la t�te. Ils y vont pas de main morte.")

		ANSWER("Ils les ont ex�cut�s en pleine rue? Les pauvres gars...",154)
	NODE(154)
		SAY("Ca arrive tous les jours, les ex�cutions en pleine rue. Mais tire-toi avant qu'on nous voie ensemble, tra�ne pas trop dans le coin.")
		SETNEXTDIALOGSTATE(155)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
	NODE(155)
		SAY("Je t'ai dit qu'ils ont failli m'ex�cuter, une fois?")
		ENDDIALOG()


--------------------------------------------------------------------
-- DONNOVAN
--200
	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Transmets ces informations � Simmons, ils sont � Pepper Park.")
			ENDDIALOG()
		else
			ISMISSIONTARGETACCOMPLISHED(1)
			if(result==0)then
				SAY("Transmets ces informations � Figaro, ils sont � Pepper Park.")
				ENDDIALOG()
			else
				TAKEITEM(9482)
				if(result==0)then
					SETNEXTDIALOGSTATE(201)
					SAY("Tu as r�ussi? J'esp�re que tout s'est bien pass�. Je suis toujours content quand un runner revient au QG Apr�s une mission. Cette ville est corrompue, et moi-m�me je n'aime pas y rester longtemps. Le D�me, lui, est un nouvel espoir, l'espoir que m�me les plus grandes villes peuvent changer un jour..")

					ANSWER("J'ai donn� tous les cubes de propagande. Simmons semble vouloir nous assister davantage. Il voulait m�me organiser une rencontre secr�te avec un ancien CityAdmin qui veut renverser Reza.",201)
				else
					GIVEITEM(9482)
					SAY("Va parler � un runner de notre action, essaie de le convaincre. Ensuite, reviens ici.")
					ENDDIALOG()
				end
			end
		end
	NODE(201)
		SAY("Simmons? Tout ce qu'il lui faut, c'est un peu de courage, et il sera quelqu'un de tr�s bien. Quand est-ce que la rencontre aura lieu?")

		ANSWER("Il nous le fera savoir.",202)
	NODE(202)
		GIVEMONEY(10000)
		SAY("Excellent, Hagen sera fier de toi. Tiens, voil� ta r�compense. Ne gaspille pas tout, va t'entra�ner, tu en auras besoin. (prochaine mission au niveau 35)")
		EPICRUNFINISHED(15,2)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()


end