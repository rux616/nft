--Constructor/Researcer/Recycler/Repairer/Imper
--Starttyp die 1.
function DIALOG()

	NODE(0)	
		SAY("Bonjour runner. Comment puis-je vous aider?")

		
		ANSWER("On m'a dit que je pouvais apprendre comment construire ici.",1)
		ANSWER("C'est vrai que vous pouvez m'apprendre � faire de la recherche?",10)
		ANSWER("J'aimerais apprendre les principes du recyclage et de la r�cup�ration.",20)
		ANSWER("Expliquez-moi comment r�parer les objets.",30)
		ANSWER("J'ai un implanteur, et j'aimerais en savoir plus.",40)
		
		ANSWER("Pardon, il faut que je m'en aille.",100)

	
-- Construct	
	NODE(1)

		SAY("Vous connaissez d�j� les fonctions de base, ou bien il faut que je vous les explique aussi?")
		ANSWER("J'aimerais bien. Je d�bute compl�tement.",2)
		ANSWER("Non, je connais les bases. J'aimerais savoir comment me lancer, en fait.",6)




	NODE(2)
		SAY("Bien. Commen�ons par le commencement. L'outil de construction permet de construire des objets : des armes, des drogues... Cet outil existe en diff�rents mod�les : diff�rents parce qu'ils ne poss�dent pas le m�me indice technologique. Vous vous rendrez compte que les outils d'un indice �lev� sont plut�t chers.")
		ANSWER("Alors je vais devoir investir si je veux construire des choses complexes.",3)


	
	NODE(3)
		SAY("Mais �a n'est pas tout. Votre comp�tence de construction doit �tre sup�rieure � l'indice technologique de l'objet que vous d�sirez construire. Et il vous faut d'autres objets, en plus de cela.")
		ANSWER("Quoi donc?",4)



	NODE(4)
		SAY("Evidemment, il vous faut un plan de l'objet. Votre appareil lira les donn�es n�cessaires. De plus, vous aurez besoin d'une certaine quantit� de 'Construction Grease', variant selon la complexit� de l'objet. Cette graisse de construction doit se trouver dans votre inventaire au moment o� vous construisez votre objet.")
		ANSWER("'Construction Grease'... C'est not�.",5)



	NODE(5)
		SAY("Enfin, sachez que vous ne pourrez pas construire � partir de rien. Vous aurez besoin de pi�ces d�tach�es. Dans votre inventaire, vous pourrez consulter la liste des pi�ces n�cessaires en affichant les propri�t�s de votre Datacube contenant le plan (clic droit sur le DataCube, puis 'VOIR INFO'). Vous y verrez, entre autre chose, la liste des �l�ments qu'il vous faut.")
		ANSWER("Apparemment il faut beaucoup d'objets. O� est-ce que je peux trouver tout �a?",6)



	NODE(6)
		SAY("Si vous voulez monter votre petite entreprise, vous avez plusieurs solutions. Vous pouvez acheter tout ce dont vous avez besoin dans un Cyton Tech Tools, c'est le nom de la cha�ne de magasins qui vend ce genre d'objets. Mais vous n'allez pas faire beaucoup de profits si vous proc�dez ainsi. La meilleure solution est de travailler avec quelques amis sp�cialis�s dans d'autres secteurs d'activit�. Des gens qui recyclent les d�chets, ou bien qui effectuent des recherches et vous donnent les plans ensuite... Vous comprenez le principe. Et vous pouvez partager vos profits avec eux. C'est toujours utile de garder de bonnes relations dans ce genre de m�tier.")
		ANSWER("Mais je ne pourrais pas faire �a moi-m�me? Recycler ou rechercher?",7)


	
	NODE(7)
		SAY("Au d�but, vous vous en sortirez. Mais par la suite, il va falloir vous sp�cialiser. Les processus sont trop diff�rents et trop complexes pour que vous puissiez tout ma�triser.")
		ANSWER("Vous avez peut-�tre raison. Bon, alors qu'est-ce que vous me sugg�rez?",8)



	NODE(8)
		SAY("A votre place, j'irais voir %NPC_NAME(0) � %NPC_WORLD(0), et je recueillerais quelques renseignements sur les proc�d�s, les prix, etc.")
		ANSWER("Bonne id�e, je vais faire �a.",9)
		ANSWER("Je pense que je vais proc�der autrement.",100)




	NODE(9)
		ACCEPTMISSION()
		SAY("Si vous allez l�-bas, prenez donc ce petit colis de mat�riel. A votre retour, j'aurai une r�compense pour vous.")
		GIVEQUESTITEM(99)
		SETNEXTDIALOGSTATE(80)
		ENDDIALOG()


