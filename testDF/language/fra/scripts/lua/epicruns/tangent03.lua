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
		SAY("Quelle heureuse coincidence! Vous arrivez justement au moment o� on a besoin de vous. Le projet d'arme � rayons avance � grands pas, et on a effectu� des tests sur diff�rents mat�riaux. Les r�sultats sont tr�s convaincants. Mais cela ne suffit pas � Tangent.")

		ANSWER("CONTINUER",1)
	NODE(1)
		SAY("On a besoin de renseignements. Il faut qu'on sache l'�tat d'avancement de BioTech. Et pour cela, il nous faut un runner fiable tel que vous pour mener une enqu�te.")

		ANSWER("Une enqu�te? Quel genre d'enqu�te?",2)
	NODE(2)
		SAY("Tangent utilise diff�rentes m�thodes pour obtenir ses informations. Beaucoup de gens vendraient leur propre m�re pour de l'argent. Ils viendraient m�me nous manger dans la main.")

		ANSWER("L'espionnage, �a n'est pas ill�gal?",3)
	NODE(3)
		SAY("L'espionnage? Visiblement vous ne savez pas que ce que Tangent fait, les autres compagnies ne se privent pas de le faire. C'est exactement pour cela que Tangent est toujours en activit�.")

		ANSWER("CONTINUER",4)
	NODE(4)
		SAY("Vous n'�tes pas innocent au point de penser que les autres compagnies n'utilisent pas les m�mes m�thodes, n'est-ce pas? C'est tr�s important pour la compagnie. Et de mon point de vue, si vous ne travaillez pas pour Tangent, vous travaillez contre Tangent. La seconde solution, je ne vous la conseillerais pas.")

		ANSWER("Je ne voulais pas vous sembler inconvenant. C'est juste que...",5)
	NODE(5)
		SAY("Regardez autour de vous... Vous verrez deux options. Soit vous appartenez � une puissante faction... soit vous diminuez votre esp�rance de vie en de�� de tout avenir possible. Vous trouverez votre contact pour cette mission � Catlock Bay.")

		ANSWER("CONTINUER",6)
	NODE(6)
		SAY("Vous pouvez lui proposer jusqu'� 10.000 cr�dits si vous estimez que �a en vaut la peine. C'est un Tsunami, et il s'appelle Gruber. Soyez sur vos gardes.")

		ANSWER("CONTINUER",7)
	NODE(7)
		SAY("Il n'y a pas de lois dans les Terres Br�l�es, alors faites attention � vous. Et ne restez pas trop longtemps l�-bas, vous pourriez attraper de sales mutations. Si vous trouvez quelque chose d'int�ressant, revenez ici me faire votre rapport.")
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
		SAY("Approche, parce que j'ai pas envie de me r�p�ter si jamais t'entends mal. Qui t'envoie?")

		ANSWER("Tangent. Apparemment, vous auriez des informations pour moi sur l'�tat d'avancement de l'arme � rayons de Biotech.",51)
	NODE(51)
		SAY("Moi? Moi, j'ai cette information? Allez, te fiche pas de moi. Je sais seulement qui pourrait t'aider. Mais je suis pas certain que tu aies vraiment envie de le savoir.")

		ANSWER("Pourquoi �a? C'est tout de m�me la seule raison qui m'a fait venir ici.",52)
	NODE(52)
		SAY("Tu sais que je suis de Tsunami, j'esp�re?")

		ANSWER("Oui, on m'a d�j� pr�venu. Dites-moi seulement de qui il s'agit, pour que je puisse m'en aller au plus vite.",53)
	NODE(53)
		SAY("Tu devrais aller voir Kev Critter, il est � la d�charge de Blakkmist. Ah, et puis j'ai autre chose pour toi...")

		ANSWER("CONTINUER",54)
	NODE(54)
		SAY("Biotech a d�j� anticip� les curieux qui viendraient fouiner dans leur projet. C'est pour �a qu'on me paye, d'ailleurs.")

		ANSWER("Un minute... Qu'est-ce que vous voulez dire par l�? On vous paye pour tuer des gens?",55)
	NODE(55)
		SAY("Voil�, t'as tout compris. Des gens comme toi, pour �tre pr�cis.")

		ANSWER("On ne pourrait pas trouver un arrangent � l'amiable?",56)
	NODE(56)
		SAY("Navr�, mais je suis loyal envers mon client. Tu vas crever.")

		ANSWER("Mais...",57)
	NODE(57)
		SAY("Trop tard...")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(58)
		ATTACK()
		ENDDIALOG()
	NODE(58)
		SAY("Pr�pare-toi � crever!")
		ATTACK()
		ENDDIALOG()


