--new
function DIALOG()

--Trigger
--Triggernumber,Type,Person
--(0),kill Warbot, Elias
--
--1,D,CityAdmin
--2,D,Mason



--Startnode, Person
--0 Human Resource
--50 Elias
--100 CityAdmin
--150 Mason

-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("Ravi de vous revoir. Mason m'a demandé de vous parler de ses plans au sujet de ces actions incroyables de ProtoPharm. Il semble que tout le monde soit au courant maintenant. Mais il y a un moyen de revenir à la normale.")
		
		ANSWER("Intéressant. Est-ce que ça marchera, au moins?",1)
	NODE(1)
		SAY("Malheureusement, je ne connais pas tous les détails du plan. Je sais qu'un contact des Anges Déchus va nous donner un coup de main. Un certain Elias.")
		
		ANSWER("Elias? Oui, je le connais, mais il est un peu spécial. Mais on il aura certainement des choses intéressantes à m'apprendre.",2)
	NODE(2)
		SAY("Le plan va commencer bientôt, et on a besoin de vous et d'Elias. Je en sais pas pourquoi au juste. Bonne chance, on compte sur vous. Après tout, je n'ai pas envie de voir nos bureaux déplacés dans les Terres Brûlées...")
		ACCEPTMISSION()
		SETNEXTDIALOGSTATE(3)
		ENDDIALOG()
		
	NODE(3)
		SAY("Vous ne deviez pas aller voir Elias à Tech Haven? Une fois que vous avez terminé, retournez faire votre rapport à Mason.")
		ENDDIALOG()

-----------------------------------------------------
--Elias

	NODE(50)
		SAY("J'ai entendu parler de ce que vous aviez fait pour NEXT récemment. Impressionnant. La progression de ProtoPharm au cours de ces dernières semaines doit être éliminée. J'espère qu'on vous a déjà dit ce qui allait se passer?")
		
		ANSWER("Non, on ne m'a rien dit du tout. Je ne connais aucun détail du plan.",51)
	NODE(51)
		SAY("Très bien. C'est Violet Derix qui m'a mise au courant de ce qui allait se passer. Mais je vais vous le répéter seulement parce que c'est Violet qui a voulu que vous participiez à l'opération. On va pirater le réseau de Neocron pour créer un message d'erreur. C'est ce message d'erreur qui va nous sauver.")
		
		ANSWER("CONTINUER",52)
	NODE(52)
		SAY("Violet et moi-même avons développé un virus dont la cible est l'ensemble des transactions financières de ces dernières semaines. Ainsi, on pourra affecter toutes les données de ce type présentes sur le réseau entier.")
		
		ANSWER("CONTINUER",53)
	NODE(53)
		SAY("C'est la manière la plus rapide et la plus sûre de procéder. Ainsi, la progression de ProtoPharm dans les actions de NEXT sera remise à zéro, et NEXT sera au courant de toutes les opérations effectuées par son adversaire. Et NEXT pourra réagir comme il le faut face à la menace. Vous comprenez ce que je viens de vous expliquer?")
		
		ANSWER("Euh... Et le but de tout ça?",54)
	NODE(54)
		SAY("Le but de tout ça, comme vous dites, c'est de ramener les données en arrière de quelques semaines. A une époque où tout était normal.")
		
		ANSWER("D'accord, j'ai bien compris. Qu'est-ce qu'on attend, alors?",55)
	NODE(55)
		SAY("Je vais m'y mettre tout de suite. Un moment... Non, c'est impossible... Encore ce Warbot! Ce truc s'amuse à couper régulièrement notre liaison avec le réseau de la ville. S'il continue à s'amuser comme ça, il y a des chances que je sois coupé lorsque je suis en train de pirater le réseau, alors autant laisser tomber. CA relèverait du jeu de hasard, et je ne veux pas risquer ma peau avec ça.")
		
		ANSWER("Et si on désactivait le Warbot?",56)
	NODE(56)
		SAY("Vous voulez vraiment faire ça?")
		
		ANSWER("Oui, je vais m'en charger si ça peut vous aider.",57)
	NODE(57)
		SAY("Evidemment, ça serait la meilleure solution. Le Warbot est probablement à une des entrées de la ville. Dès qu'il sera désactivé, je lancerai l'opération. Amusez-vous bien, et bonne chance!")
		
		ANSWER("CONTINUER",58)
	NODE(58)
		SAY("J'oubliais! Une fois que vous avez terminé, vous pourriez me faire une faveur en demandant à quelqu'un de CityAdmin si ça a bien fonctionné? Je me rappelle pas son nom, mais vous devriez le trouver dans le QG de CityAdmin. Et apparemment, M. Mason veut vous parler une fois que vous avez terminé la mission.")
		SETNEXTDIALOGSTATE(59)
		ENDDIALOG()
		
