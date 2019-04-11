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
		SAY("Votre processus d'enregistrement est finalis�. Voici votre cube d'identification.")
		
		ANSWER("Mon cube d'identification? Ca sert � quoi?",1)
	NODE(1)
		SAY("Il contient toutes vos donn�es personnelles, et confirme votre affiliation avec les Anges D�chus. Evidemment, il existe un double de ces donn�es, au cas o�. Mais j'ai quelque chose de plus important pour vous. Etant donn� le r�sultat des analyses de vos donn�es, le Conseil Scientifique a d�cid� de vous assigner � un projet de recherche ind�pendant.")
		
		ANSWER("Un projet de recherche pour moi? Merci, mais qu'est-ce que �a signifie? Qu'est-ce que je dois faire?",2)
		ANSWER("Je ne me sens pas encore de taille, je suis d�sol�.",5)
	NODE(2)
		SAY("Vous allez avoir un projet de recherche � mener � bien. Mais la liste de choix est limit�e. Un assistant personnel pourra vous donner un coup de main de temps en temps.")
		
		ANSWER("Ca m'a l'air int�ressant. Quand est-ce que je commence?",3)
	NODE(3)
		SAY("C'est Grimm qui d�tient les informations fournies par le Conseil Scientifique. Il est toujours dans le r�acteur 1. Il vous dira qui sera votre assistant personnel. Bonne chance � vous. Vos r�sultats d�cideront de votre fonction future parmi nous.") 
		SETNEXTDIALOGSTATE(4)
		ACCEPTMISSION()
		ENDDIALOG()
		
	NODE(4)
		SAY("Grimm pourra vous fournir des informations. Vous le trouverez au niveau recherche du QG.")
		
		ENDDIALOG()
	NODE(5)
		SAY("Pas de probl�me, vous avez le droit de douter de vous.")
		
		ENDDIALOG()
--------------------------------------------------------------------
--Grimm
--50
	NODE(50)
		SAY("Encore vous? J'esp�re que vous avez une bonne raison de me d�ranger.")
		
		ANSWER("Plut�t, oui. C'est vous qui devez m'aider � lancer mon projet de recherche ind�pendant.",51)
	NODE(51)
		SAY("Ils vous ont donn� un projet de recherche ind�pendant? Ca m'a mis trois ans avant d'en avoir un! Montrez-moi votre datacube, c'est tout simplement incroyable.")
		
		ANSWER("Je n'ai aucun doute, la d�cision vient du Conseil Scientifique.",52)
	NODE(52)
		SAY("C'est n'importe quoi, �a doit �tre une erreur! Je vais m'occuper personnellement de l'incapable qui a laiss� passer une erreur pareille.")
		
		ANSWER("Bon �coutez, c'est un directeur du personnel qui m'a donn� cette mission, et je ne vois pas pour quel motif vous m'emp�cheriez de commencer tout de suite.",53)
	NODE(53)
		SAY("Je vois, vous voulez un projet, et vous allez en avoir un. Mais ne vous imaginez pas que je vais vous aider. Je vous donne Constantine comme assistant personnel. Faites au mieux. M�me si honn�tement je pense que vous allez vous planter lamentablement.")
		
		ANSWER("Pensez ce que vous voulez, �a n'est �gal.",54)
	NODE(54)
		SAY("Une erreur, une toute petite erreur, et la partie est termin�e, vous avez compris?!")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(55)
		ENDDIALOG()
		
	NODE(55)
		SAY("Je vous ai � l'oeil, vous.")
		
		ENDDIALOG()
