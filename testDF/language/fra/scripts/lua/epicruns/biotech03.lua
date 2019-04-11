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
		SAY("BioTech aimerait vous proposer un nouveau travail. Ceci a un lien avec le cube que vous nous avez transmis. Ce fut tr�s enrichissant. Nous avons maintenant plusieurs noms de code de personnes qui apparemment ont re�u des informations concernant BioTech, et ce directement de sources internes � BioTech.")
		
		ANSWER("Ca veut dire que vous avez quelqu'un qui divulgue tous ces secrets? Je pensais que c'�tait uniquement quelques rumeurs. e n'aurais jamais pens� que c'�tait vrai.",1)
	NODE(1)
		SAY("Mais �a n'est pas vrai! Ces histoires ont �t� alt�r�es pour causer du tort � BioTech.")
		
		ANSWER("CONTINUER",2)
	NODE(2)
		SAY("Mais nous n'avons pas encore trouv� de piste valide pour retrouver cette personne. Actuellement, nous ne savons pas qui est la taupe. Et ce n'est probablement pas qu'une seule personne.")
		
		ANSWER("Et qu'est-ce qu'on peut faire contre cela?",3)
		ANSWER("Actuellement je ne suis pas libre pour ce genre de mission.",7)
	NODE(3)
		SAY("La proc�dure est tr�s complexe, mais le plan est d'espionner les moindres faits et gestes des personnes concern�es. C'est l� que nous avons besoin de vous. BioTech aimerait que vous rencontriez une certaine Andressa. Elle se trouve souvent au restaurant Chez Sypher. Elle travaille dans notre d�partement de recherches, et ces derniers temps ses activit�s nous paraissent pour le moins �tranges.")
		
		ANSWER("Aucun probl�me. Mais qu'est-ce que je fais ensuite? Je me contente de lui demander si elle transmet des informations compromettantes au sujet de BioTech?",4)
	NODE(4)
		SAY("Non, �a ne serait pas tr�s discret. Vous devez la convaincre de vous donner des informations importantes. Proposez-lui 50.000 cr�dits, par exemple. Apr�s tout, vous n'avez pas � la payer r�ellement.")
		
		ANSWER("Et si elle me donne ces informations?",5)
	NODE(5)
		SAY("Je pense qu'avec tout le remue-m�nage qui a eu lieu derni�rement, elle perdra son poste. Si vous l'abattiez, �a ne ferait qu'attirer des regards dont on pourrait fort bien se passer.")
		
		ANSWER("Parfait, je m'en charge.",6)
	NODE(6)
		SAY("Vous la trouverez dans ce quartier. G�n�ralement elle prend ses repas chez Sypher. Revenez ensuite transmettre ce que vous savez � M. McMillan.")
		ACCEPTMISSION()
		SETNEXTDIALOGSTATE(8)
		ENDDIALOG()
		
	NODE(7)
		SAY("C'est vraiment dommage. Mais contactez-nous si vous �tes libre.")
		ENDDIALOG()
		
	NODE(8)
		SAY("Je pensais vous avoir d�j� donn� quelque chose � faire? Allez voir Andressa, juste en sortant de chez Biotech.")
		ENDDIALOG()
		


