--new
function DIALOG()
--Trigger
--Triggernumber,Type,Person
--0,D,Matt
--1,D,Torben
--2,D,Mazzaro

--Startnode, Person
--0
--50,Matt Tronstett
--100,Torben
--150,Mazzaro
--Items -> none

-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("On a de bonnes nouvelles. CityAdmin a décidé de commander une nouvelle arme à rayons. Naturellement, nous sommes en première ligne pour cette commande.")

		ANSWER("CONTINUER",1)
	NODE(1)
		SAY("Néanmoins, nous ne comprenons pas pourquoi Tangent et BioTech ont été choisies toutes les deux pour cette mission. C'est évident que nous pourrions l'assurer sans aide.")

		ANSWER("CONTINUER",2)
	NODE(2)
		SAY("Le but de Tangent, c'est de créer des armes. Mais CityAdmin a décidé de faire aussi appel à BioTech pour ce projet.")

		ANSWER("Mais BioTech ne posera pas de problèmes à Tangent. Nous avons un grand avantage dans cette partie.",3)
	NODE(3)
		SAY("C'est tout à fait exact. Tout le monde le sait. BioTech a encore dû jouer de sales tours pour avoir réussi à avoir une place de choix dans ce contrat.")

		ANSWER("Et quand saura-t-on qui remportera le contrat?",4)
	NODE(4)
		SAY("Prochainement, les deux compagnies vont devoir présenter un prototype de l'arme à rayons. Le meilleur remportera le marché. Mais je pense que la compétition ne sera pas franche.")

		ANSWER("CONTINUER",5)
	NODE(5)
		SAY("Si tout est déjà prévu par BioTech, je pense qu'ils ont déjà un sale coup en préparation.")

		ANSWER("Mais Tangent n'a pas une structure appropriée pour traiter de telles questions?",6)
	NODE(6)
		SAY("BioTech pourra toujours essayer de nous jouer des tours. Ils récolteront ce qu'ils méritent. Pour ce projet, Damion Jordan lui-même a exprimé le souhait de rappeler un expert dans les armes à rayons, aujourd'hui parti à la retraite.")

		ANSWER("CONTINUER",7)
	NODE(7)
		SAY("Le problème, c'est que notre expert a pris sa retraite depuis maintenant six mois. Comme vous nous avez montré votre loyauté lors de votre premier run, je pense que vous devriez tenter de le convaincre de revenir travailler pour nous.")

		ANSWER("CONTINUER",8)
	NODE(8)
		SAY("Vous allez lui présenter une offre qu'il ne pourra pas refuser. L'offre de réintégrer l'équipe. Vous allez devoir négocier serré sur cette affaire.")

		ANSWER("Je vais faire de mon mieux. Où se trouve cet expert?",9)
		ANSWER("J'ai bien peut de ne pas être prêt pour cette mission.",11)
	NODE(9)
		SAY("Il s'appelle Matt Tronstett. Selon nos dernières informations, il vit à Point Red, dans les Terres Brûlées. Secteur B 07, précisément.")

		ANSWER("CONTINUER",10)
	NODE(10)
		SAY("Si vous réussissez à le convaincre, allez ensuite voir Mazzaro pour lui faire votre rapport.")
		ACCEPTMISSION()
		SETNEXTDIALOGSTATE(12)
		ENDDIALOG()
		
	NODE(11)
		SAY("C'est certainement une mission importante, mais vous n'avez pas l'obligation de la faire.")
		ENDDIALOG()
	NODE(12)
		SAY("Vous avez parlé à Tronstett? Il vit à Point Red, dans les Terres Brûlées.")
		ENDDIALOG()


