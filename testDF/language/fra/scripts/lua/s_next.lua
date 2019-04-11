function DIALOG()

	NODE(0)

		SAY("Bienvenue chez NEXT.")

		ANSWER("Qu'est-ce que signifie NEXT?",1)
			ANSWER("Qui dirige ProtoPharm?",2)
			ANSWER("Qui est le patron de la compagnie?",2)
		ANSWER("OK, merci. J'en sais assez maintenant.",4)
		ANSWER("Ca ira, j'en ai assez entendu, merci.",4)
		ANSWER("Bien, a plus tard, et merci pour votre aide.",4)

	

	NODE(1)

		SAY("NEXT est l'acronyme de Neocron Exclusive Transport.")

		ANSWER("Quel genre de transports proposez-vous?",3)
			ANSWER("OK, ça suffira. J'ai d'autres questions.",0)
			ANSWER("J'en sais assez. Mais j'ai d'autres questions.",0)
			ANSWER("C'est intéressant. Mais j'ai d'autres questions.",0)
		ANSWER("OK, merci. J'en sais assez maintenant.",4)
		ANSWER("Ca ira, j'en ai assez entendu, merci.",4)
		ANSWER("Bien, a plus tard, et merci pour votre aide.",4)


	

	NODE(2)

		SAY("Le directeur de la compagnie s'appelle Craig Diggers. C'est un ingénieur visionnaire.")

			ANSWER("OK, ça suffira. J'ai d'autres questions.",0)
			ANSWER("J'en sais assez. Mais j'ai d'autres questions.",0)
			ANSWER("C'est intéressant. Mais j'ai d'autres questions.",0)
		ANSWER("OK, merci. J'en sais assez maintenant.",4)
		ANSWER("Ca ira, j'en ai assez entendu, merci.",4)
		ANSWER("Bien, a plus tard, et merci pour votre aide.",4)



	
	
	NODE(3)

		SAY("Nous proposons des hoverbikes d'excellente qualité, et si vous avez besoin de protection et d'une puissance de feu supérieure, nous pouvons vous fournir des tanks ou des mechs. Le système de transports souterrains de Neocron est fourni par NEXT, et assure vos déplacements pour un prix très modique.")
		ACTIVATEDIALOGTRIGGER(1)
			ANSWER("OK, ça suffira. J'ai d'autres questions.",0)
			ANSWER("J'en sais assez. Mais j'ai d'autres questions.",0)
			ANSWER("C'est intéressant. Mais j'ai d'autres questions.",0)
		ANSWER("OK, merci. J'en sais assez maintenant.",4)
		ANSWER("Ca ira, j'en ai assez entendu, merci.",4)
		ANSWER("Bien, a plus tard, et merci pour votre aide.",4)


	

	NODE(4)

		SAY("J'espère que j'ai pu répondre à vos attentes.")
		ENDDIALOG()

	

end