function DIALOG()

	NODE(0)

		SAY("Bienvenue � ProtoPharm.")
		SAY("Bienvenue � ProtoPharm, votre fournisseur d'�quipements m�dicaux.")

		ANSWER("Parlez-moi un peu de ProtoPharm.",1)
		ANSWER("Qu'est-ce que vous pouvez me dire au sujet de ProtoPharm?",1)
			ANSWER("Qui dirige ProtoPharm?",2)
			ANSWER("Qui est le patron de la compagnie?",2)
		ANSWER("OK, merci. J'en sais assez maintenant.",4)
		ANSWER("Ca ira, j'en ai assez entendu, merci.",4)
		ANSWER("Bien, a plus tard, et merci pour votre aide.",4)

	

	NODE(1)

		SAY("ProtoPharm, comme son nom l'indique, est une compagnie fournit des produits pharmaceutiques.")

		ANSWER("Quel genre de produits exactement?",3)
			ANSWER("OK, �a suffira. J'ai d'autres questions.",0)
			ANSWER("J'en sais assez. Mais j'ai d'autres questions.",0)
		ANSWER("OK, merci. J'en sais assez maintenant.",4)
		ANSWER("Ca ira, j'en ai assez entendu, merci.",4)
		ANSWER("Bien, a plus tard, et merci pour votre aide.",4)

	

	NODE(2)

		SAY("Sandra Frasier est � la t�te de ProtoPharm depuis 2741.")
		ACTIVATEDIALOGTRIGGER(1)

		ANSWER("OK, �a suffira. J'ai d'autres questions.",0)
		ANSWER("J'en sais assez. Mais j'ai d'autres questions.",0)
			ANSWER("OK, merci. J'en sais assez maintenant.",4)
			ANSWER("Ca ira, j'en ai assez entendu, merci.",4)
			ANSWER("Bien, a plus tard, et merci pour votre aide.",4)


	
	
	NODE(3)

		SAY("Exactement? Demandez, vous l'aurez. Notre catalogue de produits est gigantesque.")

		ANSWER("OK, �a suffira. J'ai d'autres questions.",0)
		ANSWER("J'en sais assez. Mais j'ai d'autres questions.",0)
			ANSWER("OK, merci. J'en sais assez maintenant.",4)
			ANSWER("Ca ira, j'en ai assez entendu, merci.",4)
			ANSWER("Bien, � plus tard, et merci pour votre aide.",4)

	

	NODE(4)

		SAY("J'esp�re que vous avez appr�ci� nos services.")
		ENDDIALOG()

	
end