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

		SAY("Le ConCenter est contr�l� par le gouvernement, en cons�quence l'utilisation de ses salles de conf�rence est gratuite pour tous les habitants.")

		ANSWER("A quoi servent ces salles de conf�rence?",2)
			ANSWER("OK, merci. J'en sais assez maintenant.",3)
			ANSWER("Ca ira, j'en ai assez entendu, merci.",3)
			ANSWER("Bien, a plus tard, et merci pour votre aide.",3)

	

	NODE(2)

		SAY("Dans les salles de conf�rence, vous pouvez discuter � l'abri des oreilles indiscr�tes. Nous faisons le n�cessaire pour que vous ne soyez pas d�rang� tant que vous �tes ici.")

			ANSWER("OK, merci. J'en sais assez maintenant.",3)
			ANSWER("Ca ira, j'en ai assez entendu, merci.",3)
			ANSWER("Bien, a plus tard, et merci pour votre aide.",3)


	
	
	NODE(3)

		SAY("A plus tard.")
		ENDDIALOG()

	

end