function DIALOG()

	NODE(0)
		DOYALIGNMENT()
			if( result==-1 ) then
			-- Fall 1: Reza Anhänger
				SAY("Yo, man.")
				ANSWER("Gloire à Reza. Qui êtes-vous?",20)		
			else 
			-- Fall 2: Reza Feind
				SAY("Yo, man.")
				ANSWER("Oh l'ami, j'ai enfin réussi à sortir d'ici. Ils sont tous tarés là-dedans!",1)
			end
				
	NODE(1)
		SAY("Héhé. Je vois que vous avez résisté au processus... Vous avez parlé à notre technicien?")
		ANSWER("Oui. Il m'a dit des choses sur la zone MC5. Il m'a dit que vous pourriez m'expliquer certains points.",6)
		ANSWER("Pas encore. Mais de quel processus est-ce que vous parlez?",2)		
	
	NODE(2)
		SAY("La zone MC5 est un programme de contrôle des esprits lancé par Lioon Reza. Il fait capturer des dissidents et des criminels, et il leur fait subir un lavage de cerveau. Ensuite, il leur fait implanter une puce dans le crâne, dans le but de créer une société de pantins à ses ordres.")
		ANSWER("Sornettes. Du lavage de cerveau? Mais ça n'existe pas!!",3)	

	NODE(3)
		SAY("Vous croyez? Alors dites-moi un peu... D'où venez-vous? Quelle est votre profession? Qu'est-ce que vous savez faire?")
		ANSWER("Je...",4)					

	NODE(4)
		SAY("Vous voyez! Vous êtes une feuille blanche. Vous êtes un enfant, vous devez tout réapprendre à zéro. Héhé. Mais ne vous inquiétez pas, on va y veiller. ...")
		ANSWER("Qu'est-ce que vous voulez dire? Qui êtes-vous?",5)	

	NODE(5)
		SAY("Nous sommes de l'alliance qui combat le régime oppresseur de Reza. Nous avons infiltré cet endroit en nous faisant passer pour des gens du personnel d'entretien. Nous avons réussi à infecter leur système avec un peti virus très efficace. Et c'est pourquoi de temps en temps, ils échouent dans le réajustement de leurs 'patients'. Maintenant, toute leur opération est en train de prendre l'eau, et tout ça grâce à nous!")
		ANSWER("Whoa. Cool!",6)	
		
	NODE(6)	
		SAY("La zone MC5 est un véritable bijou de technologie. BioTech a fait un travail hors pair. Dans la salle où vous avez repris conscience, ils ne font pas que du lavage de cerveau, ils réussissent aussi à extraire les informations présentes dans les cerveaux des gens, pour les archiver.")
		ANSWER("Donc je pourrais retrouver mes souvenirs? Si jamais les données sont encore là...",7)	
		
	NODE(7)	
		SAY("Nous n'avons pas encore trouvé le moyen de le faire. Vous avez sans doute remarqué que les installations sont vraiment bien gardées. C'est difficile d'y entrer, même avec le badge de l'équipe d'entretien.")
		ANSWER("Je vois.",8)	
		
	NODE(8)	
		SAY("Mais vous pourriez nous aider à frapper un grand coup.")
		ANSWER("D'accord. Mais comment?",9)	
		
	NODE(9)
		SAY("On vient d'apprendre d'un de nos informateur que le technicien chef avait mis de son plein gré le prototypede puce sur les SecBots. C'est une décision qui pourrait lui coûter sa place, parce qu'en ce moment les bots en font un peu à leur tête. En ce moment, il essaye de trouver des gens pour lui ramener les puces. Il en a besoin de quatre.")
		ANSWER("Et moi, quel rôle est-ce que je joue là-dedans?",10)

	NODE(10)
		SAY("Eliminez quelques SecBots, et ramenez les puces à notre technicien qui se trouve là-bas. Il va... euh... les modifier, et ensuite les apporter au chef technicien de la zone MC5. Alors, ça vous branche?")
		
		ANSWER("Evidemment! Après tout ce qu'ils m'ont fait subir...",11)	
		ANSWER("Hmmm... Non, je n'y tiens pas trop. Je ferais mieux de m'en aller avant qu'ils me capturent à nouveau.",30)	

	NODE(11)
		SAY("Voilà, vous avez tout compris. Ils ne se douteront jamais d'où provient l'attaque. On va saboter toute leur installation. Mais je vous conseille de vous préparer un peu, ces bots sont assez coriaces.")
		ANSWER("Vous pouvez me donner quelques conseils à leur sujet?",14)
		ANSWER("J'ai besoin de quelques conseils de combat. J'ai vraiment un gros trou de mémoire.",12)

	NODE(12)
		SAY("Oui, je m'en doute. La chose la plus importante, c'est de penser à sortir votre arme. Lorsque vous allez en chasse, déplacez l'arme que vous voulez utiliser dans un des espaces libres de votre ceinture, à droite du R.P.O.S. et activez-là avec le numéro approprié.")
		ANSWER("Compris.",13)

	NODE(13)
		SAY("Ensuite, visez ce que vous voulez attaquer, et c'est parti. Lorsque vous utilisez une arme de tire, je vous conseille d'attendre que le réticule de visée se rétrécisse, pour que vous ayez une chance raisonnable de toucher. Mais lorsque vous allez en ville, évitez de vous promener avec votre arme sortie. Les CopBots n'aiment pas ça du tout. Faites attention à eux, ils ont la gâchette facile.")
--new
		ANSWER("OK. Mais si malgré tous vos bons conseils je me fais refroidir?",50)
