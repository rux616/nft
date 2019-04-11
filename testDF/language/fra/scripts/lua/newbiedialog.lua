function DIALOG()

	NODE(0)
		SAY("Bonjour runner, comment puis-je vous aider?")

		ANSWER("On m'a dit que je pouvais trouver des informations importantes ici.",1)
		ANSWER("Est-ce que je peux former un groupe avec des amis?",40)
		ANSWER("Pardon, il faut que je m'en aille.",50)


	NODE(1)
		SAY("Vous êtes nouveau ici? Alors M. Smith vous a déjà informé au sujet de votre appartement, j'imagine. Mais pour évoluer en sécurité dans Neocron, vous devrez en connaître un peu plus sur la ville et son fonctionnement.")

		ANSWER("Je pense qu'il faut d'abord aller à l'essentiel.",60)
		ANSWER("J'ai un implant dans le corps, qui s'appelle 'Implant Légal'. Vos pouvez m'expliquer ce que c'est?",80)
		ANSWER("Son fonctionnement? Dites-m'en plus.",2)
		ANSWER("Dites-moi quelque chose au sujet de la ville de Neocron.",30)
		ANSWER("Arrêtez-vous là. J'ai déjà entendu ça trop souvent.",20)

	NODE(2)
		SAY("Les systèmes les plus importants de Neocron sont les GoGardiens et le réseau DupliGene. Les premiers vous offrent la possibilité d'entreposer vos possessions et de les récupérer dans tout autre GoGardien de la ville. Mais ne me demandez pas comment ils font ça.")

		ANSWER("Bien. Et les DupliGenes?",3)


	NODE(3)
		SAY("Ils vous offrent la possibilité d'effectuer une copie de votre code génétique. Une fois que vous avez effectué cette opération, vous pourrez créer un clone de vous-même si jamais vous en avez besoin... Hé hé. Nous avons installé un DupliGene dans votre appartement. Ceci signifie que vous pouvez accéder à votre appartement depuis n'importe quel DupliGene. C'est cool, hein?")

		ANSWER("Mais pour les...",4)
		

	NODE(4)
		SAY("Une petite seconde. De plus, avec ce système, vous pouvez récupérer vos biens qui se trouvent dans un sac à dos après votre mort. Evidemment, cette opération coûte un peu d'argent. L'avantage est que vous n'avez pas besoin de vous rendre à l'endroit de votre mort pour y récupérer vos biens. Mais observons votre interface. Le point d'interrogation en haut à droit vous permettra de trouver la réponse à de nombreuses questions.")

		ANSWER("OK. J'y penserai. Et le mail que j'ai reçu, me disant que je devais travailler pour vous?",5)
		ANSWER("Merci pour les informations. Il faut que j'y aille.",50)
		

	NODE(5)
		SAY("Bien sûr, je devrais penser à tout ce que nous avons fait pour vous. Les liens entre certains groupes et d'autres, à Neocron, sont assez tendus. Je ne vais pas vous accabler de détails, mais je vous conseille fortement d'éviter certaines personnes. J'en connais qui ne feraient qu'une bouchée de quelqu'un comme vous.")

		ANSWER("Ca ira. Je pense que je pourrai me défendre sans problème.",6)


	NODE(6)
		SAY("Et ne vous souciez pas trop d'avoir des missions, pensez surtout à les finir. Vous trouverez des missions en accord avec vos possibilités sur le réseau de Neocron. C'est aussi là que vous pourrez lire vos mails.")

		ANSWER("C'est ça, le réseau de Neocron. C'est une grosse structure, n'est-ce pas?",7)


	NODE(7)
		SAY("En effet. Vous feriez bien de le constater par vous-même, si vous avez du temps libre.")

		ANSWER("Je ferai ça! Merci du conseil.",8)


	NODE(8)
		SAY("Bonne chance. Mais avant, un dernier conseil : concentrez vos efforts sur vos points forts. Si vous n'avez pas ce qu'il faut pour combattre, faites autre chose. Il y a beaucoup de choses à faire. Vous pouvez ramasser des ordures et les recycler, produire des plans, et même des objets à l'aide d'un équipement spécial. De plus, vous pouvez vous spécialiser en armes de pointe, je pense en particulier aux drones.")

		ANSWER("Des drones? Je veux...",9)


	NODE(9)
		SAY("Il se peut que vous n'ayez pas ce qu'il faut pour ça. Vous devriez tenter de travailler en équipe avec d'autres runners. Vous pourrez ainsi réellement mettre à profit vos spécialisations.")
		
		ANSWER("En équipe? Comment est-ce que ça fonctionne?",10)
		

	NODE(10)
		SAY("Utilisez HyperCom et le sous-menu 'Equipe' pour ajouter ou ôter des runners à votre équipe. Si vous ajoutez un runner, ce runner recevra un message lui demandant d'accepter votre invitation. Une fois la confirmation envoyée, le runner apparaîtra dans votre liste. Compris? Alors allez vous rendre utile maintenant!")

		ANSWER("D'accord, d'accord...",11)


	NODE(11)
		SAY("Fort bien. J'ai plein d'autres choses à faire. Au revoir.")

		ENDDIALOG()


	NODE(20)
		SAY("Qu'est-ce que vous voulez?")

		ANSWER("Des informations plus avancées.",21)


	NODE(21)
		SAY("Plus avancées? Il faudra avancer un peu, pour ça.")

		ANSWER("Arrêtez ça!",22)


	NODE(22)
		SAY("Je pense que vous feriez mieux de vous en aller.")

		ENDDIALOG()


	NODE(30)
		SAY("Mais vous me prenez pour un guide touristique? Ecoutez. Allez à CityAdmin. Il y a des gens, là-bas, qui attendent toute la journée que quelqu'un arrive pour lui raconter des histoires sur la ville.")

		ANSWER("CityAdmin? Où est-ce que ça se trouve?",31)


	NODE(31)
		SAY("Vous trouverez CityAdmin Plaza secteur 1. Si vous ne savez pas où c'est, utilisez votre NavRay.")

		ANSWER("Je trouverai.",32)


	NODE(32)
		SAY("J'espère, parce que j'ai beaucoup de choses à faire. Au revoir.")

		ENDDIALOG()


	NODE(40)
		SAY("Pour cela, vous devez avoir votre propre clan.")

		ANSWER("Et comment faire?",41)


	NODE(41)
		SAY("Prenez votre temps. Tout d'abord, vous devez vous faire un nom. Votre loyauté envers votre faction doit être élevée. Alors, vous pourrez acheter une clé de clan et fonder votre propre clan. Vous aurez également accès à un appartement avec cette même clé.")

		ANSWER("Où est-ce qu'on achète ce genre de clé?",42)


	NODE(42)
		SAY("Dans un magasin Diamond Immobilier. Ils vendent toutes sortes d'appartements. Ils ont des bureaux Plaza secteur 1, mais ce ne sont pas les seuls. Maintenant, j'ai vraiment des choses importantes à faire. Au revoir.")

		ENDDIALOG()


	NODE(50)
		SAY("Pas de problème. Revenez me voir si vous avez des questions.")

		ENDDIALOG()


	NODE(60)
		SAY("Oh non, ça recommence... *soupir* Bon. Qu'est-ce que vous voulez encore?")

		ANSWER("Comment est-ce que j'utilise des armes?",61)
		ANSWER("Comment est-ce que j'utilise des implants ou des armures?",62)
		ANSWER("Comment est-ce que je m'oriente dans Neocron?",64)
		ANSWER("Comment est-ce que j'examine les objets?",65)
		ANSWER("Comment est-ce que je peux construire des objets?",66)
		ANSWER("Comment est-ce que j'utilise les pouvoirs PSI?",67)
		ANSWER("je voudrais en savoir plus sur la ville.",30)
		ANSWER("J'ai entendu dire qu'il existait des systèmes et des réseaux qu'on pouvait pirater.",2)


	NODE(61)
		SAY("Pour utiliser une arme, déplacez-la dans un des espaces de votre ceinture rapide, sur la droite de votre S.A.R. Puis activez le bon espace grâce aux touches numériques de votre clavier. Pour recharger une arme, utilisez votre bouton de rechargement. Déplacez les munitions sur votre arme, ou encore utilisez la fonction de rechargement automatique. Mais sachez que vous ne devriez pas porter d'arme à la main en ville. Ne laissez pas les CopBots vous attraper.")

		ANSWER("Merci du conseil. J'aimerais vous poser d'autres questions.",70)
		ANSWER("Merci. Je pense revenir de temps en temps.",50)


	NODE(62)
		SAY("Pour utiliser une armure ou un implant, vous devez les transférer dans les espaces appropriés de la fenêtre Armure ou Implants. Pour les armures, vous n'avez qu'à les déplacer. Pour les implants, c'est un peu plus complexe.")

		ANSWER("Différent? C'est à dire?",63)

	NODE(63)
		SAY("Pour implanter quelque chose, vous avez besoin d'un implanter. Je pense que vous en trouverez un chez Cryton. Evidemment, il vous faudra aussi la compétence appropriée. Si vous n'avez rien de tout ceci, vous devrez trouver quelqu'un qui possède un implanteur à distance, ainsi que la compétence nécessaire. Vous n'avez alors qu'à mettre votre implant dans votre fenêtre Processeur. Une fois que l'autre personne lance le processus, l'implant sera effectivement implanté après un certain temps d'opération.")

		ANSWER("C'est bon à savoir. Mais j'ai d'autres questions.",70)
		ANSWER("C'est bon à savoir, merci. Je reviendrai bientôt. Au revoir.",50)

	NODE(64)
		SAY("Pour vous orienter dans Neocron, il existe plusieurs solutions. Le NavRay, dans votre S.A.R., est le moyen le plus efficace. Il existe aussi des cartes. Le NavRay vous permet de choisir votre destination, et vous offre la possibilité de suivre un chemin tout tracé. Ou bien, si le chemin demandé n'est pas répertorié, une flèche vous indiquera la localisation générale de votre destination.")

		ANSWER("Cool, je pense que ça m'aidera. Mais j'aimerais en savoir un peu plus.",70)
		ANSWER("Excellent. Merci. A la prochaine fois.",50)

	NODE(65)
		SAY("Vous pouvez créer des plans à partir d'un objet existant, dans le but de produire ces objets par la suite. Pour cela, vous avez besoin d'un InfoCube, d'un chercheur, et de l'objet à rechercher. Mettez tout ceci dans votre fenêtre de processeur, puis lancez le processus.")

		ANSWER("C'est bon à savoir. Mais j'ai d'autres questions.",70)
		ANSWER("C'est bon à savoir, merci. Je reviendrai bientôt. Au revoir.",50)

	NODE(66)
		SAY("Pour construire un objet, il vous faut un plan. Un plan contient toutes les informations au sujet de la conception et des composants requis pour construire cet objet. Toutes les pièces nécessaires, ainsi que le constructeur et le plan approprié, doivent être placés dans votre fenêtre de processeur. La liste des pièces nécessaires peut être obtenue en cliquant avec le bouton droit de votre souris sur le plan, puis en sélectionnant l'option 'Voir Info'. Lorsque tout ce qui est nécessaire se trouve dans le Processeur et que vous l'activez, vous n'avez qu'à attendre quelques temps que votre objet soit fini.")

		ANSWER("Impressionnant! Mais j'ai encore des questions.",70)
		ANSWER("Merci pour ces informations. A plus tard.",50)

	NODE(67)
		SAY("Le fonctionnement est similaire à celui des armes. Vous n'avez qu'à installer un gant de puissance dans la section Implants. Ensuite, les modules fonctionnent comme des armes, seulement vous utilisez votre énergie PSI comme munitions. L'énergie PSI est affichée en bas à droite de votre écran. Au cours du processus de charge du sort, vous ne pouvez pas vous déplacer, ou bien votre sort échouera et l'énergie que vous avez dépensée sera perdue. La cible n'a besoin d'être visée qu'au moment de l'activation du module. Après cela, souvenez-vous de ne pas vous déplacer. Ces informations vous suffisent-elles?")

		ANSWER("Je pense que ça m'ira. Mais j'ai d'autres questions.",70)
		ANSWER("Parfait. C'est tout ce que je voulais savoir. Au revoir.",50)

	NODE(70)
		SAY("Quoi?")

		ANSWER("Comment est-ce que j'utilise des armes?",61)
		ANSWER("Comment est-ce que j'utilise des implants ou des armures?",62)
		ANSWER("Comment est-ce que je m'oriente dans Neocron?",64)
		ANSWER("Comment est-ce que j'examine les objets?",65)
		ANSWER("Comment est-ce que je peux construire des objets?",66)
		ANSWER("Comment est-ce que j'utilise les pouvoirs PSI?",67)
		ANSWER("je voudrais en savoir plus sur la ville.",30)
		ANSWER("J'ai entendu dire qu'il existait des systèmes et des réseaux qu'on pouvait pirater.",2)
		ANSWER("Merci. A plus tard.",50)




	NODE(80)
		SAY("Votre 'implant légal' est un développement du NCPD. Il vous empêche d'attaquer un autre runner, et assure de même votre protection.")

		ANSWER("Est-ce vraiment nécessaire? Comment puis-je défier les autres runners si je ne peux pas les attaquer?",81)

	NODE(81)
		SAY("C'est exact. Disons que c'est une protection qui vous sert au début, car cela vous permet de ne pas être attaqué. Mais vous pouvez toujours défier les autres runners à NeoFrag. Utilisez votre NavRay.")
		
		ANSWER("Hmm...C'est exact. Et pourquoi est-ce que certains choisissent de l'enlever?",82)

	NODE(82)
		SAY("Disons que cet implant possède quelques restrictions. Si vous le portez, vous avez besoin de meilleures compétences pour utiliser certains objets. Ces caractéristiques sont affichées entre parenthèses dans les pré-requis des objets.")

		ANSWER("Quoi? Je veux enlever ça le plus vite possible!",83)

	NODE(83)
		SAY("J'y réfléchirais à deux fois, si j'étais vous... Cet implant est le seul qui puisse être ôté sans l'aide d'un implanteur, en raison de sa technologie supérieure. Vous n'avez qu'à l'ôter de vos implants. Mais cela peut prendre un certain temps.")
		
		ANSWER("C'est bon à savoir. Mais il me reste quelques questions.",70)
		ANSWER("Merci pour tout. Au revoir.",50)

end