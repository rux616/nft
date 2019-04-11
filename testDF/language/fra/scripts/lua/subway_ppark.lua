function DIALOG()

	NODE(0)

		SAY("Bienvenue dans la station de métro Pepper Park, construite et entretenue par NEXT Systems Inc. Comment puis-je vous aider?")

		ANSWER("Quels sont les secteurs de Pepper Park que cette station dessert?",1)
		ANSWER("Est-ce que je peux aller à Via Rosso en métro?",2)
		ANSWER("Est-ce que le métro passe par la Plaza?",3)
		ANSWER("Je veux aller dans l'Outzone. Est-ce que le métro va jusque là?",4)
		ANSWER("Est-ce que le métro va jusque dans la zone industrielle?",5)
		ANSWER("Ou puis-je trouver des informations sur NEXT?",6)
		ANSWER("Merci, je vais aller prendre le métro.",7)
		ANSWER("Ca ira, merci.",8)

	NODE(1)

		SAY(Vous venez d'arriver, je parie. Cette station dessert les secteurs Pepper Park 1 et Pepper Park 2")

		ANSWER("Est-ce que je peux aller à Via Rosso en métro?",2)
		ANSWER("Est-ce que le métro passe par la Plaza?",3)
		ANSWER("Je veux aller dans l'Outzone. Est-ce que le métro va jusque là?",4)
		ANSWER("Est-ce que le métro va jusque dans la zone industrielle?",5)
		ANSWER("Ou puis-je trouver des informations sur NEXT?",6)
		ANSWER("Merci, je vais aller prendre le métro.",7)
		ANSWER("Ca ira, merci.",8)

	NODE(2)

		SAY("Oui, bien sûr. Le métro passe par la station Via Rosso. C'est le quartier chic de la ville. Vous descendrez à Via Rosso 3. N'oubliez pas d'essuyer vos pieds en entrant, les habitants du quartier aiment le garder propre.")

		ANSWER("Quels sont les secteurs de Pepper Park que cette station dessert?",1)
		ANSWER("Est-ce que le métro passe par la Plaza?",3)
		ANSWER("Je veux aller dans l'Outzone. Est-ce que le métro va jusque là?",4)
		ANSWER("Est-ce que le métro va jusque dans la zone industrielle?",5)
		ANSWER("Ou puis-je trouver des informations sur NEXT?",6)
		ANSWER("Merci, je vais aller prendre le métro.",7)
		ANSWER("Ca ira, merci.",8)

	NODE(3)

		SAY("La Plaza? Oui, c'est à quelques stations d'ici. Si vous avez de l'argent à dépenser, c'est le bon endroit pour faire vos achats. J'ai eu de l'argent, une fois... Enfin bref, la station Plaza débouche sur Plaza 1 et Plaza 2.")

		ANSWER("Quels sont les secteurs de Pepper Park que cette station dessert?",1)
		ANSWER("Est-ce que je peux aller à Via Rosso en métro?",2)
		ANSWER("Je veux aller dans l'Outzone. Est-ce que le métro va jusque là?",4)
		ANSWER("Est-ce que le métro va jusque dans la zone industrielle?",5)
		ANSWER("Ou puis-je trouver des informations sur NEXT?",6)
		ANSWER("Merci, je vais aller prendre le métro.",7)
		ANSWER("Ca ira, merci.",8)

	NODE(4)

		SAY("Soit vous n'avez plus toute votre tête, soit vous avez du courage à revendre. Oui, il existe une station Outzone qui donne sur Outzone 1. Pensez à prendre une arme avec vous.")

		ANSWER("Quels sont les secteurs de Pepper Park que cette station dessert?",1)
		ANSWER("Est-ce que je peux aller à Via Rosso en métro?",2)
		ANSWER("Est-ce que le métro passe par la Plaza?",3)
		ANSWER("Est-ce que le métro va jusque dans la zone industrielle?",5)
		ANSWER("Ou puis-je trouver des informations sur NEXT?",6)
		ANSWER("Merci, je vais aller prendre le métro.",7)
		ANSWER("Ca ira, merci.",8)

	NODE(5)

		SAY("Non, le métro ne va pas dans la zone industrielle. Vous pouvez vous y rendre en descendant à Pepper Park, si vous connaissez votre chemin.")

		ANSWER("Quels sont les secteurs de Pepper Park que cette station dessert?",1)
		ANSWER("Est-ce que je peux aller à Via Rosso en métro?",2)
		ANSWER("Est-ce que le métro passe par la Plaza?",3)
		ANSWER("Je veux aller dans l'Outzone. Est-ce que le métro va jusque là?",4)
		ANSWER("Ou puis-je trouver des informations sur NEXT?",6)
		ANSWER("Merci, je vais aller prendre le métro.",7)
		ANSWER("Ca ira, merci.",8)

	NODE(6)

		SAY("Il existe un site NEXT que vous pouvez consulter depuis n'importe quel terminal, ou bien vous pouvez vous rendre dans nos bureaux, Plaza 4. Ne pensez pas à trouver du travail là-bas : ça ne paie pas assez, et vous pouvez même leur dire que c'est moi qui vous ai dit ça. Je reste dans cette station à longueur de journée pour toucher une misère.")

		ANSWER("Quels sont les secteurs de Pepper Park que cette station dessert?",1)
		ANSWER("Est-ce que je peux aller à Via Rosso en métro?",2)
		ANSWER("Est-ce que le métro passe par la Plaza?",3)
		ANSWER("Je veux aller dans l'Outzone. Est-ce que le métro va jusque là?",4)
		ANSWER("Est-ce que le métro va jusque dans la zone industrielle?",5)
		ANSWER("Merci, je vais aller prendre le métro.",7)
		ANSWER("Ca ira, merci.",8)


	NODE(7)

		SAY("Oui, pas de problème. Faites attention aux portes automatiques, et si vous faites des inscriptions sur les banquettes vous aurez une amende, alors abstenez-vous.")
                ENDDIALOG()

	NODE(8)

		SAY("OK, à bientôt.")
		ENDDIALOG()

	
end