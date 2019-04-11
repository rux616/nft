--Constructor/Researcer/Recycler/Repairer/Imper
--Starttyp die 1.
function DIALOG()

	NODE(0)	
		SAY("Bonjour runner. Comment puis-je vous aider?")

		
		ANSWER("On m'a dit que je pouvais apprendre comment construire ici.",1)
		ANSWER("C'est vrai que vous pouvez m'apprendre à faire de la recherche?",10)
		ANSWER("J'aimerais apprendre les principes du recyclage et de la récupération.",20)
		ANSWER("Expliquez-moi comment réparer les objets.",30)
		ANSWER("J'ai un implanteur, et j'aimerais en savoir plus.",40)
		
		ANSWER("Pardon, il faut que je m'en aille.",100)

	
-- Construct	
	NODE(1)

		SAY("Vous connaissez déjà les fonctions de base, ou bien il faut que je vous les explique aussi?")
		ANSWER("J'aimerais bien. Je débute complètement.",2)
		ANSWER("Non, je connais les bases. J'aimerais savoir comment me lancer, en fait.",6)




	NODE(2)
		SAY("Bien. Commençons par le commencement. L'outil de construction permet de construire des objets : des armes, des drogues... Cet outil existe en différents modèles : différents parce qu'ils ne possèdent pas le même indice technologique. Vous vous rendrez compte que les outils d'un indice élevé sont plutôt chers.")
		ANSWER("Alors je vais devoir investir si je veux construire des choses complexes.",3)


	
	NODE(3)
		SAY("Mais ça n'est pas tout. Votre compétence de construction doit être supérieure à l'indice technologique de l'objet que vous désirez construire. Et il vous faut d'autres objets, en plus de cela.")
		ANSWER("Quoi donc?",4)



	NODE(4)
		SAY("Evidemment, il vous faut un plan de l'objet. Votre appareil lira les données nécessaires. De plus, vous aurez besoin d'une certaine quantité de 'Construction Grease', variant selon la complexité de l'objet. Cette graisse de construction doit se trouver dans votre inventaire au moment où vous construisez votre objet.")
		ANSWER("'Construction Grease'... C'est noté.",5)



	NODE(5)
		SAY("Enfin, sachez que vous ne pourrez pas construire à partir de rien. Vous aurez besoin de pièces détachées. Dans votre inventaire, vous pourrez consulter la liste des pièces nécessaires en affichant les propriétés de votre Datacube contenant le plan (clic droit sur le DataCube, puis 'VOIR INFO'). Vous y verrez, entre autre chose, la liste des éléments qu'il vous faut.")
		ANSWER("Apparemment il faut beaucoup d'objets. Où est-ce que je peux trouver tout ça?",6)



	NODE(6)
		SAY("Si vous voulez monter votre petite entreprise, vous avez plusieurs solutions. Vous pouvez acheter tout ce dont vous avez besoin dans un Cyton Tech Tools, c'est le nom de la chaîne de magasins qui vend ce genre d'objets. Mais vous n'allez pas faire beaucoup de profits si vous procédez ainsi. La meilleure solution est de travailler avec quelques amis spécialisés dans d'autres secteurs d'activité. Des gens qui recyclent les déchets, ou bien qui effectuent des recherches et vous donnent les plans ensuite... Vous comprenez le principe. Et vous pouvez partager vos profits avec eux. C'est toujours utile de garder de bonnes relations dans ce genre de métier.")
		ANSWER("Mais je ne pourrais pas faire ça moi-même? Recycler ou rechercher?",7)


	
	NODE(7)
		SAY("Au début, vous vous en sortirez. Mais par la suite, il va falloir vous spécialiser. Les processus sont trop différents et trop complexes pour que vous puissiez tout maîtriser.")
		ANSWER("Vous avez peut-être raison. Bon, alors qu'est-ce que vous me suggérez?",8)



	NODE(8)
		SAY("A votre place, j'irais voir %NPC_NAME(0) à %NPC_WORLD(0), et je recueillerais quelques renseignements sur les procédés, les prix, etc.")
		ANSWER("Bonne idée, je vais faire ça.",9)
		ANSWER("Je pense que je vais procéder autrement.",100)




	NODE(9)
		ACCEPTMISSION()
		SAY("Si vous allez là-bas, prenez donc ce petit colis de matériel. A votre retour, j'aurai une récompense pour vous.")
		GIVEQUESTITEM(99)
		SETNEXTDIALOGSTATE(80)
		ENDDIALOG()