-----------------------------------------------------
--Kev Critter

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Je vois des �toiles... Beaucoup d'�toiles... Tu les vois, toi aussi?")
			ENDDIALOG()
		else
			SAY("Euh... t'es un fant�me?")

			ANSWER("Non seulement je ne suis pas un fant�me, mais en plus je suis de tr�s mauvaise humeur.",101)
		end
	NODE(101)
		SAY("... Je.... sais pas, vous �tes qui? Le ciel est vraiment bizarre...")

		ANSWER("Vous planez compl�tement, on dirait. Bon, �a sert � rien d'insister.",102)
	NODE(102)
		SAY("Quoi? Mais si, je peux parler. Mais de quoi? Hihih. Il me faut de la Powerbooze Gold. En g�n�ral �a me r�veille.")

		ANSWER("J'ai le choix? On dirait pas...",103)
	NODE(103)
		SAY("Oh, les belles lumi�res...")
		SETNEXTDIALOGSTATE(104)
		ENDDIALOG()

--Spieler besorgt Powerbooze Gold 804
		
	NODE(104)
		TAKEITEM(804)
		if(result==0)then
			SAY("Y m'faut d'l� Powerbooze Gold.")
			ENDDIALOG()
		else

			SAY("Ahhh... �a va mieux. Quelle merde, cette drogue. J'ai d� perdre pas mal de neurones avec ce trip.")

			ANSWER("On dirait. Mais vous �tes fou, de vous faire �a!",105)
		end
	NODE(105)
		SAY("Ouais, facile � dire... Dans la ville il fait chaud, tout le monde a un bel appartement, vous en avez rien � foutre des gens qui vivent dans les Terres Br�l�es.")

		ANSWER("Allons, ne dites pas �a...",106)
	NODE(106)
		SAY("Regardez autour de vous, tous les villages abandonn�s... Ils ont tous �t� d�truits par les mutants, parfois m�me pire que �a.")

		ANSWER("CONTINUER",107)
	NODE(107)
		SAY("Vous, � Neocron, vous �tes assis bien tranquilles � picoler. Moi aussi, je ferais bien �a si j'avais pas mon job ici.")

		ANSWER("J'en ai marre. On a d�j� essay� de me tuer parce que je recherchais des informations sur Biotech.",108)
	NODE(108)
		SAY("Evidemment, que toutes les factions gardent leurs secrets � tout prix. Vous voulez pleurer, ou vous avec quelque chose d'int�ressant � dire?")

		ANSWER("Arr�tez de me parler comme �a, ou bien je vous �clate la t�te. Dites-moi ce que vous savez sur l'arme � rayons de BioTech!",109)
	NODE(109)
		SAY("Vous �tes pas du genre poli, vous. Vous voulez pas changer de disque de temps en temps?")

		ANSWER("...Bien... Je voulais pas m'�nerver comme �a. Est-ce que vous pourriez me donner des informations? Je recherche des �l�ments sur l'�tat d'avancement du projet d'armes � rayons de BioTech.",110)
	NODE(110)
		SAY("Ah, ben c'est mieux comme �a. Vous voyez, c'�tait pas difficile. A�e, ma t�te... Voil�, je connais un employ� de BioTech, un seul. Je sais pas s'il pourra vous aider... essayez, vous verrez bien... Il s'appelle Benjamin. Vous le trouverez dans le secteur industriel 02. Il dit toujours que c'est son petit monde � lui.")
		SETNEXTDIALOGSTATE(111)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
		
	NODE(111)
		SAY("Allez voir Benjamin vous-m�me, il est dans le secteur industriel 02. Je me m�le pas de �a, moi.")
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
		SAY("Vous pourriez pr�ciser?")

		ANSWER("J'aimerais avoir certaines informations, mais j'ai besoin de votre aide pour �a.",152)
	NODE(152)
		SAY("J'ai une t�te � prendre mon pied en r�pondant aux questions de n'importe qui, dites-moi franchement?")

		ANSWER("Je peux vous proposer une compensation. Pour les efforts que vous allez consacrer � ma demande.",153)
	NODE(153)
		SAY("Du fric? Des cr�dits, c'est �a? Peut-�tre que je pourrais avoir quelques id�es. Mais �a risque de vous co�ter.")

		ANSWER("Voil� qui est mieux. Est-ce que par hasard vous auriez des nouvelles sur le d�veloppement de l'arme � rayons de BioTech? Apparemment, ils ont d�j� beaucoup investi sur ce projet.",154)
	NODE(154)
		SAY("C'est dr�le que vous me demandiez �a. Je sais de quoi vous parlez, et je pourrais vous en apprendre beaucoup. Si vous y mettez le prix, �videmment. J'ai un plan de cette arme sur moi. Qu'est-ce que vous en dites?")

		ANSWER("Vraiment? Pour une co�ncidence, c'en est une belle? Et combien est-ce que vous voulez pour �a?",155)
	NODE(155)
		SAY("Vous savez, j'estime que Biotech devrait plus se concentrer sur ce qu'elle sait faire, les implants, plut�t que de commencer � faire des armes.")

		ANSWER("CONTINUER",156)
	NODE(156)
		SAY("C'est pour �a que je vais vous faire un prix sp�cial. Mais pas tout de suite, �a attirerait trop les regards sur moi. Actuellement, je peux vous proposer des informations sur ce projet.")

		ANSWER("C'est exactement de dont j'ai besoin.",157)
	NODE(157)
		SAY("Pour vous, �a fera 15.000.")

		ANSWER("Je ne peux vous donner que 10.000. Mes sup�rieurs ne m'ont pas donn� plus.",158)
	NODE(158)
		SAY("D'accord, si c'est comme �a... Le d�veloppement de cette arme est d�j� bien avanc�. Ils utilisent une m�thode complexe pour concentrer plusieurs rayons, et ils sont en train de faire des tests en ce moment.")

		ANSWER("CONTINUER",159)
	NODE(159)
		SAY("Actuellement, ils ont encore des probl�mes avec la taille des �metteurs. Trois personnes ne r�ussiraient pas � d�coller l'arme du sol. Et comme CityAdmin a donn� des instructions pr�cises, la puissance de l'arme doit �tre sup�rieure de 15% � une arme du m�me type sur le march�.")

		ANSWER("Bon, c'est tr�s instructif. Merci. Je pense que je vous contacterai � nouveau pour le plan.",160)
	NODE(160)
		SAY("D'accord, faisons �a. Mais je ne peux pas vous garantir que j'aurai encore le plan d'ici l�.")
		SETNEXTDIALOGSTATE(161)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
		
	NODE(161)
		SAY("Si le plan ne vous int�resse pas, alors parler avec vous ne m'int�resse pas non plus.")
		ENDDIALOG()
		
