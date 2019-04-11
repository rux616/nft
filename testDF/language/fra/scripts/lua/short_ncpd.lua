function DIALOG()


	NODE(0)

		SAY("NCPD, qu'est-ce que vous voulez?")
		SAY("NCPD, comment puis-je vous aider?")
		SAY("Bonjour citoyen, bienvenue au NCPD.")

		ANSWER("Que pouvez-vous m'apprendre sur le NCPD?",2)
		ANSWER("Parlez-moi du NCPD.",2)

		ANSWER("Qui est le responsable ici?",3)
		ANSWER("Qui dirige cet endroit?",3)
		ANSWER("Qui contrôle le NCPD?",3)

		ANSWER("Euh... au revoir.",6)
		ANSWER("A bien y réfléchir... oubliez-moi.",6)

	NODE(1)

		SAY("Qu'est-ce que vous vouliez savoir d'autre?")

		ANSWER("Que pouvez-vous m'apprendre sur le NCPD?",2)
		ANSWER("Parlez-moi du NCPD.",2)

		ANSWER("Qui est le responsable ici?",3)
		ANSWER("Qui dirige cet endroit?",3)
		ANSWER("Qui contrôle le NCPD?",3)

		ANSWER("Euh... au revoir.",6)
		ANSWER("A bien y réfléchir... oubliez-moi.",6)
		ANSWER("J'en ai assez entendu.",6)

	NODE(2)

		SAY("C'est très simple. Le NCPD est la justice de Neocron. Tous les CopBots et S.T.O.R.M. Bots sont juges, jurés et bourreaux.")
		SAY("Nous sommes le bras armé de CityAdmin, le gouvernement de Neocron. Nos CopBots et S.T.O.R.M. Bots gardent la ville, et il existe une seule peine...")

		ANSWER("Vous pouvez me dire autre chose sur vos activités?",4)
		ANSWER("C'est tout ce qu'il y a à savoir?",4)
		ANSWER("Dites-m'en plus.",4)

		ANSWER("N'est-ce pas un peu extrême?",5)

		ANSWER("J'ai d'autres questions à vous poser.",1)
		ANSWER("Parlons d'autre chose.",1)
		ANSWER("Changeons de sujet.",1)

		ANSWER("C'est tout ce que je voulais savoir. Merci.",6)
		ANSWER("Ca me suffira. Au revoir.",6)
		ANSWER("Je pense en avoir fini ici.",6)

	NODE(3)

		SAY("En tant que branche de CityAdmin, nous répondons de nos actes devant le dirigeant du gouvernement de Neocron, Lioon Reza.")
		SAY("Lioon Reza, le grand dirigeant de notre ville, commande les actions de nos CopBots, ainsi que de nos forces spéciales, les S.T.O.R.M. Bots.")
		SAY("Lioon Reza, mais si vous désirez plus d'informations vous devriez vous adresser à un représentant de CityAdmin.")

		ANSWER("J'ai d'autres questions à vous poser.",1)
		ANSWER("Parlons d'autre chose.",1)
		ANSWER("Changeons de sujet.",1)

		ANSWER("Ah, c'est pas grave.",6)
		ANSWER("A bien y réfléchir, ça ira comme ça.",6)
		ANSWER("J'en ai assez entendu.",6)

	NODE(4)

		SAY("Nous ne pouvons pas gaspiller notre temps à chasser tous les petits criminels de la ville. Si vous voulez vous en charger, consulter un terminal!!")

		ANSWER("J'ai d'autres questions à vous poser.",1)
		ANSWER("Parlons d'autre chose.",1)
		ANSWER("Changeons de sujet.",1)

		ANSWER("Ah, c'est pas grave.",6)
		ANSWER("A bien y réfléchir, ça ira comme ça.",6)
		ANSWER("J'en ai assez entendu.",6)

	NODE(5)

		SAY("Vous contestez l'autorité du NCPD? ")

		ANSWER("Non, pas du tout, j'ai d'autres questions à vous poser.",1)
		ANSWER("Je m'excuse. Parlons d'autre chose.",1)
		ANSWER("Changeons de sujet.",1)

		ANSWER("Ah, c'est pas grave.",7)
		ANSWER("A bien y réfléchir, ça ira comme ça.",7)
		ANSWER("J'en ai assez entendu.",7)

	NODE(6)

		SAY("Merci pour vos questions.")
		SAY("Ravi d'avoir pu vous aider.")

		ENDDIALOG()

	NODE(7)

		SAY("Partez.")
		SAY("Partez. Maintenant.")

		ENDDIALOG()

end