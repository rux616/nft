--new
function DIALOG()
--Trigger
--Triggernumber,Type,Person
--0,D,Next Direx
--1,D,Diamond Direx
--2,D,Figaro spielt die Drogen aus
--3,D,Mazzaro


--Startnode, Person
--0 Human Resource
--50 NEXT Director of Operations
--100 Diamond Director of Operations
--150 Figaro Black Dragon
--200 Mazzaro
--Items -> none

-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("Bienvenue, runner! C'est toujours un plaisir de voir une nouvelle tête parmi nous. Tangent aime être proche de ses employés, vous vous en rendrez compte rapidement.")

		ANSWER("CONTINUER",1)
	NODE(1)
		SAY("Nous donnons à chacun les moyens de créer sa propre réalité. Comme vous l'avez peut-être remarqué, je suis en train de parler des armes que nous produisons. Vous vous imaginez sans doute qu'elles trouvent facilement des acquéreurs à Neocron. Même moi, j'ai un fusil d'assaut Tangent dans mon appartement.")

		ANSWER("C'est un plaisir d'appartenir à une faction qui traite ses clients de manière réaliste. On ne nous lave pas le cerveau à longueur de journées avec ces imbécillités que sont la paix et la liberté.",2)
	NODE(2)
		SAY("Evidemment, c'est en effet un de nos objectifs les plus chers. Tout client a de l'importance pour nous, et nous organisons de nombreuses compagnes pour susciter l'intérêt du consommateur.")

		ANSWER("CONTINUER",3)
	NODE(3)
		SAY("Mais Tangent s'occupe surtout de la production d'armes à tous les échelons. Je devrais peut-être vous parler tout d'abord de la compagnie? Nous allons évoquer cela ensemble.")

		ANSWER("J'allais justement vous le demander.",4)
	NODE(4)
		SAY("Tangent Technologies a été créée en 2748. A cette époque, elle s'est séparée de sa maison mère, BioTech, car elle avait trop grandi pour en rester dépendante.")

		ANSWER("CONTINUER",5)
	NODE(5)
		SAY("Depuis cette époque, Tangent a constamment dépassé sa compagnie mire, à tous les niveaux. CityAdmin a toujours signé de gros contrats avec Tangent, car son secteur d'activité est depuis toujours la spécialisation dans la fabrication des armes.")

		ANSWER("CONTINUER",6)
	NODE(6)
		SAY("En vendant des armes sur le marché de Neocron, nous avons assuré un constant renouvellement du marché. Et même si BioTech utilise tous les moyens en sa possession pour nous renverser de notre place prépondérante, nos ventes continuent de progresser chaque année.")

		ANSWER("BioTech essaye donc activement de mettre des bâtons dans les roues de Tangent?",7)
	NODE(7)
		SAY("Oui, et ils ont même parfois recours à la violence. Officiellement, ils vont bien entendu jouer les innocents. Mais ils ont des contacts avec Tsunami et investissent de grosses sommes dans les actions qu'ils mènent contre Tangent.")

		ANSWER("CONTINUER",8)
	NODE(8)
		SAY("Mais ces tentatives ne peuvent pas empêcher Tangent d'atteindre ses buts. Et en parlant de ça, vous  désirez certainement commencer à travailler pour Tangent, n'est-ce pas?")

		ANSWER("Oui, évidemment. Je m'imaginais presque que j'allais ne rien faire en échange de cet appartement que vous m'avez donné.",9)
	NODE(9)
		SAY("Soyez assuré que l'appartement vous appartient réellement. Tangent considère votre première mission comme une simple faveur. Vous toucherez un petit dédommagement pour cela.")

		ANSWER("C'est toujours agréable de travailler pour de l'argent. De quoi s'agit-il?",10)
		ANSWER("J'ai envie de remettre ça à plus tard.",23)
	NODE(10)
		SAY("C'est plutôt simple. Pour une compagnie comme Tangent, c'est évidemment important de maintenir de bonnes relations afin de faire avancer nos grands projets.")

		ANSWER("CONTINUER",11)
	NODE(11)
		SAY("Nos plus importants partenaires sont NEXT et Diamond Immobilier. NEXT coopère avec nous parce que, après tout, nous utilisons leurs véhicules pour monter certains de nos systèmes d'armement.")

		ANSWER("CONTINUER",12)
	NODE(12)
		SAY("Evidemment, c'est dans notre intérêt, c'est très visible. Et nous avons avec Diamond Immobilier des contrats pour équiper leurs propriétés en systèmes de sécurité.")

		ANSWER("CONTINUER",13)
	NODE(13)
		SAY("Notre relation avec Diamond remonte à loin, et nous sommes en très bon termes.")

		ANSWER("Oui, je pensais bien que ce genre de contrats existaient. Mais Tangent fournit aussi des armes pour les CopBots, non?",14)
	NODE(14)
		SAY("C'est juste. Evidemment, CityAdmin a choisi Tangent pour s'occuper de l'arsenal des CopBots. Après tout, Tangent est le plus grand fabricant d'armes indépendant. C'est non seulement plutôt lucratif, mais c'est aussi une mission qui exige de nous une grande responsabilité. Si nous faisions les mauvais choix, les conséquences pourraient être catastrophiques.")

		ANSWER("CONTINUER",15)
	NODE(15)
		SAY("La principale préoccupation de Tangent, c'est l'efficacité de ses armes. Les CopBots sont censés accomplir leur tâche aussi efficacement que possible. Il faut que les citoyens de Neocron puissent dormir sur leurs deux oreilles.")

		ANSWER("Impressionnant. Mais vous vouliez me dire quelque chose au sujet de ma mission, si le me souviens bien.",16)
	NODE(16)
		SAY("Attendez que j'aie terminé. Cette petite mission consiste en vous rendre à NEXT, Diamond Immobilier, et enfin Pepper Park. Pepper Park est un quartier vraiment dangereux. Faites attention lorsque vous y passez.")

		ANSWER("CONTINUER",17)
	NODE(17)
		SAY("Donc, tout d'abord vous devrez passer voir le directeur des opérations de NEXT pour lui remettre ces documents importants. C'est une analyse poussée de l'efficacité des systèmes d'armement de Tangent en conjonction avec la technologie des Hovercrafts.")

		ANSWER("CONTINUER",18)
	NODE(18)
		SAY("Ensuite, allez au QG de Diamond pour la seconde livraison. Mais j'ai oublié le nom du destinataire. C'est soir le QG de Diamond, soit la tour CityAdmin, à moins que ce soit un des magasins de Diamond.")

		ANSWER("CONTINUR",19)
	NODE(19)
		SAY("Cette livraison est un assortiment de spiritueux. Souvenez-vous qu'il faut toujours entretenir ses relations par de petits cadeaux.")

		ANSWER("Vous avez aussi parlé de Pepper Park. Qu'est-ce que je vais devoir y faire?",20)