--Spieler killt Warbot Trigger 0

	NODE(59)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Impossible de me connecter tant que le Warbot n'est pas désactivé.")
			ENDDIALOG()
		else
			SAY("Bien, jusqu'ici tout est en ordre. Pensez à aller visiter le type de CityAdmin dont je vous ai parlé, pour vérifier si on a réussi l'opération ou pas.")
			ENDDIALOG()
			
		end


-----------------------------------------------------
--CityAdmin


	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("J'ai beaucoup de travail actuellement. Repassez plus tard.")
			ENDDIALOG()
		else
			SAY("Bonjour citoyen. En quoi puis-je vous aider?")
		
			ANSWER("Je voulais vous demander combien de gens ont cédé à leurs données bancaires hier... C'est pour une vérification statistique.",101)
		end
	NODE(101)
		SAY("Pas de problème. Avec notre système électronique, ça sera très rapide. Mais qu'est-ce que... C'est étrange, je n'ai pas accès aux données d'hier. Il s'est passé quelque chose d'anormal... Et je n'ai pas non plus les données d'avant-hier...")
		
		ANSWER("C'est tout ce que je voulais savoir... Au revoir.",102)
	NODE(102)
		SAY("Attendez... Je vois des données manquantes partout!")
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(103)
		ENDDIALOG()
		
	NODE(103)
		SAY("Je n'ai pas le temps! Quelqu'un s'est attaqué au réseau! Plein de données ont disparu!")
		ENDDIALOG()
		

-----------------------------------------------------
--Mason

	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Je peux pas vous aider, je m'occupe de ces vautours de ProtoPharm...")
			ENDDIALOG()
		else
			SAY("Et voilà, encore une fois c'est vous qui avez sauvé la mise. Comment vous vous sentez? Violet m'a demandé de vous transmettre ses remerciements. Et pas seulement parce que vous lui avez sauvé la vie, si vous voulez savoir. Même Diggers vous transmet ses remerciements. Mais nos existences vont bientôt reprendre un train normal. Et bientôt, on oubliera tout ce que vous avez fait...")
		
			ANSWER("CONTINUER",151)
		end
	NODE(151)
		SAY("Alors un conseil : profitez autant que vous le pouvez. NEXT vous a préparé un cadeau en remerciement. Comme vous n'avez pas pu procéder à la séance de tests, NEXT vous remet confie ce véhicule expérimental. C'est pour vous. Gratuitement.")
		
		ANSWER("CONTINUER",152)
	NODE(152)
		GIVEITEM(9104)
		SAY("Je pense que la situation va s'apaiser maintenant. Si vous voulez continuer à aider NEXT, je vous souhaite d'ouvrir votre propre clan. On n'aura pas d'autres missions spéciales pour vous à l'avenir, étant donné que la situation s'est apaisée. Mais j'ai eu grand plaisir à travailler avec vous, sachez-le.")
		EPICRUNFINISHED(3,5)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
		

end