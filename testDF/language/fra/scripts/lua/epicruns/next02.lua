--new
function DIALOG()

--Trigger
--Triggernumber,Type,Person

--0,D,Mason



--Startnode, Person
--0 Human Resource
--50 Elias
--100 Mason

-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("Voilà une nouvelle chance pour vous de faire quelque chose pour NExT. C'est assez délicat à expliquer, parce que l'opinion de la population sur ce sujet varie grandement. De nombreuses idées sur les Anges Déchus sont construites sur des préjugés et des rumeurs, rarement sur des faits qui les accusent réellement.")
		
		ANSWER("CONTINUER",1)
	NODE(1)
		SAY("Les Anges Déchus ne sont pas à proprement parler dans le carnet de bal de CityAdmin, si vous voyez ce que je veux dire. Et c'est dommage, parce qu'ils possèdent un savoir-faire qui pourrait bénéficier à beaucoup plus de gens qu'avec la situation actuelle. Mais NExT pense différemment : nous évaluons le potentiel et les actions de cette organisations. Nous ne faisons pas attention aux rumeurs et aux préjugés. Je veux dire par là que pour nous, les Anges Déchus sont une chance.")
		
		ANSWER("Oui, mais où voulez-vous en venir? Y a-t-il des liens entre NExT et les Anges Déchus?",2)

	NODE(2)
		SAY("Oui, c'est exactement là où je veux en venir. Officiellement, nous n'avons pas de liens avec eux. Mais en dépit de l'opinion générale sur les Anges Déchus, nous n'avons pas l'intention de gaspiller des fortunes pour rechercher des procédés qui existent déjà chez eux. Mais NExT a été très prudente dans ces relations. Si jamais on venait à savoir que nous avions des relations avec eux, notre réputation en serait plus que ternie.")
		
		ANSWER("CONTINUER",3)
	NODE(3)
		SAY("NEXT est consciente des risques qu'elle prend, mais elle tient à maintenir un minimum de contacts avec les Anges Déchus. On n'a que récemment organisé un échange, mais nous cherchons encore la personne en laquelle nous pouvons avoir confiance pour cette mission délicate.")
		
		ANSWER("Et j'en déduis que vous avez trouvé? C'est moi dont vous parlez?",4)
		ANSWER("Si c'est à moi que vous pensez, je crains de ne pas avoir le temps maintenant.",8)

	NODE(4)
		SAY("Vous êtes très perspicace. Je vois une grande carrière pour vous. Donc, vous savez probablement déjà où se trouvent les Anges Déchus?")
		
		ANSWER("A Tech Haven, si j'ai bonne mémoire.",5)
	NODE(5)
		SAY("Exact. Certains considèrent cette ville comme un paradis technologique. Pourquoi? Vous vous en rendrez compte par vous-même. Vous trouverez cette ville dans les Terres Brûlées, et je vous assure que son histoire est très intéressante. Mais je ne vais pas vous retarder plus longtemps avec mes histoires. NExT veut que vous rencontriez un certain Elias, qui travaille pour les Anges Déchus. Il devrait vous attendre à l'une des sorties de Tech Haven.")
		
		ANSWER("CONTINUER",6)

	NODE(6)
		SAY("On nous a dit qu'il avait l'autorisation de parler pour les Anges Déchus. Ecoutez bien ce qu'il a à vous dire. Il vous donnera aussi une puce de contrôle que vous devrez ensuite rapporter à M. Mason. Vous vous êtes déjà rencontrés, il me semble.")
		
		ANSWER("En effet. Je vais y aller.",7)
	NODE(7)
		SAY("Bonne chance, et faites attention dans les Terres Brûlées. Ca peut être dangereux.")
		SETNEXTDIALOGSTATE(9)
		ACCEPTMISSION()
		ENDDIALOG()
		

	NODE(8)
		SAY("Ca valait la peine d'essayer. Revenez quand vous vous sentez à la hauteur.")
		ENDDIALOG()
		
	NODE(9)
		SAY("Vous avez déjà parlé à Elias, à Tech Haven?")
		ENDDIALOG()
		