--Spieler bekommt zwei Pakete
	NODE(20)
		GIVEITEM(9150)
		GIVEITEM(9151)
		SAY("Ca n'est pas très important. Vous allez devoir y trouver quelqu'un qui s'appelle Figaro. Il vous donnera un paquet que vous devrez remettre ici. C'est bien compris?")

		ANSWER("Evidemment, je suis plutôt du genre curieux...",21)
	NODE(21)
		SAY("La curiosité est une bénédiction, encore faut-il en user avec modération. En excès, elle peut être extrêmement néfaste. Allez-y, et n'oubliez pas à votre retour de donner le paquet de Figaro à Lazzaro, ici au QG.")

		ANSWER("CONTINUER",22)
	NODE(22)
		SAY("Sinon il sera de mauvaise humeur, et ça n'est pas le genre de chose qu'on souhaite voir arriver ici.")
		ACCEPTMISSION()
		SETNEXTDIALOGSTATE(24)
		ENDDIALOG()


	NODE(23)
		SAY("Alors prenez votre temps. Préparez-vous,et revenez quand vous êtes prêt.")
		ENDDIALOG()

	NODE(24)
		SAY("Vous devriez prendre votre première mission un peu plus au sérieux si vous voulez devenir quelqu'un dans Tangent. Si vous ne trouvez pas le courtier de Diamond, alors c'est qu'il est autre part en ville. Diamond est partout dans Neocron.")
		ENDDIALOG()
		