-----------------------------------------------------
--Andressa

	NODE(50)
		SAY("Oui? Je suis en train de d�jeuner, faites vite.")
		
		ANSWER("Vous travaillez pour BioTech, c'est vrai?",51)

	NODE(51)
		SAY("Oui, c'est exact. Pourquoi cette question?")
		
		ANSWER("Comment dire... BioTech m'int�resse beaucoup, et je me demandais si vous auriez quelques informations � ce sujet? Disons des rumeurs, des secrets inavouables...",52)
	NODE(52)
		SAY("Vous me prenez pour qui? Je ne suis pas une espionne!")
		
		ANSWER("Vous �tes certaine? C'est que �a pourrait vous rapporter une belle somme. 50.000 cr�dits si l'information les vaut.",53)

	NODE(53)
		SAY("50.000? C'est une belle somme. Mais comment est-ce que je sais que je peux vous faire confiance? Comment est-ce que je sais que vous n'�tes pas en train d'essayer de m'avoir?")
		
		ANSWER("C'est impossible � savoir. Mais c'est vous qui d�cidez, c'est oui ou c'est non.",54)
	NODE(54)
		SAY("... Je n'entre pas dans votre petit jeu. Je ne crois pas que vous recherchez des infos sur BioTech. Plut�t que vous recherchez ceux qui r�pandent ces rumeurs sur le r�seau. J'ai raison?")
		
		ANSWER("Pas du tout, pas du tout... Est-ce que vous savez quelque chose � ce sujet? Vous savez qui est derri�re tout �a? Et qu'est-ce que vous savez � ce sujet, d'abord?",55)

	NODE(55)
		SAY("Je savais que BioTech finirait par mettre le nez dans ces affaires un jour ou l'autre, et je ne vais pas m'en tirer sans �gratignures. Vous avez �t� envoy� par BioTech pour m'interroger, n'est-ce pas?")
		
		ANSWER("Peut-�tre...",56)
	NODE(56)
		SAY("Ok, alors je vais vous dire quelque chose. Je sais que mon poste chez BioTech est en danger, et je vais vous dire ce que je sais. Au moins, �a pourra peut-�tre les rendre plus compr�hensifs si je d�voile tout.")
		
		ANSWER("Une proposition honn�te. Continuez...",57)

	NODE(57)
		SAY("Tout a commenc� il y a quelques mois. J'�tais l�, je mangeais, comme d'habitude, et quelqu'un s'est assis et a commenc� � me parler. Il m'a propos� beaucoup d'argent si je lui transmettais des informations vitales au sujet de la compagnie. D'abord j'ai eu des doutes, mais j'avais eu besoin de cet argent, alors...")
		
		ANSWER("CONTINUER",58)
	NODE(58)
		SAY("C'est vrai, j'avais des doutes. Mes coll�gues de travail �taient gentils, l'atmosph�re �tait bonne. Mais je voulais cet argent, je n'ai pas pu r�sister. C'est comme �a que je leur ai donn� les quelques secrets que je connaissais au sujet de certains employ�s de BioTech.")
		
		ANSWER("J'aurai pu deviner �a par moi-m�me. Est-ce que vous pourriez �tre un peu plus pr�cise?",59)

	NODE(59)
		SAY("Eh bien... Les gens qui m'ont parl�, je ne les connais pas vraiment. Je sais seulement qu'ils ont transmis mes informations dans une station de transmission dans les Terres Br�l�es. Quelque part pr�s des vieilles ruines.")
		
		ANSWER("Et cette station, o� est-ce qu'elle se trouve exactement?",60)
	NODE(60)
		SAY("Oui, c'est soit le village Yucida, soit le village Loba. Je n'en sais pas plus, je vous le jure. M�me la personne avec qui j'ai parl�e ne m'a pas dit son nom. Il n'appara�t sur aucun terminal. Mais je pense que cette station est votre meilleure piste.")
		
		ANSWER("Je vais aller voir �a...",61)

	NODE(61)
		SAY("Bonne chance dans votre enqu�te.")
		SETNEXTDIALOGSTATE(62)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
		
	NODE(62)
		SAY("Vous avez �t� voir dans le village Loba?")
		ENDDIALOG()
		



-----------------------------------------------------
--Beckert

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("D�campez! Vous voyez pas que je suis occup�?")
			ENDDIALOG()
		else	
			SAY("C'est moi que vous cherchez?")
		
			ANSWER("Oui. C'est une station de transmission, c'est exact?",101)
		end
	NODE(101)
		SAY("Ouaip. Elle est petite, mais c'est la mienne. Je gagne de l'argent en la louant � des gens. La plupart du temps, ces gens ont besoin de canaux de transmission qui n'entrent pas dans le cadre des lois. Vous avez envie de louer?")
		
		ANSWER("Pas vraiment. Mais ce qui m'int�resse, c'est la liste des gens qui ont lou� vos services derni�rement.",102)
	NODE(102)
		SAY("Vous comprendrez que je peux pas faire �a. Mes clients comptent sur moi pour ne rien d�voiler de leurs secrets.")
		
		ANSWER("Vous pourriez m'�tre d'une grande aide, vous savez...",103)
	NODE(103)
		SAY("Laissez-moi r�fl�chir. Il y a quelque chose que vous pouvez faire. Dehors, il y a des cr�atures immondes, des mutants, et �a fait des nuits que je ne dors plus � cause de �a. Si vous pouviez m'en d�barrasser, alors je pourrais peut-�tre vous donner ce que vous recherchez.")
		
		ANSWER("Si vous insistez, alors on va faire comme �a.",104)
	NODE(104)
		SAY("Tr�s bien. Allez me ramener le cadavre de cinq mutant corporals. Ensuite, je trouverai peut-�tre le sommeil.")
		
		ANSWER("CONTINUER",105)
	NODE(105)
		SAY("C'est �trange, mais ces mutants portent tous des implants de toutes sortes. Je pense que c'est �a qui les rend agressifs. J'ai tout un tas de ces puces, mais j'en ai pas l'utilit�.")
		SETNEXTDIALOGSTATE(106)
		ENDDIALOG()
		
