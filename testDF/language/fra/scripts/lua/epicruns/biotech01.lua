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
		SAY("Ahh, on m'a d�j� inform� qu'il y aurait de nouveaux runners chez BioTech. Les nouveaux membres sont toujours les bienvenue dans nos rangs.")
		
		ANSWER("CONTINUER",1)
	NODE(1)
		SAY("La proc�dure normale serait que le directeur des Op�rations vienne personnellement vous accueillir, mais il est actuellement en rendez-vous important avez Seymour Jordan. Vous comprendrez que cette entrevue ne souffre pas l'ajournement.")
		
		ANSWER("C'est dommage, mais je comprends. Quelles sont les t�ches qui m'attendent, au juste, maintenant que je travaille pour BioTech?",2)
	NODE(2)
		SAY("Voil� tout ce que j'aime : direct et efficace. On a d�j� d� vous remettre la cl� de votre appartement. En �change, nous ne vous demandons que votre loyaut� et votre attachement � quelques missions sp�ciales. Mais nous parlerons de tout ceci plus tard. Vous avez fait le bon choix en venant chez BioTech, f�licitations.")
		
		ANSWER("CONTINUER",3)
	NODE(3)
		SAY("Je devrais peut-�tre d'abord vous en apprendre plus sur la compagnie. BioTech a �t� impliqu�e dans de nombreux projets depuis sa fondation, en 2638. Actuellement, son but quasi-exclusif est le d�veloppement et la production d'implants de toutes sortes.")
		
		ANSWER("CONTINUER",4)
	NODE(4)
		SAY("Ceci ne signifie pas que la construction de vaisseaux spatiaux, la m�decine ou les armes sont �trangers � BioTech. En effet, le premier vaisseau spatial, l'Avenger, a �t� d�velopp� et construit par BioTech.")
		
		ANSWER("Oui, j'en ai entendu parler.",5)
	NODE(5)
		SAY("Retour au pr�sent. CityAdmin nous demande un entretien avec une de nos toutes derni�res recrues. Ils sont en train de faire une analyse, et ont besoin de poser quelques questions. Cela ne devrait pas prendre trop de temps, et BioTech serait m�me dispos�e � vous offrir quelque compensation.")
		
		ANSWER("Ca m'a l'air bien, je pense que j'y arriverai.",6)
		ANSWER("Pardon, mais pour le moment �a ne sera pas possible.",7)
	NODE(6)
		SAY("Excellent. Vous trouverez un employ� de CityAdmin dans la Plaza secteur 2. Nous avons organis� une rencontre dans un restaurant du quartier. Revenez ici une fois que vous avez termin�, pour nous communiquer votre rapport.")
		ACCEPTMISSION()
		SETNEXTDIALOGSTATE(100)
		ENDDIALOG()
		
	NODE(7)
		SAY("Vous pouvez toujours changer d'avis si vous voulez.")
		ENDDIALOG()


