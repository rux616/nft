function DIALOG()

	NODE(0)

		SAY("Bienvenue � la station de m�tro Plaza, construite et entretenue par NEXT Systems. Comment puis-je vous aider?")

		ANSWER("Quels sont les secteurs de la Plaza que cette station dessert?",1)
		ANSWER("Est-ce que le m�tro va � Via Rosso?",2)
		ANSWER("Est-ce que je peux aller � Pepper Park par le m�tro?",3)
		ANSWER("Il faut que j'aille dans l'Outzone. Est-ce que je peux y aller en m�tro?",4)
		ANSWER("Est-ce que le m�tro va jusque dans la zone industrielle?",5)
		ANSWER("O� est-ce que je peux en apprendre davantage sur NEXT?",6)
		ANSWER("Merci, je vais aller prendre le m�tro.",7)
		ANSWER(Ca ira pour l'instant, merci.",8)

	NODE(1)

		SAY("Cette station dessert les secteurs Plaza 1 et Plaza 2.")

		ANSWER("Est-ce que le m�tro va � Via Rosso?",2)
		ANSWER("Est-ce que je peux aller � Pepper Park par le m�tro?",3)
		ANSWER("Il faut que j'aille dans l'Outzone. Est-ce que je peux y aller en m�tro?",4)
		ANSWER("Est-ce que le m�tro va jusque dans la zone industrielle?",5)
		ANSWER("O� est-ce que je peux en apprendre davantage sur NEXT?",6)
		ANSWER("Merci, je vais aller prendre le m�tro.",7)
		ANSWER(Ca ira pour l'instant, merci.",8)


	NODE(2)

		SAY("C'est exact. Le m�tro s'arr�te � la station Via Rosso, et dessert le secteur Via Rosso 3.")

		ANSWER("Quels sont les secteurs de la Plaza que cette station dessert?",1)
		ANSWER("Est-ce que je peux aller � Pepper Park par le m�tro?",3)
		ANSWER("Il faut que j'aille dans l'Outzone. Est-ce que je peux y aller en m�tro?",4)
		ANSWER("Est-ce que le m�tro va jusque dans la zone industrielle?",5)
		ANSWER("O� est-ce que je peux en apprendre davantage sur NEXT?",6)
		ANSWER("Merci, je vais aller prendre le m�tro.",7)
		ANSWER(Ca ira pour l'instant, merci.",8)

	NODE(3)

		SAY("Assur�ment. Pepper Park n'est qu'� quelques minutes d'ici. La station Pepper Park dessert Pepper Park 1 et Pepper Park 2.")

		ANSWER("Quels sont les secteurs de la Plaza que cette station dessert?",1)
		ANSWER("Est-ce que le m�tro va � Via Rosso?",2)
		ANSWER("Il faut que j'aille dans l'Outzone. Est-ce que je peux y aller en m�tro?",4)
		ANSWER("Est-ce que le m�tro va jusque dans la zone industrielle?",5)
		ANSWER("O� est-ce que je peux en apprendre davantage sur NEXT?",6)
		ANSWER("Merci, je vais aller prendre le m�tro.",7)
		ANSWER(Ca ira pour l'instant, merci.",8)

	NODE(4)

		SAY("Oui. La station Outzone dessert Outzone 1. Elle n'est qu'� quelques minutes d'ici.")

		ANSWER("Quels sont les secteurs de la Plaza que cette station dessert?",1)
		ANSWER("Est-ce que le m�tro va � Via Rosso?",2)
		ANSWER("Est-ce que je peux aller � Pepper Park par le m�tro?",3)
		ANSWER("Est-ce que le m�tro va jusque dans la zone industrielle?",5)
		ANSWER("O� est-ce que je peux en apprendre davantage sur NEXT?",6)
		ANSWER("Merci, je vais aller prendre le m�tro.",7)
		ANSWER(Ca ira pour l'instant, merci.",8)
	NODE(5)

		SAY("Je suis navr�, mais pour des raisons d�mographiques il n'existe pas de station dans la zone industrielle. N�anmoins, la station Pepper Park n'est pas tr�s �loign�e de cette zone.")

		ANSWER("Quels sont les secteurs de la Plaza que cette station dessert?",1)
		ANSWER("Est-ce que le m�tro va � Via Rosso?",2)
		ANSWER("Est-ce que je peux aller � Pepper Park par le m�tro?",3)
		ANSWER("Il faut que j'aille dans l'Outzone. Est-ce que je peux y aller en m�tro?",4)
		ANSWER("O� est-ce que je peux en apprendre davantage sur NEXT?",6)
		ANSWER("Merci, je vais aller prendre le m�tro.",7)
		ANSWER(Ca ira pour l'instant, merci.",8)

	NODE(6)

		SAY("Pour en apprendre plus sur NEXT Systems, vous pouvez visiter notre site depuis n'importe quel terminal, ou passer � nos bureaux dans le secteur Plaza 4.")

		ANSWER("Quels sont les secteurs de la Plaza que cette station dessert?",1)
		ANSWER("Est-ce que le m�tro va � Via Rosso?",2)
		ANSWER("Est-ce que je peux aller � Pepper Park par le m�tro?",3)
		ANSWER("Il faut que j'aille dans l'Outzone. Est-ce que je peux y aller en m�tro?",4)
		ANSWER("Est-ce que le m�tro va jusque dans la zone industrielle?",5)
		ANSWER("Merci, je vais aller prendre le m�tro.",7)
		ANSWER(Ca ira pour l'instant, merci.",8)

	NODE(7)

		SAY("Je vous en prie. Bon voyage, et merci d'avoir choisi le r�seau NEXT pour vos d�placements.")
		ENDDIALOG()

	NODE(8)

		SAY("Bien, passez une bonne journ�e.")
		ENDDIALOG()


end