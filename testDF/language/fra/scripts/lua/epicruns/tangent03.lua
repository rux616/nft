--new
function DIALOG()
--Trigger
--Triggernumber,Type,Person
--0,D,Zakashi
--1,D,Kev
--2,D,Benjamin
--3,D,Tangent

--Startnode, Person
--0
--50, Zakashi
--100, Kev Critter
--150, Benjamin Kain
--200, Tangent Employee
--Items -> none

-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("Quelle heureuse coincidence! Vous arrivez justement au moment où on a besoin de vous. Le projet d'arme à rayons avance à grands pas, et on a effectué des tests sur différents matériaux. Les résultats sont très convaincants. Mais cela ne suffit pas à Tangent.")

		ANSWER("CONTINUER",1)
	NODE(1)
		SAY("On a besoin de renseignements. Il faut qu'on sache l'état d'avancement de BioTech. Et pour cela, il nous faut un runner fiable tel que vous pour mener une enquête.")

		ANSWER("Une enquête? Quel genre d'enquête?",2)
	NODE(2)
		SAY("Tangent utilise différentes méthodes pour obtenir ses informations. Beaucoup de gens vendraient leur propre mère pour de l'argent. Ils viendraient même nous manger dans la main.")

		ANSWER("L'espionnage, ça n'est pas illégal?",3)
	NODE(3)
		SAY("L'espionnage? Visiblement vous ne savez pas que ce que Tangent fait, les autres compagnies ne se privent pas de le faire. C'est exactement pour cela que Tangent est toujours en activité.")

		ANSWER("CONTINUER",4)
	NODE(4)
		SAY("Vous n'êtes pas innocent au point de penser que les autres compagnies n'utilisent pas les mêmes méthodes, n'est-ce pas? C'est très important pour la compagnie. Et de mon point de vue, si vous ne travaillez pas pour Tangent, vous travaillez contre Tangent. La seconde solution, je ne vous la conseillerais pas.")

		ANSWER("Je ne voulais pas vous sembler inconvenant. C'est juste que...",5)
	NODE(5)
		SAY("Regardez autour de vous... Vous verrez deux options. Soit vous appartenez à une puissante faction... soit vous diminuez votre espérance de vie en deçà de tout avenir possible. Vous trouverez votre contact pour cette mission à Catlock Bay.")

		ANSWER("CONTINUER",6)
	NODE(6)
		SAY("Vous pouvez lui proposer jusqu'à 10.000 crédits si vous estimez que ça en vaut la peine. C'est un Tsunami, et il s'appelle Gruber. Soyez sur vos gardes.")

		ANSWER("CONTINUER",7)
	NODE(7)
		SAY("Il n'y a pas de lois dans les Terres Brûlées, alors faites attention à vous. Et ne restez pas trop longtemps là-bas, vous pourriez attraper de sales mutations. Si vous trouvez quelque chose d'intéressant, revenez ici me faire votre rapport.")
		ACCEPTMISSION()
		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()
	NODE(8)
		SAY("Comme vous voulez. Si vous changez d'avis, revenez me voir.")
		ENDDIALOG()

	NODE()


-----------------------------------------------------
--Zakashi

	NODE(50)
		SAY("Approche, parce que j'ai pas envie de me répéter si jamais t'entends mal. Qui t'envoie?")

		ANSWER("Tangent. Apparemment, vous auriez des informations pour moi sur l'état d'avancement de l'arme à rayons de Biotech.",51)
	NODE(51)
		SAY("Moi? Moi, j'ai cette information? Allez, te fiche pas de moi. Je sais seulement qui pourrait t'aider. Mais je suis pas certain que tu aies vraiment envie de le savoir.")

		ANSWER("Pourquoi ça? C'est tout de même la seule raison qui m'a fait venir ici.",52)
	NODE(52)
		SAY("Tu sais que je suis de Tsunami, j'espère?")

		ANSWER("Oui, on m'a déjà prévenu. Dites-moi seulement de qui il s'agit, pour que je puisse m'en aller au plus vite.",53)
	NODE(53)
		SAY("Tu devrais aller voir Kev Critter, il est à la décharge de Blakkmist. Ah, et puis j'ai autre chose pour toi...")

		ANSWER("CONTINUER",54)
	NODE(54)
		SAY("Biotech a déjà anticipé les curieux qui viendraient fouiner dans leur projet. C'est pour ça qu'on me paye, d'ailleurs.")

		ANSWER("Un minute... Qu'est-ce que vous voulez dire par là? On vous paye pour tuer des gens?",55)
	NODE(55)
		SAY("Voilà, t'as tout compris. Des gens comme toi, pour être précis.")

		ANSWER("On ne pourrait pas trouver un arrangent à l'amiable?",56)
	NODE(56)
		SAY("Navré, mais je suis loyal envers mon client. Tu vas crever.")

		ANSWER("Mais...",57)
	NODE(57)
		SAY("Trop tard...")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(58)
		ATTACK()
		ENDDIALOG()
	NODE(58)
		SAY("Prépare-toi à crever!")
		ATTACK()
		ENDDIALOG()


