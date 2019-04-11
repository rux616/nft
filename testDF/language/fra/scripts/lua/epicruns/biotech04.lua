--new
function DIALOG()
--Trigger
--Triggernumber,Type,Person
--6(0),PvP,Grand
--1,D,Grand
--2,D,McMillan



--Startnode, Person
--0 Human Resource
--50 Grand
--100 McMillan


-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("Les nouvelles sont mauvaises. La quantit� d'informations compromettantes a brutalement augment�. Pour �tre honn�te, certains employ�s ont �t� durement touch�s par cela. Il est grand temps de mettre fin � ce probl�me.")
		
		ANSWER("CONTINUER",1)
	NODE(1)
		SAY("Le propri�taire de la station de diffusion, un certain Beckert, nous a transmis les informations demand�es. Nous avons maintenant la liste des gens qui ont lou� cette station. On a besoin de vous pour une autre mission. Si vous �tes pr�t.")
		
		ANSWER("Evidemment, apr�s tout je travaille pour BioTech comme vous, et �a me concerne autant que vous.",2)
		ANSWER("Pas maintenant.",6)

	NODE(2)
		SAY("Ravi de vous l'entendre dire. Sur cette liste, nous avons rep�r� une personne qui a acc�d� � la station pendant la p�riode surveill�e. Nous avons retrouv� dans l'Outzone 01 la trace d'un d�nomm� Grand.")
		
		ANSWER("CONTINUER",3)
	NODE(3)
		SAY("Nous avons contact� CityAdmin, et il se trouve que cette personne est bien connue des autorit�s comme hacker notoire. Il n'appartient � aucune faction, il ferait tout pour l'argent.")
		
		ANSWER("Ca ne me semble pas tr�s rassurant. Et en quoi est-ce que �a nous aide?",4)

	NODE(4)
		SAY("Vous devez trouver un moyen de lui faire avouer qui est derri�re tout �a. Et lui faire r�parer les dommages qu'il a caus�s, dans la mesure du possible.")
		
		ANSWER("Je vais y aller. Quelle m�thode est-ce que j'utilise?",5)
		ANSWER("Et si je dois tuer quelqu'un pour r�ussir la mission?",8)
	NODE(5)
		SAY("C'est � vous de voir. Utilisez les m�thodes que vous avez � votre disposition. Apr�s, vous pourrez informer McMillan de l'�volution de la situation.")
		ACCEPTMISSION()
		SETNEXTDIALOGSTATE(7)
		ENDDIALOG()
		

	NODE(6)
		SAY("C'est regrettable. Surtout que cette mission est vraiment importante. Mais je ne vais pas vous forcer la main non plus.")
		ENDDIALOG()
		
	NODE(7)
		SAY("Bonne chance pour votre mission. Vous avez d�j� rendu visite � ce hacker de l'Outzone 01?")
		ENDDIALOG()

	NODE(8)
		SAY("Si vous devez tuer quelqu'un, faites attention. Il ne faut pas que ce soit un employ� de la compagnie, un garde ou une personnalit� officielle. Seulement un runner.")
		
		ANSWER("Je peux vraiment aplatir n'importe quel runner?",9)
	NODE(9)
		SAY("Non, seulement si la cible est plus forte que vous. Sinon, cela ne sera pas bien vu. Bonne chance dans votre mission Utilisez tout ce que vous jugez bon.")
		SETNEXTDIALOGSTATE(7)
		ACCEPTMISSION()
		ENDDIALOG()


-----------------------------------------------------
--Grand

	NODE(50)
		SAY("Oui? Qui �tes-vous?")
		
		ANSWER("Vous �tes Grand?",51)

	NODE(51)
		SAY("Ca d�pend...")
		
		ANSWER("Arr�tons de perdre du temps. Je sais tr�s bien que vous �tes Grand.",52)
	NODE(52)
		SAY("D'accord. Je suis Grand. Et alors?")
		
		ANSWER("Je sais que vous avez lou� une station de diffusion dans le d�sert, construite pr�s de ruines. Pour qui avez-vous lou� cette station?",53)

	NODE(53)
		SAY("Ha! Si vous �tes si intelligent, vous avez certainement d�j� devin�, non?")
		
		ANSWER("Allez, dites-le moi. Ca n'est pas si difficile de prononcer quelques mots.",54)
	NODE(54)
		SAY("Ben... En fait, Tangent et les Gardiens du Cr�puscule sont mouill�s dans l'affaire, mais pas pour les m�mes raisons. Maintenant, arr�tez de me poser des questions, j'ai encore quelques fichiers � diffuser sur le r�seau. Hahaha.")
		
		ANSWER("D'accord, je vois que vous ne me prenez pas au s�rieux. Je veux que vous me disiez qui est derri�re tout �a, et je vous conseille d'arr�ter de diffuser des infos comme vous le faites.",55)

	NODE(55)
		SAY("Et qui va m'emp�cher de faire �a? Vous? Excusez-moi, mais vous me faites bien rigoler. Vous apparaissez de nulle part sans pr�venir, et vous me posez des questions auxquelles je r�pondrais jamais, m�me si vous �tiez un CopBot et que vous me menaciez avec votre flingue.")
		
		ANSWER("Alors il va falloir que j'utilise d'autres m�thodes. Pour vous montrer que je ne plaisante pas, je vais abattre trois membres des Gardiens du Cr�puscule... Et ensuite, si vous ne voulez pas coop�rer �a sera votre tour. Compris?",56)
	NODE(56)
		SAY("Haha, bonne chance! Je parie que le premier Gardien que vous allez rencontrer va vous aplatir en un clin d'oeil.")
		SETNEXTDIALOGSTATE(57)
		ENDDIALOG()