-----------------------------------------------------
--NEXT Director of Operations
	NODE(50)
		TAKEITEM(9150)
		if(result==0)then
			SAY("Oui? J'ai beaucoup à faire, et pas beaucoup de temps pour bavarder.")
			ENDDIALOG()
		else
			SAY("Oui? Dépêchez-vous, je suis très occupé.")

			ANSWER("Je dois vous livrer ce colis. Je viens de Tangent.",51)
		end
	NODE(51)
		SAY("Très bien. On m'a déjà prévenu. La confirmation est partie, elle va arriver chez Tangent dans quelques secondes. Vous venez de commencer chez eux?")

		ANSWER("Oui, et j'espère faire une belle carrière.",52)
	NODE(52)
		SAY("Bien, runner. Tangent, c'est un bon choix. Ils ont d'excellentes armes. Nous avons toujours été en très bonnes relations avec eux. Bonne journée à vous, runner.")
		SETNEXTDIALOGSTATE(53)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
		
	NODE(53)
		SAY("Je ne m'occupe pas de petites affaires, moi.")
		ENDDIALOG()
		

-----------------------------------------------------
--Diamond Director of Operations
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Vous n'avez rien à faire ici. Vous feriez mieux de vous en aller.")
			ENDDIALOG()
		else
			TAKEITEM(9151)
			if(result==0)then
				SAY("Vous n'avez rien à faire ici. Vous feriez mieux de vous en aller.")
				ENDDIALOG()
			else
				SAY("Oui? Une livraison pour Diamond, je présume?")

				ANSWER("C'est un petit cadeau de la part de Tangent, et c'est à vous que je dois le remettre...",101)
			end
		end
	NODE(101)
		SAY("Vraiment? C'est très gentil à Tangent de m'offrir ça. Le service de maintenance de Tangent est excellent, pour ce que je m'en souviens. Très professionnel. Mais qu'est-ce que c'est ça? Je ne pense pas que...")

		ANSWER("Un problème?",102)
	NODE(102)
		SAY("Non, non ça n'est rien. Rien du tout. C'est juste que c'est un vin très raffiné, un des meilleurs qu'on puisse trouver dans le monde.")

		ANSWER("CONTINUER",103)
	NODE(103)
		SAY("Et ça n'est pas du synthétique. Ca vaut une petite fortune. Transmettez ma gratitude à Tangent.")
		SETNEXTDIALOGSTATE(104)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
	
	NODE(104)
		SAY("Adressez-vous à un de nos employés, j'ai beaucoup de travail.")
		ENDDIALOG()		

-----------------------------------------------------
--Figaro Black Dragon
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Je n'ai rien à te dire.")
			ENDDIALOG()
		else
			SAY("Salut runner! Belle journée n'est-ce pas? Mais j'ai ici quelque chose qui pourrait la rendre encore plus belle...")

			ANSWER("Qu'est-ce que c'est que ce coin minable...",151)
		end
	NODE(151)
		SAY("Ouais, je sais, mais certains considèrent malgré tout que c'est le paradis sur terre. Et j'en fais partie. Bon, c'est pas tout ça... Qu'est-ce que tu me prends?")

		ANSWER("Euh... non, je ne veux pas de drogue. Je viens pour chercher un paquet à livrer.",152)
	NODE(152)
		SAY("OK, donc t'es le runner qui va me livrer ça. Haha! Si tu veux savoir, c'est vraiment de la bonne came qu'il y a là-dedans. Si quelqu'un demande, on fournit, c'est notre job.")

		ANSWER("CONTINUER",153)
	NODE(153)
		SAY("Surtout si t'es accro à ce truc pour le restant de tes jours. Mais j'admets que Damion Jordan a des goûts de prince.")

		ANSWER("Une minute... Ces drogues, c'est pour Jordan? Le boss de Tangent? On parle bien de la même personne?",154)
	NODE(154)
		SAY("Ouais, exactement! T'étais pas au courant? Damion est un grand client, et ce depuis longtemps.")

		ANSWER("CONTINUER",155)
	NODE(155)
		SAY("A la limite, on pourrait même facilement tenir rien qu'avec ce qu'il nous paye. C'est pas croyable ce qu'il peut prendre. Il a les moyens de sa défonce, le bougre.")

		ANSWER("Mais pourquoi est-ce qu'il fait ça? Il doit avoir une bonne raison...",156)
	NODE(156)
		SAY("J'en sais rien. Il a toujours bien aimé les drogues, et le Dragon Noir a de bons rapports avec lui à cause de ça. On lui fait même des prix réduits.")

		ANSWER("CONTINUER",157)
	NODE(157)
		SAY("Il s'y est mis sérieusement le jour où son père a donné BioTech a son plus jeune frère, Seymour. Je pense qu'il s'attendait à rafler toute la mise.")

		ANSWER("CONTINUER",158)
	NODE(158)
		SAY("Qui sait? Mais je parle trop. Tu veux certainement retourner dans ton petit quartier tranquille, n'est-ce pas?")

		ANSWER("Je suis là uniquement parce que c'est ma mission, pas parce que j'ai choisi d'y être.",159)

