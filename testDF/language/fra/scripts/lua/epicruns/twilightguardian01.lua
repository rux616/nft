--new
--Twilight Guardian
--
--Trigger
--Triggernumber,Type,Person
--0,D,donnovan
--1,D,tovall
--2,D,donnovan
--3,D,tovall
--
--Startnode, Person
--0, Contact Person
--50, Donnovan
--100, TOVALL
--150, DONNOVAN
--200, TOVALL
--250,
--
--Items
--PAKET FÜR JADE (100)
--Powerbooze 804
--wINE 806
function DIALOG()
--------------------------------------------------------------------
--Contact Person
--0
	
	NODE(0)
		SAY("Bienvenue chez les Gardiens du Crépuscule. Tu n'es pas le seul à condamner les mensonges de la dictature de Neocron. Comme tu viens d'arriver, j'imagine que tu ne fais pas encore partie d'une cellule d'action?")

		ANSWER("En effet, j'arrive juste. Et je viens rendre à Reza la monnaie de sa pièce.",1)
	NODE(1)
		SAY("Excellent. On a besoin de gens comme toi. Donnovan va te donner tes directives. C'est un grand combattant, il a participé à de nombreux affrontements.")

		ANSWER("Parfait, je vais lui parler tout de suite.",2)
	NODE(2)
		SAY("Tu ne pourras pas le manquer, il garde l'entrée du QG.")

		STARTMISSION()
		SETNEXTDIALOGSTATE(3)
		ENDDIALOG()
	NODE(3)
		SAY("Alors? Tu as déjà oublié? Donnovan t'attend à l'entrée du QG.")
		ENDDIALOG()

