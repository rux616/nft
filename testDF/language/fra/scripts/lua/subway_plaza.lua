function DIALOG()

	NODE(0)

		SAY("Bienvenue à la station de métro Plaza, construite et entretenue par NEXT Systems. Comment puis-je vous aider?")

		ANSWER("Quels sont les secteurs de la Plaza que cette station dessert?",1)
		ANSWER("Est-ce que le métro va à Via Rosso?",2)
		ANSWER("Est-ce que je peux aller à Pepper Park par le métro?",3)
		ANSWER("Il faut que j'aille dans l'Outzone. Est-ce que je peux y aller en métro?",4)
		ANSWER("Est-ce que le métro va jusque dans la zone industrielle?",5)
		ANSWER("Où est-ce que je peux en apprendre davantage sur NEXT?",6)
		ANSWER("Merci, je vais aller prendre le métro.",7)
		ANSWER(Ca ira pour l'instant, merci.",8)

	NODE(1)

		SAY("Cette station dessert les secteurs Plaza 1 et Plaza 2.")

		ANSWER("Est-ce que le métro va à Via Rosso?",2)
		ANSWER("Est-ce que je peux aller à Pepper Park par le métro?",3)
		ANSWER("Il faut que j'aille dans l'Outzone. Est-ce que je peux y aller en métro?",4)
		ANSWER("Est-ce que le métro va jusque dans la zone industrielle?",5)
		ANSWER("Où est-ce que je peux en apprendre davantage sur NEXT?",6)
		ANSWER("Merci, je vais aller prendre le métro.",7)
		ANSWER(Ca ira pour l'instant, merci.",8)


	NODE(2)

		SAY("C'est exact. Le métro s'arrête à la station Via Rosso, et dessert le secteur Via Rosso 3.")

		ANSWER("Quels sont les secteurs de la Plaza que cette station dessert?",1)
		ANSWER("Est-ce que je peux aller à Pepper Park par le métro?",3)
		ANSWER("Il faut que j'aille dans l'Outzone. Est-ce que je peux y aller en métro?",4)
		ANSWER("Est-ce que le métro va jusque dans la zone industrielle?",5)
		ANSWER("Où est-ce que je peux en apprendre davantage sur NEXT?",6)
		ANSWER("Merci, je vais aller prendre le métro.",7)
		ANSWER(Ca ira pour l'instant, merci.",8)

	NODE(3)

		SAY("Assurément. Pepper Park n'est qu'à quelques minutes d'ici. La station Pepper Park dessert Pepper Park 1 et Pepper Park 2.")

		ANSWER("Quels sont les secteurs de la Plaza que cette station dessert?",1)
		ANSWER("Est-ce que le métro va à Via Rosso?",2)
		ANSWER("Il faut que j'aille dans l'Outzone. Est-ce que je peux y aller en métro?",4)
		ANSWER("Est-ce que le métro va jusque dans la zone industrielle?",5)
		ANSWER("Où est-ce que je peux en apprendre davantage sur NEXT?",6)
		ANSWER("Merci, je vais aller prendre le métro.",7)
		ANSWER(Ca ira pour l'instant, merci.",8)

	NODE(4)

		SAY("Oui. La station Outzone dessert Outzone 1. Elle n'est qu'à quelques minutes d'ici.")

		ANSWER("Quels sont les secteurs de la Plaza que cette station dessert?",1)
		ANSWER("Est-ce que le métro va à Via Rosso?",2)
		ANSWER("Est-ce que je peux aller à Pepper Park par le métro?",3)
		ANSWER("Est-ce que le métro va jusque dans la zone industrielle?",5)
		ANSWER("Où est-ce que je peux en apprendre davantage sur NEXT?",6)
		ANSWER("Merci, je vais aller prendre le métro.",7)
		ANSWER(Ca ira pour l'instant, merci.",8)
	NODE(5)

		SAY("Je suis navré, mais pour des raisons démographiques il n'existe pas de station dans la zone industrielle. Néanmoins, la station Pepper Park n'est pas très éloignée de cette zone.")

		ANSWER("Quels sont les secteurs de la Plaza que cette station dessert?",1)
		ANSWER("Est-ce que le métro va à Via Rosso?",2)
		ANSWER("Est-ce que je peux aller à Pepper Park par le métro?",3)
		ANSWER("Il faut que j'aille dans l'Outzone. Est-ce que je peux y aller en métro?",4)
		ANSWER("Où est-ce que je peux en apprendre davantage sur NEXT?",6)
		ANSWER("Merci, je vais aller prendre le métro.",7)
		ANSWER(Ca ira pour l'instant, merci.",8)

	NODE(6)

		SAY("Pour en apprendre plus sur NEXT Systems, vous pouvez visiter notre site depuis n'importe quel terminal, ou passer à nos bureaux dans le secteur Plaza 4.")

		ANSWER("Quels sont les secteurs de la Plaza que cette station dessert?",1)
		ANSWER("Est-ce que le métro va à Via Rosso?",2)
		ANSWER("Est-ce que je peux aller à Pepper Park par le métro?",3)
		ANSWER("Il faut que j'aille dans l'Outzone. Est-ce que je peux y aller en métro?",4)
		ANSWER("Est-ce que le métro va jusque dans la zone industrielle?",5)
		ANSWER("Merci, je vais aller prendre le métro.",7)
		ANSWER(Ca ira pour l'instant, merci.",8)

	NODE(7)

		SAY("Je vous en prie. Bon voyage, et merci d'avoir choisi le réseau NEXT pour vos déplacements.")
		ENDDIALOG()

	NODE(8)

		SAY("Bien, passez une bonne journée.")
		ENDDIALOG()


end