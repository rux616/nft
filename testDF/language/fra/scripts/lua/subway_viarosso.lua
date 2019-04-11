function DIALOG()

	NODE(0)

		SAY("Bonjour citoyen, et bienvenue à la station de métro Via Rosso, construite et entretenue par NEXT. Comment puis-je vous aider?")

		ANSWER("Quel est le secteur de Via Rosso que cette station dessert?",1)
		ANSWER("Est-ce que le métro va jusqu'à la Plaza?",2)
		ANSWER("Est-ce que je peux aller jusqu'à Pepper Park en métro?",3)
		ANSWER("Je veux aller dans l'Outzone. Le métro va jusque là?",4)
		ANSWER("Est-ce que le métro va jusque dans la zone industrielle?",5)
		ANSWER("Où est-ce que je peux en apprendre davantage sur NEXT?",6)
		ANSWER("Merci, je vais aller pendre le métro.",7)
		ANSWER("Ce sera tout, merci.",8)

	NODE(1)

		SAY("Cette station dessert Via Rosso 3.")

		ANSWER("Est-ce que le métro va jusqu'à la Plaza?",2)
		ANSWER("Est-ce que je peux aller jusqu'à Pepper Park en métro?",3)
		ANSWER("Je veux aller dans l'Outzone. Le métro va jusque là?",4)
		ANSWER("Est-ce que le métro va jusque dans la zone industrielle?",5)
		ANSWER("Où est-ce que je peux en apprendre davantage sur NEXT?",6)
		ANSWER("Merci, je vais aller pendre le métro.",7)
		ANSWER("Ce sera tout, merci.",8)

	NODE(2)

		SAY("Oui citoyen, évidemment. Si vous prenez le métro, vous serez à la Plaza en un rien de temps. Le métro dessert les secteurs Plaza 1 et Plaza 2.")

		ANSWER("Quel est le secteur de Via Rosso que cette station dessert?",1)
		ANSWER("Est-ce que je peux aller jusqu'à Pepper Park en métro?",3)
		ANSWER("Je veux aller dans l'Outzone. Le métro va jusque là?",4)
		ANSWER("Est-ce que le métro va jusque dans la zone industrielle?",5)
		ANSWER("Où est-ce que je peux en apprendre davantage sur NEXT?",6)
		ANSWER("Merci, je vais aller pendre le métro.",7)
		ANSWER("Ce sera tout, merci.",8)

	NODE(3)

		SAY("Oui, un arrêt dessert Pepper Park. Si vous voulez vous y rendre, cette station couvre Pepper Park 1 et Pepper Park 2.")

		ANSWER("Quel est le secteur de Via Rosso que cette station dessert?",1)
		ANSWER("Est-ce que le métro va jusqu'à la Plaza?",2)
		ANSWER("Je veux aller dans l'Outzone. Le métro va jusque là?",4)
		ANSWER("Est-ce que le métro va jusque dans la zone industrielle?",5)
		ANSWER("Où est-ce que je peux en apprendre davantage sur NEXT?",6)
		ANSWER("Merci, je vais aller pendre le métro.",7)
		ANSWER("Ce sera tout, merci.",8)

	NODE(4)

		SAY("Oui, c'est à une minute seulement. La station de métro Outzone dessert le secteur Outzone 1. C'est une zone dangereuse, citoyen. Faites attention si vous devez vous y rendre.")

		ANSWER("Quel est le secteur de Via Rosso que cette station dessert?",1)
		ANSWER("Est-ce que le métro va jusqu'à la Plaza?",2)
		ANSWER("Est-ce que je peux aller jusqu'à Pepper Park en métro?",3)
		ANSWER("Est-ce que le métro va jusque dans la zone industrielle?",5)
		ANSWER("Où est-ce que je peux en apprendre davantage sur NEXT?",6)
		ANSWER("Merci, je vais aller pendre le métro.",7)
		ANSWER("Ce sera tout, merci.",8)

	NODE(5)

		SAY("Malheureusement, le métro ne dessert pas la zone industrielle. Si vous supportez l'odeur, vous pouvez descendre à Pepper Park, ce n'est pas très loin de la zone industrielle. Si vous faites attention à vous, vous pourrez atteindre la zone sans problèmes majeurs.")

		ANSWER("Quel est le secteur de Via Rosso que cette station dessert?",1)
		ANSWER("Est-ce que le métro va jusqu'à la Plaza?",2)
		ANSWER("Est-ce que je peux aller jusqu'à Pepper Park en métro?",3)
		ANSWER("Je veux aller dans l'Outzone. Le métro va jusque là?",4)
		ANSWER("Où est-ce que je peux en apprendre davantage sur NEXT?",6)
		ANSWER("Merci, je vais aller pendre le métro.",7)
		ANSWER("Ce sera tout, merci.",8)

	NODE(6)

		SAY("Je suis ravi que vous posiez la question. Pour en apprendre plus au sujet de NEXT, vous pouvez visiter notre cite depuis un terminal, ou bien nous rendre dans nos bureaux, Plaza 4.")

		ANSWER("Quel est le secteur de Via Rosso que cette station dessert?",1)
		ANSWER("Est-ce que le métro va jusqu'à la Plaza?",2)
		ANSWER("Est-ce que je peux aller jusqu'à Pepper Park en métro?",3)
		ANSWER("Je veux aller dans l'Outzone. Le métro va jusque là?",4)
		ANSWER("Est-ce que le métro va jusque dans la zone industrielle?",5)
		ANSWER("Merci, je vais aller prendre le métro.",7)
		ANSWER("Ce sera tout, merci.",8)

	NODE(7)

		SAY("Je vous en prie, citoyen. Passez une bonne journée, et merci d'avoir choisi le réseau NEXT.")
		ENDDIALOG()

	NODE(8)

		SAY("Très bien, passez une bonne journée.")
		ENDDIALOG()


end