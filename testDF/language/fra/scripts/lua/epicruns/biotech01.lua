--new
function DIALOG()
--Trigger
--Triggernumber,Type,Person
--0,D,Thompson
--
--1,D,Protopharm
--2,D,Human Resource


--Startnode, Person
--0 Human Resource
--50 Thompson
--100 BioTech Human Resource
--150 Protopharm
--200 BT Human Resource

-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("Ahh, on m'a déjà informé qu'il y aurait de nouveaux runners chez BioTech. Les nouveaux membres sont toujours les bienvenue dans nos rangs.")
		
		ANSWER("CONTINUER",1)
	NODE(1)
		SAY("La procédure normale serait que le directeur des Opérations vienne personnellement vous accueillir, mais il est actuellement en rendez-vous important avez Seymour Jordan. Vous comprendrez que cette entrevue ne souffre pas l'ajournement.")
		
		ANSWER("C'est dommage, mais je comprends. Quelles sont les tâches qui m'attendent, au juste, maintenant que je travaille pour BioTech?",2)
	NODE(2)
		SAY("Voilà tout ce que j'aime : direct et efficace. On a déjà dû vous remettre la clé de votre appartement. En échange, nous ne vous demandons que votre loyauté et votre attachement à quelques missions spéciales. Mais nous parlerons de tout ceci plus tard. Vous avez fait le bon choix en venant chez BioTech, félicitations.")
		
		ANSWER("CONTINUER",3)
	NODE(3)
		SAY("Je devrais peut-être d'abord vous en apprendre plus sur la compagnie. BioTech a été impliquée dans de nombreux projets depuis sa fondation, en 2638. Actuellement, son but quasi-exclusif est le développement et la production d'implants de toutes sortes.")
		
		ANSWER("CONTINUER",4)
	NODE(4)
		SAY("Ceci ne signifie pas que la construction de vaisseaux spatiaux, la médecine ou les armes sont étrangers à BioTech. En effet, le premier vaisseau spatial, l'Avenger, a été développé et construit par BioTech.")
		
		ANSWER("Oui, j'en ai entendu parler.",5)
	NODE(5)
		SAY("Retour au présent. CityAdmin nous demande un entretien avec une de nos toutes dernières recrues. Ils sont en train de faire une analyse, et ont besoin de poser quelques questions. Cela ne devrait pas prendre trop de temps, et BioTech serait même disposée à vous offrir quelque compensation.")
		
		ANSWER("Ca m'a l'air bien, je pense que j'y arriverai.",6)
		ANSWER("Pardon, mais pour le moment ça ne sera pas possible.",7)
	NODE(6)
		SAY("Excellent. Vous trouverez un employé de CityAdmin dans la Plaza secteur 2. Nous avons organisé une rencontre dans un restaurant du quartier. Revenez ici une fois que vous avez terminé, pour nous communiquer votre rapport.")
		ACCEPTMISSION()
		SETNEXTDIALOGSTATE(100)
		ENDDIALOG()
		
	NODE(7)
		SAY("Vous pouvez toujours changer d'avis si vous voulez.")
		ENDDIALOG()


