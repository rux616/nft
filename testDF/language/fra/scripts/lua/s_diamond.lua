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

		SAY("Bien sûr! Diamond Immobilier vous donne un logement dans Neocron. La compagnie a été fondée par Lioon Reza en 2746.")
		ACTIVATEDIALOGTRIGGER(1)
		ANSWER("Elle a été fondée par Lioon Reza?",3)
			ANSWER("OK, ça suffira. J'ai d'autres questions.",0)
			ANSWER("J'en sais assez. Mais j'ai d'autres questions.",0)
			ANSWER("C'est intéressant. Mais j'ai d'autres questions.",0)
		ANSWER("OK, merci. J'en sais assez maintenant.",4)
		ANSWER("Ca ira, j'en ai assez entendu, merci.",4)
		ANSWER("Bien, a plus tard, et merci pour votre aide.",4)

	

	NODE(2)

		SAY("Eric Danmund est à la tête de Diamond Immobilier depuis sa fondation.")

			ANSWER("OK, ça suffira. J'ai d'autres questions.",0)
			ANSWER("J'en sais assez. Mais j'ai d'autres questions.",0)
			ANSWER("C'est intéressant. Mais j'ai d'autres questions.",0)
		ANSWER("OK, merci. J'en sais assez maintenant.",4)
		ANSWER("Ca ira, j'en ai assez entendu, merci.",4)
		ANSWER("Bien, a plus tard, et merci pour votre aide.",4)

	
	
	NODE(3)

		SAY("Oui. Diamond Immobilier a été fondée pour réguler l'anarchie immobilière qu'a connue Neocron a un moment donné.")

			ANSWER("OK, ça suffira. J'ai d'autres questions.",0)
			ANSWER("J'en sais assez. Mais j'ai d'autres questions.",0)
			ANSWER("C'est intéressant. Mais j'ai d'autres questions.",0)
		ANSWER("OK, merci. J'en sais assez maintenant.",4)
		ANSWER("Ca ira, j'en ai assez entendu, merci.",4)
		ANSWER("Bien, a plus tard, et merci pour votre aide.",4)

	

	NODE(4)

		SAY("J'espère avoir répondu à vos questions.")
		ENDDIALOG()

	
end