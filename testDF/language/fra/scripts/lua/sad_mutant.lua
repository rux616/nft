function DIALOG()

	NODE(0)
		SAY("Et voilà, encore quelqu'un... mais pourquoi vous nous embêtez...")
		SAY("Laissez-moi souffrir en paix.")
		SAY("Pourquoi les gens s'embêtent-ils à venir dans des endroits comme celui-là?")
		SAY("je vous en prie... Laissez-moi seul...")
		

		ANSWER("J'espérais trouver des réponses à certaines questions.",1)
		ANSWER("Vous pourriez répondre à quelques questions?",1)
		ANSWER("Tout ce que je veux, c'est les crédits que vont me rapporter ton cadavre.",2)
		ANSWER("Je viens ici pour gagner de l'argent en tuant des mutants.",2)
		ANSWER("Pardon, je ne voulais pas vous déranger.",3)
		ANSWER("Bien, je m'en vais.",3)

	NODE(1)

		SAY("Bien, demandez-moi ce que vous voulez... je m'en fiche...")
		SAY("Je m'en fiche... mais dépêchez-vous...")
		
		ANSWER("Comment êtes-vous devenu comme ça?",4)
		ANSWER("Qu'est-ce qui vous est arrivé?",4)
		ANSWER("Où les mutants vivent-ils?",5)
		
	NODE(2)

		SAY("Et ça y est, ça recommence...")
		SAY("Vous allez le regretter.")
		SAY("Pourquoi les gens ne pensent-ils qu'à nous tuer?")
		SAY("Vous ne voyez pas que j'ai déjà assez souffert comme ça?")
		SAY("A quoi ça sert d'essayer de parler aux gens...")

		ATTACK()

	NODE(3)

		SAY("Bien.")
		SAY("Je m'en fiche... tant que vous ne faites de mal à personne.")
		SAY("Laissez-moi tranquille, je vous en prie...")
	
		ENDDIALOG()

	NODE(4)

		SAY("J'entends encore les tirs...")
		SAY("Ils sont arrivés avec leurs armes... ensuite, le combat a commencé... les hurlements... plus les cadavres...")
		SAY("Je m'en rappelle... comme si c'était hier...")
		
		ANSWER("De quoi est-ce que vous parlez? Je vous ai demandé ce qui vous était arrivé.",5)
		ANSWER("Ca m'a l'air intéressant. Continuez.",5)
		ANSWER("*continue à écouter*",5)
		ANSWER("OK... bon, où est-ce que je peux trouver des mutants?",6)
		ANSWER("Pardon d'avoir demandé. Je ferais mieux de m'en aller.",3)

	NODE(5)

		SAY("Ils sont sortis de l'obscurité... et d'un seul coup il y a eu des flammes partout...")
		SAY("je n'oublierai jamais celui qui m'a tiré dessus... mes yeux...")
		SAY("Ils se tenaient là, sans bouger, et ils nous regardaient. L'un d'eux a souri... et c'est là que j'ai eu mal.")

		ANSWER("Intéressant... où habitez-vous?",6)
		ANSWER("Alors, où est-ce que je peux trouver des mutants?",6)
		ANSWER("Je vais m'en aller...",3)

	NODE(6)

		SAY("Nous vivons où personne ne nous fera de mal.")
		SAY("Nous vivons dans des endroits où nous pensons que vous ne trouverez jamais.")
		SAY("Nous vivons dans des endroits dont vous avez oublié l'existence...")

		ANSWER("Je vois... comment êtes-vous arrivé ici?",4)
		ANSWER("Ce serait mieux si je partais, je pense.",3)
		ANSWER("Je pense que je vais m'en aller.",3)

end