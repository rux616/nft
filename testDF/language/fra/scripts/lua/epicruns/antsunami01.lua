--new
--Antiregierungsfraktionen

--
--Trigger
--Triggernumber,Type,Person
--0,D,Gehenna 50
--1,kill,Agent Hamil 100
--2,D,Matt 200
--3,D,Gehenna 250
--
--Startnode, Person
--0, Aufgabenverteiler
--50, Gehenna 1678
--100, Agent Hamil 1679
--150, Gehenna
--200, MATT TRONSTETT 1626
--250, Gehenna
--300, Kev Critter 1611
--Items
--DATACUBE MIT SECRET INFOS 100 9430
--DATACUBE MIT MATTS INFOS 200 9431
function DIALOG()
--------------------------------------------------------------------
--Aufgabenverteiler
--0
	
	NODE(0)
		SAY("Tu as probablement remarqué l'alliance imminente avec le Dôme de York, j'imagine ? A cet emplacement, on peut trouver un avant-poste à moitié dissimulé. J'y suis déjà allé, alors je te raconte pas d'histoires, c'est pas mon genre.")

		ANSWER("Je ne comprends pas ce que tu veux dire. Qu'est-ce que cet endroit a de si spécial ?",1)
	NODE(1)
		SAY("Ils sont en train de préparer quelque chose, et je sens que c'est pas un pique-nique. Si j'avais un peu plus de tripes, je serais allé les rejoindre. Ils recherchent des runners dans ton genre, et ils les paient bien. Malheureusement, notre faction n'a pas de missions à te proposer. Pour l'instant, du moins.")

		ANSWER("J'imagine qu'ils ne vont pas me payer pour ne rien faire. Alors, quelle est l'astuce ?",2)
	NODE(2)
		SAY("Leurs missions ne m'ont pas l'air simples. Tuer des runners, faire de l'espionnage, des choses de ce genre. Moi, ça ne me dit rien. Mais si tu te sens à la hauteur...")

		ANSWER("Je comprends. Je vais peut-être aller y faire un tour. Tu peux me donner l'emplacement exact ?",3)
	NODE(3)
		SAY("Si tu sais où regarder, c'est pas très difficile de trouver. Mais fais attention, l'endroit est bien gardé. Va voir du côté du secteur J 08.")
		
		SETNEXTDIALOGSTATE(4)
		STARTMISSION()
		ENDDIALOG()
	NODE(4)
		SAY("Souviens-toi : le secteur J 08 !")

		ENDDIALOG()
	
--------------------------------------------------------------------
-- Gehenna
--50
	NODE(50)
		SAY("Halte ! N'avancez plus !")

		ANSWER("On m'a parlé d'un avant-poste secret du Dôme de York, et j'ai envie de tirer parti de cette information.",51)
	NODE(51)
		SAY("C'est exact. Tu viens pour une mission ?")

		ANSWER("Ca dépend. D'abord, je veux savoir ce que vous voulez faire avec toutes ces missions. Vous devez bien avoir un but derrière tout ça, j'imagine ?",52)
	NODE(52)
		SAY("Les runners opportunistes comme toi ne travaillent que quand ça leur rapporte. Mais je te rassure, le Dôme de York a eu la sagesse de mettre en place plusieurs stratégies pour combattre Neocron. Notre but est de mettre à mal notre ennemi de toujours, de détruire un à un les organes du monstre, pour qu'il soit incapable à terme de mener des actions coordonnées. Et toi, tu vas avoir beaucoup d'argent à gagner dans l'opération.")

		ANSWER("Ca me plaît. Et je t'assure que j'ai autant que toi l'envie de voir Neocron réduite en tas de gravats.",53)
	NODE(53)
		SAY("Alors marché conclu. On a des missions pour les runners motivés, mais je te préviens que ça sera pas facile. Réfléchis bien, c'est une grosse faveur que tu t'apprêtes à faire au Dôme de York, et on ne laisse pas tomber nos alliés.")

		ANSWER("J'y pense : j'ai remarqué qu'il y avait un général ici. Il n'a rien de mieux à faire que de rester planté là ?",54)
	NODE(54)
		SAY("Imbécile ! Si ce général est présent, c'est que cette opération est très importante. Si tu as de la chance, le général te donnera même une mission en personne. C'est un grand homme, c'est lui qui porte le poids des décisions importantes.")

		ANSWER("Intéressant. Mais pourquoi ne pas faire entrer les runners au Dôme de York ?",55)
	NODE(55)
		SAY("Ca n'est pas ton problème. Je sais que c'est mieux là-dedans qu'ici dans les Terres Brûlées, mais on ne répétera pas les erreurs de 2578.")

		ANSWER("Bien. Tu as réussi à me convaincre.",56)
	NODE(56)
		SAY("On a découvert la véritable identité d'un des espions de Reza. malheureusement, il a réussi à s'échapper dans les marais, et on a perdu sa trace. Les différentes sorties des marais sont sous haute surveillance, ce qui veut dire qu'il n'a aucune issue possible. Evidemment, on veut sa mort.")

		ANSWER("Et comment est-ce que je pourrais le reconnaître ? Il n'y a pas beaucoup de gens dans les marais, mais tout de même assez pour que je fasse une erreur.",57)
	NODE(57)
		SAY("Contente-toi de lui parler. Je suis certain qu'il tentera de t'expliquer que Neocron est une ville formidable. De toute manière, tous leurs espions ont eu le crâne bourré de ces salades jusqu'à saturation, ils ne savent rien dire d'autre. Il devrait se trouver quelque part dans le secteur F 02.")
		SETNEXTDIALOGSTATE(150)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()


