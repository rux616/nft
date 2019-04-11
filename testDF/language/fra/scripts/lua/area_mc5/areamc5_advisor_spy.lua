function DIALOG()

	NODE(0)
		SAY("Bonjour, ça fait plaisir de voir une nouvelle tête. J'ai quelques conseils à vous donner.")
		ANSWER("Allez-y.",50)
			
	NODE(1)
		SAY("Ce qui compte le plus, c'est d'apprendre à vous défendre, je vous cache pas que c'est très dangereux, dehors.")
		ANSWER("Queque chose en particulier, que vous me recommanderiez?",2)		
		
	NODE(2)	
		SAY("Beaucoup de gens utilisent des pistolets parce que c'est facile à manier : on vise, on tire et c'est fini. Le problème, c'est qu'il faut se rapprocher de la cible. Ou bien on peut préférer le fusil. L'avantage, c'est qu'on est beaucoup plus loin de la cible. Mais c'est aussi plus difficile à manier, la visée est beaucoup moins évidente.")
		ANSWER("Il y a des alternatives?",3)
		
	NODE(3)
		SAY("Evidemment. Si vous êtes du genre à aimer les technologies modernes, vous devriez essayer les drones. Mais dans ce cas, vous devrez développer votre Willpower pour les piloter. De toute manière, vous êtes nettement moins basique qu'un tank, et vous n'aurez pas de mal à trouver du travail.")
		ANSWER("Quel genre de travail?",4)

	NODE(4)
		SAY("Allons... Vous êtes un espion, non? Une unité de combat qui a besoin d'un hacker pour ouvrir une porte, une caisse, ou encore pour pirater un avant-poste dans les Terres Brûlées, elle fera quasiment toujours appel à vous.")
		ANSWER("Je peux gagner ma vie comme hacker?",5)

	NODE(5)	
		SAY("Possible, mais vous n'êtes pas obligé de vous limiter. Vous pouvez aussi identifier des composants mystérieux, faire des plans d'armes et de plein d'objets. Vous pouvez aussi apprendre à construire des armes, des sorts et plein d'autres choses. Un très bon constructeur peut se faire un beau paquet de crédits rapidement.")
		ANSWER("Ca commence à me plaire... Qu'est-ce que je peux faire d'autre à part ça?",6)

	NODE(6)
		SAY("Vous pouvez aussi piloter des véhicules et réparer plein de choses. Vous rendrez du monde heureux si vous savez retaper le matériel des gens quand il les lâche au mauvais moment.")
		ANSWER("Intéressant!",7)
			
	NODE(7)
		SAY("Je veux! Vous pouvez aussi apprendre comment transformer les déchets en munitions et en matières premières. Et n'oubliez pas de faire un peu de musculation, parce qu'il faudra quand même que vous appreniez à encaisser les coups.")
		ANSWER("Compris. Tout est une question d'entraînement, de toute manière. Autre chose que je devrais savoir?",8)

	NODE(8)
		SAY("Une dernière chose: vous vous dites certainement que c'est le paradis si on sait tout faire, mais je vous conseille plutôt de vous spécialiser. Vous ferez plus d'argent, vous ferez du meilleur travail, et vous aurez une réputation du tonnerre dans votre domaine.")
		ANSWER("Merci pour tous ces conseils, je vais voir ce que ça donne en pratique. Au revoir.",9)		
		
	NODE(9)
		SAY("Au revoir, faites attention à vous.")
		ENDDIALOG()	




	NODE(50)
		SAY("Une chose : ce que je vais vous dire ne vous sera utile que si vous êtes un ESPION.")
		ANSWER("Ca tombe bien... Je vous écoute.",1)		
		ANSWER("Eh non... Tant pis.",51)	
		
	NODE(51)
		SAY("Trouvez le conseiller qui vous parlera de votre classe, vous apprendrez des choses très utiles.")
		ENDDIALOG()	
end
