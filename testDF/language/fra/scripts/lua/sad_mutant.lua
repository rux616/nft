function DIALOG()

	NODE(0)
		SAY("Et voil�, encore quelqu'un... mais pourquoi vous nous emb�tez...")
		SAY("Laissez-moi souffrir en paix.")
		SAY("Pourquoi les gens s'emb�tent-ils � venir dans des endroits comme celui-l�?")
		SAY("je vous en prie... Laissez-moi seul...")
		

		ANSWER("J'esp�rais trouver des r�ponses � certaines questions.",1)
		ANSWER("Vous pourriez r�pondre � quelques questions?",1)
		ANSWER("Tout ce que je veux, c'est les cr�dits que vont me rapporter ton cadavre.",2)
		ANSWER("Je viens ici pour gagner de l'argent en tuant des mutants.",2)
		ANSWER("Pardon, je ne voulais pas vous d�ranger.",3)
		ANSWER("Bien, je m'en vais.",3)

	NODE(1)

		SAY("Bien, demandez-moi ce que vous voulez... je m'en fiche...")
		SAY("Je m'en fiche... mais d�p�chez-vous...")
		
		ANSWER("Comment �tes-vous devenu comme �a?",4)
		ANSWER("Qu'est-ce qui vous est arriv�?",4)
		ANSWER("O� les mutants vivent-ils?",5)
		
	NODE(2)

		SAY("Et �a y est, �a recommence...")
		SAY("Vous allez le regretter.")
		SAY("Pourquoi les gens ne pensent-ils qu'� nous tuer?")
		SAY("Vous ne voyez pas que j'ai d�j� assez souffert comme �a?")
		SAY("A quoi �a sert d'essayer de parler aux gens...")

		ATTACK()

	NODE(3)

		SAY("Bien.")
		SAY("Je m'en fiche... tant que vous ne faites de mal � personne.")
		SAY("Laissez-moi tranquille, je vous en prie...")
	
		ENDDIALOG()

	NODE(4)

		SAY("J'entends encore les tirs...")
		SAY("Ils sont arriv�s avec leurs armes... ensuite, le combat a commenc�... les hurlements... plus les cadavres...")
		SAY("Je m'en rappelle... comme si c'�tait hier...")
		
		ANSWER("De quoi est-ce que vous parlez? Je vous ai demand� ce qui vous �tait arriv�.",5)
		ANSWER("Ca m'a l'air int�ressant. Continuez.",5)
		ANSWER("*continue � �couter*",5)
		ANSWER("OK... bon, o� est-ce que je peux trouver des mutants?",6)
		ANSWER("Pardon d'avoir demand�. Je ferais mieux de m'en aller.",3)

	NODE(5)

		SAY("Ils sont sortis de l'obscurit�... et d'un seul coup il y a eu des flammes partout...")
		SAY("je n'oublierai jamais celui qui m'a tir� dessus... mes yeux...")
		SAY("Ils se tenaient l�, sans bouger, et ils nous regardaient. L'un d'eux a souri... et c'est l� que j'ai eu mal.")

		ANSWER("Int�ressant... o� habitez-vous?",6)
		ANSWER("Alors, o� est-ce que je peux trouver des mutants?",6)
		ANSWER("Je vais m'en aller...",3)

	NODE(6)

		SAY("Nous vivons o� personne ne nous fera de mal.")
		SAY("Nous vivons dans des endroits o� nous pensons que vous ne trouverez jamais.")
		SAY("Nous vivons dans des endroits dont vous avez oubli� l'existence...")

		ANSWER("Je vois... comment �tes-vous arriv� ici?",4)
		ANSWER("Ce serait mieux si je partais, je pense.",3)
		ANSWER("Je pense que je vais m'en aller.",3)

end