function DIALOG()

	NODE(0)
		SAY("On dirait que tu t'es perdu.")
		SAY("Qu'est-ce que tu fais ici?")
		SAY("Comment quelqu'un comme toi peut arriver dans un endroit pareil?")

		ANSWER("J'esp�rais trouver des r�ponses � certaines questions.",1)
		ANSWER("Tu pourrais r�pondre � quelques questions?",1)
		ANSWER("Tout ce que je veux, ce sont les cr�dits que valent ton cadavre!",2)
		ANSWER("Je viens faire quelques cr�dits en tuant des mutants.",2)
		ANSWER("Pardon, je voulais pas te d�ranger.",3)
		ANSWER("Je m'en vais.",3)

	NODE(1)

		SAY("Oh, une peau lisse qui a besoin de mon aide?")
		SAY("Fais vite, alors. Vous et vos questions...")
		
		ANSWER("Comment est-ce que tu es devenu comme �a?",4)
		ANSWER("Qu'est-ce qui t'est arriv�?",4)
		ANSWER("O� habitent les mutants?",5)
		
	NODE(2)

		SAY("Toi et ceux de ton esp�ce, vous m�ritez la mort!")
		SAY("Tu vas regretter ce que tu viens de dire.")
		SAY("Si tu cherches des probl�mes, tu viens de les trouver!")
		SAY("Vous croyez que vous pouvez venir ici et chasser comme vous voulez?")
		SAY("Et c'est nous que vous appelez mutants... C'est VOUS les monstres!")
		
		ATTACK()

	NODE(3)

		SAY("Bonne id�e. Et ne revenez pas.")
		SAY("Bonne id�e, je commen�ais � en avoir marre de vous.")
		SAY("Alors partez...")
	
		ENDDIALOG()

	NODE(4)

		SAY("Tu devrais savoir que c'est � cause de vous que nous sommes comme �a!")
		SAY("Et toi, pourquoi t'as cette t�te? Tu m'as pas l'air en excellente sant�, toi non plus.")
		SAY("Vous nous envoyez dans les �gouts, et vous vous attendez � ce qu'on soit normaux?")
		
		ANSWER("OK... O� vivent les mutants?",5)
		ANSWER("Pardon d'avoir demand�. Je vais m'en aller.",3)
		ASNWER("Je n'aime pas la mani�re dont tu me parles.",2)
		ANSWER("D�cid�ment, il va falloir que je te remette � ta place.",2)
		ANSWER("Je vais devoir t'apprendre les bonnes mani�res.",2)

	NODE(5)

		SAY("Tu le sauras jamais, tu serais capable de nous attaquer pendant qu'on dort.")
		SAY("On vit dans les d�chets de votre soci�t�, qu'est-ce que tu crois...")
		SAY("On vit o� on vit, toi tu vis o� tu vis, et c'est tout ce que t'as besoin de savoir.")

		ANSWER("Je vois... Et comment est-ce que tu es devenu comme �a?",4)
		ANSWER("Je pense que je ferais mieux de partir.",3)
		ANSWER("Je n'aime pas la tournure que �a prend. Je vais m'en aller.",3)
		ANSWER("Si j'avais su que tu n'allais pas r�pondre � mes questions, j'aurais gagn� du temps en te tuant tout de suite.",2)
		ANSWER("Quelqu'un a besoin de t'apprendre le respect. Voyons si te taper dessus pourra te remettre les id�es en place.",2)

end