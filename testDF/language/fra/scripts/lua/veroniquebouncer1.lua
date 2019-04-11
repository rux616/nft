-- Commentary for Doorman at Club Veronique

function DIALOG()	

	NODE(0)						-- NODE 0 is always the node with text for the greeting
		SAY("Bonsoir monsieur. Comment allez-vous ce soir?")
		SAY("Approchez, monsieur. Comment allez-vous ce soir?")

		ANSWER("Qu'est-ce que c'est ici?",1)
		
		ANSWER("Bien, merci. J'aimerais entrer, si c'est possible.",3)

		ANSWER("En fait, je pense que je ferais mieux de partir.",4)

	NODE(1)
		SAY("Monsieur, vous avez devant vous le célèbre Club Véronique. Madame Véronique possède le meilleur club pour messieurs de tout Neocron. Très franchement, je suis étonné que vous me posiez la question.")
		SAY("Mais c'est le Club Véronique, évidemment! Ce n'est rien que le plus célèbre club de Neocron!")

		ANSWER("Qui possède cet endroit?",2)

		ANSWER("Qu'est-ce que c'est, comme genre de club?",5)

		ANSWER("Intéressant. Je peux entrer?",3)

		ANSWER("Hmm. Je reviendrai peut-être plus tard.",4)

	NODE(2)
		SAY("Le Club Véronique est possédé par madame Véronique Duchamp. C'est une femme sage et respectée, qui désire que seuls les messieurs les plus recommandables et les femmes les plus raffinées entrent dans son club.")

		ANSWER("Qu'est-ce que c'est, cet endroit?",1)

		ANSWER("Quel genre de club est-ce que c'est?",5)

		ANSWER("J'aimerais jeter un oeil à l'intérieur, si possible.",3)

		ANSWER("Je repasserai peut-être demain.",4)

	NODE(3)
		SAY("Bien sûr, monsieur. Donnez-vous la peine d'entrer.")
		
		ENDDIALOG()

	NODE(4)
		SAY("Comme vous voulez, monsieur.")

		ENDDIALOG()

	NODE(5)
		SAY("Le club Véronique est un club sophistiqué de première classe pour nos meilleurs citoyens. Nous proposons d'excellents cocktails en compagnie des femmes les plus belles de la ville, le tout dans une excellente ambiance.")
		SAY("Ahhh, oui. Eh bien, le club Véronique est le genre d'endroit où ceux d'entre nous qui ont les goûts les plus raffinés et délicats viennent se détendre après une dure journée de travail. Nous faisons tout ce qui est en notre pouvoir pour nous assurer que nos clients soient détendus et heureux en partant.)

		ANSWER("Qu'est-ce que c'est, ici?",1)

		ANSWER("Qui possède cet endroit?",2)

		ANSWER("Alors si je rentre, je pourrai me faire une pute, c'est ça?",6)

		ANSWER("Ca me plaît. Je peux entrer?",3)

		ANSWER("Hmm. Peut-être une autre fois.",4)

	NODE(6)
		SAY("Monsieur, si vous cherchez des 'putes', je vous suggère d'essayer le Pepper Club. Le Club Véronique ne s'adresse pas à ce genre de public. J'apprécierais que vous partiez, maintenant.")
		SAY("J'ai peur que vous vous mépreniez, monsieur. Le Club Véronique ne propose que les distractions les plus raffinées. Si vous cherchez du néandertalien, je vous suggère le Pepper Club.")

		ANSWER("Qu'est-ce que c'est, ici?",1)

		ANSWER("Qui possède cet endroit?",2)

		ANSWER("Je m'en fiche, j'ai besoin ni de vous, ni de cet endroit.",4)
		ANSWER("Hmm. Je reviendrai peut-être plus tard.",4)

end