--Research
	NODE(10)

		SAY("Vous connaissez déjà les fonctions de base, ou bien il faut que je vous les explique aussi?")
		ANSWER("J'aimerais bien. Je débute complètement.",11)
		ANSWER("Non, je connais les bases. J'aimerais savoir comment me lancer, en fait.",15)




	NODE(11)
		SAY("Bien. Commençons par le commencement : l'outil de recherche permet aux runners qualifiés d'analyser les objets de toutes sortes et d'en faire des plans. Cet outil existe en différents modèles : différents parce qu'ils ne possèdent pas le même indice technologique. Vous vous rendrez compte que les outils d'un indice élevé sont plutôt chers.")
		ANSWER("Alors je vais devoir investir si je veux construire des choses complexes.",12)


	
	NODE(12)
		SAY("Mais ça n'est pas tout. Votre compétence de recherche doit être supérieure à l'indice technologique de l'objet que vous désirez rechercher. Et il vous faut d'autres objets, en plus de cela.")
		ANSWER("Quoi donc?",13)


		
	NODE(13)
		SAY("Evidemment, vous aurez besoin d'un plan vierge, sur lequel votre appareil enregistrera les informations nécessaires. Et de plus, votre appareil a besoin d'une certaine quantité de 'Research Substance', en rapport avec la complexité de l'objet que vous désirez rechercher. Cette substance doit se trouver dans votre inventaire au moment de la recherche.")
		ANSWER("'Research Substance'... C'est noté.",14)


	
	NODE(14)
		SAY("Sachez aussi que vous ne pouvez pas remplir des plans à partir de rien. Vous devez posséder l'objet dont vous voulez faire le plan. Vous devez faire attention à l'ordre dans lequel vous placez tous ces objets dans la fenêtre Processeur. Mettez-les dans l'ordre Outil - Objet - Plan, sinon vous aurez des erreurs. L'objet pourra être endommagé, le plan pourra même être détruit.")
		ANSWER("C'est un peu compliqué. Apparemment il faut beaucoup d'objets différents. Où est-ce que je peux trouver tout ça?",15)


	
	NODE(15)
		SAY("Si vous voulez montrer votre petite entreprise de recherche, il y a plusieurs méthodes. Vous pouvez tout acheter dans un Cryton Tech Tools, la chaîne de magasins qui produit tous ces objets, mais vous vous rendrez rapidement compte que votre marge bénéficiaire est faible. Alors je vous conseille de travailler en équipe, par exemple avec un recycleur qui fabrique les matériaux de base, et un constructeur qui utilise les plans que vous faites. Vous pouvez ensuite partager les bénéfices. Je vous conseille de toujours rester en bons termes avec ce genre de personnes.")
		ANSWER("Mais je ne peux pas tout apprendre moi-même? Recycler et construire?",16)


	
	NODE(16)
		SAY("Pour commencer, vous pourrez vous en sortir. Mais lorsque vous attaquerez les objets complexes, vous devrez vous spécialiser. Les processus sont trop différents et trop complexes pour que vous réussissiez à les maîtriser tous.")
		ANSWER("Vous avez peut-être raison. Bon, qu'est-ce que vous me conseillez de faire, alors?",17)


	
	NODE(17)
		SAY("A votre place, j'irais voir %NPC_NAME(0) à %NPC_WORLD(0) , et je me renseignerais au sujet des processus, des prix, etc.")
		ANSWER("Bonne idée, je vais faire ça.",18)
		ANSWER("Non, je crois que je vais m'en passer.",100)




	NODE(18)
		ACCEPTMISSION()
		SAY("Comme vous partez, profitez-en pour emmener ces quelques plans avec vous. Lorsque vous revenez, j'aurai quelque chose pour vous.")
		GIVEQUESTITEM(99)
		SETNEXTDIALOGSTATE(80)
		ENDDIALOG()


