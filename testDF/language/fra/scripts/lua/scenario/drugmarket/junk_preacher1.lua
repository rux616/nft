function DIALOG()

	NODE(0)
		SAY("Les drogues sont la mort de la société. Fuyez-les! Un jour, les drogues causeront la perte de l'Humanité!")
		ANSWER("Mais qu'est-ce que vous racontez?",1)
		ANSWER("Tu vas te taire, oui? On fait des affaires, arrête ça!",101)
				
	NODE(1)
		SAY("Les hommes doivent comprendre que les drogues asservissent l'esprit, qu'elles ne le libèrent pas!")
		ANSWER("Huh?)",2)


	NODE(2)
		SAY("C'est vrai, les drogues sont les ennemies des esprits libres. Les ennemies de toute pensée. Les ennemies de l'humanité toute entière.")
		ANSWER("Si je te donne de l'argent, tu pourras la fermer? Il est où ton chapeau, que je puisse te payer? HAHAHAHA!!!",101)
		ANSWER("Heureusement qu'il y a des gens comme vous, qui se jettent dans la cage aux fauves pour sauver l'humanité. Sans craindre la mort!",3)
		
	NODE(3)
		SAY("La mort? Vous voulez dire... Le Dragon Noir? Je ne savais pas que... Je vais m'en aller.")
		ENDDIALOG()

			

	NODE(101)
		SAY("Et toi non plus, tu n'échapperas pas au Jugement!")
		ENDDIALOG()	
		
end