-----------------------------------------------------
--Kev Critter

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Je vois des étoiles... Beaucoup d'étoiles... Tu les vois, toi aussi?")
			ENDDIALOG()
		else
			SAY("Euh... t'es un fantôme?")

			ANSWER("Non seulement je ne suis pas un fantôme, mais en plus je suis de très mauvaise humeur.",101)
		end
	NODE(101)
		SAY("... Je.... sais pas, vous êtes qui? Le ciel est vraiment bizarre...")

		ANSWER("Vous planez complètement, on dirait. Bon, ça sert à rien d'insister.",102)
	NODE(102)
		SAY("Quoi? Mais si, je peux parler. Mais de quoi? Hihih. Il me faut de la Powerbooze Gold. En général ça me réveille.")

		ANSWER("J'ai le choix? On dirait pas...",103)
	NODE(103)
		SAY("Oh, les belles lumières...")
		SETNEXTDIALOGSTATE(104)
		ENDDIALOG()

--Spieler besorgt Powerbooze Gold 804
		
	NODE(104)
		TAKEITEM(804)
		if(result==0)then
			SAY("Y m'faut d'là Powerbooze Gold.")
			ENDDIALOG()
		else

			SAY("Ahhh... ça va mieux. Quelle merde, cette drogue. J'ai dû perdre pas mal de neurones avec ce trip.")

			ANSWER("On dirait. Mais vous êtes fou, de vous faire ça!",105)
		end
	NODE(105)
		SAY("Ouais, facile à dire... Dans la ville il fait chaud, tout le monde a un bel appartement, vous en avez rien à foutre des gens qui vivent dans les Terres Brûlées.")

		ANSWER("Allons, ne dites pas ça...",106)
	NODE(106)
		SAY("Regardez autour de vous, tous les villages abandonnés... Ils ont tous été détruits par les mutants, parfois même pire que ça.")

		ANSWER("CONTINUER",107)
	NODE(107)
		SAY("Vous, à Neocron, vous êtes assis bien tranquilles à picoler. Moi aussi, je ferais bien ça si j'avais pas mon job ici.")

		ANSWER("J'en ai marre. On a déjà essayé de me tuer parce que je recherchais des informations sur Biotech.",108)
	NODE(108)
		SAY("Evidemment, que toutes les factions gardent leurs secrets à tout prix. Vous voulez pleurer, ou vous avec quelque chose d'intéressant à dire?")

		ANSWER("Arrêtez de me parler comme ça, ou bien je vous éclate la tête. Dites-moi ce que vous savez sur l'arme à rayons de BioTech!",109)
	NODE(109)
		SAY("Vous êtes pas du genre poli, vous. Vous voulez pas changer de disque de temps en temps?")

		ANSWER("...Bien... Je voulais pas m'énerver comme ça. Est-ce que vous pourriez me donner des informations? Je recherche des éléments sur l'état d'avancement du projet d'armes à rayons de BioTech.",110)
	NODE(110)
		SAY("Ah, ben c'est mieux comme ça. Vous voyez, c'était pas difficile. Aïe, ma tête... Voilà, je connais un employé de BioTech, un seul. Je sais pas s'il pourra vous aider... essayez, vous verrez bien... Il s'appelle Benjamin. Vous le trouverez dans le secteur industriel 02. Il dit toujours que c'est son petit monde à lui.")
		SETNEXTDIALOGSTATE(111)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
		
	NODE(111)
		SAY("Allez voir Benjamin vous-même, il est dans le secteur industriel 02. Je me mêle pas de ça, moi.")
		ENDDIALOG()


