function DIALOG()

	NODE(0)

		SAY("Bienvenue chez Tangent Technologies, votre fournisseur d'armes en tous genres.")
		SAY("Bienvenue chez Tangent Technologies, que puis-je faire pour vous?")

		ANSWER("Parlez-moi de Tangent Technologies.",1)
		ANSWER("J'aimerais obtenir des informations sur votre compagnie.",1)
			ANSWER("O� est-ce que je peux acheter vos produits?",2)
		ANSWER("Quel genre d'armes produit Tangent Technologies?",3)
			ANSWER("Qui dirige cette entreprise?",4)
			ANSWER("Qui dirige la compagnie?",4)
		ANSWER("OK merci, �a suffira pour l'instant.",5)
		ANSWER("C'est bon, j'en sais assez. Merci.",5)
		ANSWER("Bien. A plus tard, et merci pour votre aide.",5)

	

	NODE(1)
		SAY("Bien s�r. Tangent Technologies est le plus grand fabricant d'armes de Neocron. Nous avons toutes sortes d'armes dans notre catalogue, toutes mises au point par les meilleurs experts. Nous fournissons aussi bien de l'excellente qualit� qu'un vaste choix de produits.")

		ANSWER("OK, �a ira comme �a. J'ai d'autres questions.",0)
		ANSWER("J'en sais assez. Mais j'ai d'autres questions.",0)
			ANSWER("OK merci, �a suffira pour l'instant.",5)
		ANSWER("C'est bon, j'en sais assez. Merci.",5)
		ANSWER("Bien. A plus tard, et merci pour votre aide.",5)
	

	NODE(2)

		SAY("Vous trouverez les produits de Tangent Technologies dans presque tout magasin de Neocron.")

		ANSWER("OK, �a ira comme �a. J'ai d'autres questions.",0)
		ANSWER("J'en sais assez. Mais j'ai d'autres questions.",0)
			ANSWER("OK merci, �a suffira pour l'instant.",5)
		ANSWER("C'est bon, j'en sais assez. Merci.",5)
		ANSWER("Bien. A plus tard, et merci pour votre aide.",5)
	
	
	NODE(3)

		SAY("Tout type d'arme que vous pouvez imaginer. Nous avons tout, des petites armes � feu comme les pistolets, jusqu'aux fusils. Si vous d�sirez plus de puissance de feu, nous pouvons vous la fournir. Nous commercialisons des lance-roquettes, des lance-grenades, et diverses armes de pointe pour r�pondre aux besoins les plus pressants des mercenaires.")

		ANSWER("OK, �a ira comme �a. J'ai d'autres questions.",0)
		ANSWER("J'en sais assez. Mais j'ai d'autres questions.",0)
			ANSWER("OK merci, �a suffira pour l'instant.",5)
			ANSWER("C'est bon, j'en sais assez. Merci.",5)
			ANSWER("Bien. A plus tard, et merci pour votre aide.",5)
	

	NODE(4)

		SAY("La compagnie a �t� fond�e par Robert Jordan, et est maintenant dirig�e par son fils, Robert Jr.")
		ACTIVATEDIALOGTRIGGER(1)

		ANSWER("OK, �a ira comme �a. J'ai d'autres questions.",0)
		ANSWER("J'en sais assez. Mais j'ai d'autres questions.",0)
			ANSWER("OK merci, �a suffira pour l'instant.",5)
			ANSWER("C'est bon, j'en sais assez. Merci.",5)
			ANSWER("Bien. A plus tard, et merci pour votre aide.",5)
	

	NODE(5)

		SAY("A bient�t.")
		ENDDIALOG()

end