--------------------------------------------------------------------
--Agent Hamil
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Vous ne m'attraperez jamais !")
			ATTACK()
			ENDDIALOG()
		else
			SAY("Ah, enfin je croise quelqu'un. Vous n'auriez pas quelque chose à manger ?")

			ANSWER("Qui êtes-vous ?",101)
		end
	NODE(101)
		
		SAY("Un fidèle citoyen de Neocron, et je... je ne suis perdu dans ce marais. Et vous, vous venez pour me tuer, c'est bien ça ?")

		ANSWER("Pourquoi, vous avez une raison de craindre pour votre vie ?",102)
	NODE(102)
		SAY("Depuis tout ce temps que je suis perdu dans les marais, j'ai eu la possibilité de réfléchir. Je ne vois aucune solution. Les drones surveillent le marais, je n'ai aucune possibilité de sortir. Je commence à manquer de nourriture, et mes implants commencent à se décharger.")

		ANSWER("Alors comme ça, vous êtes un espion de Neocron, et vous vous êtes enfui dans les marais ? C'est complètement stupide.",103)
	NODE(103)
		GIVEITEM(9430)
--DATACUBE MIT SECRET INFOS
		SAY("Vous verrez, Neocron viendra à bout de vos forces. Vous verrez... Bon, maintenant que ma vie est entre vos mains, je vais vous demander une dernière faveur. Prenez ce DataCube, il contient toutes les informations que j'ai pu récolter. Portez ça à Kev Critter, à la décharge de Blakkmist, et vous toucherez une récompense. Il n'est pas encore trop tard, vous avez encore la possibilité de passer du bon côté, vous savez.")
		SETNEXTDIALOGSTATE(104)
		ENDDIALOG()
	NODE(104)
		SAY("J'ai failli marcher. Mais je sais pourquoi vous êtes là. Et vous allez mourir.")
		ATTACK()
		ENDDIALOG()
--------------------------------------------------------------------
--GEHENNA
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Il faut d'abord que tu trouves l'espion dans le secteur F 02 et que tu le descendes.")
			ENDDIALOG()
		else
			SAY("Beau travail, runner. Cet espion ne nous causera plus de tort. Il s'était infiltré dans notre dôme, et il a accompli plusieurs meurtres avant d'être découvert. Mais a présent, il est hors d'état de nuire.")

			ANSWER("Bien. Maintenant, ma récompense.",152)
			ANSWER("Oui, c'était vraiment un moins que rien. Juste avant que je l'exécute, il m'a même donné les informations qu'il avait réunies.",151)
		end
	NODE(151)
		TAKEITEM(9430)
