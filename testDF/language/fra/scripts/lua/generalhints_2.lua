--general hints for beginners		

function DIALOG()

	NODE(0)

		SAY("Vous avez l'air d'aimer les aventures. Mais vous avez aussi l'air d'avoir besoin d'expérience. Je connais des endroits où vous pourrez gagner de l'expérience, et plus encore. Si vous voulez prendre quelques risques, vous pourrez devenir meilleur, et en même temps gagner quelques objets. Ca vous intéresse?")
                ANSWER("Quelles compétences?",1)
                ANSWER("Quels genres de risques?",2)
                ANSWER("Quelles récompenses?",3)
                ANSWER("Vous avez capté mon attention. Dites-m'en plus.",4)
                ANSWER("Merci pour l'information. Je reviendrai.",5)
                ANSWER("Non merci, ça ne m'intéresse pas.",6)

	NODE(1)

		SAY("Vos compétences de combat. Vous savez que vos chances de survie ici dépendent directement de vos compétences de combat, n'est-ce pas? Ca vous intéresse toujours?")
                ANSWER("Quels genres de risques?",2)
                ANSWER("Quelles récompenses?",3)
                ANSWER("Vous avez capté mon attention. Dites-m'en plus.",4)
                ANSWER("Merci pour l'information. Je reviendrai.",5)
                ANSWER("Non merci, ça ne m'intéresse pas.",6)

        NODE(2)

                SAY("Des risques mortels. Il se peut que vous perdiez tout ce que vous transportez. Il y a des récompenses appropriées lorsqu'on prend ce genre de risques. Si vous réussissez à sortir avec, évidemment.")
                ANSWER("Quelles compétences?",1)
             	ANSWER("Quelles récompenses?",3)
                ANSWER("Vous avez capté mon attention. Dites-m'en plus.",4)
                ANSWER("Merci pour l'information. Je reviendrai.",5)
                ANSWER("Non merci, ça ne m'intéresse pas.",6)

        NODE(3)

                SAY("A part trouver des connaissances dont vous aurez besoin pour survivre en ces temps troublés, vous trouverez des armes, des armures et d'autres objets que vous pourrez utiliser, ou bien revendre pour faire un peu de profit.")
                ANSWER("Quelles compétences?",1)
                ANSWER("Quels genres de risques?",2)
                ANSWER("Vous avez capté mon attention. Dites-m'en plus.",4)
                ANSWER("Merci pour l'information. Je reviendrai.",5)
                ANSWER("Non merci, ça ne m'intéresse pas.",6)

        NODE(4)

                SAY("Je sais que vous vous en sortirez. Dans les égouts, qui se trouvent partout dans la ville, vous trouverez des créatures qui seront parfaites pour développer vos compétences de combat. Allez dans n'importe quel égout, c'est tout. Les entrées sont de grandes trappes métalliques. Mais faites attention, vous pouvez rencontrer plus fort que vous...")
                ANSWER("Quelles compétences?",1)
                ANSWER("Quels genres de risques?",2)
                ANSWER("Quelles récompenses?",3)
                ANSWER("Merci pour l'information. Je reviendrai.",5)
                ANSWER("Non merci, ça ne m'intéresse pas.",6)

        NODE(5)

                SAY("Comme vous voulez. Bonne chance à vous.")
                ENDDIALOG()

        NODE(6)

                SAY("Comme vous voulez. A bientôt.")
                ENDDIALOG()


end