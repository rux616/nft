function DIALOG()

	NODE(0)
		SAY("Bonjour runner, comment puis-je vous aider?")

		ANSWER("On m'a dit que je pouvais trouver des informations importantes ici.",1)
		ANSWER("Est-ce que je peux former un groupe avec des amis?",40)
		ANSWER("Pardon, il faut que je m'en aille.",50)


	NODE(1)
		SAY("Vous �tes nouveau ici? Alors M. Smith vous a d�j� inform� au sujet de votre appartement, j'imagine. Mais pour �voluer en s�curit� dans Neocron, vous devrez en conna�tre un peu plus sur la ville et son fonctionnement.")

		ANSWER("Je pense qu'il faut d'abord aller � l'essentiel.",60)
		ANSWER("J'ai un implant dans le corps, qui s'appelle 'Implant L�gal'. Vos pouvez m'expliquer ce que c'est?",80)
		ANSWER("Son fonctionnement? Dites-m'en plus.",2)
		ANSWER("Dites-moi quelque chose au sujet de la ville de Neocron.",30)
		ANSWER("Arr�tez-vous l�. J'ai d�j� entendu �a trop souvent.",20)

	NODE(2)
		SAY("Les syst�mes les plus importants de Neocron sont les GoGardiens et le r�seau DupliGene. Les premiers vous offrent la possibilit� d'entreposer vos possessions et de les r�cup�rer dans tout autre GoGardien de la ville. Mais ne me demandez pas comment ils font �a.")

		ANSWER("Bien. Et les DupliGenes?",3)


	NODE(3)
		SAY("Ils vous offrent la possibilit� d'effectuer une copie de votre code g�n�tique. Une fois que vous avez effectu� cette op�ration, vous pourrez cr�er un clone de vous-m�me si jamais vous en avez besoin... H� h�. Nous avons install� un DupliGene dans votre appartement. Ceci signifie que vous pouvez acc�der � votre appartement depuis n'importe quel DupliGene. C'est cool, hein?")

		ANSWER("Mais pour les...",4)
		

	NODE(4)
		SAY("Une petite seconde. De plus, avec ce syst�me, vous pouvez r�cup�rer vos biens qui se trouvent dans un sac � dos apr�s votre mort. Evidemment, cette op�ration co�te un peu d'argent. L'avantage est que vous n'avez pas besoin de vous rendre � l'endroit de votre mort pour y r�cup�rer vos biens. Mais observons votre interface. Le point d'interrogation en haut � droit vous permettra de trouver la r�ponse � de nombreuses questions.")

		ANSWER("OK. J'y penserai. Et le mail que j'ai re�u, me disant que je devais travailler pour vous?",5)
		ANSWER("Merci pour les informations. Il faut que j'y aille.",50)
		

	NODE(5)
		SAY("Bien s�r, je devrais penser � tout ce que nous avons fait pour vous. Les liens entre certains groupes et d'autres, � Neocron, sont assez tendus. Je ne vais pas vous accabler de d�tails, mais je vous conseille fortement d'�viter certaines personnes. J'en connais qui ne feraient qu'une bouch�e de quelqu'un comme vous.")

		ANSWER("Ca ira. Je pense que je pourrai me d�fendre sans probl�me.",6)


	NODE(6)
		SAY("Et ne vous souciez pas trop d'avoir des missions, pensez surtout � les finir. Vous trouverez des missions en accord avec vos possibilit�s sur le r�seau de Neocron. C'est aussi l� que vous pourrez lire vos mails.")

		ANSWER("C'est �a, le r�seau de Neocron. C'est une grosse structure, n'est-ce pas?",7)


	NODE(7)
		SAY("En effet. Vous feriez bien de le constater par vous-m�me, si vous avez du temps libre.")

		ANSWER("Je ferai �a! Merci du conseil.",8)


	NODE(8)
		SAY("Bonne chance. Mais avant, un dernier conseil : concentrez vos efforts sur vos points forts. Si vous n'avez pas ce qu'il faut pour combattre, faites autre chose. Il y a beaucoup de choses � faire. Vous pouvez ramasser des ordures et les recycler, produire des plans, et m�me des objets � l'aide d'un �quipement sp�cial. De plus, vous pouvez vous sp�cialiser en armes de pointe, je pense en particulier aux drones.")

		ANSWER("Des drones? Je veux...",9)


	NODE(9)
		SAY("Il se peut que vous n'ayez pas ce qu'il faut pour �a. Vous devriez tenter de travailler en �quipe avec d'autres runners. Vous pourrez ainsi r�ellement mettre � profit vos sp�cialisations.")
		
		ANSWER("En �quipe? Comment est-ce que �a fonctionne?",10)
		

	NODE(10)
		SAY("Utilisez HyperCom et le sous-menu 'Equipe' pour ajouter ou �ter des runners � votre �quipe. Si vous ajoutez un runner, ce runner recevra un message lui demandant d'accepter votre invitation. Une fois la confirmation envoy�e, le runner appara�tra dans votre liste. Compris? Alors allez vous rendre utile maintenant!")

		ANSWER("D'accord, d'accord...",11)


	NODE(11)
		SAY("Fort bien. J'ai plein d'autres choses � faire. Au revoir.")

		ENDDIALOG()


	NODE(20)
		SAY("Qu'est-ce que vous voulez?")

		ANSWER("Des informations plus avanc�es.",21)


	NODE(21)
		SAY("Plus avanc�es? Il faudra avancer un peu, pour �a.")

		ANSWER("Arr�tez �a!",22)


	NODE(22)
		SAY("Je pense que vous feriez mieux de vous en aller.")

		ENDDIALOG()


	NODE(30)
		SAY("Mais vous me prenez pour un guide touristique? Ecoutez. Allez � CityAdmin. Il y a des gens, l�-bas, qui attendent toute la journ�e que quelqu'un arrive pour lui raconter des histoires sur la ville.")

		ANSWER("CityAdmin? O� est-ce que �a se trouve?",31)


	NODE(31)
		SAY("Vous trouverez CityAdmin Plaza secteur 1. Si vous ne savez pas o� c'est, utilisez votre NavRay.")

		ANSWER("Je trouverai.",32)


	NODE(32)
		SAY("J'esp�re, parce que j'ai beaucoup de choses � faire. Au revoir.")

		ENDDIALOG()


	NODE(40)
		SAY("Pour cela, vous devez avoir votre propre clan.")

		ANSWER("Et comment faire?",41)


	NODE(41)
		SAY("Prenez votre temps. Tout d'abord, vous devez vous faire un nom. Votre loyaut� envers votre faction doit �tre �lev�e. Alors, vous pourrez acheter une cl� de clan et fonder votre propre clan. Vous aurez �galement acc�s � un appartement avec cette m�me cl�.")

		ANSWER("O� est-ce qu'on ach�te ce genre de cl�?",42)


	NODE(42)
		SAY("Dans un magasin Diamond Immobilier. Ils vendent toutes sortes d'appartements. Ils ont des bureaux Plaza secteur 1, mais ce ne sont pas les seuls. Maintenant, j'ai vraiment des choses importantes � faire. Au revoir.")

		ENDDIALOG()


	NODE(50)
		SAY("Pas de probl�me. Revenez me voir si vous avez des questions.")

		ENDDIALOG()


	NODE(60)
		SAY("Oh non, �a recommence... *soupir* Bon. Qu'est-ce que vous voulez encore?")

		ANSWER("Comment est-ce que j'utilise des armes?",61)
		ANSWER("Comment est-ce que j'utilise des implants ou des armures?",62)
		ANSWER("Comment est-ce que je m'oriente dans Neocron?",64)
		ANSWER("Comment est-ce que j'examine les objets?",65)
		ANSWER("Comment est-ce que je peux construire des objets?",66)
		ANSWER("Comment est-ce que j'utilise les pouvoirs PSI?",67)
		ANSWER("je voudrais en savoir plus sur la ville.",30)
		ANSWER("J'ai entendu dire qu'il existait des syst�mes et des r�seaux qu'on pouvait pirater.",2)


	NODE(61)
		SAY("Pour utiliser une arme, d�placez-la dans un des espaces de votre ceinture rapide, sur la droite de votre S.A.R. Puis activez le bon espace gr�ce aux touches num�riques de votre clavier. Pour recharger une arme, utilisez votre bouton de rechargement. D�placez les munitions sur votre arme, ou encore utilisez la fonction de rechargement automatique. Mais sachez que vous ne devriez pas porter d'arme � la main en ville. Ne laissez pas les CopBots vous attraper.")

		ANSWER("Merci du conseil. J'aimerais vous poser d'autres questions.",70)
		ANSWER("Merci. Je pense revenir de temps en temps.",50)


	NODE(62)
		SAY("Pour utiliser une armure ou un implant, vous devez les transf�rer dans les espaces appropri�s de la fen�tre Armure ou Implants. Pour les armures, vous n'avez qu'� les d�placer. Pour les implants, c'est un peu plus complexe.")

		ANSWER("Diff�rent? C'est � dire?",63)

	NODE(63)
		SAY("Pour implanter quelque chose, vous avez besoin d'un implanter. Je pense que vous en trouverez un chez Cryton. Evidemment, il vous faudra aussi la comp�tence appropri�e. Si vous n'avez rien de tout ceci, vous devrez trouver quelqu'un qui poss�de un implanteur � distance, ainsi que la comp�tence n�cessaire. Vous n'avez alors qu'� mettre votre implant dans votre fen�tre Processeur. Une fois que l'autre personne lance le processus, l'implant sera effectivement implant� apr�s un certain temps d'op�ration.")

		ANSWER("C'est bon � savoir. Mais j'ai d'autres questions.",70)
		ANSWER("C'est bon � savoir, merci. Je reviendrai bient�t. Au revoir.",50)

	NODE(64)
		SAY("Pour vous orienter dans Neocron, il existe plusieurs solutions. Le NavRay, dans votre S.A.R., est le moyen le plus efficace. Il existe aussi des cartes. Le NavRay vous permet de choisir votre destination, et vous offre la possibilit� de suivre un chemin tout trac�. Ou bien, si le chemin demand� n'est pas r�pertori�, une fl�che vous indiquera la localisation g�n�rale de votre destination.")

		ANSWER("Cool, je pense que �a m'aidera. Mais j'aimerais en savoir un peu plus.",70)
		ANSWER("Excellent. Merci. A la prochaine fois.",50)

	NODE(65)
		SAY("Vous pouvez cr�er des plans � partir d'un objet existant, dans le but de produire ces objets par la suite. Pour cela, vous avez besoin d'un InfoCube, d'un chercheur, et de l'objet � rechercher. Mettez tout ceci dans votre fen�tre de processeur, puis lancez le processus.")

		ANSWER("C'est bon � savoir. Mais j'ai d'autres questions.",70)
		ANSWER("C'est bon � savoir, merci. Je reviendrai bient�t. Au revoir.",50)

	NODE(66)
		SAY("Pour construire un objet, il vous faut un plan. Un plan contient toutes les informations au sujet de la conception et des composants requis pour construire cet objet. Toutes les pi�ces n�cessaires, ainsi que le constructeur et le plan appropri�, doivent �tre plac�s dans votre fen�tre de processeur. La liste des pi�ces n�cessaires peut �tre obtenue en cliquant avec le bouton droit de votre souris sur le plan, puis en s�lectionnant l'option 'Voir Info'. Lorsque tout ce qui est n�cessaire se trouve dans le Processeur et que vous l'activez, vous n'avez qu'� attendre quelques temps que votre objet soit fini.")

		ANSWER("Impressionnant! Mais j'ai encore des questions.",70)
		ANSWER("Merci pour ces informations. A plus tard.",50)

	NODE(67)
		SAY("Le fonctionnement est similaire � celui des armes. Vous n'avez qu'� installer un gant de puissance dans la section Implants. Ensuite, les modules fonctionnent comme des armes, seulement vous utilisez votre �nergie PSI comme munitions. L'�nergie PSI est affich�e en bas � droite de votre �cran. Au cours du processus de charge du sort, vous ne pouvez pas vous d�placer, ou bien votre sort �chouera et l'�nergie que vous avez d�pens�e sera perdue. La cible n'a besoin d'�tre vis�e qu'au moment de l'activation du module. Apr�s cela, souvenez-vous de ne pas vous d�placer. Ces informations vous suffisent-elles?")

		ANSWER("Je pense que �a m'ira. Mais j'ai d'autres questions.",70)
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
		ANSWER("J'ai entendu dire qu'il existait des syst�mes et des r�seaux qu'on pouvait pirater.",2)
		ANSWER("Merci. A plus tard.",50)




	NODE(80)
		SAY("Votre 'implant l�gal' est un d�veloppement du NCPD. Il vous emp�che d'attaquer un autre runner, et assure de m�me votre protection.")

		ANSWER("Est-ce vraiment n�cessaire? Comment puis-je d�fier les autres runners si je ne peux pas les attaquer?",81)

	NODE(81)
		SAY("C'est exact. Disons que c'est une protection qui vous sert au d�but, car cela vous permet de ne pas �tre attaqu�. Mais vous pouvez toujours d�fier les autres runners � NeoFrag. Utilisez votre NavRay.")
		
		ANSWER("Hmm...C'est exact. Et pourquoi est-ce que certains choisissent de l'enlever?",82)

	NODE(82)
		SAY("Disons que cet implant poss�de quelques restrictions. Si vous le portez, vous avez besoin de meilleures comp�tences pour utiliser certains objets. Ces caract�ristiques sont affich�es entre parenth�ses dans les pr�-requis des objets.")

		ANSWER("Quoi? Je veux enlever �a le plus vite possible!",83)

	NODE(83)
		SAY("J'y r�fl�chirais � deux fois, si j'�tais vous... Cet implant est le seul qui puisse �tre �t� sans l'aide d'un implanteur, en raison de sa technologie sup�rieure. Vous n'avez qu'� l'�ter de vos implants. Mais cela peut prendre un certain temps.")
		
		ANSWER("C'est bon � savoir. Mais il me reste quelques questions.",70)
		ANSWER("Merci pour tout. Au revoir.",50)

end