--AGENTENCUBE
		if(result==0)then
			SAY("Tu n'as même pas ces données sur toi.")
			ENDDIALOG()		
		else
			SAY("Excellent, je vais même te donner une prime pour ça. Encore une preuve que les gens de Neocron ne sont que des attardés mentaux. Mais passons maintenant à une autre mission.")

			ANSWER("En quoi est-ce qu'elle consiste ?",154)
		end
	NODE(152)
		SAY("Les nombreuses factions qui peuplent Neocron et les Terres Brûlées sont source de chaos. Et le chaos, runner, c'est notre meilleur allié. Tsunami, le Dragon Noir, les Gardiens du Crépuscule, Crahn, et même les Anges Déchus, font partie de ceux qui ont su voir clair dans les mensonges perfides de Neocron. Mais il existe de nombreuses personnes qui n'ont pas encore choisi leur camp, et qui changent de faction comme d'autres changent d'implants.")

		ANSWER("On trouvera toujours des gens pour retourner leur veste, quoi qu'on fasse. Alors où est-ce que tu veux en venir ?",153)
	NODE(153)
		SAY("Je pense à un scientifique très qualifié qui vit exilé à Point Red. Visiblement, il en a eu marre des intrigues de Neocron. C'est pour nous la chance d'obtenir des informations sur leur technologie. Tu peux utiliser tous les moyens à ta disposition pour réussir cette mission. Il s'appelle Matt Tronstett.")

		SETNEXTDIALOGSTATE(250)
		ENDDIALOG()
	NODE(154)
		SAY("Les nombreuses factions qui peuplent Neocron et les Terres Brûlées sont source de chaos. Et le chaos, runner, c'est notre meilleur allié. Tsunami, le Dragon Noir, les Gardiens du Crépuscule, Crahn, et même les Anges Déchus, font partie de ceux qui ont su voir clair dans les mensonges perfides de Neocron. Mais il existe de nombreuses personnes qui n'ont pas encore choisi leur camp, et qui changent de faction comme d'autres changent d'implants.")

		ANSWER("On trouvera toujours des gens pour retourner leur veste, quoi qu'on fasse. Alors où est-ce que tu veux en venir ?",155)
	NODE(155)
		SAY("Je pense à un scientifique très qualifié qui vit exilé à Point Red. Visiblement, il en a eu marre des intrigues de Neocron. C'est pour nous la chance d'obtenir des informations sur leur technologie. Tu peux utiliser tous les moyens à ta disposition pour réussir cette mission. Il s'appelle Matt Tronstett.")

		SETNEXTDIALOGSTATE(251)
		ENDDIALOG()


--------------------------------------------------------------------
-- MATT TRONSTETT
--200
	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Je n'achète rien aux clochards.")
			ENDDIALOG()
		else
			SAY("Pourquoi est-il impossible de renverser la gravité, voire de l'annuler temporairement ? Je travaille sur le problème depuis un certain temps maintenant, mais je ne vois aucune solution.")

			ANSWER("C'est un piège, cette question ? Vous êtes bien Matt Tronstett, scientifique de Neocron ?",201)
		end
	NODE(201)
		SAY("Oui, mais je n'ai plus aucun lien avec Neocron. Tout ce qu'ils recherchent, c'est le pouvoir et les armes. Pourquoi est-ce que personne n'a encore essayé de rendre les Terres Brûlées habitables ? Ou peut-être que j'aurais dû dès le départ travailler pour les Anges Déchus, j'aurais perdu moins de temps.")

		ANSWER("Maintenant que vous n'êtes plus scientifique à Neocron, vous pouvez certainement me parler des toutes dernières technologies qu'ils dont développées, n'est-ce pas ?",202)
	NODE(202)
		SAY("D'accord, je vois clair dans votre petit jeu maintenant. Mais j'ai bien peur de devoir vous décevoir : si je vous disais ce que je sais, j'aurais des chasseurs de primes à mes trousses d'un instant à l'autre. A moins que vous ayez des informations sur la technologie du dôme de York.")

		ANSWER("Je peux certainement réunir des fonds. Est-ce que ça faciliterait les négociations ?",203)
		ANSWER("J'ai des informations secrètes au sujet du Dôme de York. Elles m'ont été données par un espion travaillant pour Neocron. Peut-être un échange vous intéresse-t-il ?",204)
		ANSWER("Si vous ne me donnez pas ce que je veux, la mort va venir encore plus rapidement que vous le pensez.",205)
	NODE(203)
		SAY("Oui, c'est une option possible. Mais croyez-moi, vous ne réussirez pas à réunir l'argent que valent ces information.")
		SETNEXTDIALOGSTATE(204)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
	NODE(204)
		TAKEITEM(9430)