-----------------------------------------------------
--Thompson

	NODE(50)
		SAY("Bonjour. Vous venez de chez BioTech, c'est bien �a?")
		
		ANSWER("Oui. Et je devine que vous travaillez pour CityAdmin...?",51)

	NODE(51)
		SAY("Parfait. Je m'appelle Thompson. J'ai bien peur de ne pas avoir beaucoup de temps, alors nous allons nous y mettre tout de suite, d'accord? J'attire votre attention sur le fait que cette conversation sera enregistr�e. Presque tout ce qui se passe dans Neocron est enregistr� d'une mani�re ou d'une autre, mais il faut pourtant que je le pr�cise � chaque fois...")
		
		ANSWER("C'est assez d�rangeant si tout est enregistr�...",52)
		
	NODE(52)
		SAY("Vous savez, certains endroits dans CityAdmin sont tout de m�me � l'abri de tous les regards. M�me si M. Reza aimerait peut-�tre changer �a.")
		
		ANSWER("D'accord, commen�ons tout de suite. De quoi est-ce qu'on va parler?",53)
	NODE(53)
		SAY("Je travaille sur une �tude concernant le comportement g�n�ral des citoyens. Ensuite nous effectuerons des comparaisons entre les diff�rentes factions afin d'en tirer des informations pertinentes.")
		
		ANSWER("CONTINUER",54)
	NODE(54)
		SAY("Mais vous pouvez imaginer que pour une personne seule �a n'est pas une sin�cure. Je ne suis m�me pas certain que notre conversation soit un jour publi�e ou que quelqu'un en entende parler. Mais je dois tout de m�me vous poser ces questions pour mener ma mission � bien.")
		
		ANSWER("Si ce n'est que �a... Allez-y.",55)
	NODE(55)
		SAY("Bon. Pourquoi est-ce que vous avez choisi BioTech? Le professionnalisme de la compagnie? Sa taille? Autre chose?")
		
		ANSWER("Je pense que c'est un peu de tout �a, et je suis plus qu'int�ress� par les produits Biotech.",56)
	NODE(56)
		SAY("Merci. Est-ce que vous avez d�j� connu de mauvaises exp�riences avec BioTech? Est-ce que certains employ�s se comportent de mani�re �trange, qui pourrait �veiller les soup�ons?")
		
		ANSWER("Non, pas que je sache. Je ne pense pas que ce soit monnaie courante.",57)
	NODE(57)
		SAY("Avez-vous �t� en relation, voire en relation intime avec un ou plusieurs des employ�s de BioTech? Ou �tes-vous par exemple engag� dans une liaison avec un employ� de BioTech?")
		
		ANSWER("Mais qu'est-ce que c'est que cette question?",58)

	NODE(58)
		SAY("Essayons une autre question. Est-ce que vous connaissez des employ�s de BioTech impliqu�s dans des affaires criminelles?")
		
		ANSWER("Vous allez trop loin maintenant. Vos questions n'ont plus rien � voir avec un sondage ou une �tude statistique classique. Vous allez beaucoup trop loin.",59)
	NODE(59)
		SAY("Attention, runner. CityAdmin n'a aucune raison de vous interroger. CityAdmin est au-dessus de tout soup�on. Apr�s tout, je vous rappelle que cet entretien est totalement volontaire.")
		
		ANSWER("CONTINUER",60)
	NODE(60)
		SAY("Laissez-moi rectifier quelque chose. Si vous acceptez cette entrevue et qu'ensuite vous d�sirez l'annuler, vous obtenez une mention dans votre dossier.")
		
		ANSWER("Merde! Mais alors qu'est-ce que c'est que ces questions? C'est �a, votre m�thode pour d�nicher les criminels? Pensez ce que vous voulez, moi je ne r�ponds plus � une seule question.",62)
	NODE(62)
		SAY("Vous n'avez pas suivi les informations derni�rement? On a accus� certains employ�s de BioTech de ne pas �tre en conformit� avec la loi, et il y a m�me eu une ex�cution ou deux.")
		
		ANSWER("CONTINUER",63)
	NODE(63)
		SAY("Evidemment, ces criminels ont bien m�rit� leur peine. Apr�s tout, ils �taient contre Neocron et son merveilleux syst�me.")
		
		ANSWER("CONTINUER",64)
	NODE(64)
		SAY("CityAdmin ne d�sire que conna�tre la situation actuelle. BioTech est une entreprise aussi vuln�rable et sujette � caution que n'importe quelle autre entreprise.")
		
		ANSWER("Mais ce ne sont que des rumeurs, n'est-ce pas?",65)
	NODE(65)
		SAY("A vrai dire cela importe peu. Mais puisque vous avez refus� de r�pondre � toutes mes questions, et que vous avez de ce fait remis en cause mon autorit� et l'autorit� de CityAdmin, je me vois dans l'obligation d'inscrire cela dans votre dossier.")
		
		ANSWER("CONTINUER",66)
	NODE(66)
		SAY("Vous �tes pr�venu! CityAdmin aime ses citoyens, mais en �change elle attend de ses citoyens qu'ils se conforment aux r�gles. Si ces r�gles sont compromises, il n'existe qu'une seule sentence : la mort. Et dans votre cas, runner, vous avez �chapp� de peu � cette sentence.")
		
		ANSWER("Mais je n'ai rien fait qui...",67)
	NODE(67)
		SAY("Remettre en question l'autorit� d'un employ� de CityAdmin est plus que suffisant... maintenant allez-vous en avant de r�ellement vous attirer des ennuis.")
		SETNEXTDIALOGSTATE(68)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()

	NODE(68)
		SAY("Je ne veux plus rien entendre. Retournez � BioTech et allez leur faire votre joli petit rapport.")
		ENDDIALOG()
		



