--general hints for beginners		

function DIALOG()

	NODE(0)

		SAY("Vous avez l'air d'aimer les aventures. Mais vous avez aussi l'air d'avoir besoin d'exp�rience. Je connais des endroits o� vous pourrez gagner de l'exp�rience, et plus encore. Si vous voulez prendre quelques risques, vous pourrez devenir meilleur, et en m�me temps gagner quelques objets. Ca vous int�resse?")
                ANSWER("Quelles comp�tences?",1)
                ANSWER("Quels genres de risques?",2)
                ANSWER("Quelles r�compenses?",3)
                ANSWER("Vous avez capt� mon attention. Dites-m'en plus.",4)
                ANSWER("Merci pour l'information. Je reviendrai.",5)
                ANSWER("Non merci, �a ne m'int�resse pas.",6)

	NODE(1)

		SAY("Vos comp�tences de combat. Vous savez que vos chances de survie ici d�pendent directement de vos comp�tences de combat, n'est-ce pas? Ca vous int�resse toujours?")
                ANSWER("Quels genres de risques?",2)
                ANSWER("Quelles r�compenses?",3)
                ANSWER("Vous avez capt� mon attention. Dites-m'en plus.",4)
                ANSWER("Merci pour l'information. Je reviendrai.",5)
                ANSWER("Non merci, �a ne m'int�resse pas.",6)

        NODE(2)

                SAY("Des risques mortels. Il se peut que vous perdiez tout ce que vous transportez. Il y a des r�compenses appropri�es lorsqu'on prend ce genre de risques. Si vous r�ussissez � sortir avec, �videmment.")
                ANSWER("Quelles comp�tences?",1)
             	ANSWER("Quelles r�compenses?",3)
                ANSWER("Vous avez capt� mon attention. Dites-m'en plus.",4)
                ANSWER("Merci pour l'information. Je reviendrai.",5)
                ANSWER("Non merci, �a ne m'int�resse pas.",6)

        NODE(3)

                SAY("A part trouver des connaissances dont vous aurez besoin pour survivre en ces temps troubl�s, vous trouverez des armes, des armures et d'autres objets que vous pourrez utiliser, ou bien revendre pour faire un peu de profit.")
                ANSWER("Quelles comp�tences?",1)
                ANSWER("Quels genres de risques?",2)
                ANSWER("Vous avez capt� mon attention. Dites-m'en plus.",4)
                ANSWER("Merci pour l'information. Je reviendrai.",5)
                ANSWER("Non merci, �a ne m'int�resse pas.",6)

        NODE(4)

                SAY("Je sais que vous vous en sortirez. Dans les �gouts, qui se trouvent partout dans la ville, vous trouverez des cr�atures qui seront parfaites pour d�velopper vos comp�tences de combat. Allez dans n'importe quel �gout, c'est tout. Les entr�es sont de grandes trappes m�talliques. Mais faites attention, vous pouvez rencontrer plus fort que vous...")
                ANSWER("Quelles comp�tences?",1)
                ANSWER("Quels genres de risques?",2)
                ANSWER("Quelles r�compenses?",3)
                ANSWER("Merci pour l'information. Je reviendrai.",5)
                ANSWER("Non merci, �a ne m'int�resse pas.",6)

        NODE(5)

                SAY("Comme vous voulez. Bonne chance � vous.")
                ENDDIALOG()

        NODE(6)

                SAY("Comme vous voulez. A bient�t.")
                ENDDIALOG()


end