--------------------------------------------------------------------
--Constantine
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("On peut se parler plus tard? J'ai � faire.")
		else
			SAY("Ca fait longtemps que je vous ai vu, dites. On est dans le m�me d�partement maintenant?")
		
			ANSWER("Oui, et j'ai un projet de recherche ind�pendant.",101)
		end
	NODE(101)
		SAY("S�rieusement? C'est rare de voir ce genre de projet attribu� � un d�butant. Vous avez vraiment d� les impressionner.")
		
		ANSWER("Pas de quoi monter au ciel non plus. J'esp�re juste que, maintenant que vous �tes devenu mon assistante technique, on va pouvoir faire du bon travail ensemble.",102)
	NODE(102)
		SAY("On va travailler ensemble sur le projet? Alors �a... Je dois admettre que je suis un peu jalouse. Euh... Grimm n'est pas au courant, j'esp�re?")
		
		ANSWER("Impossible de l'�viter, c'est lui qui vous a d�sign� comme mon assistante.",103)
	NODE(103)
		SAY("Ennuyeux. J'imagine qu'il doit �tre vert de jalousie. Je crois que je vais �viter de le croiser quelques temps.")
		
		ANSWER("Oui, et il n'a pas l'air de m'appr�cier. Mais revenons � ce projet, plut�t.",104)
	NODE(104)
		SAY("Oui, faisons �a. Les projets autonomes viennent toujours d'un groupe de projets d�finis. C'est un type de projet � long terme, et il faut d'abord effectuer une recherche pr�paratoire. Vous avez d�j� choisi votre projet?")
		
		ANSWER("Non, pas encore.",105)
	NODE(105)
		SAY("Alors il va falloir vous d�cider. Actuellement, il y a deux projets en cours. Un champ de protection radioactive, et un res�quenceur d'ADN pour rectifier les cellules mutantes.")
		
		ANSWER("Pas facile, les deux m'ont l'air tr�s myst�rieux... Ce serait peut-�tre plus facile si je savais � quoi ils serviront au final dans le grand projet de Tech Haven.",106)
	NODE(106)
		SAY("Je vous explique. Actuellement, et �a n'est plus un secret, nous travaillons sur une technologie de terraformation. Nous voulons faire revivre la plan�te bleue. Mais il s'�coulera plusieurs d�cennies avant que le projet voie le jour.")
		
		ANSWER("Je vais prendre le res�quenceur ADN.",107)
		ANSWER("Je vais prendre le champ de protection.",108)
	NODE(107)
		SAY("D'accord. De toute mani�re, le plus gros du travail sera � votre charge. Ca me fait penser qu'il existe un projet destin� � acc�l�rer les processus de recherche. Si �a vous int�resse de mener deux projets de front.")
		
		ANSWER("Ca peut m'int�resser.",109)
	NODE(108)
		SAY("D'accord. De toute mani�re, le plus gros du travail sera � votre charge. Ca me fait penser qu'il existe un projet destin� � acc�l�rer les processus de recherche. Si �a vous int�resse de mener deux projets de front.")
		
		ANSWER("Ca peut m'int�resser.",109)
	NODE(109)
		SAY("Nous poss�dons les plans d'un implant qui am�liore grandement vos connaissances scientifiques en favorisant les raisonnements logiques. Avec un tel implant, n'importe quel travail de recherche devrait se transformer en une partie de plaisir.")
		
		ANSWER("Plut�t int�ressant, oui. Mais j'imagine que c'est un peu plus compliqu� qu'il n'y para�t?",110)
	NODE(110)
		SAY("En effet. La conception n'est pas encore finalis�e, le projet a besoin de mise au point. Diff�rents d�partements ont travaill� sur ce projet par le pass�. Je pense que �a vaut le coup de s'y remettre.")
		
		ANSWER("Je vais suivre votre conseil, m�me si �a signifie que je vais devoir cumuler plusieurs recherches.",111)
	NODE(111)
		SAY("Merci. Si vous avez envie de commencer � travailler sur ce projet tout de suite, vous pouvez vous lancer. Un membre a command� des produits chimiques � ProtoPharm dans le cadre de ce projet. Mais �a n'est pas une livraison officielle, beaucoup de factions de Neocron regardent les activit�s des Anges D�chus d'un oeil tr�s m�fiant. Malheureusement, notre collaborateur est malade, et il faut le remplacer. Vous pourriez peut-�tre aller chercher ces produits chimiques aupr�s de l'employ� de ProtoPharm?") 
		
		ANSWER("Ahh, je vois que vous aviez une id�e derri�re la t�te depuis le d�but, avec votre proposition. Mais peu importe, je vais m'en occuper.",112)
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
			SAY("C'est une zone s�curis�e, partez imm�diatement.")
			ENDDIALOG()
		else
			SAY("H� runner, restez pas l�!")
		
			ANSWER("Je cherche un certain Boujard. C'est � propos d'une livraison.",151)
		end
	NODE(151)
		SAY("Fallait le dire tout de suite! Je vous attendais. On �tait cens�s se voir il y a trois heures.")
		
		ANSWER("Le coll�gue qui devait vous voir est tomb� malade. Je viens le remplacer.",152)
	NODE(152)
		SAY("Vous pouvez me confirmer votre identit�? D'accord, j'ai d�j� re�u le paiement, mais �a n'est pas de la marchandise ordinaire.")
		
		ANSWER("Si je n'�tais pas la bonne personne, comment est-ce que je serais au courant de l'existence de cette livraison?",153)
