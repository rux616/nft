function DIALOG()

	NODE(0)

		SAY("Bienvenue dans le labyrinthe. Vous voulez tester votre chance?")
                ANSWER("Qu'est-ce qu'il y a l�-dedans?",1)
                ANSWER("Qui a cr�� ce labyrinthe?",2)
                ANSWER("Pourquoi un labyrinthe ici?",3)
                ANSWER("Qu'est-ce que je peux prendre avec moi?",4)
                ANSWER("Bien s�r, allons-y.",5)
                ANSWER("Non merci. Peut-�tre une autre fois.",6)

	NODE(1)

		SAY("Toutes sortes de choses. Vous allez devoir le d�couvrir par vous-m�me. J'en ai vu ressortir de l� avec de belles choses dans les mains, d'autres revenir couverts de blessures sanguinolentes. Et �videmment, il y a ceux qui ne reviennent jamais. Vous voulez tenter?")
                ANSWER("Qui a cr�� ce labyrinthe?",2)
                ANSWER("Pourquoi un labyrinthe ici?",3)
                ANSWER("Qu'est-ce que je peux prendre avec moi?",4)
                ANSWER("Bien s�r, allons-y.",5)
                ANSWER("Non merci. Peut-�tre une autre fois.",6)

        NODE(2)

                SAY("Certains disent que c'est l� l'oeuvre d'un fou. D'autres disent que c'est un chef d'entreprise qui l'a cr��. Personne ne sait vraiment. Ca fait une �ternit� que c'est l�, et il y a beaucoup de rumeurs � ce sujet. Peut-�tre que vous trouverez la r�ponse � l'int�rieur, ou pas. Alors, vous entrez?")
                ANSWER("Qu'est-ce qu'il y a l�-dedans?",1)
                ANSWER("Pourquoi un labyrinthe ici?",3)
                ANSWER("Qu'est-ce que je peux prendre avec moi?",4)
                ANSWER("Bien s�r, allons-y.",5)
                ANSWER("Non merci. Peut-�tre une autre fois.",6)

        NODE(3)

                SAY("On parle d'un entrep�t, ou encore d'un asile de fous. Certains disent que cet endroit servait pour une sorte de rituel d'initiation. Maintenant, les gens viennent pour l'adr�naline. Et vous? Vous avez assez de courage pour entrer l�-dedans?")
                ANSWER("Qu'est-ce qu'il y a l�-dedans?",1)
                ANSWER("Qui a cr�� ce labyrinthe?",2)
                ANSWER("Qu'est-ce que je peux prendre avec moi?",4)
                ANSWER("Bien s�r, allons-y.",5)
                ANSWER("Non merci. Peut-�tre une autre fois.",6)

        NODE(4)

                SAY("Prenez tout ce que vous voulez, et gardez tout ce que vous trouvez. Enfin, si vous en sortez vivant. Alors, qu'est-ce que vous en dite?")
                ANSWER("Qu'est-ce qu'il y a l�-dedans?",1)
                ANSWER("Qui a cr�� ce labyrinthe?",2)
                ANSWER("Pourquoi un labyrinthe ici?",3)
                ANSWER("Bien s�r, allons-y.",5)
                ANSWER("Non merci. Peut-�tre une autre fois.",6)

        NODE(5)

                SAY("Vous en avez, du courage. Mais souvenez-vous : �a n'est pas la peine d'appeler � l'aide, personne ne vous entendra de toute fa�on. Allez, bonne chance.")
                ENDDIALOG()

        NODE(6)

                SAY("Comme vous voulez. Ca n'est pas un endroit pour les faibles. Revenez quand vous vous sentirez pr�t.")
                ENDDIALOG()


end