-----------------------------------------------------
--Benjamin Kain

	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Allez-vous en, laissez-moi tranquille.")
			ENDDIALOG()
		else
			SAY("Oui? Quoi?")

			ANSWER("Vous travaillez pour Biotech? Parce que j'ai entendu dire que...",151)
		end
	NODE(151)
		SAY("Vous pourriez préciser?")

		ANSWER("J'aimerais avoir certaines informations, mais j'ai besoin de votre aide pour ça.",152)
	NODE(152)
		SAY("J'ai une tête à prendre mon pied en répondant aux questions de n'importe qui, dites-moi franchement?")

		ANSWER("Je peux vous proposer une compensation. Pour les efforts que vous allez consacrer à ma demande.",153)
	NODE(153)
		SAY("Du fric? Des crédits, c'est ça? Peut-être que je pourrais avoir quelques idées. Mais ça risque de vous coûter.")

		ANSWER("Voilà qui est mieux. Est-ce que par hasard vous auriez des nouvelles sur le développement de l'arme à rayons de BioTech? Apparemment, ils ont déjà beaucoup investi sur ce projet.",154)
	NODE(154)
		SAY("C'est drôle que vous me demandiez ça. Je sais de quoi vous parlez, et je pourrais vous en apprendre beaucoup. Si vous y mettez le prix, évidemment. J'ai un plan de cette arme sur moi. Qu'est-ce que vous en dites?")

		ANSWER("Vraiment? Pour une coïncidence, c'en est une belle? Et combien est-ce que vous voulez pour ça?",155)
	NODE(155)
		SAY("Vous savez, j'estime que Biotech devrait plus se concentrer sur ce qu'elle sait faire, les implants, plutôt que de commencer à faire des armes.")

		ANSWER("CONTINUER",156)
	NODE(156)
		SAY("C'est pour ça que je vais vous faire un prix spécial. Mais pas tout de suite, ça attirerait trop les regards sur moi. Actuellement, je peux vous proposer des informations sur ce projet.")

		ANSWER("C'est exactement de dont j'ai besoin.",157)
	NODE(157)
		SAY("Pour vous, ça fera 15.000.")

		ANSWER("Je ne peux vous donner que 10.000. Mes supérieurs ne m'ont pas donné plus.",158)
	NODE(158)
		SAY("D'accord, si c'est comme ça... Le développement de cette arme est déjà bien avancé. Ils utilisent une méthode complexe pour concentrer plusieurs rayons, et ils sont en train de faire des tests en ce moment.")

		ANSWER("CONTINUER",159)
	NODE(159)
		SAY("Actuellement, ils ont encore des problèmes avec la taille des émetteurs. Trois personnes ne réussiraient pas à décoller l'arme du sol. Et comme CityAdmin a donné des instructions précises, la puissance de l'arme doit être supérieure de 15% à une arme du même type sur le marché.")

		ANSWER("Bon, c'est très instructif. Merci. Je pense que je vous contacterai à nouveau pour le plan.",160)
	NODE(160)
		SAY("D'accord, faisons ça. Mais je ne peux pas vous garantir que j'aurai encore le plan d'ici là.")
		SETNEXTDIALOGSTATE(161)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
		
	NODE(161)
		SAY("Si le plan ne vous intéresse pas, alors parler avec vous ne m'intéresse pas non plus.")
		ENDDIALOG()
		
-----------------------------------------------------
--Human Resource Director

	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Vous n'avez rien de nouveau à me dire? Je vous rappelle que votre contact se trouve à Catlock Bay.")
			ENDDIALOG()
		else
			SAY("Quelles sont les nouvelles?")

			ANSWER("Je reviens d'un odyssée. J'ai traversé toutes les Terres Brûlées pour trouver quelqu'un en mesure de me donner ces informations.",201)
		end
	NODE(201)
		SAY("Personne n'a dit que ce serait une partie de plaisir. Mais vous semblez avoir trouvé quelque chose, j'ai l'impression.")

		ANSWER("Oui, je sais que Biotech est déjà en train de tester la puissance de feu de leur arme. Mais apparemment, ils auraient des problèmes avec la taille du canon.",202)
	NODE(202)
		SAY("Très intéressant. Votre rapport est identique à ceux d'autres runners, tout semble se recouper, ça se confirme.")

		ANSWER("Je m'attendais à ce que d'autres runners aient la même mission que moi. Mais est-ce que ça n'est pas trop complexe et coûteux de procéder ainsi?",203)
	NODE(203)
		SAY("Si, mais nous ne savons pas si un runner isolé réussira sa mission. C'est plus sûr pour nous de compter sur plusieurs personnes. Vous avec faut du bon travail, runner.")

		ANSWER("Encore une chose. Le contact qui m'a donné ces informations avait un plan du prototype de BioTech.",204)
	NODE(204)
		SAY("... Si c'est vrai, alors nous allons nous en occuper. Vous pouvez prendre un peu de repos à présent.")

		ANSWER("CONTINUER",205)
	NODE(205)
		GIVEMONEY(5000)
		SAY("Evaluer toutes ces informations va nous demander du temps. Ensuite seulement, nous pourrons passer à l'étape suivante. Vous avez gagné la somme de 5.000 crédits pour vos services.")
		EPICRUNFINISHED(4,2)
		ACTIVATEDIALOGTRIGGER(3)
		ENDDIALOG()
	
end