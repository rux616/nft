function DIALOG()

	NODE(0)
		SAY("Bonjour, �a fait plaisir de voir une nouvelle t�te. J'ai quelques conseils � vous donner.")
		ANSWER("Allez-y.",50)
			
	NODE(1)
		SAY("Ce qui compte le plus, c'est d'apprendre � vous d�fendre, je vous cache pas que c'est tr�s dangereux, dehors.")
		ANSWER("Queque chose en particulier, que vous me recommanderiez?",2)		
		
	NODE(2)	
		SAY("Beaucoup de gens utilisent des pistolets parce que c'est facile � manier : on vise, on tire et c'est fini. Le probl�me, c'est qu'il faut se rapprocher de la cible. Ou bien on peut pr�f�rer le fusil. L'avantage, c'est qu'on est beaucoup plus loin de la cible. Mais c'est aussi plus difficile � manier, la vis�e est beaucoup moins �vidente.")
		ANSWER("Il y a des alternatives?",3)
		
	NODE(3)
		SAY("Evidemment. Si vous �tes du genre � aimer les technologies modernes, vous devriez essayer les drones. Mais dans ce cas, vous devrez d�velopper votre Willpower pour les piloter. De toute mani�re, vous �tes nettement moins basique qu'un tank, et vous n'aurez pas de mal � trouver du travail.")
		ANSWER("Quel genre de travail?",4)

	NODE(4)
		SAY("Allons... Vous �tes un espion, non? Une unit� de combat qui a besoin d'un hacker pour ouvrir une porte, une caisse, ou encore pour pirater un avant-poste dans les Terres Br�l�es, elle fera quasiment toujours appel � vous.")
		ANSWER("Je peux gagner ma vie comme hacker?",5)

	NODE(5)	
		SAY("Possible, mais vous n'�tes pas oblig� de vous limiter. Vous pouvez aussi identifier des composants myst�rieux, faire des plans d'armes et de plein d'objets. Vous pouvez aussi apprendre � construire des armes, des sorts et plein d'autres choses. Un tr�s bon constructeur peut se faire un beau paquet de cr�dits rapidement.")
		ANSWER("Ca commence � me plaire... Qu'est-ce que je peux faire d'autre � part �a?",6)

	NODE(6)
		SAY("Vous pouvez aussi piloter des v�hicules et r�parer plein de choses. Vous rendrez du monde heureux si vous savez retaper le mat�riel des gens quand il les l�che au mauvais moment.")
		ANSWER("Int�ressant!",7)
			
	NODE(7)
		SAY("Je veux! Vous pouvez aussi apprendre comment transformer les d�chets en munitions et en mati�res premi�res. Et n'oubliez pas de faire un peu de musculation, parce qu'il faudra quand m�me que vous appreniez � encaisser les coups.")
		ANSWER("Compris. Tout est une question d'entra�nement, de toute mani�re. Autre chose que je devrais savoir?",8)

	NODE(8)
		SAY("Une derni�re chose: vous vous dites certainement que c'est le paradis si on sait tout faire, mais je vous conseille plut�t de vous sp�cialiser. Vous ferez plus d'argent, vous ferez du meilleur travail, et vous aurez une r�putation du tonnerre dans votre domaine.")
		ANSWER("Merci pour tous ces conseils, je vais voir ce que �a donne en pratique. Au revoir.",9)		
		
	NODE(9)
		SAY("Au revoir, faites attention � vous.")
		ENDDIALOG()	




	NODE(50)
		SAY("Une chose : ce que je vais vous dire ne vous sera utile que si vous �tes un ESPION.")
		ANSWER("Ca tombe bien... Je vous �coute.",1)		
		ANSWER("Eh non... Tant pis.",51)	
		
	NODE(51)
		SAY("Trouvez le conseiller qui vous parlera de votre classe, vous apprendrez des choses tr�s utiles.")
		ENDDIALOG()	
end