-----------------------------------------------------
--Matt Tronstett

	NODE(50)
		SAY("Non, j'achète rien! Allez du vent, sale runner!")

		ANSWER("Hum... je viens de la part de Tangent. Vous êtes M. Tronstett?",51)
	NODE(51)
		SAY("Tangent? Oui, je me rappelle bien d'eux. Navré de vous avoir crié après. En général, quand quelqu'un vient me voir ici, c'est pour me vendre quelque chose, et si je refuse il cherche à me tuer. Vous pouvez vous douter que ça ne m'a pas rendu très amical.")

		ANSWER("Pour être honnête, je vais vous proposer exactement l'inverse de ce dont vous venez de parler. Tangent m'envoie parce qu'on a besoin de vos compétences exceptionnelles pour travailler sur un projet.",52)
	NODE(52)
		SAY("Ah? On essaye la flatterie maintenant?")

		ANSWER("Cette chance ne se reproduira pas, M. Tronstett. Tangent est une des compagnies les plus puissantes de Neocron. Qu'est-ce que vous en dites?",53)
	NODE(53)
		SAY("Mais qu'est-ce que vous en savez? J'ai travaillé pendant des années jusqu'à m'en faire saigner les doigts. J'avais de grands projets. J'ai passé chaque minute de ma vie à travailler pour la compagnie.")

		ANSWER("CONTINUER",54)
	NODE(54)
		SAY("J'ai été l'un des plus fervents employés de Tangent. Les armes qu'on produisait servaient à donner la liberté au peuple. La liberté et la sécurité dans les Terres Brûlées.")

		ANSWER("CONTINUER",55)
	NODE(55)
		SAY("Personne n'allait plus être vulnérable. Personne n'allait plus devoir se cacher dans un trou puant. Mais c'était des conneries! Un jour j'ai compris, j'ai découvert la vérité. Et c'est pour ça que je suis parti.")

		ANSWER("Qu'est-ce que vous avez découvert?",56)
	NODE(56)
		SAY("Tangent se fiche des gens. Elle s'en fiche complètement. Tangent est une grosse machine avec des moteurs énormes qui broient tout ce qu'ils trouvent sur leur passage. C'est devenu un monstre.")

		ANSWER("CONTINUER",57)
	NODE(57)
		SAY("Parfois, je pense que cette compagnie a développe une volonté propre. Même Damion Jordan ne la contrôle pas vraiment. Même si Damion disparaissait, une autre tête pousserait, et Tangent continuerait toute seule.")

		ANSWER("CONTINUER",58)
	NODE(58)
		SAY("C'est comme une hydre. Vous coupez une tête, il y en a deux qui repoussent. On ne peut rien y faire.")

		ANSWER("C'est évident pour moi que vous n'avez pas eu une bonne expérience avec tangent. Mais je vous assure que ça ne se reproduira pas.",59)
	NODE(59)
		SAY("Vous êtes quelqu'un de très naïf, runner. Tout ce qui m'intéresse, c'est de voir mon vieil ami Torben de temps en temps, on va dans ce petit restaurant de la station Pepper Park, et on parle du bon vieux temps. Torben et moi, on en a vécu des vertes et des pas mûres, et il m'a toujours beaucoup aidé.")

		ANSWER("Et vous écouteriez votre ami s'il vous disait de travailler à nouveau chez Tangent? Comme ça, je le persuade, et ensuite il vous persuade. Il saura ce qui est bon pour vous.",60)
	NODE(60)
		SAY("Quoi? Qu'est-ce que vous dites?")

		ANSWER("Rien, je parlais tout haut. Au revoir, M. Tronstett.",61)
	NODE(61)
		SAY("Alors au revoir, runner.")
		SETNEXTDIALOGSTATE(62)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
		
	NODE(62)
		SAY("C'est pas la peine de revenir, je ne suis pas du tout intéressé. je vais plutôt aller voir mon vieil ami Torben.")
		ENDDIALOG()
		

