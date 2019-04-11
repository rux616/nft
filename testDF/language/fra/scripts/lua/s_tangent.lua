function DIALOG()

	NODE(0)

		SAY("Bienvenue chez Tangent Technologies, votre fournisseur d'armes en tous genres.")
		SAY("Bienvenue chez Tangent Technologies, que puis-je faire pour vous?")

		ANSWER("Parlez-moi de Tangent Technologies.",1)
		ANSWER("J'aimerais obtenir des informations sur votre compagnie.",1)
			ANSWER("Où est-ce que je peux acheter vos produits?",2)
		ANSWER("Quel genre d'armes produit Tangent Technologies?",3)
			ANSWER("Qui dirige cette entreprise?",4)
			ANSWER("Qui dirige la compagnie?",4)
		ANSWER("OK merci, ça suffira pour l'instant.",5)
		ANSWER("C'est bon, j'en sais assez. Merci.",5)
		ANSWER("Bien. A plus tard, et merci pour votre aide.",5)

	

	NODE(1)
		SAY("Bien sûr. Tangent Technologies est le plus grand fabricant d'armes de Neocron. Nous avons toutes sortes d'armes dans notre catalogue, toutes mises au point par les meilleurs experts. Nous fournissons aussi bien de l'excellente qualité qu'un vaste choix de produits.")

		ANSWER("OK, ça ira comme ça. J'ai d'autres questions.",0)
		ANSWER("J'en sais assez. Mais j'ai d'autres questions.",0)
			ANSWER("OK merci, ça suffira pour l'instant.",5)
		ANSWER("C'est bon, j'en sais assez. Merci.",5)
		ANSWER("Bien. A plus tard, et merci pour votre aide.",5)
	

	NODE(2)

		SAY("Vous trouverez les produits de Tangent Technologies dans presque tout magasin de Neocron.")

		ANSWER("OK, ça ira comme ça. J'ai d'autres questions.",0)
		ANSWER("J'en sais assez. Mais j'ai d'autres questions.",0)
			ANSWER("OK merci, ça suffira pour l'instant.",5)
		ANSWER("C'est bon, j'en sais assez. Merci.",5)
		ANSWER("Bien. A plus tard, et merci pour votre aide.",5)
	
	
	NODE(3)

		SAY("Tout type d'arme que vous pouvez imaginer. Nous avons tout, des petites armes à feu comme les pistolets, jusqu'aux fusils. Si vous désirez plus de puissance de feu, nous pouvons vous la fournir. Nous commercialisons des lance-roquettes, des lance-grenades, et diverses armes de pointe pour répondre aux besoins les plus pressants des mercenaires.")

		ANSWER("OK, ça ira comme ça. J'ai d'autres questions.",0)
		ANSWER("J'en sais assez. Mais j'ai d'autres questions.",0)
			ANSWER("OK merci, ça suffira pour l'instant.",5)
			ANSWER("C'est bon, j'en sais assez. Merci.",5)
			ANSWER("Bien. A plus tard, et merci pour votre aide.",5)
	

	NODE(4)

		SAY("La compagnie a été fondée par Robert Jordan, et est maintenant dirigée par son fils, Robert Jr.")
		ACTIVATEDIALOGTRIGGER(1)

		ANSWER("OK, ça ira comme ça. J'ai d'autres questions.",0)
		ANSWER("J'en sais assez. Mais j'ai d'autres questions.",0)
			ANSWER("OK merci, ça suffira pour l'instant.",5)
			ANSWER("C'est bon, j'en sais assez. Merci.",5)
			ANSWER("Bien. A plus tard, et merci pour votre aide.",5)
	

	NODE(5)

		SAY("A bientôt.")
		ENDDIALOG()

end