-----------------------------------------------------
--Human Resource Director

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)	
		if(result==0)then
 			SAY("Vous avez d�j� termin� l'interview? Le point de rendez-vous est dans la Plaza.")
			ENDDIALOG()
		else
			SAY("Une journ�e productive, runner!")
		
			ANSWER("Oui, j'aurais bien aim�. Mais au lieu de �a j'ai perdu mon temps � parler avec un employ� de CityAdmin.",101)
		end
	NODE(101)
		SAY("Calmez-vous, et ne parlez pas comme �a de CityAdmin. Apr�s tout, ils prot�gent Neocron et tout ce qui s'y trouve.")
		
		ANSWER("Ouais! Et une p�nalit� pour tous : la mort!",102)
	NODE(102)
		SAY("Arr�tez �a tout de suite. Vous ne pouvez rien changer au syst�me de toute fa�on, alors acceptez-le.")
		
		ANSWER("Ca ne sera pas facile, mais j'ai un temp�rament de survivant. CityAdmin ne parviendra jamais � me mettre hors course!",103)
	NODE(103)
		SAY("Bien. Qu'est-ce qui s'est pass� pendant cette interview? Qu'est-ce qui vous a mis dans cet �tat?")
		
		ANSWER("Tout a commenc� calmement, mais ensuite les questions ont commenc� � tourner autour de la compagnie et de ma vie priv�e. J'ai fini par me rendre compte que le but de ce type �tait seulement d'en apprendre plus sur BioTech.",104)
	NODE(104)
		SAY("Vous en �tes certain? C'est �trange... Est-ce qu'il vous a dit pourquoi il vous posait ces questions?")
		
		ANSWER("Il a parl� de rumeurs r�centes au sujet de Biotech.",105)
	NODE(105)
		SAY("Des rumeurs! Oui, j'ai entendu parler de �a moi aussi. Mais j'�tais loin d'imaginer que CityAdmin �tait d�j� au courant. J'en ai moi-m�me entendu certaines.")
		
		ANSWER("Ces rumeurs sont av�r�es? Mais qu'est-ce qui fait que CityAdmin en soit au point d'envoyer des CopBots?",106)
	NODE(106)
		SAY("Le NCPD et CityAdmin veulent s'assurer que Neocron est un endroit s�r. C'est pourquoi ils ne n�gligent aucune rumeur. Les rumeurs peuvent �tre source de probl�mes pour Neocron. Dans un tel cas, le NCPD passe par une p�riode d'observation, et ensuite il fonce dans le tas.")
		
		ANSWER("On ne peut tout de m�me pas ex�cuter quelqu'un pour ce qu'il pense...",107)
	NODE(107)
		SAY("Oh, j'ai failli oublier. Il y a autre chose que j'aimerais vous confier, si vous vous en sentez la forme. C'est une petite livraison pour ProtoPharm, notre partenaire principal dans la construction d'implants. BioTech effectue des am�liorations constantes de son �ventail d'implants, et ProtoPharm participe � cette �volution.")
		
		ANSWER("CONTINUER",108)
	NODE(108)
		SAY("Les produits chimiques produits par ProtoPharm sont tr�s importants pour pr�venir certaines r�actions du corps humain. Si ces drogues n'existaient pas, il y aurait beaucoup plus de ph�nom�nes de rejets d'implants, crampes et d�r�glements mentaux.") 
		
		ANSWER("Je ne pensais pas que les implants pouvaient �tre aussi dangereux!",109)
	NODE(109)
		SAY("C'est exactement ce que je veux dire. Gr�ce � la collaboration de ProtoPharm, ces implants ne sont plus du tout dangereux. Tous les implants sont test�s int�gralement avant leur mise en place sur le march�.")
		
		ANSWER("CONTINUER",110)
	NODE(110)
		SAY("La plupart du temps, ces implants sont test�s au pr�alable sur les mutants et autres animaux dans les Terres Br�l�es. On les surveille pendant un certain temps. Tout ceci pour vous dire que les implants BioTech sont une valeur s�re.")
		
		ANSWER("Il me semble vraiment que je ne me suis pas tromp� de faction. Je suis pr�t � faire cette livraison!",111)
	NODE(111)
		GIVEITEM(9200)
		SAY("Je suis ravi de l'entendre. Si vous �tes pr�t, vous pouvez porter ce colis � ProtoPharm. Il contient des s�ries de chiffres qui repr�sentent les r�sultats de nos tests sur les mutants. Repassez me voir apr�s votre livraison pour toucher votre paie.")
		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()


-----------------------------------------------------
--Protopharm Employee

	NODE(150)
		TAKEITEM(9200)
		if(result==0)then
			SAY("D�sol�, runner, mais j'ai trop de travail. Repassez plus tard.")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(151)
			SAY("Bonjour runner, qu'est-ce que vous voulez? Si vous cherchez des renseignements sur les produits ProtoPharm, veuillez vous adresser � un de nos revendeurs.")
		
			ANSWER("Non, je viens pour une livraison Des r�sultats de tests d'implants BioTech, pour �tre exact.",151)
		end
	NODE(151)
		SAY("Je vois. Alors donnez-moi �a, et je confirmerai la livraison. Je ne vous ai jamais vu... Vous venez de commencer, c'est �a?")
		
		ANSWER("Oui, vous avez l'oeil. Mais je m'adapte vite.",152)
	NODE(152)
		SAY("Ravi de l'entendre. On a toujours �t� en bons termes avec BioTech. Passez une bonne journ�e.")
		SETNEXTDIALOGSTATE(153)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
		
	NODE(153)
		SAY("C'est bon, la livraison a �t� confirm�e. Si vous avez besoin d'autre chose, allez voir un de nos revendeurs ou bien retournez � BioTech. J'ai beaucoup de travail.")
		ENDDIALOG()
		


-----------------------------------------------------
--Human Resource Director

	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Vous n'avez pas encore effectu� votre livraison. D�p�chez-vous, et revenez me voir ensuite.")
			ENDDIALOG()

		else
			GIVEMONEY(2000)
			SETNEXTDIALOGSTATE(201)
			SAY("Ah, c'est vous. La livraison a �t� confirm�e. Voici la r�compense promise par la r�gulation 318. Et souvenez-vous que plus BioTech vous appr�cie, plus vous avez de chances de recevoir des t�ches importantes.")
			EPICRUNFINISHED(5,0)
			ACTIVATEDIALOGTRIGGER(2)
			ENDDIALOG()	
		end

	NODE(201)
		SAY("Go away")
		ENDDIALOG()

end