--Recycle
	NODE(20)

		SAY("Vous connaissez déjà les fonctions de base, ou bien il faut que je vous les explique aussi?")
		ANSWER("J'aimerais bien. Je débute complètement.",21)
		ANSWER("Non, je connais les bases. J'aimerais savoir comment me lancer, en fait.",25)




	NODE(21)
		SAY("Bien. Commençons par le commencement. En fait, vous avez deux outils. Le premier sert au recyclage, et vous permet de transformer des déchets en ressources. Ensuite, vous avez l'outil de récupération, que vous pouvez utiliser pour récupérer des éléments sur des objets qui sont complètement détruits (0% en condition). Vous ne retrouverez jamais tous les éléments dont l'objet est constitué, mais ce que vous parviendrez à récupérer à beaucoup de valeur pour les constructeurs. Ces outils existent en plusieurs modèles, différant les uns des autres par l'indice technologique des déchets et des objets qu'ils permettent de traiter. Vous vous rendrez compte que les outils d'un indice élevé sont plutôt chers.")
		ANSWER("Alors je vais devoir investir si je veux construire des choses complexes.",22)



	NODE(22)
		SAY("Mais ça n'est pas tout. Votre compétence de recyclage doit être plus élevée que l'indice technologique de l'objet que vous produirez par le recyclage. Et pour la récupération, il faut que votre niveau soit plus élevé que celui de l'objet que vous voulez récupérer. Ah, et j'oubliais : il vous faudra aussi autre chose.")
		ANSWER("C'est à dire?",23)


			
	NODE(23)
		SAY("Le processeur a besoin d'une certaine quantité de 'Catalytic Recycling Conversion Fluid', qui dépend de la complexité des choses que vous traitez. La substance doit être présente dans votre inventaire.")
		ANSWER("'Catalytic Recycling Conversion Fluid' ... C'est noté.",24)


	
	NODE(24)
		SAY("Oui, notez bien, c'est très important. Sachez aussi que pour recycler vous devrez avoir les ingrédients nécessaires, et que pour récupérer des éléments vous devrez posséder les objets que vous voulez désassemble.")
		ANSWER("Je vais avoir besoin de beaucoup de choses, apparemment. Et où est-ce que je vais trouver tout ça?",25)


	
	NODE(25)
		SAY("Si vous voulez monter votre petite entreprise de recyclage, vous avez plusieurs solutions. la première, c'est de tout acheter dans un des magasins de la chaîne Cryton Tech Tools. Ce sont eux qui vendent ce dont vous avez besoin. Mais vous ne ferez pas de bénéfices véritables. Ce que je vous conseille, c'est de travailler avec quelques amis spécialisés dans d'autres secteurs, par exemple des combattants qui vous apportent les objets à recycler et leurs armes brisées. Et cherchez aussi des gens qui peuvent être intéressés par vos produits. Les constructeurs recherchent toujours des composants et des produits chimiques. Vous trouverez toujours un YO's pour vous acheter ce que vous faites, mais leurs prix sont vraiment minables. Je vous conseille fortement de soigner vos relations si vous voulez prospérer dans le métier.")
		ANSWER("Mais je ne pourrais pas faire ça moi-même? Construire ou rechercher?",26)


		
	NODE(26)
		SAY("Au début, vous vous en sortirez. Mais par la suite, il va falloir vous spécialiser. Les processus sont trop différents et trop complexes pour que vous puissiez tout maîtriser.")
		ANSWER("Vous avez peut-être raison. Bon, alors qu'est-ce que vous me suggérez?",27)


		
	NODE(27)
		SAY("A votre place, j'irais voir %NPC_NAME(0) à %NPC_WORLD(0), et je recueillerais quelques renseignements sur les procédés, les prix, etc.")
		ANSWER("Bonne idée, je vais faire ça.",28)
		ANSWER("Je pense que je vais procéder autrement.",100)




	NODE(28)
		ACCEPTMISSION()
		SAY("Si vous allez là-bas, prenez donc ce petit colis de matériaux bruts. A votre retour, j'aurai une récompense pour vous.")
		GIVEQUESTITEM(99)
		SETNEXTDIALOGSTATE(80)
		ENDDIALOG()


