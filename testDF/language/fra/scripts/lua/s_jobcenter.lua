function DIALOG()

	NODE(0)

		SAY("Bienvenue au JobCenter. J'esp�re que vous y trouverez ce que vous recherchez.")

		ANSWER("Bonjour, je cherche un job.",1)
		ANSWER("Bonjour, je cherche un job.",1)
		ANSWER("Bonjour, je cherche un job.",1)
			ANSWER("Bonjour, j'ai du travail � proposer.",1)
			ANSWER("J'aimerais proposer du travail � quelqu'un.",1)
		ANSWER("OK, merci. J'en sais assez maintenant.",4)
		ANSWER("Ca ira, j'en ai assez entendu, merci.",4)
		ANSWER("Bien, a plus tard, et merci pour votre aide.",4)
	
	

	NODE(1)

		SAY("Utilisez CityCom si vous cherchez du travail ou bien si vous d�sirez proposer un emploi � quelqu'un.")
		SAY("Il serait sans doute pr�f�rable de consulter CityCom pour toute information � ce sujet.")

		ANSWER("Qu'est-ce que CityCom, exactement?",2)
ANSWER("Parlez-moi de CityCom, s'il-vous-pla�t.",2)
		ANSWER("A quoi peut me servir CityCom?",2)
			ANSWER("OK, merci. J'en sais assez maintenant.",4)
			ANSWER("Ca ira, j'en ai assez entendu, merci.",4)
			ANSWER("Bien, a plus tard, et merci pour votre aide.",4)

	

	NODE(2)

		SAY("CityCom vous offre la possibilit� de consulter les diff�rentes statistiques d'emploi.")

		ANSWER("Et o� est-ce que je peux trouver un CityCom?",3)
		ANSWER("Est-ce que je pourrai trouver un CityCom dans un autre endroit que le JobCenter?",3)
			ANSWER("OK, merci. J'en sais assez maintenant.",4)
			ANSWER("Ca ira, j'en ai assez entendu, merci.",4)
			ANSWER("Bien, a plus tard, et merci pour votre aide.",4)
	
	

	NODE(3)

		SAY("Evidemment, le JobCenter n'est pas le seul endroit d'o� vous pouvez acc�der � CityCom. Vous trouverez des terminaux dans toute la ville, vous donnant acc�s � d'excellents services et informations.")

		ANSWER("OK, merci. J'en sais assez maintenant.",4)
		ANSWER("Ca ira, j'en ai assez entendu, merci.",4)
		ANSWER("Bien, a plus tard, et merci pour votre aide.",4)


	NODE(4)

		SAY("J'esp�re avoir r�pondu � vos questions.")
		ENDDIALOG()

	
end