-----------------------------------------------------
--Torben

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("On se connaît? Laissez-moi tranquille.")
			ENDDIALOG()
		else
			SAY("Salut runner. Un problème?")

			ANSWER("On m'a dit que vous connaissez un certain Tronstett. Matt Tonstett.",101)
		end
	NODE(101)
		SAY("Si je le connais! C'est un de mes meilleurs amis! Je l'ai rencontré au cours d'une mission concernant à la fois NEXT et Tangent. Moi, je travaille pour NEXT. Tronstett est quelqu'un de très professionnel et de très fiable.")

		ANSWER("Je n'en doute pas. Est-ce que vous n'aimeriez pas le voir revenir à Tangent? J'ai entendu beaucoup de bonnes choses à son sujet. Ce serait une grande perte de le laisser dans les Terres Brûlées, complètement inutile. Vous ne croyez pas?",102)
	NODE(102)
		SAY("En ce moment, il n'est vraiment pas motivé. Il a perdu pas mal d'illusions au moment où il a quitté Tangent. Il avait compris qu'il ne pourrait rien changer tout seul. Et je ne vais pas lui conseiller de faire quelque chose qu'il ne veut pas faire.")

		ANSWER("Evidemment, qu'est-ce que vous vous imaginez? Je pense qu'un poste à Tangent serait une sécurité pour lui, et il serait bien payé. Et il pourrait faire ce qu'il aime le mieux : de la recherche.",103)
	NODE(103)
		SAY("Vous seriez pas en train de me demander de le convaincre, par hasard?")

		ANSWER("C'est exactement ce que l'essaye de faire. Vous ne comprenez pas que c'est ce qui serait le mieux pour lui? Il ne va pas en rajeunissant, et les Terres Brûlées, ça vous ruine la santé rapidement. A Tangent, il serait en sécurité.",104)
	NODE(104)
		SAY("Non, vraiment, Matt devrait faire ce qu'il pense être le mieux pour lui. Si vous me proposez ce job, moi j'accepte. Mais pas comme ça, merci.")

		ANSWER("Et si je vous offrais une petite somme pour vous aider à vous décider? Pour que vous puissiez convaincre votre ami?",105)
	NODE(105)
		SAY("Vous me prenez pour qui? Je vais pas vendre mon meilleur ami!")

		ANSWER("Qu'est-ce que vous dites de 5.000 crédits? Je pourrais en parler à un des directeurs des opérations de Tangent.",106)
	NODE(106)
		SAY("5000?? Euh... Je pense que ça ne lui fera pas de mal d'avoir quelque chose pour occuper ses vieux jours. Je vais lui expliquer ça, mais n'oubliez pas mon petit extra. Sinon, je me rappellerai de lui expliquer exactement le contraire.")
		SETNEXTDIALOGSTATE(107)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()

	NODE(107)
		SAY("J'ai déjà accepté votre offre, qu'est-ce que vous voulez encore? Mon âme? Allez à votre compagnie, et assurez-vous que j'aie bien mon fric.")
		ENDDIALOG()
		

-----------------------------------------------------
--Mazzaro

	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Oui? Ne revenez me voir que quand vous avez terminé votre mission.")
			ENDDIALOG()	
		else
			SAY("Je me souviens presque de votre nom, c'est bon signe. Vous avez réussi à convaincre Tronstett?")

			ANSWER("Ca n'a pas été facile. J'ai dû convaincre un certain Torben de le faire à ma place. Mais j'ai dû lui promettre 5.000 crédits pour son aide.",151)
		end
	NODE(151)
		SAY("Vous lui avec promis de l'argent de Tangent? Sans demander l'autorisation? Vous avez pris des risques... Mais si Matt Tronstett revient réellement parmi nous, alors c'est de l'argent bien placé.")

		ANSWER("CONTINUER",152)
	NODE(152)
		SAY("Si c'est le cas, alors nous allons payer. Vous êtes certain que ça va marcher?")

		ANSWER("Tout devrait bien se passer. Il m'a dit qu'il faisait confiance à son ami.",153)
	NODE(153)
		SAY("Bien joué. Vous avez plus d'un tour dans votre sac, on diraît. Tangent vient de vous verser 2.000 crédits sur votre compte. Avec l'aide de Tronstett, on développera cette arme encore plus rapidement.")

		ANSWER("CONTINUER",154)
	NODE(154)
		SAY("Restez joignable et gardez la forme, on aura certainement besoin de vous prochainement.")
		EPICRUNFINISHED(4,1)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()

end