--Repair
	NODE(30)

		SAY("Vous connaissez déjà les fonctions de base, ou bien il faut que je vous les explique aussi?")
		ANSWER("J'aimerais bien. Je débute complètement.",31)
		ANSWER("Non, je connais les bases. J'aimerais savoir comment me lancer, en fait.",35)




	NODE(31)
		SAY("Bien. Commençons par le commencement : l'outil de réparation permet aux runners qualifiés de réparer les objets de toutes sortes. Cet outil existe en différents modèles : différents parce qu'ils ne possèdent pas le même indice technologique. Vous vous rendrez compte que les outils d'un indice élevé sont plutôt chers.")
		ANSWER("Alors je vais devoir investir si je veux réparer des choses complexes.",32)


	
	NODE(32)
		SAY("Mais ça n'est pas tout. Votre compétence de réparation doit être supérieure à la moitié de l'indice technologique de l'objet que vous désirez réparer. Et il vous faut d'autres objets, en plus de cela.")
		ANSWER("Quoi donc?",33)


			
	NODE(33)
		SAY("Evidemment, vous aurez besoin de l'objet que vous devez réparer. Et de plus, votre appareil nécessite du 'Repair Lube' pour fonctionner, en rapport avec la complexité de l'objet à réparer. La substance doit se trouver dans votre inventaire. Il existe aussi un appareil appelé 'Remote' Repair Tool, un appareil de réparation à distance, qui utilise des 'Repair Nanites' au lieu de lube, et qui sert à réparer les véhicules.")
		ANSWER("'Repair Lube', 'Repair Nanites' ... C'est noté. Et où est-ce que je trouve tout ça?",35)




	
	NODE(35)
		SAY("Si vous voulez monter votre petite entreprise de réparation, vous pouvez acheter tout ce qu'il vous faut dans un Cryton Tech Tool. C'est le nom de la chaîne de magasins. Et vous devez aussi aller là où on a besoin de vous. Presque tous les runners sont victimes de la dégradation de leurs possessions, et ont souvent besoin des services d'un réparateur. Alors pensez à toujours rester en bons termes avec vos clients.")
		ANSWER("Oui, c'est logique.",36)



	NODE(36)
		SAY("A long terme, c'est la spécialisation qui paiera. Alors travaillez pour perfectionner vos compétences.")
		ANSWER("Qu'est-ce que vous suggérez à présent?",37)


	
	NODE(37)
		SAY("A votre place, j'irais voir %NPC_NAME(0) à %NPC_WORLD(0) , et je me renseignerais au sujet des processus, des prix, etc.")
		ANSWER("Bonne idée, je vais faire ça.",38)
		ANSWER("Non, je crois que je vais m'en passer.",100)




	NODE(38)
		ACCEPTMISSION()
		SAY("Comme vous partez, profitez-en pour emmener ces quelques plans avec vous. Lorsque vous revenez, j'aurai quelque chose pour vous.")
		GIVEQUESTITEM(99)
		SETNEXTDIALOGSTATE(80)
		ENDDIALOG()


