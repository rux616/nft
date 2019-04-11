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
		SAY("Tu as probablement remarqu� l'alliance imminente avec le D�me de York, j'imagine ? A cet emplacement, on peut trouver un avant-poste � moiti� dissimul�. J'y suis d�j� all�, alors je te raconte pas d'histoires, c'est pas mon genre.")

		ANSWER("Je ne comprends pas ce que tu veux dire. Qu'est-ce que cet endroit a de si sp�cial ?",1)
	NODE(1)
		SAY("Ils sont en train de pr�parer quelque chose, et je sens que c'est pas un pique-nique. Si j'avais un peu plus de tripes, je serais all� les rejoindre. Ils recherchent des runners dans ton genre, et ils les paient bien. Malheureusement, notre faction n'a pas de missions � te proposer. Pour l'instant, du moins.")

		ANSWER("J'imagine qu'ils ne vont pas me payer pour ne rien faire. Alors, quelle est l'astuce ?",2)
	NODE(2)
		SAY("Leurs missions ne m'ont pas l'air simples. Tuer des runners, faire de l'espionnage, des choses de ce genre. Moi, �a ne me dit rien. Mais si tu te sens � la hauteur...")

		ANSWER("Je comprends. Je vais peut-�tre aller y faire un tour. Tu peux me donner l'emplacement exact ?",3)
	NODE(3)
		SAY("Si tu sais o� regarder, c'est pas tr�s difficile de trouver. Mais fais attention, l'endroit est bien gard�. Va voir du c�t� du secteur J 08.")
		
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

		ANSWER("On m'a parl� d'un avant-poste secret du D�me de York, et j'ai envie de tirer parti de cette information.",51)
	NODE(51)
		SAY("C'est exact. Tu viens pour une mission ?")

		ANSWER("Ca d�pend. D'abord, je veux savoir ce que vous voulez faire avec toutes ces missions. Vous devez bien avoir un but derri�re tout �a, j'imagine ?",52)
	NODE(52)
		SAY("Les runners opportunistes comme toi ne travaillent que quand �a leur rapporte. Mais je te rassure, le D�me de York a eu la sagesse de mettre en place plusieurs strat�gies pour combattre Neocron. Notre but est de mettre � mal notre ennemi de toujours, de d�truire un � un les organes du monstre, pour qu'il soit incapable � terme de mener des actions coordonn�es. Et toi, tu vas avoir beaucoup d'argent � gagner dans l'op�ration.")

		ANSWER("Ca me pla�t. Et je t'assure que j'ai autant que toi l'envie de voir Neocron r�duite en tas de gravats.",53)
	NODE(53)
		SAY("Alors march� conclu. On a des missions pour les runners motiv�s, mais je te pr�viens que �a sera pas facile. R�fl�chis bien, c'est une grosse faveur que tu t'appr�tes � faire au D�me de York, et on ne laisse pas tomber nos alli�s.")

		ANSWER("J'y pense : j'ai remarqu� qu'il y avait un g�n�ral ici. Il n'a rien de mieux � faire que de rester plant� l� ?",54)
	NODE(54)
		SAY("Imb�cile ! Si ce g�n�ral est pr�sent, c'est que cette op�ration est tr�s importante. Si tu as de la chance, le g�n�ral te donnera m�me une mission en personne. C'est un grand homme, c'est lui qui porte le poids des d�cisions importantes.")

		ANSWER("Int�ressant. Mais pourquoi ne pas faire entrer les runners au D�me de York ?",55)
	NODE(55)
		SAY("Ca n'est pas ton probl�me. Je sais que c'est mieux l�-dedans qu'ici dans les Terres Br�l�es, mais on ne r�p�tera pas les erreurs de 2578.")

		ANSWER("Bien. Tu as r�ussi � me convaincre.",56)
	NODE(56)
		SAY("On a d�couvert la v�ritable identit� d'un des espions de Reza. malheureusement, il a r�ussi � s'�chapper dans les marais, et on a perdu sa trace. Les diff�rentes sorties des marais sont sous haute surveillance, ce qui veut dire qu'il n'a aucune issue possible. Evidemment, on veut sa mort.")

		ANSWER("Et comment est-ce que je pourrais le reconna�tre ? Il n'y a pas beaucoup de gens dans les marais, mais tout de m�me assez pour que je fasse une erreur.",57)
	NODE(57)
		SAY("Contente-toi de lui parler. Je suis certain qu'il tentera de t'expliquer que Neocron est une ville formidable. De toute mani�re, tous leurs espions ont eu le cr�ne bourr� de ces salades jusqu'� saturation, ils ne savent rien dire d'autre. Il devrait se trouver quelque part dans le secteur F 02.")
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
			SAY("Ah, enfin je croise quelqu'un. Vous n'auriez pas quelque chose � manger ?")

			ANSWER("Qui �tes-vous ?",101)
		end
	NODE(101)
		
		SAY("Un fid�le citoyen de Neocron, et je... je ne suis perdu dans ce marais. Et vous, vous venez pour me tuer, c'est bien �a ?")

		ANSWER("Pourquoi, vous avez une raison de craindre pour votre vie ?",102)
	NODE(102)
		SAY("Depuis tout ce temps que je suis perdu dans les marais, j'ai eu la possibilit� de r�fl�chir. Je ne vois aucune solution. Les drones surveillent le marais, je n'ai aucune possibilit� de sortir. Je commence � manquer de nourriture, et mes implants commencent � se d�charger.")

		ANSWER("Alors comme �a, vous �tes un espion de Neocron, et vous vous �tes enfui dans les marais ? C'est compl�tement stupide.",103)
	NODE(103)
		GIVEITEM(9430)
