function DIALOG()
	
	NODE(0)

		SAY("Un endroit bien �trange en v�rit� pour rencontrer un disciple. Qu'est-ce qui t'am�ne ici?")
		SAY("Bonjour, disciple. Qu'est-ce qui t'am�ne dans cette partie du monde?")
		SAY("Tu es tr�s loin de Neocron, disciple. Que fais-tu en ces lieux?")


		ANSWER("Je cherche un moyen de sortir d'ici. Peux-tu m'aider?",1)
		ANSWER("Je ne sais pas vraiment. Je cherche un moyen de sortir d'ici. Peux-tu m'aider?",1)

		ANSWER("J'�tais sur le point de te poser la m�me question. Qui es-tu, et que fais-tu ici?",2)
		ANSWER("Je pourrais te retourner la question. Qui es-tu? Et qu'est-ce que tu fais ici, toi?",2)

		ANSWER("Je pense que j'ai d� tourner au mauvais endroit. Au revoir.",3)
		ANSWER("Pardon, je t'ai pris pour quelqu'un d'autre. Il faut que je m'en aille.",3)

	NODE(1)
		SAY("Je peux t'aider, mais tu dois �tre pr�t � �couter et � apprendre. Je vais te donner les bases de l'apprentissage des pouvoirs PSI pour que tu puisses te d�fendre, mais il te reviendra de manipuler ces pouvoirs efficacement. Es-tu pr�t?")
		SAY("Si tu cherches de l'aide, alors je peux t'aider � apprendre les techniques des Moines PSI. Mais il faut que tu �coutes avec attention ce que je vais te dire. Alors?")

		ANSWER("D'accord.",5)
		ANSWER("Commen�ons.",5)

		ANSWER("A bien y r�fl�chir... je reviendrai plus tard.",3)
		ANSWER("Pas maintenant. Je pense que je reviendrai plus tard.",3)

	NODE(2)
		SAY("Mon nom n'a pas d'importance, mais je suis l� pour t'aider. Je suis un Moine PSI bien connu, et pour sortir de cet endroit tu auras besoin de mon aide.")
		SAY("Qui je suis importe peu, citoyen. C'est ce que je peux faire pour toi qui est important. As-tu d�j� entendu parler des Moines PSI?")

		ANSWER("Qu'est-ce qu'un Moine PSI?",4)
		ANSWER("Un Moine PSI?,4")

		ANSWER ("Qu'est-ce que tu peux faire pour m'aider?",1)
		ANSWER ("Tu as dit que tu pourrais m'aider. Comment?",1)

	NODE(3)
		SAY("Adieu, citoyen. Mais prends ceci afin de pouvoir quitter cet endroit.")
		SAY("Au revoir, citoyen. Tiens, accepte ce pr�sent.")
		SAY("Voici un pr�sent. Tu comprendras bient�t. Fais attention � toi, citoyen.")
		SAY("Comme il te plaira, citoyen.")
		TAKEITEM(85)
		GIVEITEM(85,100)

		ENDDIALOG()

	NODE(4)
		SAY("Les Moines PSI sont une race aux pouvoirs mentaux tr�s d�velopp�s. Au lieu de compter sur les m�thodes technologiques traditionnelles pour assurer notre puissance, nous pr�f�rons les chemins plus subtils de l'esprit. Gr�ce � notre amplificateur PSI, nous pouvons plier la r�alit� � notre volont� et accomplir des actions qui, sans cela, seraient impossibles.")
		SAY("Les Moines PSI sont des citoyens qui ont d�velopp� leurs capacit�s mentales bien au-del� de celles de l'individu moyen. Nous canalisons nos �nergies psychiques gr�ce � des appareils connus sous le nom d'amplificateurs PSI, pour fa�onner la r�alit� selon notre volont�.")

		ANSWER("Et vous pouvez m'aider � apprendre �a?,1")

		ANSWER("C'est fascinant. Mais je dois vraiment m'en aller.",3)
		ANSWER("Int�ressant. Mais je dois m'en aller.",3)

	NODE(5)
		-- TAKEITEM is called first, so that way the player can't continually return to get additional amps/spells etc. If they've already
		-- got a set of items, they'll be taken away before they're issued with new ones. No biggie in that case.

		TAKEITEM(2310)		-- This needs to be fixed to actually take away the players Psi Amp
		TAKEITEM(102)		-- As Above, for Energy Bolt
		TAKEITEM(101)			-- As Above, for Heal

		GIVEITEM(2310, 50)		-- This needs to be fixed to actually give the player a Psi Amp
		GIVEITEM(102, 40)		-- As Above, for Energy Bolt
		GIVEITEM(101, 40)		-- As Above, for Heal
		GIVEITEM(383, 40)		-- As Above, for Heal

		SAY("Voici les bases que tu dois conna�tre pour pouvoir utiliser des pouvoirs PSI. Je viens de te donner deux modules diff�rents, Eclair �nerg�tique et Soins. Pour commencer, utilise d�place l'implant PSI depuis ton inventaire jusqu'� la case d'implant correspondant � ta main dans la fen�tre Implants. Lorsque tu as fini, d�place les modules PSI dans les espaces libres de la ceinture rapide, comme tu le ferais pour un objet classique. Pour activer un module PSI, appuie sur la touche num�rique correspondante � l'espace dans lequel se trouve ton module. Ton amplificateur PSI sera pr�t.")

	
		ANSWER("Je pourrais en savoir un peu plus sur ces modules PSI?", 6)
		ANSWER("J'ai compris. Je pourrais en savoir un peu plus sur ces modules PSI?", 6)

		ANSWER("J'ai compris. Merci pour ton aide.", 3)
		ANSWER("Pas de probl�me. Merci pour ton aide.", 3)

	NODE(6)
		SAY("A quel sujet? L'amplificateur, le module �nerg�tique, ou celui de soins?")
		SAY("Sur quel module en particulier? L'amplificateur, le module �nerg�tique, ou celui de soins?")

		ANSWER("Parle-moi de l'amplificateur.",7)
		ANSWER("L'amplificateur, merci.",7)

		ANSWER("Parle-moi du module �nerg�tique.",8)
		ANSWER("Le module �nerg�tique.",8)

		ANSWER("Parle-moi du module de soins.",9)
		ANSWER("le module de soins.",9)

		RAND(2)
		if (result == 1) then
			ANSWER("Tout bien r�fl�chi, j'ai chang� d'avis. Je trouverai sans aide.",3)
		else
			ANSWER("Je pense que �a suffira. Merci pour ton aide.",10)	
		end

	NODE(7)
		SAY("L'amplificateur PSI est ce que nous utilisons pour concentrer notre �nergie mentale dans une zone sp�cifique. Cette �nergie concentr�e est projet�e gr�ce � l'amplificateur, et le r�sultat d�pend du module PSI utilis� � ce moment. Pour dire les choses simplement, ne sors jamais de chez toi sans lui. Sans cet amplificateur, nous serions sans d�fense.")
		SAY("L'amplificateur PSI est utilis� pour concentrer nos pouvoirs mentaux et les projeter dans le monde physique. Pense � ce module comme � un fusil, et � nos diff�rents modules PSI comme � des munitions. Sans fusil, tes munitions ne servent � rien.")

		ANSWER("Bien compris. J'ai une autre question maintenant.",6)
		ANSWER("Bien. J'aimerais que tu me parles d'autre chose maintenant.",6)

	NODE(8)
		SAY("Le module �nerg�tique est un module qui nous permet de manifester nos �nergies sous forme d'�clair pour attaquer nos adversaires. Si ce n'est pas notre module le plus puissant, c'est certainement un des plus connus et des plus couramment utilis�s. Il consomme peu d'�nergie, et tu seras bien inspir� de t'en servir quelques temps avant d'adopter un module plus puissant.")
		SAY("Le module �nerg�tique n'est pas puissant, mais il est n�anmoins tr�s utile. Il tire un projectile �nerg�tique sur l'ennemi. C'est tr�s efficace pour venir � bout des ennemis faibles comme les rats et les chauves-souris. Si tu attaques un mutant avec ceci, tu ne feras probablement gu�re plus que l'�nerver, alors fais attention � ce que tu as en face de toi.")

		ANSWER("Compris. J'aimerais apprendre autre chose � pr�sent.",6)
		ANSWER("Bien. J'aimerais que tu me parles d'autre chose.",6)

	NODE(9)
		SAY("La fonction du module de soins est �vidente. Il permet de soigner les blessures superficielles sur toi ou tes amis au cours d'un combat. Pour te soigner, utilise ce module en tirant dans le vide. Pour l'utiliser sur un alli�, vise-le et utilise le module quand tu te trouves suffisamment pr�s de lui.")

		ANSWER("Compris. J'aimerais apprendre autre chose � pr�sent.",6)
		ANSWER("Bien. J'aimerais que tu me parles d'autre chose.",6)

	NODE(10)

		SAY("Fais attention � toi, disciple")
		SAY("Prends soin de toi, disciple. Que ton esprit soit toujours en �veil.")

		TAKEITEM(85)
		GIVEITEM(85,100)

		ENDDIALOG()

end