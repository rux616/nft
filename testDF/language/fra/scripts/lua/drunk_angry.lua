-- An angry drunk for a bar

function DIALOG()

	NODE(0)

		SAY("Tu veux quoi?")
		SAY("Tu f'rais mieux d'avoir une bonne raison de me parler!")
		SAY("Tu vois pas que j'suis d�bord� de travail?")
		SAY("Si tu viens pas me payer un verre, alors d�gage, tu me bouches la vue.")

		ANSWER("Je vais te payer � boire.",1)
		ANSWER("Pourquoi pas. Allez viens, on va s'en jeter un tous les deux.",1)
		ANSWER("C'est ma tourn�e, l'ami.",1)
		ANSWER("T'as l'air d'avoir assez bu pour aujourd'hui.",2)
		ANSWER("Tu ne penses pas que tu as assez bu?",2)
		ANSWER("Je pense que tu vas aller faire un gros dodo!",2)
		ANSWER("Laisse-moi deviner... Tu es un ancien avocat?",3)
		ANSWER("Tu viens ici souvent?",3)
		ANSWER("Pardon de l'avoir d�rang�.",4)
		ANSWER("Pardon, je me suis tromp� de personne.",4)
		ANSWER("Pardon, je voulais pas te d�ranger.",4)


	NODE(1)

		SAY("Si je voulais � boire, je te l'aurais demand�!")
		SAY("J'ai l'air d'un alcoolique, moi?")
		SAY("Allez, va emb�ter quelqu'un d'autre!")

		ANSWER("Comme tu veux. J'essayais seulement de te faire plaisir.",4)
		ANSWER("Bon, si tu le prends comme �a...",4)
		ANSWER("OK, j'ai compris, pas la peine d'insister.",4)
		ANSWER("J'en ai pas encore fini avec toi!",0)
		ANSWER("Je vais pas laisser tomber aussi facilement!",0)
		ANSWER("Attends! J'ai pas fini!",0)


	NODE(2)

		SAY("Si je voulais des conseils, je te l'aurai demand�!")
		SAY("Je suis parfaitement capable de me d�brouiller tout seul!")
		SAY("Fous-moi la paix!")

		ANSWER("OK, si c'est ce que tu veux...",4)
		ANSWER("Pas besoin de t'�nerver comme �a!",4)
		ANSWER("OK, OK, t'as gagn�, je pars.",4)
		ANSWER("On va reprendre depuis le d�but...",0)
		ANSWER("Je reprends, tu permets?",0)
		ANSWER("Bon, je vais la refaire...",0)

	
	NODE(3)

		SAY("Mais ouais, tout le monde joue un r�le, c'est �a?")
		SAY("Celle l�, on me l'avait jamais faite avant, j'te jure!")
		SAY("Tu devrais faire de la t�l�, toi!")

		ANSWER("Comme tu veux. J'essayais seulement de te faire plaisir.",4)
		ANSWER("Bon, je vais reformuler.",4)
		ANSWER("Pas besoin de t'�nerver comme �a!",4)
		ANSWER("J'en ai pas encore fini avec toi!",0)
		ANSWER("Je reprends, tu permets?",0)
		ANSWER("Bon, je vais aller raconter des blagues � quelqu'un d'autre.",0)

	
	NODE(4)

		SAY("Tout ce que je veux, c'est du calme.")
		SAY("Bon d�barras!")
		SAY("Ouais, c'est �a.")
		ENDDIALOG()

end