--Spieler killt drei Twilight Guardian trigger 6 bzw 0	
	

	NODE(57)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Alors, vous avez d�j� laiss� tomber? Je savais que vous alliez vous d�gonfler.")
			ENDDIALOG()
		else
			SAY("Vous encore!? Je ne vous aurais pas cru capable de quelque chose cmme �a. C'est violent, de tuer quelqu'un � cause de �a.")
		
			ANSWER("J'esp�re que vous avez eu le message?",58)
		end
	NODE(58)
		SAY("Ouais, ouais, �a va... Les Gardiens du Cr�puscule et Tangent sont dans le coup, il n'y a pas de doute. Mais n�anmoins... Je ne sais pas qui a commenc� le premier. D�sol�. Faut que vous compreniez que je fais �a pour le fric. A un moment donn�, j'ai d� perdre le droit chemin...")
		
		ANSWER("CONTINUER",59)

	NODE(59)
		SAY("Apr�s avoir �conomis� assez pour aller sur Irata III, j'ai appris qu'on ne construisait plus de vaisseaux. Sans pr�venir. Et qu'ils avaient perdu le contact avec les vaisseaux d�j� lanc�s. Alors tous mes r�ves se sont envol�s. Et maintenant, je fais de mon mieux pour m'en sortir.")
		
		ANSWER("Vos pleurnicheries, �a ne m'int�resse pas. Parlons plut�t de ces rumeurs qui circulent sur le r�seau...",60)
	NODE(60)
		SAY("Calmez-vous, pas la peine de s'�nerver. Faut que je vous pr�vienne que je ne peux retirer que mes propres fichiers du r�seau, pas ceux des autres.")
		
		ANSWER("Ca veut dire que d'autres hackers ont re�u la m�me mission?",61)

	NODE(61)
		SAY("Oui. Je dirais qu'ils sont une petite dizaine... Mais je n'en connais aucun.")
		
		ANSWER("Alors effacez au moins vos propres fichiers. Je me fiche que vous ayez des probl�mes par la suite.",62)
	NODE(62)
		SAY("J'esp�re que vous n'avez besoin de rien d'autre...")
		SETNEXTDIALOGSTATE(63)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
		
	NODE(63)
		SAY("C'est bon, poussez pas... je suis en train d'effacer mes donn�es. Retournez d'o� vous venez, maintenant.")
		ENDDIALOG()
		

-----------------------------------------------------
--McMillan

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Vous avez fait quelque chose contre ces rumeurs? On ne vous a pas demand� d'�tre dans l'Outzone 01, par hasard?")
			ENDDIALOG()
		else
			SAY("Mais quelle plaie, les gens qui diffusent des rumeurs! Toute cette histoire nous fait progressivement perdre des employ�s tr�s importants. Vraiment, j'ai l'impression que les gens aiment plus croire les mensonges que la v�rit�.")
		
			ANSWER("Oui, mais on s'achemine vers la r�solution du probl�me. J'ai pu retrouver la trace d'un hacker qui a lanc� certaines de ces rumeurs sur le r�seau.",101)
		end
	NODE(101)
		SAY("J'esp�re que vous l'avez refroidi...?")
		
		ANSWER("Non, surtout pas! Comment est-ce qu'il pourrait r�parer ses actes une fois mort?",102)
	NODE(102)
		SAY("Encore une fois, vous avez fait du bon travail. Je suis ravi de vous avoir parmi nous, vous savez. Dites-moi, est-ce que vous pourriez fouiller encore et me trouver qui est derri�re tout �a? Qui tire les ficelles?")
		
		ANSWER("J'ai pu d�couvrir que Tangent et les Gardiens du Cr�puscule �taient impliqu�s dans l'affaire.",103)
	NODE(103)
		SAY("Tangent! Maintenant que vous le dites, c'est si �vident... Nous sommes des imb�ciles. Damion Jordan, le directeur de Tangent, veut porter atteinte � Biotech aussi durement que possible. Est-ce que vous saviez que le p�re de Seymour et Damion entretient la comp�tition entre ses deux fils, et que le gagnant va h�riter des deux compagnies?")
		
		ANSWER("Alors �a me semble plut�t l'effet d'une blague assez cruelle.",104)
	NODE(104)
		SAY("Oui, Damion est pr�t � toutes les bassesses pour gagner! Il n'h�site pas � mettre en place une telle campagne de calomnies! Mais je pense que vous avez gagn� un peu de repos. Profitez-en pour vous d�tendre et profiter de la vie. On a encore quelques �l�ments � �tudier avant de mettre au point notre contre-attaque.")
		
		ANSWER("Fort bien, je vais en profiter pour m'entra�ner un peu.",105)
	NODE(105)
		GIVEMONEY(20000)
		SAY("Et en raison du service rendu � BioTech, je vous accorde la somme de 20.000 cr�dits.")
		EPICRUNFINISHED(5,3)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
		


end