--Research
	NODE(10)

		SAY("Vous connaissez d�j� les fonctions de base, ou bien il faut que je vous les explique aussi?")
		ANSWER("J'aimerais bien. Je d�bute compl�tement.",11)
		ANSWER("Non, je connais les bases. J'aimerais savoir comment me lancer, en fait.",15)




	NODE(11)
		SAY("Bien. Commen�ons par le commencement : l'outil de recherche permet aux runners qualifi�s d'analyser les objets de toutes sortes et d'en faire des plans. Cet outil existe en diff�rents mod�les : diff�rents parce qu'ils ne poss�dent pas le m�me indice technologique. Vous vous rendrez compte que les outils d'un indice �lev� sont plut�t chers.")
		ANSWER("Alors je vais devoir investir si je veux construire des choses complexes.",12)


	
	NODE(12)
		SAY("Mais �a n'est pas tout. Votre comp�tence de recherche doit �tre sup�rieure � l'indice technologique de l'objet que vous d�sirez rechercher. Et il vous faut d'autres objets, en plus de cela.")
		ANSWER("Quoi donc?",13)


		
	NODE(13)
		SAY("Evidemment, vous aurez besoin d'un plan vierge, sur lequel votre appareil enregistrera les informations n�cessaires. Et de plus, votre appareil a besoin d'une certaine quantit� de 'Research Substance', en rapport avec la complexit� de l'objet que vous d�sirez rechercher. Cette substance doit se trouver dans votre inventaire au moment de la recherche.")
		ANSWER("'Research Substance'... C'est not�.",14)


	
	NODE(14)
		SAY("Sachez aussi que vous ne pouvez pas remplir des plans � partir de rien. Vous devez poss�der l'objet dont vous voulez faire le plan. Vous devez faire attention � l'ordre dans lequel vous placez tous ces objets dans la fen�tre Processeur. Mettez-les dans l'ordre Outil - Objet - Plan, sinon vous aurez des erreurs. L'objet pourra �tre endommag�, le plan pourra m�me �tre d�truit.")
		ANSWER("C'est un peu compliqu�. Apparemment il faut beaucoup d'objets diff�rents. O� est-ce que je peux trouver tout �a?",15)


	
	NODE(15)
		SAY("Si vous voulez montrer votre petite entreprise de recherche, il y a plusieurs m�thodes. Vous pouvez tout acheter dans un Cryton Tech Tools, la cha�ne de magasins qui produit tous ces objets, mais vous vous rendrez rapidement compte que votre marge b�n�ficiaire est faible. Alors je vous conseille de travailler en �quipe, par exemple avec un recycleur qui fabrique les mat�riaux de base, et un constructeur qui utilise les plans que vous faites. Vous pouvez ensuite partager les b�n�fices. Je vous conseille de toujours rester en bons termes avec ce genre de personnes.")
		ANSWER("Mais je ne peux pas tout apprendre moi-m�me? Recycler et construire?",16)


	
	NODE(16)
		SAY("Pour commencer, vous pourrez vous en sortir. Mais lorsque vous attaquerez les objets complexes, vous devrez vous sp�cialiser. Les processus sont trop diff�rents et trop complexes pour que vous r�ussissiez � les ma�triser tous.")
		ANSWER("Vous avez peut-�tre raison. Bon, qu'est-ce que vous me conseillez de faire, alors?",17)


	
	NODE(17)
		SAY("A votre place, j'irais voir %NPC_NAME(0) � %NPC_WORLD(0) , et je me renseignerais au sujet des processus, des prix, etc.")
		ANSWER("Bonne id�e, je vais faire �a.",18)
		ANSWER("Non, je crois que je vais m'en passer.",100)




	NODE(18)
		ACCEPTMISSION()
		SAY("Comme vous partez, profitez-en pour emmener ces quelques plans avec vous. Lorsque vous revenez, j'aurai quelque chose pour vous.")
		GIVEQUESTITEM(99)
		SETNEXTDIALOGSTATE(80)
		ENDDIALOG()


