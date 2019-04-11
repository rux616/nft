--new
--Fallen Angel02
--
--Trigger
--Triggernumber,Type,Person
--0,D,Grimm (50)
--1,D,Constantine (100)
--2,D,Boujard (150)
--3,D, Constantine (200)
--
--Startnode, Person
--0, Personal Director 
--50, Grimm (Forschungstrakt) 
--100, Constantine (Forschungstrakt)
--150, Rick Boujard (El Farid Village)
--200, Constantine
--
--
--Items
----Chemikalienkonzentrat

function DIALOG()
--------------------------------------------------------------------
--Personal Director
--0

	NODE(0)
		SAY("Votre processus d'enregistrement est finalisé. Voici votre cube d'identification.")
		
		ANSWER("Mon cube d'identification? Ca sert à quoi?",1)
	NODE(1)
		SAY("Il contient toutes vos données personnelles, et confirme votre affiliation avec les Anges Déchus. Evidemment, il existe un double de ces données, au cas où. Mais j'ai quelque chose de plus important pour vous. Etant donné le résultat des analyses de vos données, le Conseil Scientifique a décidé de vous assigner à un projet de recherche indépendant.")
		
		ANSWER("Un projet de recherche pour moi? Merci, mais qu'est-ce que ça signifie? Qu'est-ce que je dois faire?",2)
		ANSWER("Je ne me sens pas encore de taille, je suis désolé.",5)
	NODE(2)
		SAY("Vous allez avoir un projet de recherche à mener à bien. Mais la liste de choix est limitée. Un assistant personnel pourra vous donner un coup de main de temps en temps.")
		
		ANSWER("Ca m'a l'air intéressant. Quand est-ce que je commence?",3)
	NODE(3)
		SAY("C'est Grimm qui détient les informations fournies par le Conseil Scientifique. Il est toujours dans le réacteur 1. Il vous dira qui sera votre assistant personnel. Bonne chance à vous. Vos résultats décideront de votre fonction future parmi nous.") 
		SETNEXTDIALOGSTATE(4)
		ACCEPTMISSION()
		ENDDIALOG()
		
	NODE(4)
		SAY("Grimm pourra vous fournir des informations. Vous le trouverez au niveau recherche du QG.")
		
		ENDDIALOG()
	NODE(5)
		SAY("Pas de problème, vous avez le droit de douter de vous.")
		
		ENDDIALOG()
--------------------------------------------------------------------
--Grimm
--50
	NODE(50)
		SAY("Encore vous? J'espère que vous avez une bonne raison de me déranger.")
		
		ANSWER("Plutôt, oui. C'est vous qui devez m'aider à lancer mon projet de recherche indépendant.",51)
	NODE(51)
		SAY("Ils vous ont donné un projet de recherche indépendant? Ca m'a mis trois ans avant d'en avoir un! Montrez-moi votre datacube, c'est tout simplement incroyable.")
		
		ANSWER("Je n'ai aucun doute, la décision vient du Conseil Scientifique.",52)
	NODE(52)
		SAY("C'est n'importe quoi, ça doit être une erreur! Je vais m'occuper personnellement de l'incapable qui a laissé passer une erreur pareille.")
		
		ANSWER("Bon écoutez, c'est un directeur du personnel qui m'a donné cette mission, et je ne vois pas pour quel motif vous m'empêcheriez de commencer tout de suite.",53)
	NODE(53)
		SAY("Je vois, vous voulez un projet, et vous allez en avoir un. Mais ne vous imaginez pas que je vais vous aider. Je vous donne Constantine comme assistant personnel. Faites au mieux. Même si honnêtement je pense que vous allez vous planter lamentablement.")
		
		ANSWER("Pensez ce que vous voulez, ça n'est égal.",54)
	NODE(54)
		SAY("Une erreur, une toute petite erreur, et la partie est terminée, vous avez compris?!")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(55)
		ENDDIALOG()
		
	NODE(55)
		SAY("Je vous ai à l'oeil, vous.")
		
		ENDDIALOG()