--Implant
	NODE(40)
		SAY("Vous connaissez déjà les fonctions de base, ou bien il faut que je vous les explique aussi?")
		ANSWER("J'aimerais bien. Je débute complètement.",41)
		ANSWER("Non, je connais les bases. J'aimerais savoir comment me lancer, en fait.",44)




	NODE(41)
		SAY("Bien. Commençons par le commencement. Le Personal Implant Device permet aux runners de mettre en place toutes sortes d'implants. Cet outil existe en différents modèles. Cet outil existe en plusieurs modèles, différant les uns des autres par l'indice technologique des déchets et des objets qu'ils permettent d'implanter. Vous vous rendrez compte que les outils d'un indice élevé sont plutôt chers.")
		ANSWER("Alors je vais devoir investir si je veux construire des choses complexes.",42)

		
	
	NODE(42)
		SAY("Mais ça n'est pas tout. Votre compétence d'implantation doit être supérieure au niveau technologique de l'objet à implanter. Ah, et j'oubliais : il vous faudra aussi autre chose.")
		ANSWER("C'est à dire?",43)


				
	NODE(43)
		SAY("Pour commencer, il vous faut évidemment un implant. Vous aurez besoin également d'une certaine quantité de 'Implant Disinfection Gel', qui varie selon la complexité de l'implant. Cette substance doit se trouver dans votre inventaire pour que vous puissiez l'utiliser.")
		ANSWER("'Implant Disinfection Gel' ... C'est noté.",44)


	
	NODE(44)
		SAY("Si vous voulez faire carrière dans les implants, apprenez qu'il existe un outil capable d'implanter chez les autres personnes. C'est très important si vous voulez gagner votre vie dans cette branche. Personne ne va vous payez pour vous implanter vous-même, vous savez. A ce sujet, sachez que le 'Implant Disinfection Gel' doit se trouver dans l'inventaire de votre cible.")
		ANSWER("C'est plutôt compliqué, et il me faut pas mal d'objets. Est-ce que vous savez où je pourrais trouver tout ça?",46)


	
	NODE(45)
		SAY("Vous trouverez tout ce dont vous avez besoin dans un des magasins de la chaîne Cryton Tech Tools. Mais si vous faites ça, vous n'allez pas faire de marge bénéficiaire. Je vous conseille de travailler avec d'autres spécialistes. Des personnes qui recyclent les déchets pour en faire des matériaux, ou des constructeurs qui vous fabriqueront des implants, et ainsi de suite. Vous pourrez ensuite partager les profits. Je vous recommande vraiment de rester en bons termes avec ce genre de personnes.")
		ANSWER("Mais je ne pourrais pas faire ça moi-même? Construire par exemple?",46)



	NODE(46)
		SAY("Au début, vous vous en sortirez. Mais par la suite, il va falloir vous spécialiser. Les processus sont trop différents et trop complexes pour que vous puissiez tout maîtriser.")
		ANSWER("Vous avez peut-être raison. Bon, alors qu'est-ce que vous me suggérez?",47)


	
	NODE(47)
		SAY("A votre place, j'irais voir %NPC_NAME(0) à %NPC_WORLD(0), et je recueillerais quelques renseignements sur les procédés, les prix, etc.")
		ANSWER("Bonne idée, je vais faire ça.",48)
		ANSWER("Je pense que je vais procéder autrement.",100)




	NODE(48)
		ACCEPTMISSION()
		SAY("Si vous allez là-bas, prenez donc ce petit colis d'implants. A votre retour, j'aurai une récompense pour vous.")
		GIVEQUESTITEM(99)
		SETNEXTDIALOGSTATE(80)
		ENDDIALOG()


