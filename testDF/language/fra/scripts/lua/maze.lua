function DIALOG()

	NODE(0)

		SAY("Bienvenue dans le labyrinthe. Vous voulez tester votre chance?")
                ANSWER("Qu'est-ce qu'il y a là-dedans?",1)
                ANSWER("Qui a créé ce labyrinthe?",2)
                ANSWER("Pourquoi un labyrinthe ici?",3)
                ANSWER("Qu'est-ce que je peux prendre avec moi?",4)
                ANSWER("Bien sûr, allons-y.",5)
                ANSWER("Non merci. Peut-être une autre fois.",6)

	NODE(1)

		SAY("Toutes sortes de choses. Vous allez devoir le découvrir par vous-même. J'en ai vu ressortir de là avec de belles choses dans les mains, d'autres revenir couverts de blessures sanguinolentes. Et évidemment, il y a ceux qui ne reviennent jamais. Vous voulez tenter?")
                ANSWER("Qui a créé ce labyrinthe?",2)
                ANSWER("Pourquoi un labyrinthe ici?",3)
                ANSWER("Qu'est-ce que je peux prendre avec moi?",4)
                ANSWER("Bien sûr, allons-y.",5)
                ANSWER("Non merci. Peut-être une autre fois.",6)

        NODE(2)

                SAY("Certains disent que c'est là l'oeuvre d'un fou. D'autres disent que c'est un chef d'entreprise qui l'a créé. Personne ne sait vraiment. Ca fait une éternité que c'est là, et il y a beaucoup de rumeurs à ce sujet. Peut-être que vous trouverez la réponse à l'intérieur, ou pas. Alors, vous entrez?")
                ANSWER("Qu'est-ce qu'il y a là-dedans?",1)
                ANSWER("Pourquoi un labyrinthe ici?",3)
                ANSWER("Qu'est-ce que je peux prendre avec moi?",4)
                ANSWER("Bien sûr, allons-y.",5)
                ANSWER("Non merci. Peut-être une autre fois.",6)

        NODE(3)

                SAY("On parle d'un entrepôt, ou encore d'un asile de fous. Certains disent que cet endroit servait pour une sorte de rituel d'initiation. Maintenant, les gens viennent pour l'adrénaline. Et vous? Vous avez assez de courage pour entrer là-dedans?")
                ANSWER("Qu'est-ce qu'il y a là-dedans?",1)
                ANSWER("Qui a créé ce labyrinthe?",2)
                ANSWER("Qu'est-ce que je peux prendre avec moi?",4)
                ANSWER("Bien sûr, allons-y.",5)
                ANSWER("Non merci. Peut-être une autre fois.",6)

        NODE(4)

                SAY("Prenez tout ce que vous voulez, et gardez tout ce que vous trouvez. Enfin, si vous en sortez vivant. Alors, qu'est-ce que vous en dite?")
                ANSWER("Qu'est-ce qu'il y a là-dedans?",1)
                ANSWER("Qui a créé ce labyrinthe?",2)
                ANSWER("Pourquoi un labyrinthe ici?",3)
                ANSWER("Bien sûr, allons-y.",5)
                ANSWER("Non merci. Peut-être une autre fois.",6)

        NODE(5)

                SAY("Vous en avez, du courage. Mais souvenez-vous : ça n'est pas la peine d'appeler à l'aide, personne ne vous entendra de toute façon. Allez, bonne chance.")
                ENDDIALOG()

        NODE(6)

                SAY("Comme vous voulez. Ca n'est pas un endroit pour les faibles. Revenez quand vous vous sentirez prêt.")
                ENDDIALOG()


end