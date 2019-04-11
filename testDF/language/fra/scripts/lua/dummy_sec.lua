function DIALOG()


	NODE(0)
		SAY("Circulez! Je monte la garde!")
		SAY("Vous ne voyez pas que je travaille?")
		SAY("Partez tout de suite! Je monte la garde!!")

		ANSWER("Mais.... Mais...",2)
		ANSWER("Est-ce que vous pouvez me dire si...",2)
		ANSWER("Est-ce que vous savez si...",2)
		ANSWER("Ne vous énervez pas, je voulais seulement vous demander...",2)
		ANSWER("Est-ce que vous pouvez me dire où...",2)

		ANSWER("La ferme!",3)
		ANSWER("Vous croyez que ça m'intéresse?",3)
		ANSWER("Vous croyez que parce que vous avez une arme vous comptez dans ce monde?",3)

	NODE(2)
		SAY("Vous ne m'avez pas entendu?")
		SAY("Soit vous n'entendez rien, soit vous êtes complètement stupide!")
		SAY("Vous êtes sourd, ou simplement stupide?")
		SAY("Allez plutôt vous trouver des amis à embêter.")
		
		ENDDIALOG()

	NODE(3)
		SAY("Mais va mourir, pauvre con!!")
		SAY("Oh, toi... VA CHIER!!")
		SAY("Fous-moi la paix, branleur!")
		ENDDIALOG()
end