-- Cryton Typ die 1.

	NODE(50)

		SAY("Bienvenue, runner. Qu'est-ce que je peux faire pour vous?")
		ANSWER("J'ai parlé à %NPC_NAME(4), et il m'a donné ça pour vous. Il m'a dit que vous auriez des informations pour moi.",51)


		
	NODE(51)

		TAKEQUESTITEM(99)
		if(result==1) then
			SAY("Eh, enfin! Ca fait longtemps que j'attends ça. Merci. Des informations, vous dites?")
			ACTIVATEDIALOGTRIGGER(0)
			ANSWER("Exact. Je débute dans le métier, et je recherche des informations.",52)
			SETNEXTDIALOGSTATE(70)


			
		else
			SAY("Arrêtez de vous moquez de moi. Je vois très bien que vous n'avez rien à me donner!")
			ENDDIALOG()			

		end
		
	NODE(52)
		SAY("Alors vous avez de la chance, parce que vous avez frappé à la bonne porte. Cryton est la compagnie la plus importante en matière d'implants, de ressources, de pièces détachées, d'outils, et j'en passe. Si vous cherchez de la qualité, alors vous allez devoir passer par chez nous.")
		ANSWER("Alors vous avez une situation de monopole? Ca doit être agréable.",53)


		
	NODE(53)
		SAY("Yakarma a bien tenté de mordre un peu sur notre secteur, mais ils ne font pas le poids face à nos prix et notre qualité. Et je ne parle pas de YO's, c'est qu'une bande de clochards bas de plafond.")
		ANSWER("Je vois.",54)


		
	NODE(54)
		SAY("Nous fournissons tout le marché. La ville, et même Tech Haven où nous avons négocié un accord pour vendre encore moins cher.")
		ANSWER("Alors je pourrais économiser en allant là-bas si j'ai besoin de quelque chose?",55)


		
	NODE(55)
		SAY("Ca dépend de pas mal de facteurs. Où vous êtes, ce dont vous avez besoin, ce genre de choses. Il faudra voir ça par vous-même.")
		ANSWER("D'autres conseils?",56)


		
	NODE(56)
		SAY("Hmm. Non, je pense que je vous ai tout dit. Ah si, je pense que vous aimerez savoir que les ingrédients nécessaires au fonctionnement de tous les appareils peuvent être achetés par charges de 200. C'est plus facile à manipuler. Sinon, allez voir ce que mon collègue peut vous proposer.")
		ANSWER("Je vais voir ça. Merci pour les infos.",57)



	NODE(57)
		SAY("Je vous en prie. Et transmettez mes salutations à %NPC_Name(4) quand vous repasserez le voir.")

		ENDDIALOG()
	
		
-- Cryton Typ die 2.

	NODE(70)

		SAY("Je n'ai rien d'autre à vous dire. Si vous voulez acheter quelque chose, c'est avec mes employés qu'il faut vous adresser.")

		ENDDIALOG()


-- Starttyp die 2.

	NODE(80)
		
		ISMISSIONTARGETACCOMPLISHED(0)
		if( result==0 ) then
			SAY("Je vous conseille vraiment d'aller parler à %NPC_NAME(0). Ca vous sera très utile. De plus, je vois que vous avez toujours le colis que je vous ai donné.")
			ENDDIALOG()
		else			
			SAY("Alors? C'était intéressant?")
			ANSWER("Oui, j'ai appris pas mal de choses. Le type était plutôt arrogant, mais il m'a bien expliqué. Bon, je vais aller faire un tour chez YO's. Il m'en a dit du mal, mais j'ai envie de vérifier par moi-même.",81)
		end
		
	NODE(81)
		SAY("Ouais, je sais qu'ils aiment pas beaucoup Yo's. Ils pensent que c'est un fournisseur marginal et rien de plus. Mais ils ont des magasins partout, et ils ont beaucoup de clients. Mais faites attention, vous ne pouvez jamais être certain d'en avoir pour votre argent avec eux.")
		ANSWER("Je vais aller voir ça par moi-même.",82)



	NODE(82)
		GIVEMONEY(540)
		ACTIVATEDIALOGTRIGGER(1)
		SAY("Tenez, c'est pour vous remercier pour la livraison. Lorsque vous êtes prêt, je vous conseille de retourner au QG. Ils devraient avoir quelque chose d'intéressant à vous proposer. En attendant, vous devriez nous aider en effectuant quelques missions, vous trouverez tout ça sur un CityCom. Vous n'en tirerez que du bien.")
		ANSWER("D'accord, merci. A plus tard.",83)


	
	NODE(83)	
		SAY("A plus tard.")

		ENDDIALOG()
		
-- Starttyp Ausstieg

	NODE(100)

		SAY("Pas de problème. Faites attention à vous.")

		ENDDIALOG()

end