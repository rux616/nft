--new
function DIALOG()
--Trigger
--Triggernumber,Type,Person
--0,D,Andressa
--6(1), PvNPC, Mutanten Beckert
--2, D, Beckert
--3,D, McMillan


--Startnode, Person
--0 Human Resource
--50 Andressa
--100 Beckert
--150 McMillan
--

-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("BioTech aimerait vous proposer un nouveau travail. Ceci a un lien avec le cube que vous nous avez transmis. Ce fut très enrichissant. Nous avons maintenant plusieurs noms de code de personnes qui apparemment ont reçu des informations concernant BioTech, et ce directement de sources internes à BioTech.")
		
		ANSWER("Ca veut dire que vous avez quelqu'un qui divulgue tous ces secrets? Je pensais que c'était uniquement quelques rumeurs. e n'aurais jamais pensé que c'était vrai.",1)
	NODE(1)
		SAY("Mais ça n'est pas vrai! Ces histoires ont été altérées pour causer du tort à BioTech.")
		
		ANSWER("CONTINUER",2)
	NODE(2)
		SAY("Mais nous n'avons pas encore trouvé de piste valide pour retrouver cette personne. Actuellement, nous ne savons pas qui est la taupe. Et ce n'est probablement pas qu'une seule personne.")
		
		ANSWER("Et qu'est-ce qu'on peut faire contre cela?",3)
		ANSWER("Actuellement je ne suis pas libre pour ce genre de mission.",7)
	NODE(3)
		SAY("La procédure est très complexe, mais le plan est d'espionner les moindres faits et gestes des personnes concernées. C'est là que nous avons besoin de vous. BioTech aimerait que vous rencontriez une certaine Andressa. Elle se trouve souvent au restaurant Chez Sypher. Elle travaille dans notre département de recherches, et ces derniers temps ses activités nous paraissent pour le moins étranges.")
		
		ANSWER("Aucun problème. Mais qu'est-ce que je fais ensuite? Je me contente de lui demander si elle transmet des informations compromettantes au sujet de BioTech?",4)
	NODE(4)
		SAY("Non, ça ne serait pas très discret. Vous devez la convaincre de vous donner des informations importantes. Proposez-lui 50.000 crédits, par exemple. Après tout, vous n'avez pas à la payer réellement.")
		
		ANSWER("Et si elle me donne ces informations?",5)
	NODE(5)
		SAY("Je pense qu'avec tout le remue-ménage qui a eu lieu dernièrement, elle perdra son poste. Si vous l'abattiez, ça ne ferait qu'attirer des regards dont on pourrait fort bien se passer.")
		
		ANSWER("Parfait, je m'en charge.",6)
	NODE(6)
		SAY("Vous la trouverez dans ce quartier. Généralement elle prend ses repas chez Sypher. Revenez ensuite transmettre ce que vous savez à M. McMillan.")
		ACCEPTMISSION()
		SETNEXTDIALOGSTATE(8)
		ENDDIALOG()
		
	NODE(7)
		SAY("C'est vraiment dommage. Mais contactez-nous si vous êtes libre.")
		ENDDIALOG()
		
	NODE(8)
		SAY("Je pensais vous avoir déjà donné quelque chose à faire? Allez voir Andressa, juste en sortant de chez Biotech.")
		ENDDIALOG()
		