--------------------------------------------------------------------
--donnovan
--50
	NODE(50)
		SAY("Une nouvelle tête! J'aime ça! Plus nous sommes, plus vite nous allons réussir, et nous allons renverser l'infâme dictateur! Tu sais pourquoi on fait tout ça?")

		ANSWER("Parce que Reza a eu beaucoup plus de temps que nécessaire pour prouver au monde qu'il valait pas un clou?",51)
	NODE(51)
		SAY("On peut el dire comme ça. Mais c'est aussi parce qu'il se croit au-dessus du peuple, et parce qu'il nous a trahis! On le fait parce que les CopBots exécutent des innocents à tous les coins de rue. Reza est un dictateur, il ne travaille que pour lui seul. La vérité, c'est que Neocron n'est pas une ville sûre. Elle n'est qu'oppression, partout. Nous sommes les seuls qui puissions le combattre, au nom de tous les habitants de Neocron.")

		ANSWER("Nous allons redonner Neocron à ses habitants, alors?",52)
	NODE(52)
		SAY("Hagen Yager A des plans. Une fois que le gouvernement de Reza sera détruit, il sentira son peuple se soulever. Car il n'écoute plus personne depuis le début, et cette fois, il ne pourra plus se boucher les oreilles.")

		ANSWER("On n'a pas le droit de le laisser continuer.",53)
	NODE(53)
		SAY("Exactement. Et c'est pour cela que nous devons persister, jour après jour. C'est notre destin de libérer Neocron des griffes de Reza. Nous allons suivre nos règles, comme toujours. Tovall est un de nos membres, et lui, il a enfreint une règle importante, justement. Il faut que je lui parle. Va lui dire que je dois lui parler, et que c'est urgent.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()

--------------------------------------------------------------------
--TOVALL
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Désolé, je reçois personne. J'ai pas le temps.")
			ENDDIALOG()
		else
			SAY("Tiens tiens, une nouvelle tête. Enfin, j'imagine... Sinon je t'aurais déjà reconnu.")
	
			ANSWER("Je viens de commencer. C'est Donnovan qui m'envoie.",101)
		end
	NODE(101)
		SAY("Qu'est-ce qu'il me veut, le croulant? Il passe son temps à chercher des poux à tout le monde.")

		ANSWER("Il veut te parler. Apparemment, tu as enfreint une règle.",102)
	NODE(102)
		SAY("Et il veut que j'aille le voir? J'ai l'impression que tu te fiches de moi. Je te fais pas confiance!")

		ANSWER("Allez, on est alliés, quoi! Ca te suffit pas d'avoir Reza comme ennemi, il faut en plus que tu sois parano?",103)
	NODE(103)
		SAY("Mais à quoi ça servira de lui parler? Je sais que j'ai fait une connerie, pas la peine de revenir dessus cent fois.")

		ANSWER("J'essaie seulement de t'aider, mais franchement, je me demande pourquoi je fais ça. Ce sont les types dans ton genre qui nous empêchent de réussir.",104)
		ANSWER("Ecoute, je veux pas te critiquer, mais tu me facilites pas les choses.",106)
	NODE(104)
		SAY("Tu peux répéter ça?")

		ANSWER("J'ai dit que tu étais un sale con et que tu faisais chier tout le monde!",105)
		ANSWER("Rien, laisse tomber.",106)
	NODE(105)
		SAY("T'oses me parler comme ça?")

		ATTACK()
		ENDDIALOG()
	NODE(106)
		GIVEITEM(804)
		SETNEXTDIALOGSTATE(107)
--EIN BOOZE
		SAY("Oui je sais, mais qu'est-ce que tu veux, je suis un têtu. T'as raison, je vais me calmer, ça sert à rien de se taper dessus. Prends une bière.")

		ANSWER("Pas de problème, je sais ce que c'est quand on est sur les nerfs.",107)
	NODE(107)
		GIVEITEM(9480)
--PAKET FÜR JADE		

		SAY("Bon, je vais aller voir Donnovan. Préviens-le que j'arrive. Et tiens, pendant que tu es là, tu pourras donner ça à Jade? Donnovan comprendra. Merci.")
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()


	
--------------------------------------------------------------------
--DONNOVAN
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Va d'abord parler à Tovall. Ensuite on verra.")
			ENDDIALOG()

		else
			SAY("Alors, t'as parlé à cette tête de drom?")

			ANSWER("Oui, il va venir discuter.",151)
		end
	NODE(151)
		SAY("Excellent. Il a dit autre chose?")

		ANSWER("Il m'a donné un paquet pour Jade. Mais je sais pas du tout ce que c'est.",152)
	NODE(152)
		SAY("Jade? C'est pas bon signe. Le dernier message de sa part signalait un regain d'activité du NCPD. Elle disait qu'elle ne savait pas combien de temps elle pourrait rester incognito. On a reçu son dernier message il y a une semaine.")

		ANSWER("Une semaine? Il a pu se passer beaucoup de choses depuis.",153)
	NODE(153)
		GIVEITEM(806)
		SETNEXTDIALOGSTATE(154) 
		SAY("Nous devons faire face à la mort sans trembler, on a tout à gagner, rien à perdre. Même si certains meurent, nous devons continuer en leur nom. C'est un honneur que de mourir pour une cause qu'on défend. Tiens, va donner cette bouteille de vin à Tovall, il comprendra ce qui est arrivé.")

		ANSWER("Et ensuite, qu'est-ce que je dois faire?",154)
	NODE(154)
		SAY("D'abord, entraîne-toi, encore et encore. Ensuite, tu reviendras ici, et tu parleras à un des responsables pour une nouvelle mission.")
		ACTIVATEDIALOGTRIGGER(2)
		SETNEXTDIALOGSTATE(155)
		ENDDIALOG()
	NODE(155)
		SAY("Va donner cette bouteille à Tovall. Ensuite, retourne t'entraîner.")
		ENDDIALOG()



--------------------------------------------------------------------
--TOVALL
--200
	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("T'inquiète pas, je vais pas tarder à aller voir Donovan.")
			ENDDIALOG()
		else
			TAKEITEM(9480)
			if(result==0)then
				SAY("Si tu veux pas lui donner ce que je t'ai passé, au moins rends-le moi.")
				ENDDIALOG()
			else
				SETNEXTDIALOGSTATE(201)
				SAY("Tu me ramènes une bouteille de vin en plus... Ouais, ouais.")

				ANSWER("Apparemment, tu sais ce que ça veut dire.",201)
			end
		end
	NODE(201)
		GIVEMONEY(5000)
		SAY("Ouais... Mais Donovan se trompe. Elle est forte, elle se fera pas avoir comme ça. Bon, je vais siroter mon vin et réfléchir à tout ça. A la prochaine. (prochaine mission au niveau 20)")
		EPICRUNFINISHED(15,0)
		ACTIVATEDIALOGTRIGGER(3)
		ENDDIALOG()


end