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
		SAY("Les nouvelles sont mauvaises. La quantité d'informations compromettantes a brutalement augmenté. Pour être honnête, certains employés ont été durement touchés par cela. Il est grand temps de mettre fin à ce problème.")
		
		ANSWER("CONTINUER",1)
	NODE(1)
		SAY("Le propriétaire de la station de diffusion, un certain Beckert, nous a transmis les informations demandées. Nous avons maintenant la liste des gens qui ont loué cette station. On a besoin de vous pour une autre mission. Si vous êtes prêt.")
		
		ANSWER("Evidemment, après tout je travaille pour BioTech comme vous, et ça me concerne autant que vous.",2)
		ANSWER("Pas maintenant.",6)

	NODE(2)
		SAY("Ravi de vous l'entendre dire. Sur cette liste, nous avons repéré une personne qui a accédé à la station pendant la période surveillée. Nous avons retrouvé dans l'Outzone 01 la trace d'un dénommé Grand.")
		
		ANSWER("CONTINUER",3)
	NODE(3)
		SAY("Nous avons contacté CityAdmin, et il se trouve que cette personne est bien connue des autorités comme hacker notoire. Il n'appartient à aucune faction, il ferait tout pour l'argent.")
		
		ANSWER("Ca ne me semble pas très rassurant. Et en quoi est-ce que ça nous aide?",4)

	NODE(4)
		SAY("Vous devez trouver un moyen de lui faire avouer qui est derrière tout ça. Et lui faire réparer les dommages qu'il a causés, dans la mesure du possible.")
		
		ANSWER("Je vais y aller. Quelle méthode est-ce que j'utilise?",5)
		ANSWER("Et si je dois tuer quelqu'un pour réussir la mission?",8)
	NODE(5)
		SAY("C'est à vous de voir. Utilisez les méthodes que vous avez à votre disposition. Après, vous pourrez informer McMillan de l'évolution de la situation.")
		ACCEPTMISSION()
		SETNEXTDIALOGSTATE(7)
		ENDDIALOG()
		

	NODE(6)
		SAY("C'est regrettable. Surtout que cette mission est vraiment importante. Mais je ne vais pas vous forcer la main non plus.")
		ENDDIALOG()
		
	NODE(7)
		SAY("Bonne chance pour votre mission. Vous avez déjà rendu visite à ce hacker de l'Outzone 01?")
		ENDDIALOG()

	NODE(8)
		SAY("Si vous devez tuer quelqu'un, faites attention. Il ne faut pas que ce soit un employé de la compagnie, un garde ou une personnalité officielle. Seulement un runner.")
		
		ANSWER("Je peux vraiment aplatir n'importe quel runner?",9)
	NODE(9)
		SAY("Non, seulement si la cible est plus forte que vous. Sinon, cela ne sera pas bien vu. Bonne chance dans votre mission Utilisez tout ce que vous jugez bon.")
		SETNEXTDIALOGSTATE(7)
		ACCEPTMISSION()
		ENDDIALOG()


-----------------------------------------------------
--Grand

	NODE(50)
		SAY("Oui? Qui êtes-vous?")
		
		ANSWER("Vous êtes Grand?",51)

	NODE(51)
		SAY("Ca dépend...")
		
		ANSWER("Arrêtons de perdre du temps. Je sais très bien que vous êtes Grand.",52)
	NODE(52)
		SAY("D'accord. Je suis Grand. Et alors?")
		
		ANSWER("Je sais que vous avez loué une station de diffusion dans le désert, construite près de ruines. Pour qui avez-vous loué cette station?",53)

	NODE(53)
		SAY("Ha! Si vous êtes si intelligent, vous avez certainement déjà deviné, non?")
		
		ANSWER("Allez, dites-le moi. Ca n'est pas si difficile de prononcer quelques mots.",54)
	NODE(54)
		SAY("Ben... En fait, Tangent et les Gardiens du Crépuscule sont mouillés dans l'affaire, mais pas pour les mêmes raisons. Maintenant, arrêtez de me poser des questions, j'ai encore quelques fichiers à diffuser sur le réseau. Hahaha.")
		
		ANSWER("D'accord, je vois que vous ne me prenez pas au sérieux. Je veux que vous me disiez qui est derrière tout ça, et je vous conseille d'arrêter de diffuser des infos comme vous le faites.",55)

	NODE(55)
		SAY("Et qui va m'empêcher de faire ça? Vous? Excusez-moi, mais vous me faites bien rigoler. Vous apparaissez de nulle part sans prévenir, et vous me posez des questions auxquelles je répondrais jamais, même si vous étiez un CopBot et que vous me menaciez avec votre flingue.")
		
		ANSWER("Alors il va falloir que j'utilise d'autres méthodes. Pour vous montrer que je ne plaisante pas, je vais abattre trois membres des Gardiens du Crépuscule... Et ensuite, si vous ne voulez pas coopérer ça sera votre tour. Compris?",56)
	NODE(56)
		SAY("Haha, bonne chance! Je parie que le premier Gardien que vous allez rencontrer va vous aplatir en un clin d'oeil.")
		SETNEXTDIALOGSTATE(57)
		ENDDIALOG()

