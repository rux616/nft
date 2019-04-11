function DIALOG()

	NODE(0)

		SAY("Bonjour, vous voulez vous amuser? Tsunami peut vous procurez ce dont vous avez besoin.")

		ANSWER("Ca me plaît. Dites-m'en plus sur Tsunami.",1)
		ANSWER("Tsunami? Qui est-ce?",1)
		ANSWER("Tsunami? Qu'est-ce que c'est?",1)
		ANSWER("Pardon, je dois m'en aller.",6)
		ANSWER("C'est tout ce que j'ai besoin de savoir. Au revoir.",6)

	NODE(1)

		SAY("Tsunami se trouve derrière tout divertissement que vous pouvez rencontrer à Neocron : les casinos, les clubs, les jeux vidéo... Vous demandez, vous l'avez.")

		ANSWER("Parlez-moi de vos casinos.",2)
		ANSWER("Quels sont ces clubs dont vous venez de parler?",3)
		ANSWER("Des jeux vidéo? Ca m'intéresse. Dites-m'en plus.",4)
		ANSWER("Et qui dirige Tsunami?",5)

		ANSWER("Ca ira, j'en ai assez entendu. Merci.",6)
		ANSWER("Vous êtes gentil, mais il faut que je m'en aille.",6)

	NODE(2)

		SAY("Vous trouverez de nombreux casinos dans Pepper Park. De nombreuses personnes ont fait fortune ici. Qui sait, vous aussi vous avez peut-être de la chance.")

		ANSWER("Excellent, et le reste?",1)

		ANSWER("Ca ira, j'en ai assez entendu. Merci.",6)
		ANSWER("Vous êtes gentil, mais il faut que je m'en aille.",6)


	NODE(3)

		SAY("Les célèbres Club Véronique et Pussy Club figurent sur la longue liste des clubs et bars possédés par Tsunami. Si vous n'avez jamais visité ces endroits, je peux vous dire que vous avez manqué quelque chose!")
		ANSWER("Excellent, et le reste?",1)

		ANSWER("Ca ira, j'en ai assez entendu. Merci.",6)
		ANSWER("Vous êtes gentil, mais il faut que je m'en aille.",6)

	
	NODE(4)

		SAY("Bon nombre des jeux vidéo StarTerm sont développés par Tsunami, et il existe de nombreux terminaux et bornes d'arcade à partir desquels vous pouvez jouer à ces jeux.")
		ANSWER("Excellent, et le reste?",1)

		ANSWER("Ca ira, j'en ai assez entendu. Merci.",6)
		ANSWER("Vous êtes gentil, mais il faut que je m'en aille.",6)

	NODE(5)

		SAY("Véronique Duchamp, la célèbre Madame Véronique, est la présidente de Tsunami Ltd. Et elle connaît les attentes des citoyens de Neocron mieux que personne.")
		ANSWER("Excellent, et le reste?",1)

		ANSWER("Ca ira, j'en ai assez entendu. Merci.",6)
		ANSWER("Vous êtes gentil, mais il faut que je m'en aille.",6)

	NODE(6)

		SAY("OK. A la prochaine.")
		ENDDIALOG()

end