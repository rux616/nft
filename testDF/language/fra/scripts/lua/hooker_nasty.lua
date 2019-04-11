function DIALOG()

	NODE(0)	
		SAY("Viens mon chéri, tu vas oublier tous tes malheurs. Jette un oeil à mon équipement...")
		SAY("Tu cherches de la compagnie pour la soirée? Avec moi, tu auras tout ce que tu cherches.")
		SAY("Bonjour mon mignon. J'ai les tout derniers implants aphrodisiaques, juste pour toi.")
		SAY("Si tu veux, je vais te montrer mes techniques spéciales de massage oral...")
		SAY("Si tu payes un petit supplément, j'appelle une copine et on se fait quelque chose à trois, qu'est-ce que tu en dis?")
		SAY("Viens mon beau, je vais te faire plein de trucs dont t'as jamais entendu parler, on va s'amuser tu vas voir...")
		SAY("T'as l'air d'avoir froid. Maman va te réchauffer. Toute la nuit...")
		SAY("Toi, tu les aimes chaudes, mouillées et cochonnes. Je me trompe?")
 	
		ANSWER("Et combien est-ce que ça va me coûter?",1)
		ANSWER("Ca commence à me plaire. C'est combien?",1)
		ANSWER("C'est combien?",1)

		ANSWER("Hors de mon chemin, espèce de pute!",2)
		ANSWER("Va-t-en, espèce de mutante dégénérée!",2)
		ANSWER("Dégage! C'est pas dans la rue que je cherche ça.",2)
		ANSWER("J'ai l'air de devoir payer pour ça? Moi?",2)
		ANSWER("Ca ne m'intéresse pas. Laisse-moi tranquille.",2)

	NODE(1)
		SAY("On va d'abord s'amuser, on parlera du prix après.")
		SAY("T'embête pas pour ça. Avec moi, tu oublieras tous tes problèmes d'argent.")
		SAY("Ca dépend de ce que tu veux. Allons chez toi, on discutera de tout ça là-haut.")
		SAY("Regarde-moi, tu comprendras que je vaux tous les crédits du monde. Tu m'emmènes chez toi, alors?")

		ANSWER("Hors de mon chemin, espèce de pute!",2)
		ANSWER("Va-t-en, espèce de mutante dégénérée!",2)
		ANSWER("Dégage! C'est pas dans la rue que je cherche ça.",2)
		ANSWER("J'ai l'air de devoir payer pour ça? Moi?",2)
		ANSWER("Ca ne m'intéresse pas. Laisse-moi tranquille.",2)

	NODE(2)
		SAY("T'aimes les mutantes, c'est ça?")
		SAY("Peut-être une autre fois, mon mignon.")
		SAY("Alors va baiser des rats!")
		SAY("De toute façon je parie que t'as même pas les moyens de me faire jouir!")

		ENDDIALOG()



end