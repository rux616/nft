--General play hints for beginners

function DIALOG()

	NODE(0)

		SAY("Mais regardez-vous! C'est incroyable, la crasse qu'on ramasse dans certains endroits de la ville. Ecoutez, si vous voulez vous en sortir, il va falloir agir. Si vous voulez �tre plus rapide, plus fort, plus intelligent, je vous sugg�re d'aller dans un endroit sp�cial. Mais pour y aller, il va falloir prendre des risques. Combattre les cr�atures qui rampent � vos pieds. Apprendre � combattre, et surtout � gagner.")
                ANSWER("C'est � moi que vous dites �a?",1)
                ANSWER("Alors qu'est-ce que je fois faire?",2)
                ANSWER("Comment est-ce que je peux gagner en intelligence?",3)
                ANSWER("Tu t'es tromp� de personne, l'ami. Je n'ai pas besoin de tes conseils.",4)
                ANSWER("Merci du conseil.",5)
                ANSWER("Hors de mon chemin, �a ne m'int�resse pas.",6)

	NODE(1)

		SAY("Oui, � vous. Visiblement, vous avez besoin de vous endurcir, sinon vous ne seriez pas l�. Est-ce que �a vous int�resse d'en savoir plus, ou bien est-ce que je perds mon temps � vous parler?")
                ANSWER("Alors qu'est-ce que je dois faire?",2)
                ANSWER("Comment est-ce que je peux gagner en intelligence?",3)
                ANSWER("Tu t'es tromp� de personne, l'ami. Je n'ai pas besoin de tes conseils.",4)
                ANSWER("Merci du conseil.",5)
                ANSWER("Hors de mon chemin, �a ne m'int�resse pas.",6)

        NODE(2)

                SAY("Achetez une arme, ou bien utilisez juste vos poings. Allez dans les �gouts et chassez les cr�atures que vous y trouvez. Il se peut m�me que vous y trouviez des choses int�ressantes. Vous n'avez qu'� entrer dans la premi�re bouche d'�gout que vous trouverez, et vous ferez votre premier pas vers la comp�tence.")
                ANSWER("C'est � moi que vous dites �a?",1)
                ANSWER("Comment est-ce que je peux gagner en intelligence?",3)
                ANSWER("Tu t'es tromp� de personne, l'ami. Je n'ai pas besoin de tes conseils.",4)
                ANSWER("Merci du conseil.",5)
                ANSWER("Hors de mon chemin, �a ne m'int�resse pas.",6)

        NODE(3)

                SAY("Les hackers sont des gens tr�s intelligents. Si c'est ce que vous aimez faire, alors emmenez une console avec vous dans les �gouts, et tentez d'ouvrir toutes les serrures que vous trouverez. Je connais beaucoup de bons hackers qui ont commenc� comme �a, mais ne racontez pas � tout le monde que je vous ai dit �a. Allez dans les �gouts, et trouvez ces serrures. Vous aurez de belles surprises de temps en temps, vous verrez.")
                ANSWER("C'est � moi que vous dites �a?",1)
                ANSWER("Alors qu'est-ce que je fois faire?",2)
                ANSWER("Tu t'es tromp� de personne, l'ami. Je n'ai pas besoin de tes conseils.",4)
                ANSWER("Merci du conseil.",5)
                ANSWER("Hors de mon chemin, �a ne m'int�resse pas.",6)

        NODE(4)

                SAY("OK, je me trompe peut-�tre. Mais souvenez-vous, peu importe si vous savez vous y prendre, vous trouverez toujours quelqu'un de plus fort que vous. Peu importe comment vous vous y prenez.")
                ANSWER("C'est � moi que vous dites �a?",1)
                ANSWER("Alors qu'est-ce que je fois faire?",2)
                ANSWER("Comment est-ce que je peux gagner en intelligence?",3)
                ANSWER("Merci du conseil.",5)
                ANSWER("Hors de mon chemin, �a ne m'int�resse pas.",6)

        NODE(5)

                SAY("Quand vous voulez.")
                ENDDIALOG()

        NODE(6)

                SAY("Vous finirez bien par revenir.")
                ENDDIALOG()


end