--------------------------------------------------------------------
--Constantine
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("On peut se parler plus tard? J'ai à faire.")
		else
			SAY("Ca fait longtemps que je vous ai vu, dites. On est dans le même département maintenant?")
		
			ANSWER("Oui, et j'ai un projet de recherche indépendant.",101)
		end
	NODE(101)
		SAY("Sérieusement? C'est rare de voir ce genre de projet attribué à un débutant. Vous avez vraiment dû les impressionner.")
		
		ANSWER("Pas de quoi monter au ciel non plus. J'espère juste que, maintenant que vous êtes devenu mon assistante technique, on va pouvoir faire du bon travail ensemble.",102)
	NODE(102)
		SAY("On va travailler ensemble sur le projet? Alors ça... Je dois admettre que je suis un peu jalouse. Euh... Grimm n'est pas au courant, j'espère?")
		
		ANSWER("Impossible de l'éviter, c'est lui qui vous a désigné comme mon assistante.",103)
	NODE(103)
		SAY("Ennuyeux. J'imagine qu'il doit être vert de jalousie. Je crois que je vais éviter de le croiser quelques temps.")
		
		ANSWER("Oui, et il n'a pas l'air de m'apprécier. Mais revenons à ce projet, plutôt.",104)
	NODE(104)
		SAY("Oui, faisons ça. Les projets autonomes viennent toujours d'un groupe de projets définis. C'est un type de projet à long terme, et il faut d'abord effectuer une recherche préparatoire. Vous avez déjà choisi votre projet?")
		
		ANSWER("Non, pas encore.",105)
	NODE(105)
		SAY("Alors il va falloir vous décider. Actuellement, il y a deux projets en cours. Un champ de protection radioactive, et un reséquenceur d'ADN pour rectifier les cellules mutantes.")
		
		ANSWER("Pas facile, les deux m'ont l'air très mystérieux... Ce serait peut-être plus facile si je savais à quoi ils serviront au final dans le grand projet de Tech Haven.",106)
	NODE(106)
		SAY("Je vous explique. Actuellement, et ça n'est plus un secret, nous travaillons sur une technologie de terraformation. Nous voulons faire revivre la planète bleue. Mais il s'écoulera plusieurs décennies avant que le projet voie le jour.")
		
		ANSWER("Je vais prendre le reséquenceur ADN.",107)
		ANSWER("Je vais prendre le champ de protection.",108)
	NODE(107)
		SAY("D'accord. De toute manière, le plus gros du travail sera à votre charge. Ca me fait penser qu'il existe un projet destiné à accélérer les processus de recherche. Si ça vous intéresse de mener deux projets de front.")
		
		ANSWER("Ca peut m'intéresser.",109)
	NODE(108)
		SAY("D'accord. De toute manière, le plus gros du travail sera à votre charge. Ca me fait penser qu'il existe un projet destiné à accélérer les processus de recherche. Si ça vous intéresse de mener deux projets de front.")
		
		ANSWER("Ca peut m'intéresser.",109)
	NODE(109)
		SAY("Nous possédons les plans d'un implant qui améliore grandement vos connaissances scientifiques en favorisant les raisonnements logiques. Avec un tel implant, n'importe quel travail de recherche devrait se transformer en une partie de plaisir.")
		
		ANSWER("Plutôt intéressant, oui. Mais j'imagine que c'est un peu plus compliqué qu'il n'y paraît?",110)
	NODE(110)
		SAY("En effet. La conception n'est pas encore finalisée, le projet a besoin de mise au point. Différents départements ont travaillé sur ce projet par le passé. Je pense que ça vaut le coup de s'y remettre.")
		
		ANSWER("Je vais suivre votre conseil, même si ça signifie que je vais devoir cumuler plusieurs recherches.",111)
	NODE(111)
		SAY("Merci. Si vous avez envie de commencer à travailler sur ce projet tout de suite, vous pouvez vous lancer. Un membre a commandé des produits chimiques à ProtoPharm dans le cadre de ce projet. Mais ça n'est pas une livraison officielle, beaucoup de factions de Neocron regardent les activités des Anges Déchus d'un oeil très méfiant. Malheureusement, notre collaborateur est malade, et il faut le remplacer. Vous pourriez peut-être aller chercher ces produits chimiques auprès de l'employé de ProtoPharm?") 
		
		ANSWER("Ahh, je vois que vous aviez une idée derrière la tête depuis le début, avec votre proposition. Mais peu importe, je vais m'en occuper.",112)
	NODE(112)
		SAY("Excellent. Votre contact s'appelle Rick Boujard, il se trouve dans le village El FArid. Il devrait tout avoir sur lui.")
		
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()

