function DIALOG()

	NODE(0)

		SAY("Bonjour, vous voulez vous amuser? Tsunami peut vous procurez ce dont vous avez besoin.")

		ANSWER("Ca me pla�t. Dites-m'en plus sur Tsunami.",1)
		ANSWER("Tsunami? Qui est-ce?",1)
		ANSWER("Tsunami? Qu'est-ce que c'est?",1)
		ANSWER("Pardon, je dois m'en aller.",6)
		ANSWER("C'est tout ce que j'ai besoin de savoir. Au revoir.",6)

	NODE(1)

		SAY("Tsunami se trouve derri�re tout divertissement que vous pouvez rencontrer � Neocron : les casinos, les clubs, les jeux vid�o... Vous demandez, vous l'avez.")

		ANSWER("Parlez-moi de vos casinos.",2)
		ANSWER("Quels sont ces clubs dont vous venez de parler?",3)
		ANSWER("Des jeux vid�o? Ca m'int�resse. Dites-m'en plus.",4)
		ANSWER("Et qui dirige Tsunami?",5)

		ANSWER("Ca ira, j'en ai assez entendu. Merci.",6)
		ANSWER("Vous �tes gentil, mais il faut que je m'en aille.",6)

	NODE(2)

		SAY("Vous trouverez de nombreux casinos dans Pepper Park. De nombreuses personnes ont fait fortune ici. Qui sait, vous aussi vous avez peut-�tre de la chance.")

		ANSWER("Excellent, et le reste?",1)

		ANSWER("Ca ira, j'en ai assez entendu. Merci.",6)
		ANSWER("Vous �tes gentil, mais il faut que je m'en aille.",6)


	NODE(3)

		SAY("Les c�l�bres Club V�ronique et Pussy Club figurent sur la longue liste des clubs et bars poss�d�s par Tsunami. Si vous n'avez jamais visit� ces endroits, je peux vous dire que vous avez manqu� quelque chose!")
		ANSWER("Excellent, et le reste?",1)

		ANSWER("Ca ira, j'en ai assez entendu. Merci.",6)
		ANSWER("Vous �tes gentil, mais il faut que je m'en aille.",6)

	
	NODE(4)

		SAY("Bon nombre des jeux vid�o StarTerm sont d�velopp�s par Tsunami, et il existe de nombreux terminaux et bornes d'arcade � partir desquels vous pouvez jouer � ces jeux.")
		ANSWER("Excellent, et le reste?",1)

		ANSWER("Ca ira, j'en ai assez entendu. Merci.",6)
		ANSWER("Vous �tes gentil, mais il faut que je m'en aille.",6)

	NODE(5)

		SAY("V�ronique Duchamp, la c�l�bre Madame V�ronique, est la pr�sidente de Tsunami Ltd. Et elle conna�t les attentes des citoyens de Neocron mieux que personne.")
		ANSWER("Excellent, et le reste?",1)

		ANSWER("Ca ira, j'en ai assez entendu. Merci.",6)
		ANSWER("Vous �tes gentil, mais il faut que je m'en aille.",6)

	NODE(6)

		SAY("OK. A la prochaine.")
		ENDDIALOG()

end