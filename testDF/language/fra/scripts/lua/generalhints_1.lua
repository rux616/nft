--General play hints for beginners

function DIALOG()

	NODE(0)

		SAY("Mais regardez-vous! C'est incroyable, la crasse qu'on ramasse dans certains endroits de la ville. Ecoutez, si vous voulez vous en sortir, il va falloir agir. Si vous voulez être plus rapide, plus fort, plus intelligent, je vous suggère d'aller dans un endroit spécial. Mais pour y aller, il va falloir prendre des risques. Combattre les créatures qui rampent à vos pieds. Apprendre à combattre, et surtout à gagner.")
                ANSWER("C'est à moi que vous dites ça?",1)
                ANSWER("Alors qu'est-ce que je fois faire?",2)
                ANSWER("Comment est-ce que je peux gagner en intelligence?",3)
                ANSWER("Tu t'es trompé de personne, l'ami. Je n'ai pas besoin de tes conseils.",4)
                ANSWER("Merci du conseil.",5)
                ANSWER("Hors de mon chemin, ça ne m'intéresse pas.",6)

	NODE(1)

		SAY("Oui, à vous. Visiblement, vous avez besoin de vous endurcir, sinon vous ne seriez pas là. Est-ce que ça vous intéresse d'en savoir plus, ou bien est-ce que je perds mon temps à vous parler?")
                ANSWER("Alors qu'est-ce que je dois faire?",2)
                ANSWER("Comment est-ce que je peux gagner en intelligence?",3)
                ANSWER("Tu t'es trompé de personne, l'ami. Je n'ai pas besoin de tes conseils.",4)
                ANSWER("Merci du conseil.",5)
                ANSWER("Hors de mon chemin, ça ne m'intéresse pas.",6)

        NODE(2)

                SAY("Achetez une arme, ou bien utilisez juste vos poings. Allez dans les égouts et chassez les créatures que vous y trouvez. Il se peut même que vous y trouviez des choses intéressantes. Vous n'avez qu'à entrer dans la première bouche d'égout que vous trouverez, et vous ferez votre premier pas vers la compétence.")
                ANSWER("C'est à moi que vous dites ça?",1)
                ANSWER("Comment est-ce que je peux gagner en intelligence?",3)
                ANSWER("Tu t'es trompé de personne, l'ami. Je n'ai pas besoin de tes conseils.",4)
                ANSWER("Merci du conseil.",5)
                ANSWER("Hors de mon chemin, ça ne m'intéresse pas.",6)

        NODE(3)

                SAY("Les hackers sont des gens très intelligents. Si c'est ce que vous aimez faire, alors emmenez une console avec vous dans les égouts, et tentez d'ouvrir toutes les serrures que vous trouverez. Je connais beaucoup de bons hackers qui ont commencé comme ça, mais ne racontez pas à tout le monde que je vous ai dit ça. Allez dans les égouts, et trouvez ces serrures. Vous aurez de belles surprises de temps en temps, vous verrez.")
                ANSWER("C'est à moi que vous dites ça?",1)
                ANSWER("Alors qu'est-ce que je fois faire?",2)
                ANSWER("Tu t'es trompé de personne, l'ami. Je n'ai pas besoin de tes conseils.",4)
                ANSWER("Merci du conseil.",5)
                ANSWER("Hors de mon chemin, ça ne m'intéresse pas.",6)

        NODE(4)

                SAY("OK, je me trompe peut-être. Mais souvenez-vous, peu importe si vous savez vous y prendre, vous trouverez toujours quelqu'un de plus fort que vous. Peu importe comment vous vous y prenez.")
                ANSWER("C'est à moi que vous dites ça?",1)
                ANSWER("Alors qu'est-ce que je fois faire?",2)
                ANSWER("Comment est-ce que je peux gagner en intelligence?",3)
                ANSWER("Merci du conseil.",5)
                ANSWER("Hors de mon chemin, ça ne m'intéresse pas.",6)

        NODE(5)

                SAY("Quand vous voulez.")
                ENDDIALOG()

        NODE(6)

                SAY("Vous finirez bien par revenir.")
                ENDDIALOG()


end