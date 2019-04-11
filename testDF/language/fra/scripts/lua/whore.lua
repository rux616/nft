function DIALOG()


	NODE(1)
		SAY("Non!! Je veux pas coucher avec toi, t'es sale et en plus tu sens mauvais!")
		SAY("Oublie! Je suis une femme de goût!")
		SAY("Quoi? Attends, je vais pas coucher avec tous les cas désespérés du monde!")

		ANSWER("Allez, sois gentille...",2)
		ANSWER("Mais je te paierai ce que tu veux!",2)
		ANSWER("Allez, sois gentille, j'en peux plus, moi!",2)
		ANSWER("Je t'en supplie, il faut bien que je tire ma crampe de temps en temps!",2)

	NODE(2)
		SAY("Qu'est-ce que tu ne comprends pas, exactement, dans le mot NON?")
		SAY("Mais va te branler, plutôt.")
		SAY("Laisse tomber, t'as aucune chance.")
		SAY("J'ai encore un peu de fierté, j'ai pas envie de la sacrifier pour toi.")
		SAY("Désolé, je suis une fille bien, sale bâtard!")

		ANSWER("Va te faire foutre, salope!",2)
		ANSWER("Tu vas le regretter!",2)
		ANSWER("Je vais me trouver une autre poule qui voudra bien de mon fric.",2)
		ANSWER("Si jeune et déjà si froide... quelle tristesse.",2)

		ENDDIALOG()


end