function DIALOG()

	NODE(0)	
		SAY("Salut, mon beau. Tu es tout seul?")
		SAY("Bonsoir mon coeur.")
		SAY("Viens par là, mon mignon!")
		SAY("Bonsoir beau mâle.")

		ANSWER("Pardon?",1)
		ANSWER("C'est à moi que tu parles?",1)
		ANSWER("Moi?",1)
		ANSWER("Excuse-moi?",1)

		ANSWER("Va-t-en, sale pute!",3)
		ANSWER("Va traîner ailleurs, sale mutante.",3)
		ANSWER("Va-t-en. J'ai pas besoin de la compagnie d'une fleur de caniveau.",3)
			ANSWER("Pardon, ça ne m'intéresse pas.",4)
			ANSWER("Je me fiche de ce que tu veux, ça ne m'intéresse pas.",4)
			ANSWER("Excuse-moi, j'ai d'autres choses à faire.",4)

	NODE(1)

		SAY("Tu veux que je ramène la joie dans ton coeur, mon beau?")
		SAY("Tu cherches de la compagnie?")
		SAY("Tu cherches quelqu'un pour te tenir chaud ce soir?")
		SAY("Dans mes bras tu oublieras tous tes problèmes, tu verras.")
		SAY("Ce soir, tous tes rêves vont se réaliser.")
		SAY("Une séance de massages en privé, ça t'intéresserait?")
		SAY("Crois-moi, mon chou, avec moi c'est un aller direct pour le septième ciel.")
		SAY("Je connais tous tes désirs les plus fous, et je vais les réaliser juste pour toi.")
 	
		ANSWER("Intéressant. Tu prends combien?",2)
		ANSWER("Ca me plaît. Ton prix?",2)
		ANSWER("C'est combien?",2)
		ANSWER("Tu prends combien?",2)

		ANSWER("Va-t-en, sale pute!",3)
		ANSWER("Va traîner ailleurs, sale mutante.",3)
		ANSWER("Va-t-en. J'ai pas besoin de la compagnie d'une fleur de caniveau.",3)
			ANSWER("Pardon, ça ne m'intéresse pas.",4)
			ANSWER("Je me fiche de ce que tu veux, ça ne m'intéresse pas.",4)
			ANSWER("Excuse-moi, j'ai d'autres chose à faire.",4)

	NODE(2)
		SAY("Allons nous amuser dans ton appartement, on s'occupera du reste après.")
		SAY("Allons dans ton appartement. Je te ferai oublier tous tes problèmes d'argent, tu verras.")
		SAY("Ne t'inquiète pas pour ça. Laisse-moi faire, je sais exactement ce dont tu as besoin.")
		SAY("Oh... Je te parle de plaisir, et toi tu me parles d'argent? Allons, on aura bien le temps d'y penser plus tard...")

		ANSWER("Va-t-en, sale pute!",3)
		ANSWER("Va traîner ailleurs, sale mutante.",3)
		ANSWER("Va-t-en. J'ai pas besoin de la compagnie d'une fleur de caniveau.",3)
			ANSWER("Pardon, ça ne m'intéresse pas.",4)
			ANSWER("Je me fiche de ce que tu veux, ça ne m'intéresse pas.",4)
			ANSWER("Excuse-moi, j'ai d'autres choses à faire.",4)

	NODE(3)
		SAY("Hé, me parle pas comme ça, toi! Je suis une fille de classe!")
		SAY("C'est moi que tu traites de pute? Pauvre type...")
		SAY("Laisse-moi deviner... Tu es homo, ou bien tu en as une trop petite?")
		SAY("Tu sais que tu parles à une femme, là? Allez, retourne voir tes mutantes!")
		SAY("Encore un impuissant! Je le savais! Allez, retourne chez ta maman. Moi, ce que je cherche c'est un vrai mec!")

		ENDDIALOG() 

	NODE(4)
		SAY("Tu ne sais pas ce que tu rates...")
		SAY("Si tu changes d'avis, tu sais où me trouver.")
		SAY("Peut-être une prochaine fois, mon mignon.")
		SAY("Quel dommage. Je sais qu'on aurait pu bien s'amuser, tous les deux.")
		SAY("Si tu changes d'avis, je serai là pour toi! Quand tu veux!")

		ENDDIALOG()



end