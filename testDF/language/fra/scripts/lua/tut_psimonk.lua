function DIALOG()
	
	NODE(0)

		SAY("Un endroit bien étrange en vérité pour rencontrer un disciple. Qu'est-ce qui t'amène ici?")
		SAY("Bonjour, disciple. Qu'est-ce qui t'amène dans cette partie du monde?")
		SAY("Tu es très loin de Neocron, disciple. Que fais-tu en ces lieux?")


		ANSWER("Je cherche un moyen de sortir d'ici. Peux-tu m'aider?",1)
		ANSWER("Je ne sais pas vraiment. Je cherche un moyen de sortir d'ici. Peux-tu m'aider?",1)

		ANSWER("J'étais sur le point de te poser la même question. Qui es-tu, et que fais-tu ici?",2)
		ANSWER("Je pourrais te retourner la question. Qui es-tu? Et qu'est-ce que tu fais ici, toi?",2)

		ANSWER("Je pense que j'ai dû tourner au mauvais endroit. Au revoir.",3)
		ANSWER("Pardon, je t'ai pris pour quelqu'un d'autre. Il faut que je m'en aille.",3)

	NODE(1)
		SAY("Je peux t'aider, mais tu dois être prêt à écouter et à apprendre. Je vais te donner les bases de l'apprentissage des pouvoirs PSI pour que tu puisses te défendre, mais il te reviendra de manipuler ces pouvoirs efficacement. Es-tu prêt?")
		SAY("Si tu cherches de l'aide, alors je peux t'aider à apprendre les techniques des Moines PSI. Mais il faut que tu écoutes avec attention ce que je vais te dire. Alors?")

		ANSWER("D'accord.",5)
		ANSWER("Commençons.",5)

		ANSWER("A bien y réfléchir... je reviendrai plus tard.",3)
		ANSWER("Pas maintenant. Je pense que je reviendrai plus tard.",3)

	NODE(2)
		SAY("Mon nom n'a pas d'importance, mais je suis là pour t'aider. Je suis un Moine PSI bien connu, et pour sortir de cet endroit tu auras besoin de mon aide.")
		SAY("Qui je suis importe peu, citoyen. C'est ce que je peux faire pour toi qui est important. As-tu déjà entendu parler des Moines PSI?")

		ANSWER("Qu'est-ce qu'un Moine PSI?",4)
		ANSWER("Un Moine PSI?,4")

		ANSWER ("Qu'est-ce que tu peux faire pour m'aider?",1)
		ANSWER ("Tu as dit que tu pourrais m'aider. Comment?",1)

	NODE(3)
		SAY("Adieu, citoyen. Mais prends ceci afin de pouvoir quitter cet endroit.")
		SAY("Au revoir, citoyen. Tiens, accepte ce présent.")
		SAY("Voici un présent. Tu comprendras bientôt. Fais attention à toi, citoyen.")
		SAY("Comme il te plaira, citoyen.")
		TAKEITEM(85)
		GIVEITEM(85,100)

		ENDDIALOG()

	NODE(4)
		SAY("Les Moines PSI sont une race aux pouvoirs mentaux très développés. Au lieu de compter sur les méthodes technologiques traditionnelles pour assurer notre puissance, nous préférons les chemins plus subtils de l'esprit. Grâce à notre amplificateur PSI, nous pouvons plier la réalité à notre volonté et accomplir des actions qui, sans cela, seraient impossibles.")
		SAY("Les Moines PSI sont des citoyens qui ont développé leurs capacités mentales bien au-delà de celles de l'individu moyen. Nous canalisons nos énergies psychiques grâce à des appareils connus sous le nom d'amplificateurs PSI, pour façonner la réalité selon notre volonté.")

		ANSWER("Et vous pouvez m'aider à apprendre ça?,1")

		ANSWER("C'est fascinant. Mais je dois vraiment m'en aller.",3)
		ANSWER("Intéressant. Mais je dois m'en aller.",3)

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

		SAY("Voici les bases que tu dois connaître pour pouvoir utiliser des pouvoirs PSI. Je viens de te donner deux modules différents, Eclair énergétique et Soins. Pour commencer, utilise déplace l'implant PSI depuis ton inventaire jusqu'à la case d'implant correspondant à ta main dans la fenêtre Implants. Lorsque tu as fini, déplace les modules PSI dans les espaces libres de la ceinture rapide, comme tu le ferais pour un objet classique. Pour activer un module PSI, appuie sur la touche numérique correspondante à l'espace dans lequel se trouve ton module. Ton amplificateur PSI sera prêt.")

	
		ANSWER("Je pourrais en savoir un peu plus sur ces modules PSI?", 6)
		ANSWER("J'ai compris. Je pourrais en savoir un peu plus sur ces modules PSI?", 6)

		ANSWER("J'ai compris. Merci pour ton aide.", 3)
		ANSWER("Pas de problème. Merci pour ton aide.", 3)

	NODE(6)
		SAY("A quel sujet? L'amplificateur, le module énergétique, ou celui de soins?")
		SAY("Sur quel module en particulier? L'amplificateur, le module énergétique, ou celui de soins?")

		ANSWER("Parle-moi de l'amplificateur.",7)
		ANSWER("L'amplificateur, merci.",7)

		ANSWER("Parle-moi du module énergétique.",8)
		ANSWER("Le module énergétique.",8)

		ANSWER("Parle-moi du module de soins.",9)
		ANSWER("le module de soins.",9)

		RAND(2)
		if (result == 1) then
			ANSWER("Tout bien réfléchi, j'ai changé d'avis. Je trouverai sans aide.",3)
		else
			ANSWER("Je pense que ça suffira. Merci pour ton aide.",10)	
		end

	NODE(7)
		SAY("L'amplificateur PSI est ce que nous utilisons pour concentrer notre énergie mentale dans une zone spécifique. Cette énergie concentrée est projetée grâce à l'amplificateur, et le résultat dépend du module PSI utilisé à ce moment. Pour dire les choses simplement, ne sors jamais de chez toi sans lui. Sans cet amplificateur, nous serions sans défense.")
		SAY("L'amplificateur PSI est utilisé pour concentrer nos pouvoirs mentaux et les projeter dans le monde physique. Pense à ce module comme à un fusil, et à nos différents modules PSI comme à des munitions. Sans fusil, tes munitions ne servent à rien.")

		ANSWER("Bien compris. J'ai une autre question maintenant.",6)
		ANSWER("Bien. J'aimerais que tu me parles d'autre chose maintenant.",6)

	NODE(8)
		SAY("Le module énergétique est un module qui nous permet de manifester nos énergies sous forme d'éclair pour attaquer nos adversaires. Si ce n'est pas notre module le plus puissant, c'est certainement un des plus connus et des plus couramment utilisés. Il consomme peu d'énergie, et tu seras bien inspiré de t'en servir quelques temps avant d'adopter un module plus puissant.")
		SAY("Le module énergétique n'est pas puissant, mais il est néanmoins très utile. Il tire un projectile énergétique sur l'ennemi. C'est très efficace pour venir à bout des ennemis faibles comme les rats et les chauves-souris. Si tu attaques un mutant avec ceci, tu ne feras probablement guère plus que l'énerver, alors fais attention à ce que tu as en face de toi.")

		ANSWER("Compris. J'aimerais apprendre autre chose à présent.",6)
		ANSWER("Bien. J'aimerais que tu me parles d'autre chose.",6)

	NODE(9)
		SAY("La fonction du module de soins est évidente. Il permet de soigner les blessures superficielles sur toi ou tes amis au cours d'un combat. Pour te soigner, utilise ce module en tirant dans le vide. Pour l'utiliser sur un allié, vise-le et utilise le module quand tu te trouves suffisamment près de lui.")

		ANSWER("Compris. J'aimerais apprendre autre chose à présent.",6)
		ANSWER("Bien. J'aimerais que tu me parles d'autre chose.",6)

	NODE(10)

		SAY("Fais attention à toi, disciple")
		SAY("Prends soin de toi, disciple. Que ton esprit soit toujours en éveil.")

		TAKEITEM(85)
		GIVEITEM(85,100)

		ENDDIALOG()

end