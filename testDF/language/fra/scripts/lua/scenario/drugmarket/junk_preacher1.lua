function DIALOG()

	NODE(0)
		SAY("Les drogues sont la mort de la soci�t�. Fuyez-les! Un jour, les drogues causeront la perte de l'Humanit�!")
		ANSWER("Mais qu'est-ce que vous racontez?",1)
		ANSWER("Tu vas te taire, oui? On fait des affaires, arr�te �a!",101)
				
	NODE(1)
		SAY("Les hommes doivent comprendre que les drogues asservissent l'esprit, qu'elles ne le lib�rent pas!")
		ANSWER("Huh?)",2)


	NODE(2)
		SAY("C'est vrai, les drogues sont les ennemies des esprits libres. Les ennemies de toute pens�e. Les ennemies de l'humanit� toute enti�re.")
		ANSWER("Si je te donne de l'argent, tu pourras la fermer? Il est o� ton chapeau, que je puisse te payer? HAHAHAHA!!!",101)
		ANSWER("Heureusement qu'il y a des gens comme vous, qui se jettent dans la cage aux fauves pour sauver l'humanit�. Sans craindre la mort!",3)
		
	NODE(3)
		SAY("La mort? Vous voulez dire... Le Dragon Noir? Je ne savais pas que... Je vais m'en aller.")
		ENDDIALOG()

			

	NODE(101)
		SAY("Et toi non plus, tu n'�chapperas pas au Jugement!")
		ENDDIALOG()	
		
end