--Recycle
	NODE(20)

		SAY("Vous connaissez d�j� les fonctions de base, ou bien il faut que je vous les explique aussi?")
		ANSWER("J'aimerais bien. Je d�bute compl�tement.",21)
		ANSWER("Non, je connais les bases. J'aimerais savoir comment me lancer, en fait.",25)




	NODE(21)
		SAY("Bien. Commen�ons par le commencement. En fait, vous avez deux outils. Le premier sert au recyclage, et vous permet de transformer des d�chets en ressources. Ensuite, vous avez l'outil de r�cup�ration, que vous pouvez utiliser pour r�cup�rer des �l�ments sur des objets qui sont compl�tement d�truits (0% en condition). Vous ne retrouverez jamais tous les �l�ments dont l'objet est constitu�, mais ce que vous parviendrez � r�cup�rer � beaucoup de valeur pour les constructeurs. Ces outils existent en plusieurs mod�les, diff�rant les uns des autres par l'indice technologique des d�chets et des objets qu'ils permettent de traiter. Vous vous rendrez compte que les outils d'un indice �lev� sont plut�t chers.")
		ANSWER("Alors je vais devoir investir si je veux construire des choses complexes.",22)



	NODE(22)
		SAY("Mais �a n'est pas tout. Votre comp�tence de recyclage doit �tre plus �lev�e que l'indice technologique de l'objet que vous produirez par le recyclage. Et pour la r�cup�ration, il faut que votre niveau soit plus �lev� que celui de l'objet que vous voulez r�cup�rer. Ah, et j'oubliais : il vous faudra aussi autre chose.")
		ANSWER("C'est � dire?",23)


			
	NODE(23)
		SAY("Le processeur a besoin d'une certaine quantit� de 'Catalytic Recycling Conversion Fluid', qui d�pend de la complexit� des choses que vous traitez. La substance doit �tre pr�sente dans votre inventaire.")
		ANSWER("'Catalytic Recycling Conversion Fluid' ... C'est not�.",24)


	
	NODE(24)
		SAY("Oui, notez bien, c'est tr�s important. Sachez aussi que pour recycler vous devrez avoir les ingr�dients n�cessaires, et que pour r�cup�rer des �l�ments vous devrez poss�der les objets que vous voulez d�sassemble.")
		ANSWER("Je vais avoir besoin de beaucoup de choses, apparemment. Et o� est-ce que je vais trouver tout �a?",25)


	
	NODE(25)
		SAY("Si vous voulez monter votre petite entreprise de recyclage, vous avez plusieurs solutions. la premi�re, c'est de tout acheter dans un des magasins de la cha�ne Cryton Tech Tools. Ce sont eux qui vendent ce dont vous avez besoin. Mais vous ne ferez pas de b�n�fices v�ritables. Ce que je vous conseille, c'est de travailler avec quelques amis sp�cialis�s dans d'autres secteurs, par exemple des combattants qui vous apportent les objets � recycler et leurs armes bris�es. Et cherchez aussi des gens qui peuvent �tre int�ress�s par vos produits. Les constructeurs recherchent toujours des composants et des produits chimiques. Vous trouverez toujours un YO's pour vous acheter ce que vous faites, mais leurs prix sont vraiment minables. Je vous conseille fortement de soigner vos relations si vous voulez prosp�rer dans le m�tier.")
		ANSWER("Mais je ne pourrais pas faire �a moi-m�me? Construire ou rechercher?",26)


		
	NODE(26)
		SAY("Au d�but, vous vous en sortirez. Mais par la suite, il va falloir vous sp�cialiser. Les processus sont trop diff�rents et trop complexes pour que vous puissiez tout ma�triser.")
		ANSWER("Vous avez peut-�tre raison. Bon, alors qu'est-ce que vous me sugg�rez?",27)


		
	NODE(27)
		SAY("A votre place, j'irais voir %NPC_NAME(0) � %NPC_WORLD(0), et je recueillerais quelques renseignements sur les proc�d�s, les prix, etc.")
		ANSWER("Bonne id�e, je vais faire �a.",28)
		ANSWER("Je pense que je vais proc�der autrement.",100)




	NODE(28)
		ACCEPTMISSION()
		SAY("Si vous allez l�-bas, prenez donc ce petit colis de mat�riaux bruts. A votre retour, j'aurai une r�compense pour vous.")
		GIVEQUESTITEM(99)
		SETNEXTDIALOGSTATE(80)
		ENDDIALOG()


