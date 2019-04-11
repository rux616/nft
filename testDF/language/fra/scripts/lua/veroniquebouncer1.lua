-- Commentary for Doorman at Club Veronique

function DIALOG()	

	NODE(0)						-- NODE 0 is always the node with text for the greeting
		SAY("Bonsoir monsieur. Comment allez-vous ce soir?")
		SAY("Approchez, monsieur. Comment allez-vous ce soir?")

		ANSWER("Qu'est-ce que c'est ici?",1)
		
		ANSWER("Bien, merci. J'aimerais entrer, si c'est possible.",3)

		ANSWER("En fait, je pense que je ferais mieux de partir.",4)

	NODE(1)
		SAY("Monsieur, vous avez devant vous le c�l�bre Club V�ronique. Madame V�ronique poss�de le meilleur club pour messieurs de tout Neocron. Tr�s franchement, je suis �tonn� que vous me posiez la question.")
		SAY("Mais c'est le Club V�ronique, �videmment! Ce n'est rien que le plus c�l�bre club de Neocron!")

		ANSWER("Qui poss�de cet endroit?",2)

		ANSWER("Qu'est-ce que c'est, comme genre de club?",5)

		ANSWER("Int�ressant. Je peux entrer?",3)

		ANSWER("Hmm. Je reviendrai peut-�tre plus tard.",4)

	NODE(2)
		SAY("Le Club V�ronique est poss�d� par madame V�ronique Duchamp. C'est une femme sage et respect�e, qui d�sire que seuls les messieurs les plus recommandables et les femmes les plus raffin�es entrent dans son club.")

		ANSWER("Qu'est-ce que c'est, cet endroit?",1)

		ANSWER("Quel genre de club est-ce que c'est?",5)

		ANSWER("J'aimerais jeter un oeil � l'int�rieur, si possible.",3)

		ANSWER("Je repasserai peut-�tre demain.",4)

	NODE(3)
		SAY("Bien s�r, monsieur. Donnez-vous la peine d'entrer.")
		
		ENDDIALOG()

	NODE(4)
		SAY("Comme vous voulez, monsieur.")

		ENDDIALOG()

	NODE(5)
		SAY("Le club V�ronique est un club sophistiqu� de premi�re classe pour nos meilleurs citoyens. Nous proposons d'excellents cocktails en compagnie des femmes les plus belles de la ville, le tout dans une excellente ambiance.")
		SAY("Ahhh, oui. Eh bien, le club V�ronique est le genre d'endroit o� ceux d'entre nous qui ont les go�ts les plus raffin�s et d�licats viennent se d�tendre apr�s une dure journ�e de travail. Nous faisons tout ce qui est en notre pouvoir pour nous assurer que nos clients soient d�tendus et heureux en partant.)

		ANSWER("Qu'est-ce que c'est, ici?",1)

		ANSWER("Qui poss�de cet endroit?",2)

		ANSWER("Alors si je rentre, je pourrai me faire une pute, c'est �a?",6)

		ANSWER("Ca me pla�t. Je peux entrer?",3)

		ANSWER("Hmm. Peut-�tre une autre fois.",4)

	NODE(6)
		SAY("Monsieur, si vous cherchez des 'putes', je vous sugg�re d'essayer le Pepper Club. Le Club V�ronique ne s'adresse pas � ce genre de public. J'appr�cierais que vous partiez, maintenant.")
		SAY("J'ai peur que vous vous m�preniez, monsieur. Le Club V�ronique ne propose que les distractions les plus raffin�es. Si vous cherchez du n�andertalien, je vous sugg�re le Pepper Club.")

		ANSWER("Qu'est-ce que c'est, ici?",1)

		ANSWER("Qui poss�de cet endroit?",2)

		ANSWER("Je m'en fiche, j'ai besoin ni de vous, ni de cet endroit.",4)
		ANSWER("Hmm. Je reviendrai peut-�tre plus tard.",4)

end