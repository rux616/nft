function DIALOG()

	NODE(0)

		SAY("Bienvenue chez les mercenaires de CityMercs. Qu'est-ce que je peux faire pour vous?")

		ANSWER("Pouvez-vous me donner des informations sur votre compagnie?",1)
		ANSWER("Parlez-moi de CityMercs.",1)
			ANSWER("Qui est le responsable ici?",2)
			ANSWER("Qui est le patron?",2)
			ANSWER("Qui est � la t�te de la compagnie?",2)
		ANSWER("Bien, j'en sais assez. Merci pour votre aide.",4)
		ANSWER("Fort bien, � plus tard, merci pour votre aide.",4)

	ENDNOD

	NODE(1)

		SAY("C'est tr�s simple. Si vous avez besoin d'une protection que le NCPD ne peut pas vous offrir, nous sommes l�.")

		ANSWER("Et � part �a?",3)
			ANSWER("OK? �a suffira, j'ai d'autres questions.",0)
		ANSWER("Bien, j'en sais assez. Merci pour votre aide.",4)
		ANSWER("Fort bien, � plus tard, merci pour votre aide.",4)
	ENDNODE

	NODE(2)

		SAY("Tarok Cajun, dit l'Oeil, est le chef de CityMercs depuis 2747. C'est un grand guerrier.")

		ANSWER("Bien, �a m'ira. J'ai d'autres questions.",0)
			ANSWER("Bien, j'en sais assez. Merci pour votre aide.",4)
			ANSWER("Fort bien, � plus tard, merci pour votre aide.",4)


	ENDNODE
	
	NODE(3)

		SAY("Je pense que vous devriez demander � quelqu'un de plus haut plac� que moi... * clin d'oeil*")

		AANSWER("Bien, �a m'ira. J'ai d'autres questions.",0)
			ANSWER("Bien, j'en sais assez. Merci pour votre aide.",4)
			ANSWER("Fort bien, � plus tard, merci pour votre aide.",4)

	ENDNODE

	NODE(4)

		SAY("OK. A plus tard.")
		ENDDIALOG()

end