--Repair
	NODE(30)

		SAY("Vous connaissez d�j� les fonctions de base, ou bien il faut que je vous les explique aussi?")
		ANSWER("J'aimerais bien. Je d�bute compl�tement.",31)
		ANSWER("Non, je connais les bases. J'aimerais savoir comment me lancer, en fait.",35)




	NODE(31)
		SAY("Bien. Commen�ons par le commencement : l'outil de r�paration permet aux runners qualifi�s de r�parer les objets de toutes sortes. Cet outil existe en diff�rents mod�les : diff�rents parce qu'ils ne poss�dent pas le m�me indice technologique. Vous vous rendrez compte que les outils d'un indice �lev� sont plut�t chers.")
		ANSWER("Alors je vais devoir investir si je veux r�parer des choses complexes.",32)


	
	NODE(32)
		SAY("Mais �a n'est pas tout. Votre comp�tence de r�paration doit �tre sup�rieure � la moiti� de l'indice technologique de l'objet que vous d�sirez r�parer. Et il vous faut d'autres objets, en plus de cela.")
		ANSWER("Quoi donc?",33)


			
	NODE(33)
		SAY("Evidemment, vous aurez besoin de l'objet que vous devez r�parer. Et de plus, votre appareil n�cessite du 'Repair Lube' pour fonctionner, en rapport avec la complexit� de l'objet � r�parer. La substance doit se trouver dans votre inventaire. Il existe aussi un appareil appel� 'Remote' Repair Tool, un appareil de r�paration � distance, qui utilise des 'Repair Nanites' au lieu de lube, et qui sert � r�parer les v�hicules.")
		ANSWER("'Repair Lube', 'Repair Nanites' ... C'est not�. Et o� est-ce que je trouve tout �a?",35)




	
	NODE(35)
		SAY("Si vous voulez monter votre petite entreprise de r�paration, vous pouvez acheter tout ce qu'il vous faut dans un Cryton Tech Tool. C'est le nom de la cha�ne de magasins. Et vous devez aussi aller l� o� on a besoin de vous. Presque tous les runners sont victimes de la d�gradation de leurs possessions, et ont souvent besoin des services d'un r�parateur. Alors pensez � toujours rester en bons termes avec vos clients.")
		ANSWER("Oui, c'est logique.",36)



	NODE(36)
		SAY("A long terme, c'est la sp�cialisation qui paiera. Alors travaillez pour perfectionner vos comp�tences.")
		ANSWER("Qu'est-ce que vous sugg�rez � pr�sent?",37)


	
	NODE(37)
		SAY("A votre place, j'irais voir %NPC_NAME(0) � %NPC_WORLD(0) , et je me renseignerais au sujet des processus, des prix, etc.")
		ANSWER("Bonne id�e, je vais faire �a.",38)
		ANSWER("Non, je crois que je vais m'en passer.",100)




	NODE(38)
		ACCEPTMISSION()
		SAY("Comme vous partez, profitez-en pour emmener ces quelques plans avec vous. Lorsque vous revenez, j'aurai quelque chose pour vous.")
		GIVEQUESTITEM(99)
		SETNEXTDIALOGSTATE(80)
		ENDDIALOG()


