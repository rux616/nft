function DIALOG()

	NODE(0)	
		SAY("Salut, tu cherches quelqu'un pour t'amuser?")
		SAY("Bonjour mon mignon, tu trouveras pas plus belle que moi ici!")
		SAY("Je suis tr�s souple, tu ne trouveras pas une fille aussi souple que moi � Pepper Park. Et si tu savais ce que �a me permet de faire...")
		SAY("Les sourires, c'est gratuit, le reste ce sera payant.")
		SAY("Salut, toi, qui est-ce que tu traites de pute? Je suis pas une pute, je suis une h�tesse... qui travaille dans le coin.")
		SAY("Je peux jouer le r�le que tu veux, mon sucre. Tu aimes les infirmi�res? Les �coli�res? Les mutantes?")
		SAY("T'as l'air en manque... pour quelques cr�dits, je pourrai te d�barrasser de ce manque � tout jamais.")
		SAY("Tu cherches de la compagnie pour ce soir, mon chou?")
		SAY("Et si on passait du bon temps tous les deux?")
		SAY("Salut mon beau, t'as besoin de d�charger... ta pression?")
		SAY("Ca te plairait de t'amuser un peu avec moi?")
		SAY("Allez, pourquoi tu viens pas me tenir compagnie? Je suis s�re que t'es �quip� pour...")
		SAY("Viens ici, mon chou. Tu te sens seul? Je peux t'aider.")

		ANSWER("Merci, mais non merci.",1)
		ANSWER("Si c'est pas virtuel, �a vaut pas la d�pense.",1)
		ANSWER("C'est combien?",2)
		ANSWER("Et �a me co�tera combien?",2)

		
	NODE(1)

		SAY("Peut-�tre une autre fois.")
		SAY("Je repasserai.")

		ENDDIALOG()

	NODE(2)
		SAY("Ne parlons pas de �a tout de suite, mon mignon. On danse, tu paieras ensuite.")
		SAY("Ne t'inqui�te pas pour �a, amusons-nous un peu, d'accord?")
		SAY("Mais oublie �a, je sais ce que tu attends de moi, et je ferai en sorte que �a dure longtemps, longtemps...")


		ANSWER("Dans ce cas, je crois que je vais m'en aller.",1)
		ANSWER("Tu vas devoir te trouver un autre pigeon, je m'en vais.",1)


end