--Spieler bekommt massig Drogen

	NODE(159)
		GIVEITEM(9152)
		SAY("Si jamais t'as envie de te défoncer la tête, tu trouveras tout ce que tu veux ici à Pepper Park.")
		SETNEXTDIALOGSTATE(160)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
		
	NODE(160)
		SAY("C'est bon, je t'ai déjà donné tout ce qu'il fallait. T'en veux plus? Désolé, mais pas aujourd'hui.")
		ENDDIALOG()
		
-----------------------------------------------------
--Mazzaro
	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Revenez quand vous avez terminé votre mission.")
			ENDDIALOG()
		else
			SAY("Entrez et prenez place. Vous êtes un de nos nouveaux runners, et vous venez de terminer votre première mission. C'est bien ça?")

			ANSWER("Oui, voici le colis avec les... euh... drogues.",201)
		end
	NODE(201)
		TAKEITEM(9152)
		if(result==0)then
			SAY("Ne me dites pas que vous avez perdu votre colis?")
			ENDDIALOG()
		else
			SAY("Quel dommage. Je dois donner une mauvaise impression de Tangent, à cause de ça. En théorie, le livreur n'est pas censé savoir ce qu'il y a dans ce paquet. Et j'ajouterais même que les règles de discrétion élémentaires suggèrent que vous n'avez même pas à tenter de vous renseigner.")

			ANSWER("Oui, on peut dire que ça m'a fait réfléchir. A quoi servent ces drogues?",202)
		end
	NODE(202)
		SAY("Bon, je vais vous expliquer. Damion Jordan, le dirigeant de tangent, a quelques problèmes avec les drogues. Mais tout le monde est plus ou moins au courant de ses petites histoires dans Neocron, ne serait-ce que par ouï-dire. C'est triste de devenir accro à ça aussi rapidement.")

		ANSWER("CONTINUER",203)
	NODE(203)
		SAY("Vous avez compris? Le dirigeant d'une grande compagnie ne peut pas se permettre de sortir dans la rue pour acheter ses doses. Qu'est-ce que vous feriez à ma place? Voilà, vous avez compris. Vous envoyez un runner vous les chercher. C'est tout ce qu'il y a à dire.")

		ANSWER("Pourquoi les gens sont-ils si attirés par les drogues?",204)
	NODE(204)
		SAY("Je sais pas... Mais vous avez fait du bon travail. La livraison a bien été effectuée. J'ai demandé de vous faire venir à moi parce que je voulais créer aussi peu de rumeurs que possible. J'espère que je peux compter sur vous pour faire de même.")

		ANSWER("Oui, je sais garder un secret.",205)
	NODE(205)
		GIVEMONEY(1000)
		SAY("Très bien. Voici une récompense de 1000 crédits. Vous avez fait votre premier pas vers une carrière radieuse au sein de Tangent.")

		ANSWER("CONTINUER",206)
	NODE(206)
		SAY("Mais ne vous reposez pas trop vite. On vous connaît, et plus vous vous faites apprécier ici, plus vous aurez de bonnes missions. Prenez soin de vous, et à la prochaine fois.")
		EPICRUNFINISHED(4,0)
		ACTIVATEDIALOGTRIGGER(3)
		ENDDIALOG()

end