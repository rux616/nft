function DIALOG()

	NODE(0)

		SAY("Bienvenue chez BioTech, votre fournisseur d'�lectronique et d'implants en tous genres.")
		SAY("Bienvenue chez BioTech, que puis-je faire pour vous?")

		ANSWER("Parlez-moi de BioTech.",1)
		ANSWER("J'aimerais des informations au sujet de votre compagnie.",1)
			ANSWER("Qui dirige cette compagnie?",2)
			ANSWER("Qui est le dirigeant de cette compagnie?",2)
		ANSWER("OK, merci. J'en sais assez maintenant.",4)
		ANSWER("Ca ira, j'en ai assez entendu, merci.",4)
		ANSWER("Bien, a plus tard, et merci pour votre aide.",4)

	

	NODE(1)

		SAY("BioTech fournit aux citoyens de Neocron tout l'�quipement �lectronique dont ils ont besoin.")

		ANSWER("Quel genre d'�quipement �lectronique, au juste?",3)
			ANSWER("J'en sais assez. Mais j'ai d'autres questions.",0)
			ANSWER("C'est int�ressant. Mais j'ai d'autres questions.",0)
		ANSWER("OK, merci. J'en sais assez maintenant.",4)
		ANSWER("Ca ira, j'en ai assez entendu, merci.",4)
		ANSWER("Bien, a plus tard, et merci pour votre aide.",4)
	

	NODE(2)

		SAY("Seymour Jordan est le dirigeant de BioTech. Il est le fils de Robert Jordan, le fondateur de Tangent Technologies.")

			ANSWER("J'en sais assez. Mais j'ai d'autres questions.",0)
			ANSWER("C'est int�ressant. Mais j'ai d'autres questions.",0)
		ANSWER("OK, merci. J'en sais assez maintenant.",4)
		ANSWER("Ca ira, j'en ai assez entendu, merci.",4)
		ANSWER("Bien, a plus tard, et merci pour votre aide.",4)
	
	
	NODE(3)

		SAY("Dans notre immense catalogue de mat�riel �lectronique, nous poss�dons des outils aussi bien que des implants. Evidemment, la qualit� des produits BioTech est excellente.")
		ACTIVATEDIALOGTRIGGER(1)
			ANSWER("J'en sais assez. Mais j'ai d'autres questions.",0)
			ANSWER("C'est int�ressant. Mais j'ai d'autres questions.",0)
		ANSWER("OK, merci. J'en sais assez maintenant.",4)
		ANSWER("Ca ira, j'en ai assez entendu, merci.",4)
		ANSWER("Bien, a plus tard, et merci pour votre aide.",4)
	

	NODE(4)

		SAY("J'esp�re avoir pu r�pondre � vos questions.")
		ENDDIALOG()

	
end