function DIALOG()

	NODE(0)	
		SAY("Salut, mon beau. Tu es tout seul?")
		SAY("Bonsoir mon coeur.")
		SAY("Viens par l�, mon mignon!")
		SAY("Bonsoir beau m�le.")

		ANSWER("Pardon?",1)
		ANSWER("C'est � moi que tu parles?",1)
		ANSWER("Moi?",1)
		ANSWER("Excuse-moi?",1)

		ANSWER("Va-t-en, sale pute!",3)
		ANSWER("Va tra�ner ailleurs, sale mutante.",3)
		ANSWER("Va-t-en. J'ai pas besoin de la compagnie d'une fleur de caniveau.",3)
			ANSWER("Pardon, �a ne m'int�resse pas.",4)
			ANSWER("Je me fiche de ce que tu veux, �a ne m'int�resse pas.",4)
			ANSWER("Excuse-moi, j'ai d'autres choses � faire.",4)

	NODE(1)

		SAY("Tu veux que je ram�ne la joie dans ton coeur, mon beau?")
		SAY("Tu cherches de la compagnie?")
		SAY("Tu cherches quelqu'un pour te tenir chaud ce soir?")
		SAY("Dans mes bras tu oublieras tous tes probl�mes, tu verras.")
		SAY("Ce soir, tous tes r�ves vont se r�aliser.")
		SAY("Une s�ance de massages en priv�, �a t'int�resserait?")
		SAY("Crois-moi, mon chou, avec moi c'est un aller direct pour le septi�me ciel.")
		SAY("Je connais tous tes d�sirs les plus fous, et je vais les r�aliser juste pour toi.")
 	
		ANSWER("Int�ressant. Tu prends combien?",2)
		ANSWER("Ca me pla�t. Ton prix?",2)
		ANSWER("C'est combien?",2)
		ANSWER("Tu prends combien?",2)

		ANSWER("Va-t-en, sale pute!",3)
		ANSWER("Va tra�ner ailleurs, sale mutante.",3)
		ANSWER("Va-t-en. J'ai pas besoin de la compagnie d'une fleur de caniveau.",3)
			ANSWER("Pardon, �a ne m'int�resse pas.",4)
			ANSWER("Je me fiche de ce que tu veux, �a ne m'int�resse pas.",4)
			ANSWER("Excuse-moi, j'ai d'autres chose � faire.",4)

	NODE(2)
		SAY("Allons nous amuser dans ton appartement, on s'occupera du reste apr�s.")
		SAY("Allons dans ton appartement. Je te ferai oublier tous tes probl�mes d'argent, tu verras.")
		SAY("Ne t'inqui�te pas pour �a. Laisse-moi faire, je sais exactement ce dont tu as besoin.")
		SAY("Oh... Je te parle de plaisir, et toi tu me parles d'argent? Allons, on aura bien le temps d'y penser plus tard...")

		ANSWER("Va-t-en, sale pute!",3)
		ANSWER("Va tra�ner ailleurs, sale mutante.",3)
		ANSWER("Va-t-en. J'ai pas besoin de la compagnie d'une fleur de caniveau.",3)
			ANSWER("Pardon, �a ne m'int�resse pas.",4)
			ANSWER("Je me fiche de ce que tu veux, �a ne m'int�resse pas.",4)
			ANSWER("Excuse-moi, j'ai d'autres choses � faire.",4)

	NODE(3)
		SAY("H�, me parle pas comme �a, toi! Je suis une fille de classe!")
		SAY("C'est moi que tu traites de pute? Pauvre type...")
		SAY("Laisse-moi deviner... Tu es homo, ou bien tu en as une trop petite?")
		SAY("Tu sais que tu parles � une femme, l�? Allez, retourne voir tes mutantes!")
		SAY("Encore un impuissant! Je le savais! Allez, retourne chez ta maman. Moi, ce que je cherche c'est un vrai mec!")

		ENDDIALOG() 

	NODE(4)
		SAY("Tu ne sais pas ce que tu rates...")
		SAY("Si tu changes d'avis, tu sais o� me trouver.")
		SAY("Peut-�tre une prochaine fois, mon mignon.")
		SAY("Quel dommage. Je sais qu'on aurait pu bien s'amuser, tous les deux.")
		SAY("Si tu changes d'avis, je serai l� pour toi! Quand tu veux!")

		ENDDIALOG()



end