--new end		
	NODE(14)
		SAY("Le nom exact est: AREA MC5-SECURITY SYSTEM BOT. Faites attention à leur statut, les modèles que vous devez éliminer portent le statut MALFUNCTIONING. Prenez le temps de vous familiariser avec vos options, et travaillez un peu vos compétences. Les bots utilisent des lasers. Si vous n'avez pas d'arme de tir, esayez de les acculer dans un coin pour les tailler en pièces. Ils n'aiment pas les coins.")
		ANSWER("Ok. Mais vous pensez que je vais m'en sortir sans aide?",15)
		
	NODE(15)
		SAY("Je pense, oui. Mais si vous rencontrez d'autres gens, pensez à faire équipe avec eux. Il y a une fonctionnalité dans votre R.P.O.S. pour créer des équipes. Je sais que vous vous en sortirez bien. Si vous faites équipe avec d'autres gens, non seulement vous pourrez apprendre plus rapidement, mais vous pourrez aussu agir de manière complémentaire.")
		ANSWER("Mais il faut que je travaille tout de même mes compétences, j'imagine?",16)

	NODE(16)
		SAY("Tout à fait. Si vous voulez gagner de l'argent, il va falloir passer par là. Vous gagnez une petite somme d'argent pour tout adversiaire quev vous éliminez. Et de plus, vous pouvez prendre ce qui se trouve sur leurs cadavres. Visez le cadavre et 'utilisez'-le, c'est tout. On a aussi quelqu'un qui recherche des composants de véhicule, si vous en trouvez parlez-lui, je pense qu'il sera intéressé.")
		ANSWER("D'accord. Bon, où est-ce que je peux trouver ces bots?",17)

	NODE(17)
		SAY("Ils aiment se cacher dans les unités de production d'énergie pour recharger leurs batteries. Les puces ne sont pas optimisées dans ce domaine, et ça consomme beaucoup. Mais vous allez devoir les déloger de là vous-même.")
		ANSWER("D'accord. Je ne vais pas vous décevoir.",18)

	NODE(18)
		SAY("Le nom exact de ces puces est 'Prototype AMC5 Processor'. Je vous souhaite bonne chance. Lorsque vous en trouverez quatre, pensez à les ramener à notre technicien. Bonne chance.")
		ENDDIALOG()
		
	NODE(30)
		SAY("Apparemment, ils n'ont pas seulement effacé votre mémoire, ils vous ont aussi coupé les couilles. Allez, hors de ma vue, poule mouillée!")
		ENDDIALOG()
		



	NODE(20)
		SAY("On est l'équipe de nettoyage, et on fait tout briller du sol au plafond! Mais pour l'instant on fait une pause, alors laissez-nous tranquille.!")
		ANSWER("Qu'est-ce que c'est, ici?",21)
		
	NODE(21)
		SAY("Je vois. Ils ont fait du beau travail... Cette zone s'appelle MC5. Mais si je vous disais que c'est là qu'on vous a lavé le cerveau, vous ne me croiriez pas de toute façon.")
		ANSWER("Vous avez raison, je sais que c'est un mensonge! Ils m'ont sauvé la vie! Je devrais même aller vous dénoncer pour ce que vous venez de me dire.",22)

	NODE(22)
		SAY("Comme vous voulez. Nous, on est que l'équipe de nettoyage. Alors lâchez-nous la grappe, on fait une pause.")
		ENDDIALOG()
		
--new		
	NODE(50)
		SAY("C'est pour cela qu'on a mis au point le système des GenReplicators. Les GenReps proposent plusieurs fonctions. La première, c'est qu'ils permettent de vous cloner. Mais d'abord, votre code génétique doit être enregistré dans la station appropriée. Tous les GenReps activés apparaissent dans une liste qui vous permet de choisir votre destination; Mais dans le secteur où nous sommes, le système a été légèrement modifié : vous ne pouvez être cloné que dans la station centrale, vous n'avez pas d'autre choix. De plus, ce GenRep ne peut pas être activé, et plus tard vous ne pourrez pas revenir dans ce secteur.")
		ANSWER("Ca en fait, des choses! Ca n'était donc que votre premièrement??",51)

		SAY("Exact. Maintenant, mon second point : Le GenReplicator comporte un système de récupération d'inventaire. Lorsque vous mourez, tous vos objets tombent à l'emplacement où vous mourez. Votre première option : retourner à l'endroit de votre mort et récupérer votre inventaire, ou bien utiliser le service de récupération. Mais si vous avez retiré votre implant légal, il y a une chose que vous devez savoir: un des objets les plus importants que vous transportez tombe également, dans une ceinture, que vous ne pouvez pas retrouver avec ce service. Seul un de vos objets est en sécurité : celui que vous plavez dans le premier espace de votre ceinture rapide, celui qui porte un petit cadenas.")
		ANSWER("Mais est-ce qu'on peut voler ce qui se trouve dans mon sac à dos?",52)

		SAY("Non. Votre sac à dos est protégé. Mais ce n'est pas le cas pour votre ceinture. Maintenant passons au troisième point. Comme le principe de la téléportation et du clonage sont assez similaires, une option de téléportation a été ajoutée au système de GenReps. Vous pouvez vous téléporter vers un autre GenRep en échange d'une certaine somme d'argent, si vous avez activé ce GenRep au préalable. Le GenRep de votre appartement est activé par défaut, même si vous n'en acez activé aucun autre. J'en ai terminé maintenant.")
		ANSWER("Eh bien, je suis impressionné. Alors, comment quitter ce secteur? Que dois-je savoir sur les bots de sécurité?",14)
--new end		
end