-----------------------------------------------------
--Elias

	NODE(50)
		SAY("Je m'attendais à vous voir. Au moins, ils ont pris la peine de m'informer. Attendez une seconde... Vous ne m'avez pas l'air d'un officiel de NExT...?")
		
		ANSWER("L'habit ne fait pas le moine. Je viens ici en tant que représentant de NExT.",51)
	NODE(51)
		SAY("Je m'attendais à parler à un véritable employé de NExT, et au lieu de ça, voilà un simple runner.")
		
		ANSWER("Si c'est ce que vous pensez, c'est votre problème. Mais apparemment, vous n'avez pas le choix, il va falloir me parler.",52)
	NODE(52)
		SAY("S'il le faut... J'espère que vous avez les connaissances suffisantes pour savoir de quoi nous allons parler?")
		
		ANSWER("Ne vous inquiétez pas, on m'a expliqué. Et si jamais je ne vous satisfais pas, je pense que cet échange sera retardé de quelques mois. J'y veillerai personnellement.",53)
	NODE(53)
		SAY("C'est bon, ne vous énervez pas. Commençons. Que diriez-vous de la cryogénisation? Oui, c'est par là que nous allons commencer. Vous savez déjà ce que c'est, j'espère?")
		
		ANSWER("Evidemment, c'est l'enfance de l'art. Grâce à ça, on peut dormir indéfiniment.",54)
	NODE(54)
		SAY("Exact. Et c'est très utile pour les vaisseaux spatiaux. C'est une technologie employée depuis longtemps maintenant, mais nos laboratoires de Tech Haven on réussi à lui apporter quelques améliorations.")
		
		ANSWER("CONTINUER",55)
	NODE(55)
		SAY("A présent, notre méthode comporte quelques avantages. Les personnes qui sortaient d'un long séjour cryogénique souffraient souvent d'engelures et d'autres maladies. NExT sera très certainement intéressée par nos avancées en la matière.")
		
		ANSWER("Oui, surtout que NExT s'intéresse aux voyages spatiaux, entre autres choses. Mais je n'ai pas l'autorité suffisante pour accepter cet échange.",56)
	NODE(56)
		SAY("Oui, c'est que je pensais. Mieux vaut attendre un peu pour rester en sécurité. Bien, j'ai transféré les données demandées aux laboratoires de NExT. C'est à vous de décider, maintenant.")
		
		ANSWER("On m'a dit que vous aviez aussi une puce de contrôle à me remettre pour NExT. C'est exact?",57)
	NODE(57)
		SAY("En fait, c'est même le but principal de notre entrevue. Nous avons terminé le prototype d'une nouvelle puce de contrôle. Elle fonctionne plus efficacement, et certains problèmes créés par le modèle précédent ont été éliminés. Elle devrait fonctionner parfaitement avec votre véhicule expérimental. Prenez cette puce, et ne la perdez pas. La question du paiement a déjà été réglée. Par la méthode habituelle, je suppose.")
		
		ANSWER("Quel genre de véhicule expérimental?",58)
	NODE(58)
		GIVEITEM(9101)
		SAY("Je pense que c'est encore classé secret. Je ferais mieux de ne pas trop en dire. Bon retour chez vous.")
		
		ANSWER("Est-ce que vous pouvez m'en dire un peu plus au sujet de Tech Haven? C'est une structure impressionnante, je trouve.",59)
	NODE(59)
		SAY("*soupir* Bien. Tech Haven a été construite à partir de rien, pour servir les objectifs des Anges Déchus. En 2633, si mes souvenirs sont bons. C'est l'année où les Anges Déchus ont été créés par Thomas Cooper. Tech Haven possède plusieurs réacteurs différents, certains utilisés par la recherche. Toute l'installation est protégée par des défenses statiques et mobiles.")
		
		ANSWER("CONTINUER",60)
	NODE(60)
		SAY("Après la construction de Tech Haven, nous n'avons pas eu de gros problèmes d'invasion. Ce qui prouve l'efficacité de nos défenses. La directrice des Anges Déchus s'appelle Sylvia Bennet, et elle est respectée par tous les Anges Déchus. Mais il faut que je m'en aille, j'ai des choses à faire. Non, pour être honnête j'en ai marre de vous parler. Il faut vous en aller, maintenant.")
		SETNEXTDIALOGSTATE(61)
		ENDDIALOG()
		
	NODE(61)
		SAY("Ecoutez, il y a beaucoup de travail ici. Vous devriez plutôt vous occuper de vos affaires. Retournez chez vous.")
		ENDDIALOG()
		

-----------------------------------------------------
--Mason

	NODE(100)
		TAKEITEM(9101)
		if(result==0)then
			SAY("On vous a demandé de me ramener une puce de contrôle. Faites ce qui vous a été commandé.")
			ENDDIALOG()
		else
			SAY("Avez-vous la puce de contrôle?")
		
			ANSWER("Oui. Mais je dois dire que mon contact à Tech Haven était plutôt insupportable.",101)
		end
	NODE(101)
		SAY("On diraît que vous avez eu affaire à Elias. Mais tant qu'ils nous rendent service comme ils le font, je ne peux pas me plaindre. Cette puce de contrôle va permettre à nos véhicules de réagir plus rapidement face à un danger, tout en rendant leur pilotage encore plus confortable. Moi, je pense vraiment que notre avenir est dans ces véhicules, pas dans Irata III comme le pense M. Diggers.")
		
		ANSWER("CONTINUER",102)
	NODE(102)
		SAY("Nous avons tout ce qu'il nous faut ici. Tout ce délire autour d'Irata III, c'est uniquement pour moi la possibilité pour l'humanité de transformer un autre paradis en poubelle radioactive.")
		
		ANSWER("Mais est-ce qu'Irata III est aussi merveilleuse que tout le monde le dit?",103)
	NODE(103)
		SAY("Que je vous explique une chose. Irata III est peut-être le plus bel endroit de l'univers, mais moi je pense que notre avenir est ici. Non seulement je pense que l'humanité n'a pas le droit de poser ses sales pattes sur une autre planète, mais en plus je crois que nous avons tout ce qu'il faut ici. Et si nous ne réussissons pas à survivre ici, alors ce ne sera qu'une question de temps avant qu'Irata III subisse le même sort. C'est tout ce que j'ai à dire.")
		
		ANSWER("Vous semblez plutôt amer...",104)
	NODE(104)
		GIVEMONEY(5000)
		SAY("Amer? De toute manière, c'est de l'histoire ancienne. Je n'ai pas à être amer. Mes yeux sont ouverts, je sais ce qu'il y a à voir. Je n'ai plus envie d'en parler... NExT aura besoin de vous bientôt, soyez-en certain. Entraînez-vous, et revenez quand vous vous sentez prêt. Tenez, voilà 5.000 crédits en récompense.")
		EPICRUNFINISHED(3,1)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
		
end