--AGENTEN DATA
		if(result==0)then
			SAY("Allez me chercher des informations sur le Dôme de York, c'est la seule manière dont nous puissions collaborer. Sinon, expliquez ça à la personne qui vous envoie.")
			ENDDIALOG()
		else
			GIVEITEM(9431)
--MATT INFORMATION CUBE
			SAY("Etant données les circonstances, un échange de données me convient. Allez, donnez-moi les informations que vous avez.")
			ACTIVATEDIALOGTRIGGER(2)
			SETNEXTDIALOGSTATE(206)
			ENDDIALOG()
		end
	NODE(205)
		SAY("Vous n'irez nulle part avec vos menaces. Et vous n'avez pas l'air de pouvoir tuer quelqu'un de sang froid.")
		SETNEXTDIALOGSTATE(204)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
	NODE(206)
		SAY("On avait conclu un accord. Je ne peux rien vous donner de plus. Vous devriez revoir la personne qui vous a donné cette mission.")

		ENDDIALOG()
	NODE(207)
		SAY("Je n'ai rien d'autre à vous dire.")

		ENDDIALOG()
--------------------------------------------------------------------
-- GEHENNA
--250

	NODE(250)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Tu trouveras Matt Tronstett à Point Red. Prends ce que tu peux, et reviens me donner ce que tu as trouvé.")
			ENDDIALOG()
		else
			TAKEITEM(9431)
--MATT INFO DATA
			if(result==0)then
				GIVEMONEY(5000)
				SAY("Ces informations auraient été très importantes pour nous, et malheureusement je ne peux pas te donner plus. Mais j'espère que ça te va tout de même. On aura une autre mission pour toi lorsque les choses se seront un peu tassées. (prochaine mission au niveau 30)")
				EPICRUNFINISHED(8,0)
				ACTIVATEDIALOGTRIGGER(3)
				ENDDIALOG()
			else
				GIVEMONEY(13000)
				SAY("Merci, beau travail. Ces éléments techniques vont bien nous aider. On aura une autre mission pour toi lorsque les choses se seront un peu tassées. (prochaine mission au niveau 30)")
				EPICRUNFINISHED(8,0)
				ACTIVATEDIALOGTRIGGER(3)
				ENDDIALOG()
			end
		end
	NODE(251)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Matt Tronstett se trouve à Point Red. Va chercher ce que tu peux, et reviens avec le résultat de ton enquête.")
			ENDDIALOG()
		else
			GIVEMONEY(10000)
			SAY("Ces informations auraient été très importantes pour nous, et malheureusement je ne peux pas te donner plus. Mais j'espère que ça te va tout de même. On aura une autre mission pour toi lorsque les choses se seront un peu tassées. (prochaine mission au niveau 30)")
			EPICRUNFINISHED(8,0)
			ACTIVATEDIALOGTRIGGER(3)
			ENDDIALOG()
		end
--------------------------------------------------------------------
-- KEV CRITTER
--300

	NODE(300)
		TAKEITEM(9430)
--AGENTEN DATACUBE
		if(result==0)then
			SAY("Désolé, la décharge est fermée.")
			ENDDIALOG()
		else
			SAY("Oui ? Besoin de quelque chose dans la décharge ?")
	
			ANSWER("Peut-être. J'ai des informations ici, en provenance d'un certain Hamil.",301)
		end
	NODE(301)
		SAY("Vendu ! Comment il va, le vieux bougre ?")
	
		ANSWER("Pour faire simple, je dirais que c'est là sa dernière livraison.",302)
	NODE(302)
		SAY("Quel dommage. Mais vous, ça vous intéresserait pas de reprendre le flambeau, dites ?")
	
		ANSWER("Pas question. Tout ce que je veux, c'est le fric.",303)
	NODE(303)
		GIVEMONEY(1000)
		SAY("Bon, bon. Tenez, voilà l'argent.")
		ENDDIALOG()
	




end