--Chemikalienkonzentrat
	NODE(153)
		GIVEITEM(9300)
		SETNEXTDIALOGSTATE(154)
		SAY("Pas faux. Tenez, voil�. J'esp�re que �a vous aidera � avancer votre projet.")
		
		ANSWER("Qu'est-ce que vous voulez dire?",154)
	NODE(154)
		SAY("Vous n'�tes pas un Ange D�chu. Alors laissez tomber, oubliez ce que je viens de dire.")
		
		ANSWER("Attendez, je sens une arnaque, l�.",155)
	NODE(155)
		SAY("Non non, je n'ai rien contre les Anges D�chus. Vous avez vos produits chimiques, partez maintenant.")
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
			SAY("Il faudrait aller voir Rick Boujard pour obtenir ces produits chimiques � El Farid village.")
			ENDDIALOG()
		else
			TAKEITEM(9300)
			if(result==0)then
				SAY("Vous avez les produits chimiques? C'est un certain Rick Boujard qui les poss�de, il est au village El Farid.")
				ENDDIALOG()
			else
				SAY("Content de vous revoir. J'esp�re que vous n'avez pas eu de probl�mes en route. Alors, ces produits chimiques?")
			
				ANSWER("J'ai tout.",201)
			end
		end
	NODE(201)
		SAY("Le d�partement sera ravi de cette nouvelle.")
		
		ANSWER("Pourquoi �a?",202)
	NODE(202)
		SAY("ProtoPharm est la seule compagnie qui sache fabriquer cette substance. Officiellement, ils ne voulaient pas nous en vendre. Je pense qu'eux aussi ont une mauvaise opinion de nous, comme toutes les factions de Neocron.")
		
		ANSWER("Au fait, Boujard m'a demand� si j'�tais un Ange D�chu. Il n'avait pas l'air au courant.",203)
	NODE(203)
		SAY("Etrange... Mais maintenant c'est fait, ils ne peuvent pas reculer, nous avons les produits chimiques. Ne vous faites pas de mauvais sang � ce sujet. Le conseil scientifique a d�bloqu� les premiers fonds pour votre recherche, 4.000 cr�dits. Ils ne peuvent pas vous donner plus pour l'instant, je suis navr�e.")
		
		ANSWER("Pas grave, je ferai avec. Merci. On commence tout de suite?",204)
	NODE(204)
		GIVEMONEY(4000)
		SAY("J'aimerai bien, mais je ne peux pas encore. Il faut que je rassemble des donn�es de diff�rents d�partements pour qu'on puisse se lancer. Prenez un peu de repos en attendant. Travaillez un peu de votre c�t�, et n'oubliez pas de parler � notre directeur du personnel de temps en temps, je le tiendrai inform� de ma progression. (prochaine mission au niveau 30)")
		EPICRUNFINISHED(14,1)
		ACTIVATEDIALOGTRIGGER(3)
		ENDDIALOG()

end