-----------------------------------------------------
--Thompson

	NODE(50)
		SAY("Bonjour. Vous venez de chez BioTech, c'est bien ça?")
		
		ANSWER("Oui. Et je devine que vous travaillez pour CityAdmin...?",51)

	NODE(51)
		SAY("Parfait. Je m'appelle Thompson. J'ai bien peur de ne pas avoir beaucoup de temps, alors nous allons nous y mettre tout de suite, d'accord? J'attire votre attention sur le fait que cette conversation sera enregistrée. Presque tout ce qui se passe dans Neocron est enregistré d'une manière ou d'une autre, mais il faut pourtant que je le précise à chaque fois...")
		
		ANSWER("C'est assez dérangeant si tout est enregistré...",52)
		
	NODE(52)
		SAY("Vous savez, certains endroits dans CityAdmin sont tout de même à l'abri de tous les regards. Même si M. Reza aimerait peut-être changer ça.")
		
		ANSWER("D'accord, commençons tout de suite. De quoi est-ce qu'on va parler?",53)
	NODE(53)
		SAY("Je travaille sur une étude concernant le comportement général des citoyens. Ensuite nous effectuerons des comparaisons entre les différentes factions afin d'en tirer des informations pertinentes.")
		
		ANSWER("CONTINUER",54)
	NODE(54)
		SAY("Mais vous pouvez imaginer que pour une personne seule ça n'est pas une sinécure. Je ne suis même pas certain que notre conversation soit un jour publiée ou que quelqu'un en entende parler. Mais je dois tout de même vous poser ces questions pour mener ma mission à bien.")
		
		ANSWER("Si ce n'est que ça... Allez-y.",55)
	NODE(55)
		SAY("Bon. Pourquoi est-ce que vous avez choisi BioTech? Le professionnalisme de la compagnie? Sa taille? Autre chose?")
		
		ANSWER("Je pense que c'est un peu de tout ça, et je suis plus qu'intéressé par les produits Biotech.",56)
	NODE(56)
		SAY("Merci. Est-ce que vous avez déjà connu de mauvaises expériences avec BioTech? Est-ce que certains employés se comportent de manière étrange, qui pourrait éveiller les soupçons?")
		
		ANSWER("Non, pas que je sache. Je ne pense pas que ce soit monnaie courante.",57)
	NODE(57)
		SAY("Avez-vous été en relation, voire en relation intime avec un ou plusieurs des employés de BioTech? Ou êtes-vous par exemple engagé dans une liaison avec un employé de BioTech?")
		
		ANSWER("Mais qu'est-ce que c'est que cette question?",58)

	NODE(58)
		SAY("Essayons une autre question. Est-ce que vous connaissez des employés de BioTech impliqués dans des affaires criminelles?")
		
		ANSWER("Vous allez trop loin maintenant. Vos questions n'ont plus rien à voir avec un sondage ou une étude statistique classique. Vous allez beaucoup trop loin.",59)
	NODE(59)
		SAY("Attention, runner. CityAdmin n'a aucune raison de vous interroger. CityAdmin est au-dessus de tout soupçon. Après tout, je vous rappelle que cet entretien est totalement volontaire.")
		
		ANSWER("CONTINUER",60)
	NODE(60)
		SAY("Laissez-moi rectifier quelque chose. Si vous acceptez cette entrevue et qu'ensuite vous désirez l'annuler, vous obtenez une mention dans votre dossier.")
		
		ANSWER("Merde! Mais alors qu'est-ce que c'est que ces questions? C'est ça, votre méthode pour dénicher les criminels? Pensez ce que vous voulez, moi je ne réponds plus à une seule question.",62)
	NODE(62)
		SAY("Vous n'avez pas suivi les informations dernièrement? On a accusé certains employés de BioTech de ne pas être en conformité avec la loi, et il y a même eu une exécution ou deux.")
		
		ANSWER("CONTINUER",63)
	NODE(63)
		SAY("Evidemment, ces criminels ont bien mérité leur peine. Après tout, ils étaient contre Neocron et son merveilleux système.")
		
		ANSWER("CONTINUER",64)
	NODE(64)
		SAY("CityAdmin ne désire que connaître la situation actuelle. BioTech est une entreprise aussi vulnérable et sujette à caution que n'importe quelle autre entreprise.")
		
		ANSWER("Mais ce ne sont que des rumeurs, n'est-ce pas?",65)
	NODE(65)
		SAY("A vrai dire cela importe peu. Mais puisque vous avez refusé de répondre à toutes mes questions, et que vous avez de ce fait remis en cause mon autorité et l'autorité de CityAdmin, je me vois dans l'obligation d'inscrire cela dans votre dossier.")
		
		ANSWER("CONTINUER",66)
	NODE(66)
		SAY("Vous êtes prévenu! CityAdmin aime ses citoyens, mais en échange elle attend de ses citoyens qu'ils se conforment aux règles. Si ces règles sont compromises, il n'existe qu'une seule sentence : la mort. Et dans votre cas, runner, vous avez échappé de peu à cette sentence.")
		
		ANSWER("Mais je n'ai rien fait qui...",67)
	NODE(67)
		SAY("Remettre en question l'autorité d'un employé de CityAdmin est plus que suffisant... maintenant allez-vous en avant de réellement vous attirer des ennuis.")
		SETNEXTDIALOGSTATE(68)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()

	NODE(68)
		SAY("Je ne veux plus rien entendre. Retournez à BioTech et allez leur faire votre joli petit rapport.")
		ENDDIALOG()
		



