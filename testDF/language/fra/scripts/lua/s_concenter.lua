function DIALOG()

	NODE(0)

		SAY("Bienvenue au ConCenter de Neocron.")

		ANSWER("A quoi sert le ConCenter?",1)
		ANSWER("Parlez-moi du ConCenter.",1)
		ANSWER("Que pouvez-vous m'apprendre sur le ConCenter?",1)
			ANSWER("OK, merci. J'en sais assez maintenant.",3)
			ANSWER("Ca ira, j'en ai assez entendu, merci.",3)
			ANSWER("Bien, a plus tard, et merci pour votre aide.",3)
	
	

	NODE(1)

		SAY("Le ConCenter est contrôlé par le gouvernement, en conséquence l'utilisation de ses salles de conférence est gratuite pour tous les habitants.")

		ANSWER("A quoi servent ces salles de conférence?",2)
			ANSWER("OK, merci. J'en sais assez maintenant.",3)
			ANSWER("Ca ira, j'en ai assez entendu, merci.",3)
			ANSWER("Bien, a plus tard, et merci pour votre aide.",3)

	

	NODE(2)

		SAY("Dans les salles de conférence, vous pouvez discuter à l'abri des oreilles indiscrètes. Nous faisons le nécessaire pour que vous ne soyez pas dérangé tant que vous êtes ici.")

			ANSWER("OK, merci. J'en sais assez maintenant.",3)
			ANSWER("Ca ira, j'en ai assez entendu, merci.",3)
			ANSWER("Bien, a plus tard, et merci pour votre aide.",3)


	
	
	NODE(3)

		SAY("A plus tard.")
		ENDDIALOG()

	

end