--Implant
	NODE(40)
		SAY("Vous connaissez d�j� les fonctions de base, ou bien il faut que je vous les explique aussi?")
		ANSWER("J'aimerais bien. Je d�bute compl�tement.",41)
		ANSWER("Non, je connais les bases. J'aimerais savoir comment me lancer, en fait.",44)




	NODE(41)
		SAY("Bien. Commen�ons par le commencement. Le Personal Implant Device permet aux runners de mettre en place toutes sortes d'implants. Cet outil existe en diff�rents mod�les. Cet outil existe en plusieurs mod�les, diff�rant les uns des autres par l'indice technologique des d�chets et des objets qu'ils permettent d'implanter. Vous vous rendrez compte que les outils d'un indice �lev� sont plut�t chers.")
		ANSWER("Alors je vais devoir investir si je veux construire des choses complexes.",42)

		
	
	NODE(42)
		SAY("Mais �a n'est pas tout. Votre comp�tence d'implantation doit �tre sup�rieure au niveau technologique de l'objet � implanter. Ah, et j'oubliais : il vous faudra aussi autre chose.")
		ANSWER("C'est � dire?",43)


				
	NODE(43)
		SAY("Pour commencer, il vous faut �videmment un implant. Vous aurez besoin �galement d'une certaine quantit� de 'Implant Disinfection Gel', qui varie selon la complexit� de l'implant. Cette substance doit se trouver dans votre inventaire pour que vous puissiez l'utiliser.")
		ANSWER("'Implant Disinfection Gel' ... C'est not�.",44)


	
	NODE(44)
		SAY("Si vous voulez faire carri�re dans les implants, apprenez qu'il existe un outil capable d'implanter chez les autres personnes. C'est tr�s important si vous voulez gagner votre vie dans cette branche. Personne ne va vous payez pour vous implanter vous-m�me, vous savez. A ce sujet, sachez que le 'Implant Disinfection Gel' doit se trouver dans l'inventaire de votre cible.")
		ANSWER("C'est plut�t compliqu�, et il me faut pas mal d'objets. Est-ce que vous savez o� je pourrais trouver tout �a?",46)


	
	NODE(45)
		SAY("Vous trouverez tout ce dont vous avez besoin dans un des magasins de la cha�ne Cryton Tech Tools. Mais si vous faites �a, vous n'allez pas faire de marge b�n�ficiaire. Je vous conseille de travailler avec d'autres sp�cialistes. Des personnes qui recyclent les d�chets pour en faire des mat�riaux, ou des constructeurs qui vous fabriqueront des implants, et ainsi de suite. Vous pourrez ensuite partager les profits. Je vous recommande vraiment de rester en bons termes avec ce genre de personnes.")
		ANSWER("Mais je ne pourrais pas faire �a moi-m�me? Construire par exemple?",46)



	NODE(46)
		SAY("Au d�but, vous vous en sortirez. Mais par la suite, il va falloir vous sp�cialiser. Les processus sont trop diff�rents et trop complexes pour que vous puissiez tout ma�triser.")
		ANSWER("Vous avez peut-�tre raison. Bon, alors qu'est-ce que vous me sugg�rez?",47)


	
	NODE(47)
		SAY("A votre place, j'irais voir %NPC_NAME(0) � %NPC_WORLD(0), et je recueillerais quelques renseignements sur les proc�d�s, les prix, etc.")
		ANSWER("Bonne id�e, je vais faire �a.",48)
		ANSWER("Je pense que je vais proc�der autrement.",100)




	NODE(48)
		ACCEPTMISSION()
		SAY("Si vous allez l�-bas, prenez donc ce petit colis d'implants. A votre retour, j'aurai une r�compense pour vous.")
		GIVEQUESTITEM(99)
		SETNEXTDIALOGSTATE(80)
		ENDDIALOG()