--Spieler t�tet 5 Mutanten trigger 6

	NODE(106)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("J'ai bien vu ce que vous faisiez... Vous n'avez pas encore tu� cinq mutants.")
			ENDDIALOG()
		else
			SAY("Vous entendez? Plus de cris, plus de rugissements... Je vais vous donner un de ces implants. Il y a marqu� BioTech dessus, mais je sais pas ce que �a veut dire. Et puis pendant que vous chassiez j'en ai profit� pour regarder dans mes dossiers, mais j'ai pas pu trouver ce que vous recherchiez... C'est un sacr� bazar sur mes disques durs... h�h�h�.")
		
			ANSWER("CONTINUER",107)
		end

--Spieler bekommt Mutanten Implantat
	NODE(107)
		GIVEITEM(9202)
		SAY("Mais lorsque je retrouverai �a, je vous l'enverrai. A qui est-ce que je dois l'adresser?")
		
		ANSWER("Contentez-vous d'envoyer �a � BioTech. T�t ou tard, j'en aurai connaissance.",108)
	NODE(108)
		SAY("BioTech, hein? OK. Je vous envoie �a d�s que j'arrive � remettre la main dessus.")
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
			SAY("Voulez-vous patienter? Je n'ai pas de temps � vos consacrer pour le moment. Merci.")
			ENDDIALOG()
		else
			SAY("Navr�, mais j'ai beaucoup de choses � faire actuellement. Faisons bref. Vous vous rappelez de ces rumeurs qui ont �t� diffus�es sur le r�seau? Elles se sont consid�rablement calm�es, on en voit de moins en moins.")
		
			ANSWER("J'ai fait une enqu�te pour BioTech, et j'ai d�couvert qu'une certaine Andressa a vendu des informations compromettantes au sujet de la compagnie.",151)
		end
	NODE(151)
		SAY("La situation s'am�liore. Moins nous avons de gens qui diffusent ces informations, moins nous avons de publicit� n�gative.")
		
		ANSWER("Je suis aussi all� dans une station de transmission qui a �t� utilis�e pour diffuser ces rumeurs sur BioTech. Le propri�taire de cette station m'a assur� qu'il allait vous envoyer une liste de personnes s'�tant servies de cette station r�cemment.",152)
	NODE(152)
		SAY("Bon travail.")
		
		ANSWER("Il y a autre chose. On m'a donn� cette puce. Elle est implant�e dans de nombreux mutants qui se trouvent dans le voisinage de cette station. Il semble qu'elle rend les mutants plus agressifs. Est-ce que BioTech a men� des exp�riences sur ces mutants?",153)
	NODE(153)
		SAY("Evidemment. D'apr�s la loi, les mutants sont m�me inf�rieurs aux animaux. On peut faire ce qu'on veut avec eux.")
		
		ANSWER("Mais autrefois humains...!!",154)
	NODE(154)
		TAKEITEM(9202)
		if(result==0)then
			SAY("O� est-ce que vous avez mis cet implant? Donnez-le moi si vous voulez que je m'occupe de l'affaire.")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(155)
			SAY("Oui, c'est quelque chose que j'entends trop souvent, runner. Mais �a n'est pas moi qui �cris les lois. J'essaye seulement de les respecter. Donnez-moi cette puce, et je ferai analyser les informations qu'elle contient.")
		
			ANSWER("Bien, je vous contacterai d�s que les informations vous parviendront depuis la station de transmission.",155)
		end
	NODE(155)
		GIVEMONEY(10000)
		SAY("D'accord. Voici une r�compense de 10.000 cr�dits. Prenez soin de vous, runner.")
			EPICRUNFINISHED(5,2)
		ACTIVATEDIALOGTRIGGER(3)		
		ENDDIALOG()
		

end