-----------------------------------------------------
--Andressa

	NODE(50)
		SAY("Oui? Je suis en train de déjeuner, faites vite.")
		
		ANSWER("Vous travaillez pour BioTech, c'est vrai?",51)

	NODE(51)
		SAY("Oui, c'est exact. Pourquoi cette question?")
		
		ANSWER("Comment dire... BioTech m'intéresse beaucoup, et je me demandais si vous auriez quelques informations à ce sujet? Disons des rumeurs, des secrets inavouables...",52)
	NODE(52)
		SAY("Vous me prenez pour qui? Je ne suis pas une espionne!")
		
		ANSWER("Vous êtes certaine? C'est que ça pourrait vous rapporter une belle somme. 50.000 crédits si l'information les vaut.",53)

	NODE(53)
		SAY("50.000? C'est une belle somme. Mais comment est-ce que je sais que je peux vous faire confiance? Comment est-ce que je sais que vous n'êtes pas en train d'essayer de m'avoir?")
		
		ANSWER("C'est impossible à savoir. Mais c'est vous qui décidez, c'est oui ou c'est non.",54)
	NODE(54)
		SAY("... Je n'entre pas dans votre petit jeu. Je ne crois pas que vous recherchez des infos sur BioTech. Plutôt que vous recherchez ceux qui répandent ces rumeurs sur le réseau. J'ai raison?")
		
		ANSWER("Pas du tout, pas du tout... Est-ce que vous savez quelque chose à ce sujet? Vous savez qui est derrière tout ça? Et qu'est-ce que vous savez à ce sujet, d'abord?",55)

	NODE(55)
		SAY("Je savais que BioTech finirait par mettre le nez dans ces affaires un jour ou l'autre, et je ne vais pas m'en tirer sans égratignures. Vous avez été envoyé par BioTech pour m'interroger, n'est-ce pas?")
		
		ANSWER("Peut-être...",56)
	NODE(56)
		SAY("Ok, alors je vais vous dire quelque chose. Je sais que mon poste chez BioTech est en danger, et je vais vous dire ce que je sais. Au moins, ça pourra peut-être les rendre plus compréhensifs si je dévoile tout.")
		
		ANSWER("Une proposition honnête. Continuez...",57)

	NODE(57)
		SAY("Tout a commencé il y a quelques mois. J'étais là, je mangeais, comme d'habitude, et quelqu'un s'est assis et a commencé à me parler. Il m'a proposé beaucoup d'argent si je lui transmettais des informations vitales au sujet de la compagnie. D'abord j'ai eu des doutes, mais j'avais eu besoin de cet argent, alors...")
		
		ANSWER("CONTINUER",58)
	NODE(58)
		SAY("C'est vrai, j'avais des doutes. Mes collègues de travail étaient gentils, l'atmosphère était bonne. Mais je voulais cet argent, je n'ai pas pu résister. C'est comme ça que je leur ai donné les quelques secrets que je connaissais au sujet de certains employés de BioTech.")
		
		ANSWER("J'aurai pu deviner ça par moi-même. Est-ce que vous pourriez être un peu plus précise?",59)

	NODE(59)
		SAY("Eh bien... Les gens qui m'ont parlé, je ne les connais pas vraiment. Je sais seulement qu'ils ont transmis mes informations dans une station de transmission dans les Terres Brûlées. Quelque part près des vieilles ruines.")
		
		ANSWER("Et cette station, où est-ce qu'elle se trouve exactement?",60)
	NODE(60)
		SAY("Oui, c'est soit le village Yucida, soit le village Loba. Je n'en sais pas plus, je vous le jure. Même la personne avec qui j'ai parlée ne m'a pas dit son nom. Il n'apparaît sur aucun terminal. Mais je pense que cette station est votre meilleure piste.")
		
		ANSWER("Je vais aller voir ça...",61)

	NODE(61)
		SAY("Bonne chance dans votre enquête.")
		SETNEXTDIALOGSTATE(62)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
		
	NODE(62)
		SAY("Vous avez été voir dans le village Loba?")
		ENDDIALOG()
		



-----------------------------------------------------
--Beckert

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Décampez! Vous voyez pas que je suis occupé?")
			ENDDIALOG()
		else	
			SAY("C'est moi que vous cherchez?")
		
			ANSWER("Oui. C'est une station de transmission, c'est exact?",101)
		end
	NODE(101)
		SAY("Ouaip. Elle est petite, mais c'est la mienne. Je gagne de l'argent en la louant à des gens. La plupart du temps, ces gens ont besoin de canaux de transmission qui n'entrent pas dans le cadre des lois. Vous avez envie de louer?")
		
		ANSWER("Pas vraiment. Mais ce qui m'intéresse, c'est la liste des gens qui ont loué vos services dernièrement.",102)
	NODE(102)
		SAY("Vous comprendrez que je peux pas faire ça. Mes clients comptent sur moi pour ne rien dévoiler de leurs secrets.")
		
		ANSWER("Vous pourriez m'être d'une grande aide, vous savez...",103)
	NODE(103)
		SAY("Laissez-moi réfléchir. Il y a quelque chose que vous pouvez faire. Dehors, il y a des créatures immondes, des mutants, et ça fait des nuits que je ne dors plus à cause de ça. Si vous pouviez m'en débarrasser, alors je pourrais peut-être vous donner ce que vous recherchez.")
		
		ANSWER("Si vous insistez, alors on va faire comme ça.",104)
	NODE(104)
		SAY("Très bien. Allez me ramener le cadavre de cinq mutant corporals. Ensuite, je trouverai peut-être le sommeil.")
		
		ANSWER("CONTINUER",105)
	NODE(105)
		SAY("C'est étrange, mais ces mutants portent tous des implants de toutes sortes. Je pense que c'est ça qui les rend agressifs. J'ai tout un tas de ces puces, mais j'en ai pas l'utilité.")
		SETNEXTDIALOGSTATE(106)
		ENDDIALOG()
		