--------------------------------------------------------------------
--Rick Boujard
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("C'est une zone sécurisée, partez immédiatement.")
			ENDDIALOG()
		else
			SAY("Hé runner, restez pas là!")
		
			ANSWER("Je cherche un certain Boujard. C'est à propos d'une livraison.",151)
		end
	NODE(151)
		SAY("Fallait le dire tout de suite! Je vous attendais. On était censés se voir il y a trois heures.")
		
		ANSWER("Le collègue qui devait vous voir est tombé malade. Je viens le remplacer.",152)
	NODE(152)
		SAY("Vous pouvez me confirmer votre identité? D'accord, j'ai déjà reçu le paiement, mais ça n'est pas de la marchandise ordinaire.")
		
		ANSWER("Si je n'étais pas la bonne personne, comment est-ce que je serais au courant de l'existence de cette livraison?",153)
--Chemikalienkonzentrat
	NODE(153)
		GIVEITEM(9300)
		SETNEXTDIALOGSTATE(154)
		SAY("Pas faux. Tenez, voilà. J'espère que ça vous aidera à avancer votre projet.")
		
		ANSWER("Qu'est-ce que vous voulez dire?",154)
	NODE(154)
		SAY("Vous n'êtes pas un Ange Déchu. Alors laissez tomber, oubliez ce que je viens de dire.")
		
		ANSWER("Attendez, je sens une arnaque, là.",155)
	NODE(155)
		SAY("Non non, je n'ai rien contre les Anges Déchus. Vous avez vos produits chimiques, partez maintenant.")
		SETNEXTDIALOGSTATE(156)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
		
	NODE(156)
		SAY("Allez, fichez le camp! Je n'ai pas envie qu'on nous voie discuter...")
		
		ENDDIALOG()
--------------------------------------------------------------------
--Constantine
--200
	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Il faudrait aller voir Rick Boujard pour obtenir ces produits chimiques à El Farid village.")
			ENDDIALOG()
		else
			TAKEITEM(9300)
			if(result==0)then
				SAY("Vous avez les produits chimiques? C'est un certain Rick Boujard qui les possède, il est au village El Farid.")
				ENDDIALOG()
			else
				SAY("Content de vous revoir. J'espère que vous n'avez pas eu de problèmes en route. Alors, ces produits chimiques?")
			
				ANSWER("J'ai tout.",201)
			end
		end
	NODE(201)
		SAY("Le département sera ravi de cette nouvelle.")
		
		ANSWER("Pourquoi ça?",202)
	NODE(202)
		SAY("ProtoPharm est la seule compagnie qui sache fabriquer cette substance. Officiellement, ils ne voulaient pas nous en vendre. Je pense qu'eux aussi ont une mauvaise opinion de nous, comme toutes les factions de Neocron.")
		
		ANSWER("Au fait, Boujard m'a demandé si j'étais un Ange Déchu. Il n'avait pas l'air au courant.",203)
	NODE(203)
		SAY("Etrange... Mais maintenant c'est fait, ils ne peuvent pas reculer, nous avons les produits chimiques. Ne vous faites pas de mauvais sang à ce sujet. Le conseil scientifique a débloqué les premiers fonds pour votre recherche, 4.000 crédits. Ils ne peuvent pas vous donner plus pour l'instant, je suis navrée.")
		
		ANSWER("Pas grave, je ferai avec. Merci. On commence tout de suite?",204)
	NODE(204)
		GIVEMONEY(4000)
		SAY("J'aimerai bien, mais je ne peux pas encore. Il faut que je rassemble des données de différents départements pour qu'on puisse se lancer. Prenez un peu de repos en attendant. Travaillez un peu de votre côté, et n'oubliez pas de parler à notre directeur du personnel de temps en temps, je le tiendrai informé de ma progression. (prochaine mission au niveau 30)")
		EPICRUNFINISHED(14,1)
		ACTIVATEDIALOGTRIGGER(3)
		ENDDIALOG()

end