--Spieler killt drei Twilight Guardian trigger 6 bzw 0	
	

	NODE(57)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Alors, vous avez déjà laissé tomber? Je savais que vous alliez vous dégonfler.")
			ENDDIALOG()
		else
			SAY("Vous encore!? Je ne vous aurais pas cru capable de quelque chose cmme ça. C'est violent, de tuer quelqu'un à cause de ça.")
		
			ANSWER("J'espère que vous avez eu le message?",58)
		end
	NODE(58)
		SAY("Ouais, ouais, ça va... Les Gardiens du Crépuscule et Tangent sont dans le coup, il n'y a pas de doute. Mais néanmoins... Je ne sais pas qui a commencé le premier. Désolé. Faut que vous compreniez que je fais ça pour le fric. A un moment donné, j'ai dû perdre le droit chemin...")
		
		ANSWER("CONTINUER",59)

	NODE(59)
		SAY("Après avoir économisé assez pour aller sur Irata III, j'ai appris qu'on ne construisait plus de vaisseaux. Sans prévenir. Et qu'ils avaient perdu le contact avec les vaisseaux déjà lancés. Alors tous mes rêves se sont envolés. Et maintenant, je fais de mon mieux pour m'en sortir.")
		
		ANSWER("Vos pleurnicheries, ça ne m'intéresse pas. Parlons plutôt de ces rumeurs qui circulent sur le réseau...",60)
	NODE(60)
		SAY("Calmez-vous, pas la peine de s'énerver. Faut que je vous prévienne que je ne peux retirer que mes propres fichiers du réseau, pas ceux des autres.")
		
		ANSWER("Ca veut dire que d'autres hackers ont reçu la même mission?",61)

	NODE(61)
		SAY("Oui. Je dirais qu'ils sont une petite dizaine... Mais je n'en connais aucun.")
		
		ANSWER("Alors effacez au moins vos propres fichiers. Je me fiche que vous ayez des problèmes par la suite.",62)
	NODE(62)
		SAY("J'espère que vous n'avez besoin de rien d'autre...")
		SETNEXTDIALOGSTATE(63)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
		
	NODE(63)
		SAY("C'est bon, poussez pas... je suis en train d'effacer mes données. Retournez d'où vous venez, maintenant.")
		ENDDIALOG()
		

-----------------------------------------------------
--McMillan

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Vous avez fait quelque chose contre ces rumeurs? On ne vous a pas demandé d'être dans l'Outzone 01, par hasard?")
			ENDDIALOG()
		else
			SAY("Mais quelle plaie, les gens qui diffusent des rumeurs! Toute cette histoire nous fait progressivement perdre des employés très importants. Vraiment, j'ai l'impression que les gens aiment plus croire les mensonges que la vérité.")
		
			ANSWER("Oui, mais on s'achemine vers la résolution du problème. J'ai pu retrouver la trace d'un hacker qui a lancé certaines de ces rumeurs sur le réseau.",101)
		end
	NODE(101)
		SAY("J'espère que vous l'avez refroidi...?")
		
		ANSWER("Non, surtout pas! Comment est-ce qu'il pourrait réparer ses actes une fois mort?",102)
	NODE(102)
		SAY("Encore une fois, vous avez fait du bon travail. Je suis ravi de vous avoir parmi nous, vous savez. Dites-moi, est-ce que vous pourriez fouiller encore et me trouver qui est derrière tout ça? Qui tire les ficelles?")
		
		ANSWER("J'ai pu découvrir que Tangent et les Gardiens du Crépuscule étaient impliqués dans l'affaire.",103)
	NODE(103)
		SAY("Tangent! Maintenant que vous le dites, c'est si évident... Nous sommes des imbéciles. Damion Jordan, le directeur de Tangent, veut porter atteinte à Biotech aussi durement que possible. Est-ce que vous saviez que le père de Seymour et Damion entretient la compétition entre ses deux fils, et que le gagnant va hériter des deux compagnies?")
		
		ANSWER("Alors ça me semble plutôt l'effet d'une blague assez cruelle.",104)
	NODE(104)
		SAY("Oui, Damion est prêt à toutes les bassesses pour gagner! Il n'hésite pas à mettre en place une telle campagne de calomnies! Mais je pense que vous avez gagné un peu de repos. Profitez-en pour vous détendre et profiter de la vie. On a encore quelques éléments à étudier avant de mettre au point notre contre-attaque.")
		
		ANSWER("Fort bien, je vais en profiter pour m'entraîner un peu.",105)
	NODE(105)
		GIVEMONEY(20000)
		SAY("Et en raison du service rendu à BioTech, je vous accorde la somme de 20.000 crédits.")
		EPICRUNFINISHED(5,3)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
		


end