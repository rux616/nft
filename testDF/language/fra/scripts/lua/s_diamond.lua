function DIALOG()

	NODE(0)

		SAY("Bienvenue chez Diamond Immobilier.")

		ANSWER("Pouvez-vous me donner des informations sur Diamond Immobilier?",1)
		ANSWER("Je voudrais des informations sur Diamond Immobilier.",1)
			ANSWER("Qui dirige la compagnie?",2)
			ANSWER("Qui est le patron de la compagnie?",2)
		ANSWER("OK, merci. J'en sais assez maintenant.",4)
		ANSWER("Ca ira, j'en ai assez entendu, merci.",4)
		ANSWER("Bien, a plus tard, et merci pour votre aide.",4)

	

	NODE(1)

		SAY("Bien s�r! Diamond Immobilier vous donne un logement dans Neocron. La compagnie a �t� fond�e par Lioon Reza en 2746.")
		ACTIVATEDIALOGTRIGGER(1)
		ANSWER("Elle a �t� fond�e par Lioon Reza?",3)
			ANSWER("OK, �a suffira. J'ai d'autres questions.",0)
			ANSWER("J'en sais assez. Mais j'ai d'autres questions.",0)
			ANSWER("C'est int�ressant. Mais j'ai d'autres questions.",0)
		ANSWER("OK, merci. J'en sais assez maintenant.",4)
		ANSWER("Ca ira, j'en ai assez entendu, merci.",4)
		ANSWER("Bien, a plus tard, et merci pour votre aide.",4)

	

	NODE(2)

		SAY("Eric Danmund est � la t�te de Diamond Immobilier depuis sa fondation.")

			ANSWER("OK, �a suffira. J'ai d'autres questions.",0)
			ANSWER("J'en sais assez. Mais j'ai d'autres questions.",0)
			ANSWER("C'est int�ressant. Mais j'ai d'autres questions.",0)
		ANSWER("OK, merci. J'en sais assez maintenant.",4)
		ANSWER("Ca ira, j'en ai assez entendu, merci.",4)
		ANSWER("Bien, a plus tard, et merci pour votre aide.",4)

	
	
	NODE(3)

		SAY("Oui. Diamond Immobilier a �t� fond�e pour r�guler l'anarchie immobili�re qu'a connue Neocron a un moment donn�.")

			ANSWER("OK, �a suffira. J'ai d'autres questions.",0)
			ANSWER("J'en sais assez. Mais j'ai d'autres questions.",0)
			ANSWER("C'est int�ressant. Mais j'ai d'autres questions.",0)
		ANSWER("OK, merci. J'en sais assez maintenant.",4)
		ANSWER("Ca ira, j'en ai assez entendu, merci.",4)
		ANSWER("Bien, a plus tard, et merci pour votre aide.",4)

	

	NODE(4)

		SAY("J'esp�re avoir r�pondu � vos questions.")
		ENDDIALOG()

	
end