--DATACUBE MIT SECRET INFOS
		SAY("Vous verrez, Neocron viendra � bout de vos forces. Vous verrez... Bon, maintenant que ma vie est entre vos mains, je vais vous demander une derni�re faveur. Prenez ce DataCube, il contient toutes les informations que j'ai pu r�colter. Portez �a � Kev Critter, � la d�charge de Blakkmist, et vous toucherez une r�compense. Il n'est pas encore trop tard, vous avez encore la possibilit� de passer du bon c�t�, vous savez.")
		SETNEXTDIALOGSTATE(104)
		ENDDIALOG()
	NODE(104)
		SAY("J'ai failli marcher. Mais je sais pourquoi vous �tes l�. Et vous allez mourir.")
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
			SAY("Beau travail, runner. Cet espion ne nous causera plus de tort. Il s'�tait infiltr� dans notre d�me, et il a accompli plusieurs meurtres avant d'�tre d�couvert. Mais a pr�sent, il est hors d'�tat de nuire.")

			ANSWER("Bien. Maintenant, ma r�compense.",152)
			ANSWER("Oui, c'�tait vraiment un moins que rien. Juste avant que je l'ex�cute, il m'a m�me donn� les informations qu'il avait r�unies.",151)
		end
	NODE(151)
		TAKEITEM(9430)
--AGENTENCUBE
		if(result==0)then
			SAY("Tu n'as m�me pas ces donn�es sur toi.")
			ENDDIALOG()		
		else
			SAY("Excellent, je vais m�me te donner une prime pour �a. Encore une preuve que les gens de Neocron ne sont que des attard�s mentaux. Mais passons maintenant � une autre mission.")

			ANSWER("En quoi est-ce qu'elle consiste ?",154)
		end
	NODE(152)
		SAY("Les nombreuses factions qui peuplent Neocron et les Terres Br�l�es sont source de chaos. Et le chaos, runner, c'est notre meilleur alli�. Tsunami, le Dragon Noir, les Gardiens du Cr�puscule, Crahn, et m�me les Anges D�chus, font partie de ceux qui ont su voir clair dans les mensonges perfides de Neocron. Mais il existe de nombreuses personnes qui n'ont pas encore choisi leur camp, et qui changent de faction comme d'autres changent d'implants.")

		ANSWER("On trouvera toujours des gens pour retourner leur veste, quoi qu'on fasse. Alors o� est-ce que tu veux en venir ?",153)
	NODE(153)
		SAY("Je pense � un scientifique tr�s qualifi� qui vit exil� � Point Red. Visiblement, il en a eu marre des intrigues de Neocron. C'est pour nous la chance d'obtenir des informations sur leur technologie. Tu peux utiliser tous les moyens � ta disposition pour r�ussir cette mission. Il s'appelle Matt Tronstett.")

		SETNEXTDIALOGSTATE(250)
		ENDDIALOG()
	NODE(154)
		SAY("Les nombreuses factions qui peuplent Neocron et les Terres Br�l�es sont source de chaos. Et le chaos, runner, c'est notre meilleur alli�. Tsunami, le Dragon Noir, les Gardiens du Cr�puscule, Crahn, et m�me les Anges D�chus, font partie de ceux qui ont su voir clair dans les mensonges perfides de Neocron. Mais il existe de nombreuses personnes qui n'ont pas encore choisi leur camp, et qui changent de faction comme d'autres changent d'implants.")

		ANSWER("On trouvera toujours des gens pour retourner leur veste, quoi qu'on fasse. Alors o� est-ce que tu veux en venir ?",155)
	NODE(155)
		SAY("Je pense � un scientifique tr�s qualifi� qui vit exil� � Point Red. Visiblement, il en a eu marre des intrigues de Neocron. C'est pour nous la chance d'obtenir des informations sur leur technologie. Tu peux utiliser tous les moyens � ta disposition pour r�ussir cette mission. Il s'appelle Matt Tronstett.")

		SETNEXTDIALOGSTATE(251)
		ENDDIALOG()


