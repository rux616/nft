function DIALOG()

	NODE(0)	
		SAY("Salut, tu cherches quelqu'un pour t'amuser?")
		SAY("Bonjour mon mignon, tu trouveras pas plus belle que moi ici!")
		SAY("Je suis très souple, tu ne trouveras pas une fille aussi souple que moi à Pepper Park. Et si tu savais ce que ça me permet de faire...")
		SAY("Les sourires, c'est gratuit, le reste ce sera payant.")
		SAY("Salut, toi, qui est-ce que tu traites de pute? Je suis pas une pute, je suis une hôtesse... qui travaille dans le coin.")
		SAY("Je peux jouer le rôle que tu veux, mon sucre. Tu aimes les infirmières? Les écolières? Les mutantes?")
		SAY("T'as l'air en manque... pour quelques crédits, je pourrai te débarrasser de ce manque à tout jamais.")
		SAY("Tu cherches de la compagnie pour ce soir, mon chou?")
		SAY("Et si on passait du bon temps tous les deux?")
		SAY("Salut mon beau, t'as besoin de décharger... ta pression?")
		SAY("Ca te plairait de t'amuser un peu avec moi?")
		SAY("Allez, pourquoi tu viens pas me tenir compagnie? Je suis sûre que t'es équipé pour...")
		SAY("Viens ici, mon chou. Tu te sens seul? Je peux t'aider.")

		ANSWER("Merci, mais non merci.",1)
		ANSWER("Si c'est pas virtuel, ça vaut pas la dépense.",1)
		ANSWER("C'est combien?",2)
		ANSWER("Et ça me coûtera combien?",2)

		
	NODE(1)

		SAY("Peut-être une autre fois.")
		SAY("Je repasserai.")

		ENDDIALOG()

	NODE(2)
		SAY("Ne parlons pas de ça tout de suite, mon mignon. On danse, tu paieras ensuite.")
		SAY("Ne t'inquiète pas pour ça, amusons-nous un peu, d'accord?")
		SAY("Mais oublie ça, je sais ce que tu attends de moi, et je ferai en sorte que ça dure longtemps, longtemps...")


		ANSWER("Dans ce cas, je crois que je vais m'en aller.",1)
		ANSWER("Tu vas devoir te trouver un autre pigeon, je m'en vais.",1)


end