function DIALOG()

	NODE(0)

		SAY("Bonjour citoyen, et bienvenue � la station de m�tro Via Rosso, construite et entretenue par NEXT. Comment puis-je vous aider?")

		ANSWER("Quel est le secteur de Via Rosso que cette station dessert?",1)
		ANSWER("Est-ce que le m�tro va jusqu'� la Plaza?",2)
		ANSWER("Est-ce que je peux aller jusqu'� Pepper Park en m�tro?",3)
		ANSWER("Je veux aller dans l'Outzone. Le m�tro va jusque l�?",4)
		ANSWER("Est-ce que le m�tro va jusque dans la zone industrielle?",5)
		ANSWER("O� est-ce que je peux en apprendre davantage sur NEXT?",6)
		ANSWER("Merci, je vais aller pendre le m�tro.",7)
		ANSWER("Ce sera tout, merci.",8)

	NODE(1)

		SAY("Cette station dessert Via Rosso 3.")

		ANSWER("Est-ce que le m�tro va jusqu'� la Plaza?",2)
		ANSWER("Est-ce que je peux aller jusqu'� Pepper Park en m�tro?",3)
		ANSWER("Je veux aller dans l'Outzone. Le m�tro va jusque l�?",4)
		ANSWER("Est-ce que le m�tro va jusque dans la zone industrielle?",5)
		ANSWER("O� est-ce que je peux en apprendre davantage sur NEXT?",6)
		ANSWER("Merci, je vais aller pendre le m�tro.",7)
		ANSWER("Ce sera tout, merci.",8)

	NODE(2)

		SAY("Oui citoyen, �videmment. Si vous prenez le m�tro, vous serez � la Plaza en un rien de temps. Le m�tro dessert les secteurs Plaza 1 et Plaza 2.")

		ANSWER("Quel est le secteur de Via Rosso que cette station dessert?",1)
		ANSWER("Est-ce que je peux aller jusqu'� Pepper Park en m�tro?",3)
		ANSWER("Je veux aller dans l'Outzone. Le m�tro va jusque l�?",4)
		ANSWER("Est-ce que le m�tro va jusque dans la zone industrielle?",5)
		ANSWER("O� est-ce que je peux en apprendre davantage sur NEXT?",6)
		ANSWER("Merci, je vais aller pendre le m�tro.",7)
		ANSWER("Ce sera tout, merci.",8)

	NODE(3)

		SAY("Oui, un arr�t dessert Pepper Park. Si vous voulez vous y rendre, cette station couvre Pepper Park 1 et Pepper Park 2.")

		ANSWER("Quel est le secteur de Via Rosso que cette station dessert?",1)
		ANSWER("Est-ce que le m�tro va jusqu'� la Plaza?",2)
		ANSWER("Je veux aller dans l'Outzone. Le m�tro va jusque l�?",4)
		ANSWER("Est-ce que le m�tro va jusque dans la zone industrielle?",5)
		ANSWER("O� est-ce que je peux en apprendre davantage sur NEXT?",6)
		ANSWER("Merci, je vais aller pendre le m�tro.",7)
		ANSWER("Ce sera tout, merci.",8)

	NODE(4)

		SAY("Oui, c'est � une minute seulement. La station de m�tro Outzone dessert le secteur Outzone 1. C'est une zone dangereuse, citoyen. Faites attention si vous devez vous y rendre.")

		ANSWER("Quel est le secteur de Via Rosso que cette station dessert?",1)
		ANSWER("Est-ce que le m�tro va jusqu'� la Plaza?",2)
		ANSWER("Est-ce que je peux aller jusqu'� Pepper Park en m�tro?",3)
		ANSWER("Est-ce que le m�tro va jusque dans la zone industrielle?",5)
		ANSWER("O� est-ce que je peux en apprendre davantage sur NEXT?",6)
		ANSWER("Merci, je vais aller pendre le m�tro.",7)
		ANSWER("Ce sera tout, merci.",8)

	NODE(5)

		SAY("Malheureusement, le m�tro ne dessert pas la zone industrielle. Si vous supportez l'odeur, vous pouvez descendre � Pepper Park, ce n'est pas tr�s loin de la zone industrielle. Si vous faites attention � vous, vous pourrez atteindre la zone sans probl�mes majeurs.")

		ANSWER("Quel est le secteur de Via Rosso que cette station dessert?",1)
		ANSWER("Est-ce que le m�tro va jusqu'� la Plaza?",2)
		ANSWER("Est-ce que je peux aller jusqu'� Pepper Park en m�tro?",3)
		ANSWER("Je veux aller dans l'Outzone. Le m�tro va jusque l�?",4)
		ANSWER("O� est-ce que je peux en apprendre davantage sur NEXT?",6)
		ANSWER("Merci, je vais aller pendre le m�tro.",7)
		ANSWER("Ce sera tout, merci.",8)

	NODE(6)

		SAY("Je suis ravi que vous posiez la question. Pour en apprendre plus au sujet de NEXT, vous pouvez visiter notre cite depuis un terminal, ou bien nous rendre dans nos bureaux, Plaza 4.")

		ANSWER("Quel est le secteur de Via Rosso que cette station dessert?",1)
		ANSWER("Est-ce que le m�tro va jusqu'� la Plaza?",2)
		ANSWER("Est-ce que je peux aller jusqu'� Pepper Park en m�tro?",3)
		ANSWER("Je veux aller dans l'Outzone. Le m�tro va jusque l�?",4)
		ANSWER("Est-ce que le m�tro va jusque dans la zone industrielle?",5)
		ANSWER("Merci, je vais aller prendre le m�tro.",7)
		ANSWER("Ce sera tout, merci.",8)

	NODE(7)

		SAY("Je vous en prie, citoyen. Passez une bonne journ�e, et merci d'avoir choisi le r�seau NEXT.")
		ENDDIALOG()

	NODE(8)

		SAY("Tr�s bien, passez une bonne journ�e.")
		ENDDIALOG()


end