-----------------------------------------------------
--Human Resource Director

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)	
		if(result==0)then
 			SAY("Vous avez déjà terminé l'interview? Le point de rendez-vous est dans la Plaza.")
			ENDDIALOG()
		else
			SAY("Une journée productive, runner!")
		
			ANSWER("Oui, j'aurais bien aimé. Mais au lieu de ça j'ai perdu mon temps à parler avec un employé de CityAdmin.",101)
		end
	NODE(101)
		SAY("Calmez-vous, et ne parlez pas comme ça de CityAdmin. Après tout, ils protègent Neocron et tout ce qui s'y trouve.")
		
		ANSWER("Ouais! Et une pénalité pour tous : la mort!",102)
	NODE(102)
		SAY("Arrêtez ça tout de suite. Vous ne pouvez rien changer au système de toute façon, alors acceptez-le.")
		
		ANSWER("Ca ne sera pas facile, mais j'ai un tempérament de survivant. CityAdmin ne parviendra jamais à me mettre hors course!",103)
	NODE(103)
		SAY("Bien. Qu'est-ce qui s'est passé pendant cette interview? Qu'est-ce qui vous a mis dans cet état?")
		
		ANSWER("Tout a commencé calmement, mais ensuite les questions ont commencé à tourner autour de la compagnie et de ma vie privée. J'ai fini par me rendre compte que le but de ce type était seulement d'en apprendre plus sur BioTech.",104)
	NODE(104)
		SAY("Vous en êtes certain? C'est étrange... Est-ce qu'il vous a dit pourquoi il vous posait ces questions?")
		
		ANSWER("Il a parlé de rumeurs récentes au sujet de Biotech.",105)
	NODE(105)
		SAY("Des rumeurs! Oui, j'ai entendu parler de ça moi aussi. Mais j'étais loin d'imaginer que CityAdmin était déjà au courant. J'en ai moi-même entendu certaines.")
		
		ANSWER("Ces rumeurs sont avérées? Mais qu'est-ce qui fait que CityAdmin en soit au point d'envoyer des CopBots?",106)
	NODE(106)
		SAY("Le NCPD et CityAdmin veulent s'assurer que Neocron est un endroit sûr. C'est pourquoi ils ne négligent aucune rumeur. Les rumeurs peuvent être source de problèmes pour Neocron. Dans un tel cas, le NCPD passe par une période d'observation, et ensuite il fonce dans le tas.")
		
		ANSWER("On ne peut tout de même pas exécuter quelqu'un pour ce qu'il pense...",107)
	NODE(107)
		SAY("Oh, j'ai failli oublier. Il y a autre chose que j'aimerais vous confier, si vous vous en sentez la forme. C'est une petite livraison pour ProtoPharm, notre partenaire principal dans la construction d'implants. BioTech effectue des améliorations constantes de son éventail d'implants, et ProtoPharm participe à cette évolution.")
		
		ANSWER("CONTINUER",108)
	NODE(108)
		SAY("Les produits chimiques produits par ProtoPharm sont très importants pour prévenir certaines réactions du corps humain. Si ces drogues n'existaient pas, il y aurait beaucoup plus de phénomènes de rejets d'implants, crampes et dérèglements mentaux.") 
		
		ANSWER("Je ne pensais pas que les implants pouvaient être aussi dangereux!",109)
	NODE(109)
		SAY("C'est exactement ce que je veux dire. Grâce à la collaboration de ProtoPharm, ces implants ne sont plus du tout dangereux. Tous les implants sont testés intégralement avant leur mise en place sur le marché.")
		
		ANSWER("CONTINUER",110)
	NODE(110)
		SAY("La plupart du temps, ces implants sont testés au préalable sur les mutants et autres animaux dans les Terres Brûlées. On les surveille pendant un certain temps. Tout ceci pour vous dire que les implants BioTech sont une valeur sûre.")
		
		ANSWER("Il me semble vraiment que je ne me suis pas trompé de faction. Je suis prêt à faire cette livraison!",111)
	NODE(111)
		GIVEITEM(9200)
		SAY("Je suis ravi de l'entendre. Si vous êtes prêt, vous pouvez porter ce colis à ProtoPharm. Il contient des séries de chiffres qui représentent les résultats de nos tests sur les mutants. Repassez me voir après votre livraison pour toucher votre paie.")
		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()


-----------------------------------------------------
--Protopharm Employee

	NODE(150)
		TAKEITEM(9200)
		if(result==0)then
			SAY("Désolé, runner, mais j'ai trop de travail. Repassez plus tard.")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(151)
			SAY("Bonjour runner, qu'est-ce que vous voulez? Si vous cherchez des renseignements sur les produits ProtoPharm, veuillez vous adresser à un de nos revendeurs.")
		
			ANSWER("Non, je viens pour une livraison Des résultats de tests d'implants BioTech, pour être exact.",151)
		end
	NODE(151)
		SAY("Je vois. Alors donnez-moi ça, et je confirmerai la livraison. Je ne vous ai jamais vu... Vous venez de commencer, c'est ça?")
		
		ANSWER("Oui, vous avez l'oeil. Mais je m'adapte vite.",152)
	NODE(152)
		SAY("Ravi de l'entendre. On a toujours été en bons termes avec BioTech. Passez une bonne journée.")
		SETNEXTDIALOGSTATE(153)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
		
	NODE(153)
		SAY("C'est bon, la livraison a été confirmée. Si vous avez besoin d'autre chose, allez voir un de nos revendeurs ou bien retournez à BioTech. J'ai beaucoup de travail.")
		ENDDIALOG()
		


-----------------------------------------------------
--Human Resource Director

	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Vous n'avez pas encore effectué votre livraison. Dépêchez-vous, et revenez me voir ensuite.")
			ENDDIALOG()

		else
			GIVEMONEY(2000)
			SETNEXTDIALOGSTATE(201)
			SAY("Ah, c'est vous. La livraison a été confirmée. Voici la récompense promise par la régulation 318. Et souvenez-vous que plus BioTech vous apprécie, plus vous avez de chances de recevoir des tâches importantes.")
			EPICRUNFINISHED(5,0)
			ACTIVATEDIALOGTRIGGER(2)
			ENDDIALOG()	
		end

	NODE(201)
		SAY("Go away")
		ENDDIALOG()

end