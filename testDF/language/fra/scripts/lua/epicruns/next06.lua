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
		SAY("Ravi de vous revoir. Mason m'a demand� de vous parler de ses plans au sujet de ces actions incroyables de ProtoPharm. Il semble que tout le monde soit au courant maintenant. Mais il y a un moyen de revenir � la normale.")
		
		ANSWER("Int�ressant. Est-ce que �a marchera, au moins?",1)
	NODE(1)
		SAY("Malheureusement, je ne connais pas tous les d�tails du plan. Je sais qu'un contact des Anges D�chus va nous donner un coup de main. Un certain Elias.")
		
		ANSWER("Elias? Oui, je le connais, mais il est un peu sp�cial. Mais on il aura certainement des choses int�ressantes � m'apprendre.",2)
	NODE(2)
		SAY("Le plan va commencer bient�t, et on a besoin de vous et d'Elias. Je en sais pas pourquoi au juste. Bonne chance, on compte sur vous. Apr�s tout, je n'ai pas envie de voir nos bureaux d�plac�s dans les Terres Br�l�es...")
		ACCEPTMISSION()
		SETNEXTDIALOGSTATE(3)
		ENDDIALOG()
		
	NODE(3)
		SAY("Vous ne deviez pas aller voir Elias � Tech Haven? Une fois que vous avez termin�, retournez faire votre rapport � Mason.")
		ENDDIALOG()

-----------------------------------------------------
--Elias

	NODE(50)
		SAY("J'ai entendu parler de ce que vous aviez fait pour NEXT r�cemment. Impressionnant. La progression de ProtoPharm au cours de ces derni�res semaines doit �tre �limin�e. J'esp�re qu'on vous a d�j� dit ce qui allait se passer?")
		
		ANSWER("Non, on ne m'a rien dit du tout. Je ne connais aucun d�tail du plan.",51)
	NODE(51)
		SAY("Tr�s bien. C'est Violet Derix qui m'a mise au courant de ce qui allait se passer. Mais je vais vous le r�p�ter seulement parce que c'est Violet qui a voulu que vous participiez � l'op�ration. On va pirater le r�seau de Neocron pour cr�er un message d'erreur. C'est ce message d'erreur qui va nous sauver.")
		
		ANSWER("CONTINUER",52)
	NODE(52)
		SAY("Violet et moi-m�me avons d�velopp� un virus dont la cible est l'ensemble des transactions financi�res de ces derni�res semaines. Ainsi, on pourra affecter toutes les donn�es de ce type pr�sentes sur le r�seau entier.")
		
		ANSWER("CONTINUER",53)
	NODE(53)
		SAY("C'est la mani�re la plus rapide et la plus s�re de proc�der. Ainsi, la progression de ProtoPharm dans les actions de NEXT sera remise � z�ro, et NEXT sera au courant de toutes les op�rations effectu�es par son adversaire. Et NEXT pourra r�agir comme il le faut face � la menace. Vous comprenez ce que je viens de vous expliquer?")
		
		ANSWER("Euh... Et le but de tout �a?",54)
	NODE(54)
		SAY("Le but de tout �a, comme vous dites, c'est de ramener les donn�es en arri�re de quelques semaines. A une �poque o� tout �tait normal.")
		
		ANSWER("D'accord, j'ai bien compris. Qu'est-ce qu'on attend, alors?",55)
	NODE(55)
		SAY("Je vais m'y mettre tout de suite. Un moment... Non, c'est impossible... Encore ce Warbot! Ce truc s'amuse � couper r�guli�rement notre liaison avec le r�seau de la ville. S'il continue � s'amuser comme �a, il y a des chances que je sois coup� lorsque je suis en train de pirater le r�seau, alors autant laisser tomber. CA rel�verait du jeu de hasard, et je ne veux pas risquer ma peau avec �a.")
		
		ANSWER("Et si on d�sactivait le Warbot?",56)
	NODE(56)
		SAY("Vous voulez vraiment faire �a?")
		
		ANSWER("Oui, je vais m'en charger si �a peut vous aider.",57)
	NODE(57)
		SAY("Evidemment, �a serait la meilleure solution. Le Warbot est probablement � une des entr�es de la ville. D�s qu'il sera d�sactiv�, je lancerai l'op�ration. Amusez-vous bien, et bonne chance!")
		
		ANSWER("CONTINUER",58)
	NODE(58)
		SAY("J'oubliais! Une fois que vous avez termin�, vous pourriez me faire une faveur en demandant � quelqu'un de CityAdmin si �a a bien fonctionn�? Je me rappelle pas son nom, mais vous devriez le trouver dans le QG de CityAdmin. Et apparemment, M. Mason veut vous parler une fois que vous avez termin� la mission.")
		SETNEXTDIALOGSTATE(59)
		ENDDIALOG()
		
--Spieler killt Warbot Trigger 0

	NODE(59)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Impossible de me connecter tant que le Warbot n'est pas d�sactiv�.")
			ENDDIALOG()
		else
			SAY("Bien, jusqu'ici tout est en ordre. Pensez � aller visiter le type de CityAdmin dont je vous ai parl�, pour v�rifier si on a r�ussi l'op�ration ou pas.")
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
		
			ANSWER("Je voulais vous demander combien de gens ont c�d� � leurs donn�es bancaires hier... C'est pour une v�rification statistique.",101)
		end
	NODE(101)
		SAY("Pas de probl�me. Avec notre syst�me �lectronique, �a sera tr�s rapide. Mais qu'est-ce que... C'est �trange, je n'ai pas acc�s aux donn�es d'hier. Il s'est pass� quelque chose d'anormal... Et je n'ai pas non plus les donn�es d'avant-hier...")
		
		ANSWER("C'est tout ce que je voulais savoir... Au revoir.",102)
	NODE(102)
		SAY("Attendez... Je vois des donn�es manquantes partout!")
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(103)
		ENDDIALOG()
		
	NODE(103)
		SAY("Je n'ai pas le temps! Quelqu'un s'est attaqu� au r�seau! Plein de donn�es ont disparu!")
		ENDDIALOG()
		

-----------------------------------------------------
--Mason

	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Je peux pas vous aider, je m'occupe de ces vautours de ProtoPharm...")
			ENDDIALOG()
		else
			SAY("Et voil�, encore une fois c'est vous qui avez sauv� la mise. Comment vous vous sentez? Violet m'a demand� de vous transmettre ses remerciements. Et pas seulement parce que vous lui avez sauv� la vie, si vous voulez savoir. M�me Diggers vous transmet ses remerciements. Mais nos existences vont bient�t reprendre un train normal. Et bient�t, on oubliera tout ce que vous avez fait...")
		
			ANSWER("CONTINUER",151)
		end
	NODE(151)
		SAY("Alors un conseil : profitez autant que vous le pouvez. NEXT vous a pr�par� un cadeau en remerciement. Comme vous n'avez pas pu proc�der � la s�ance de tests, NEXT vous remet confie ce v�hicule exp�rimental. C'est pour vous. Gratuitement.")
		
		ANSWER("CONTINUER",152)
	NODE(152)
		GIVEITEM(9104)
		SAY("Je pense que la situation va s'apaiser maintenant. Si vous voulez continuer � aider NEXT, je vous souhaite d'ouvrir votre propre clan. On n'aura pas d'autres missions sp�ciales pour vous � l'avenir, �tant donn� que la situation s'est apais�e. Mais j'ai eu grand plaisir � travailler avec vous, sachez-le.")
		EPICRUNFINISHED(3,5)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
		

end