--------------------------------------------------------------------
-- MATT TRONSTETT
--200
	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Je n'ach�te rien aux clochards.")
			ENDDIALOG()
		else
			SAY("Pourquoi est-il impossible de renverser la gravit�, voire de l'annuler temporairement ? Je travaille sur le probl�me depuis un certain temps maintenant, mais je ne vois aucune solution.")

			ANSWER("C'est un pi�ge, cette question ? Vous �tes bien Matt Tronstett, scientifique de Neocron ?",201)
		end
	NODE(201)
		SAY("Oui, mais je n'ai plus aucun lien avec Neocron. Tout ce qu'ils recherchent, c'est le pouvoir et les armes. Pourquoi est-ce que personne n'a encore essay� de rendre les Terres Br�l�es habitables ? Ou peut-�tre que j'aurais d� d�s le d�part travailler pour les Anges D�chus, j'aurais perdu moins de temps.")

		ANSWER("Maintenant que vous n'�tes plus scientifique � Neocron, vous pouvez certainement me parler des toutes derni�res technologies qu'ils dont d�velopp�es, n'est-ce pas ?",202)
	NODE(202)
		SAY("D'accord, je vois clair dans votre petit jeu maintenant. Mais j'ai bien peur de devoir vous d�cevoir : si je vous disais ce que je sais, j'aurais des chasseurs de primes � mes trousses d'un instant � l'autre. A moins que vous ayez des informations sur la technologie du d�me de York.")

		ANSWER("Je peux certainement r�unir des fonds. Est-ce que �a faciliterait les n�gociations ?",203)
		ANSWER("J'ai des informations secr�tes au sujet du D�me de York. Elles m'ont �t� donn�es par un espion travaillant pour Neocron. Peut-�tre un �change vous int�resse-t-il ?",204)
		ANSWER("Si vous ne me donnez pas ce que je veux, la mort va venir encore plus rapidement que vous le pensez.",205)
	NODE(203)
		SAY("Oui, c'est une option possible. Mais croyez-moi, vous ne r�ussirez pas � r�unir l'argent que valent ces information.")
		SETNEXTDIALOGSTATE(204)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
	NODE(204)
		TAKEITEM(9430)
--AGENTEN DATA
		if(result==0)then
			SAY("Allez me chercher des informations sur le D�me de York, c'est la seule mani�re dont nous puissions collaborer. Sinon, expliquez �a � la personne qui vous envoie.")
			ENDDIALOG()
		else
			GIVEITEM(9431)
--MATT INFORMATION CUBE
			SAY("Etant donn�es les circonstances, un �change de donn�es me convient. Allez, donnez-moi les informations que vous avez.")
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
		SAY("On avait conclu un accord. Je ne peux rien vous donner de plus. Vous devriez revoir la personne qui vous a donn� cette mission.")

		ENDDIALOG()
	NODE(207)
		SAY("Je n'ai rien d'autre � vous dire.")

		ENDDIALOG()
--------------------------------------------------------------------
-- GEHENNA
--250

	NODE(250)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Tu trouveras Matt Tronstett � Point Red. Prends ce que tu peux, et reviens me donner ce que tu as trouv�.")
			ENDDIALOG()
		else
			TAKEITEM(9431)
--MATT INFO DATA
			if(result==0)then
				GIVEMONEY(5000)
				SAY("Ces informations auraient �t� tr�s importantes pour nous, et malheureusement je ne peux pas te donner plus. Mais j'esp�re que �a te va tout de m�me. On aura une autre mission pour toi lorsque les choses se seront un peu tass�es. (prochaine mission au niveau 30)")
				EPICRUNFINISHED(8,0)
				ACTIVATEDIALOGTRIGGER(3)
				ENDDIALOG()
			else
				GIVEMONEY(13000)
				SAY("Merci, beau travail. Ces �l�ments techniques vont bien nous aider. On aura une autre mission pour toi lorsque les choses se seront un peu tass�es. (prochaine mission au niveau 30)")
				EPICRUNFINISHED(8,0)
				ACTIVATEDIALOGTRIGGER(3)
				ENDDIALOG()
			end
		end
	NODE(251)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Matt Tronstett se trouve � Point Red. Va chercher ce que tu peux, et reviens avec le r�sultat de ton enqu�te.")
			ENDDIALOG()
		else
			GIVEMONEY(10000)
			SAY("Ces informations auraient �t� tr�s importantes pour nous, et malheureusement je ne peux pas te donner plus. Mais j'esp�re que �a te va tout de m�me. On aura une autre mission pour toi lorsque les choses se seront un peu tass�es. (prochaine mission au niveau 30)")
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
			SAY("D�sol�, la d�charge est ferm�e.")
			ENDDIALOG()
		else
			SAY("Oui ? Besoin de quelque chose dans la d�charge ?")
	
			ANSWER("Peut-�tre. J'ai des informations ici, en provenance d'un certain Hamil.",301)
		end
	NODE(301)
		SAY("Vendu ! Comment il va, le vieux bougre ?")
	
		ANSWER("Pour faire simple, je dirais que c'est l� sa derni�re livraison.",302)
	NODE(302)
		SAY("Quel dommage. Mais vous, �a vous int�resserait pas de reprendre le flambeau, dites ?")
	
		ANSWER("Pas question. Tout ce que je veux, c'est le fric.",303)
	NODE(303)
		GIVEMONEY(1000)
		SAY("Bon, bon. Tenez, voil� l'argent.")
		ENDDIALOG()
	




end