-- Cryton Typ die 1.

	NODE(50)

		SAY("Bienvenue, runner. Qu'est-ce que je peux faire pour vous?")
		ANSWER("J'ai parl� � %NPC_NAME(4), et il m'a donn� �a pour vous. Il m'a dit que vous auriez des informations pour moi.",51)


		
	NODE(51)

		TAKEQUESTITEM(99)
		if(result==1) then
			SAY("Eh, enfin! Ca fait longtemps que j'attends �a. Merci. Des informations, vous dites?")
			ACTIVATEDIALOGTRIGGER(0)
			ANSWER("Exact. Je d�bute dans le m�tier, et je recherche des informations.",52)
			SETNEXTDIALOGSTATE(70)


			
		else
			SAY("Arr�tez de vous moquez de moi. Je vois tr�s bien que vous n'avez rien � me donner!")
			ENDDIALOG()			

		end
		
	NODE(52)
		SAY("Alors vous avez de la chance, parce que vous avez frapp� � la bonne porte. Cryton est la compagnie la plus importante en mati�re d'implants, de ressources, de pi�ces d�tach�es, d'outils, et j'en passe. Si vous cherchez de la qualit�, alors vous allez devoir passer par chez nous.")
		ANSWER("Alors vous avez une situation de monopole? Ca doit �tre agr�able.",53)


		
	NODE(53)
		SAY("Yakarma a bien tent� de mordre un peu sur notre secteur, mais ils ne font pas le poids face � nos prix et notre qualit�. Et je ne parle pas de YO's, c'est qu'une bande de clochards bas de plafond.")
		ANSWER("Je vois.",54)


		
	NODE(54)
		SAY("Nous fournissons tout le march�. La ville, et m�me Tech Haven o� nous avons n�goci� un accord pour vendre encore moins cher.")
		ANSWER("Alors je pourrais �conomiser en allant l�-bas si j'ai besoin de quelque chose?",55)


		
	NODE(55)
		SAY("Ca d�pend de pas mal de facteurs. O� vous �tes, ce dont vous avez besoin, ce genre de choses. Il faudra voir �a par vous-m�me.")
		ANSWER("D'autres conseils?",56)


		
	NODE(56)
		SAY("Hmm. Non, je pense que je vous ai tout dit. Ah si, je pense que vous aimerez savoir que les ingr�dients n�cessaires au fonctionnement de tous les appareils peuvent �tre achet�s par charges de 200. C'est plus facile � manipuler. Sinon, allez voir ce que mon coll�gue peut vous proposer.")
		ANSWER("Je vais voir �a. Merci pour les infos.",57)



	NODE(57)
		SAY("Je vous en prie. Et transmettez mes salutations � %NPC_Name(4) quand vous repasserez le voir.")

		ENDDIALOG()
	
		
-- Cryton Typ die 2.

	NODE(70)

		SAY("Je n'ai rien d'autre � vous dire. Si vous voulez acheter quelque chose, c'est avec mes employ�s qu'il faut vous adresser.")

		ENDDIALOG()


-- Starttyp die 2.

	NODE(80)
		
		ISMISSIONTARGETACCOMPLISHED(0)
		if( result==0 ) then
			SAY("Je vous conseille vraiment d'aller parler � %NPC_NAME(0). Ca vous sera tr�s utile. De plus, je vois que vous avez toujours le colis que je vous ai donn�.")
			ENDDIALOG()
		else			
			SAY("Alors? C'�tait int�ressant?")
			ANSWER("Oui, j'ai appris pas mal de choses. Le type �tait plut�t arrogant, mais il m'a bien expliqu�. Bon, je vais aller faire un tour chez YO's. Il m'en a dit du mal, mais j'ai envie de v�rifier par moi-m�me.",81)
		end
		
	NODE(81)
		SAY("Ouais, je sais qu'ils aiment pas beaucoup Yo's. Ils pensent que c'est un fournisseur marginal et rien de plus. Mais ils ont des magasins partout, et ils ont beaucoup de clients. Mais faites attention, vous ne pouvez jamais �tre certain d'en avoir pour votre argent avec eux.")
		ANSWER("Je vais aller voir �a par moi-m�me.",82)



	NODE(82)
		GIVEMONEY(540)
		ACTIVATEDIALOGTRIGGER(1)
		SAY("Tenez, c'est pour vous remercier pour la livraison. Lorsque vous �tes pr�t, je vous conseille de retourner au QG. Ils devraient avoir quelque chose d'int�ressant � vous proposer. En attendant, vous devriez nous aider en effectuant quelques missions, vous trouverez tout �a sur un CityCom. Vous n'en tirerez que du bien.")
		ANSWER("D'accord, merci. A plus tard.",83)


	
	NODE(83)	
		SAY("A plus tard.")

		ENDDIALOG()
		
-- Starttyp Ausstieg

	NODE(100)

		SAY("Pas de probl�me. Faites attention � vous.")

		ENDDIALOG()

end