-----------------------------------------------------
--Human Resource Director

	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Vous n'avez rien de nouveau � me dire? Je vous rappelle que votre contact se trouve � Catlock Bay.")
			ENDDIALOG()
		else
			SAY("Quelles sont les nouvelles?")

			ANSWER("Je reviens d'un odyss�e. J'ai travers� toutes les Terres Br�l�es pour trouver quelqu'un en mesure de me donner ces informations.",201)
		end
	NODE(201)
		SAY("Personne n'a dit que ce serait une partie de plaisir. Mais vous semblez avoir trouv� quelque chose, j'ai l'impression.")

		ANSWER("Oui, je sais que Biotech est d�j� en train de tester la puissance de feu de leur arme. Mais apparemment, ils auraient des probl�mes avec la taille du canon.",202)
	NODE(202)
		SAY("Tr�s int�ressant. Votre rapport est identique � ceux d'autres runners, tout semble se recouper, �a se confirme.")

		ANSWER("Je m'attendais � ce que d'autres runners aient la m�me mission que moi. Mais est-ce que �a n'est pas trop complexe et co�teux de proc�der ainsi?",203)
	NODE(203)
		SAY("Si, mais nous ne savons pas si un runner isol� r�ussira sa mission. C'est plus s�r pour nous de compter sur plusieurs personnes. Vous avec faut du bon travail, runner.")

		ANSWER("Encore une chose. Le contact qui m'a donn� ces informations avait un plan du prototype de BioTech.",204)
	NODE(204)
		SAY("... Si c'est vrai, alors nous allons nous en occuper. Vous pouvez prendre un peu de repos � pr�sent.")

		ANSWER("CONTINUER",205)
	NODE(205)
		GIVEMONEY(5000)
		SAY("Evaluer toutes ces informations va nous demander du temps. Ensuite seulement, nous pourrons passer � l'�tape suivante. Vous avez gagn� la somme de 5.000 cr�dits pour vos services.")
		EPICRUNFINISHED(4,2)
		ACTIVATEDIALOGTRIGGER(3)
		ENDDIALOG()
	
end