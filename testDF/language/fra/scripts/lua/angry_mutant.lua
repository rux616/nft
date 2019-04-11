function DIALOG()

	NODE(0)
		SAY("On dirait que tu t'es perdu.")
		SAY("Qu'est-ce que tu fais ici?")
		SAY("Comment quelqu'un comme toi peut arriver dans un endroit pareil?")

		ANSWER("J'espérais trouver des réponses à certaines questions.",1)
		ANSWER("Tu pourrais répondre à quelques questions?",1)
		ANSWER("Tout ce que je veux, ce sont les crédits que valent ton cadavre!",2)
		ANSWER("Je viens faire quelques crédits en tuant des mutants.",2)
		ANSWER("Pardon, je voulais pas te déranger.",3)
		ANSWER("Je m'en vais.",3)

	NODE(1)

		SAY("Oh, une peau lisse qui a besoin de mon aide?")
		SAY("Fais vite, alors. Vous et vos questions...")
		
		ANSWER("Comment est-ce que tu es devenu comme ça?",4)
		ANSWER("Qu'est-ce qui t'est arrivé?",4)
		ANSWER("Où habitent les mutants?",5)
		
	NODE(2)

		SAY("Toi et ceux de ton espèce, vous méritez la mort!")
		SAY("Tu vas regretter ce que tu viens de dire.")
		SAY("Si tu cherches des problèmes, tu viens de les trouver!")
		SAY("Vous croyez que vous pouvez venir ici et chasser comme vous voulez?")
		SAY("Et c'est nous que vous appelez mutants... C'est VOUS les monstres!")
		
		ATTACK()

	NODE(3)

		SAY("Bonne idée. Et ne revenez pas.")
		SAY("Bonne idée, je commençais à en avoir marre de vous.")
		SAY("Alors partez...")
	
		ENDDIALOG()

	NODE(4)

		SAY("Tu devrais savoir que c'est à cause de vous que nous sommes comme ça!")
		SAY("Et toi, pourquoi t'as cette tête? Tu m'as pas l'air en excellente santé, toi non plus.")
		SAY("Vous nous envoyez dans les égouts, et vous vous attendez à ce qu'on soit normaux?")
		
		ANSWER("OK... Où vivent les mutants?",5)
		ANSWER("Pardon d'avoir demandé. Je vais m'en aller.",3)
		ASNWER("Je n'aime pas la manière dont tu me parles.",2)
		ANSWER("Décidément, il va falloir que je te remette à ta place.",2)
		ANSWER("Je vais devoir t'apprendre les bonnes manières.",2)

	NODE(5)

		SAY("Tu le sauras jamais, tu serais capable de nous attaquer pendant qu'on dort.")
		SAY("On vit dans les déchets de votre société, qu'est-ce que tu crois...")
		SAY("On vit où on vit, toi tu vis où tu vis, et c'est tout ce que t'as besoin de savoir.")

		ANSWER("Je vois... Et comment est-ce que tu es devenu comme ça?",4)
		ANSWER("Je pense que je ferais mieux de partir.",3)
		ANSWER("Je n'aime pas la tournure que ça prend. Je vais m'en aller.",3)
		ANSWER("Si j'avais su que tu n'allais pas répondre à mes questions, j'aurais gagné du temps en te tuant tout de suite.",2)
		ANSWER("Quelqu'un a besoin de t'apprendre le respect. Voyons si te taper dessus pourra te remettre les idées en place.",2)

end