--Spieler tötet 5 Mutanten trigger 6

	NODE(106)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("J'ai bien vu ce que vous faisiez... Vous n'avez pas encore tué cinq mutants.")
			ENDDIALOG()
		else
			SAY("Vous entendez? Plus de cris, plus de rugissements... Je vais vous donner un de ces implants. Il y a marqué BioTech dessus, mais je sais pas ce que ça veut dire. Et puis pendant que vous chassiez j'en ai profité pour regarder dans mes dossiers, mais j'ai pas pu trouver ce que vous recherchiez... C'est un sacré bazar sur mes disques durs... héhéhé.")
		
			ANSWER("CONTINUER",107)
		end

--Spieler bekommt Mutanten Implantat
	NODE(107)
		GIVEITEM(9202)
		SAY("Mais lorsque je retrouverai ça, je vous l'enverrai. A qui est-ce que je dois l'adresser?")
		
		ANSWER("Contentez-vous d'envoyer ça à BioTech. Tôt ou tard, j'en aurai connaissance.",108)
	NODE(108)
		SAY("BioTech, hein? OK. Je vous envoie ça dès que j'arrive à remettre la main dessus.")
		SETNEXTDIALOGSTATE(109)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()		


	NODE(109)
		SAY("Je suis pas aussi rapide, du calme... Donnez-moi un peu plus de temps. Pourquoi vous allez pas dans votre compagnie en attendant?")
		ENDDIALOG()


-----------------------------------------------------
--McMillan

	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(2)
		if (result==0)then
			SAY("Voulez-vous patienter? Je n'ai pas de temps à vos consacrer pour le moment. Merci.")
			ENDDIALOG()
		else
			SAY("Navré, mais j'ai beaucoup de choses à faire actuellement. Faisons bref. Vous vous rappelez de ces rumeurs qui ont été diffusées sur le réseau? Elles se sont considérablement calmées, on en voit de moins en moins.")
		
			ANSWER("J'ai fait une enquête pour BioTech, et j'ai découvert qu'une certaine Andressa a vendu des informations compromettantes au sujet de la compagnie.",151)
		end
	NODE(151)
		SAY("La situation s'améliore. Moins nous avons de gens qui diffusent ces informations, moins nous avons de publicité négative.")
		
		ANSWER("Je suis aussi allé dans une station de transmission qui a été utilisée pour diffuser ces rumeurs sur BioTech. Le propriétaire de cette station m'a assuré qu'il allait vous envoyer une liste de personnes s'étant servies de cette station récemment.",152)
	NODE(152)
		SAY("Bon travail.")
		
		ANSWER("Il y a autre chose. On m'a donné cette puce. Elle est implantée dans de nombreux mutants qui se trouvent dans le voisinage de cette station. Il semble qu'elle rend les mutants plus agressifs. Est-ce que BioTech a mené des expériences sur ces mutants?",153)
	NODE(153)
		SAY("Evidemment. D'après la loi, les mutants sont même inférieurs aux animaux. On peut faire ce qu'on veut avec eux.")
		
		ANSWER("Mais autrefois humains...!!",154)
	NODE(154)
		TAKEITEM(9202)
		if(result==0)then
			SAY("Où est-ce que vous avez mis cet implant? Donnez-le moi si vous voulez que je m'occupe de l'affaire.")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(155)
			SAY("Oui, c'est quelque chose que j'entends trop souvent, runner. Mais ça n'est pas moi qui écris les lois. J'essaye seulement de les respecter. Donnez-moi cette puce, et je ferai analyser les informations qu'elle contient.")
		
			ANSWER("Bien, je vous contacterai dès que les informations vous parviendront depuis la station de transmission.",155)
		end
	NODE(155)
		GIVEMONEY(10000)
		SAY("D'accord. Voici une récompense de 10.000 crédits. Prenez soin de vous, runner.")
			EPICRUNFINISHED(5,2)
		ACTIVATEDIALOGTRIGGER(3)		
		ENDDIALOG()
		

end