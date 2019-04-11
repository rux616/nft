function DIALOG()


	NODE(0)

		SAY("NCPD, qu'est-ce que vous voulez?")
		SAY("NCPD, je peux vous aider?")

		ANSWER("Que pouvez-vous me dire sur le NCPD?",2)
		ANSWER("Parlez-moi du NCPD."2)

		ANSWER("Qui est le responsable du NCPD?",3)
		ANSWER("Qui dirige le NCPD?",3)

		ANSWER("Ah, tant pis. Au revoir.",6)
		ANSWER("Bon, je m'en vais.",6)

	NODE(1)

		SAY("Qu'est-ce que vous voulez savoir d'autre?")

		ANSWER("Que pouvez-vous me dire sur le NCPD?",2)
		ANSWER("Parlez-moi du NCPD."2)

		ANSWER("Qui est le responsable du NCPD?",3)
		ANSWER("Qui dirige le NCPD?",3)

		ANSWER("Ah, tant pis. Au revoir.",6)
		ANSWER("Bon, je m'en vais.",6)
		ANSWER("J'en ai assez entendu. Au revoir.",6)

	NODE(2)

		SAY("C'est très simple. Le NCPD administre la justice dans Neocron. Chaque CopBot et chaque S.T.O.R.M. Bot est juge, juré et bourreau.")
		SAY("Nous sommes le bras armé de CityAdmin, le gouvernement de Neocron. Nos CopBots et S.T.O.R.M. Bots protègent la ville, et il n'existe qu'une seule peine appliquée...")

		ANSWER("Pouvez-vous m'apprendre autre chose sur ce que vous faites?",4)
		ANSWER("C'est tout?",4)
		ANSWER("dites-m'en plus.",4)

		ANSWER("Ca n'est pas un peu excessif?",5)

		ANSWER("J'ai d'autres questions.",1)
		ANSWER("J'ai une autre question.",1)
		ANSWER("Changeons de sujet.",1)

		ANSWER("C'est tout ce que je voulais savoir, merci.",6)
		ANSWER("Ca me suffira. Au revoir.",6)
		ANSWER("Je vais devoir m'en aller.",6)

	NODE(3)

		SAY("Nous sommes une branche de CityAdmin, et nous répondons de nos actes que devant le dirigeant du gouvernement de Neocron, Lioon Reza.")
		SAY("Lioon Reza, le dirigeant ce notre cité, dirige les actions des CopBots et de nos forces spéciales, les S.T.O.R.M. Bots.")
		SAY("Lioon Reza, mais si vous désirez plus d'informations à son sujet, je vous suggère de poser vos questions à un employé de CityAdmin.")

		ANSWER("J'ai d'autres questions.",1)
		ANSWER("J'ai une autre question.",1)
		ANSWER("Changeons de sujet.",1)

		ANSWER("Ah, tant pis. Au revoir.",6)
		ANSWER("Bon, je m'en vais.",6)
		ANSWER("J'en ai assez entendu. Au revoir.",6)
	NODE(4)

		SAY("Nous n'avons pas de temps à perdre à chasser tous les petits criminels. Si cela vous intéresse, allez consulter un LawTerm!")

		ANSWER("J'ai d'autres questions.",1)
		ANSWER("J'ai une autre question.",1)
		ANSWER("Changeons de sujet.",1)

		ANSWER("Ah, tant pis. Au revoir.",6)
		ANSWER("Bon, je m'en vais.",6)
		ANSWER("J'en ai assez entendu. Au revoir.",6)

	NODE(5)

		SAY("Vous remettez en cause l'autorité du NCPD???")

		ANSWER("Non, pas du tout. En fait, j'ai d'autres questions.",1)
		ANSWER("Pardon. Parlons d'autre chose.",1)
		ANSWER("Changeons de sujet, d'accord?",1)

		ANSWER("Ah, tant pis. Au revoir.",6)
		ANSWER("Bon, je m'en vais.",6)
		ANSWER("J'en ai assez entendu. Au revoir.",6)

	NODE(6)

		SAY("Merci pour vos questions.")
		SAY("Ravi d'avoir pu vous aider.")

		ENDDIALOG()

	NODE(7)

		SAY("Sortez.")
		SAY("Partez. Maintenant.")
		ENDDIALOG()

end