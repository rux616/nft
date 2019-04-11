-- Here is the Conversation with the Veronique Bouncer. Written by Nulltone.

function DIALOG()

	NODE(0)
		SAY("Bonjour, et bienvenue au Club V�ronique. Comment puis-je vous aider?")
		SAY("Bienvenue au club le plus s�lect de Neocron, le Club V�ronique.")

		ANSWER("Bonjour, qu'est-ce qu'il y a l�-dedans?",1)
		ANSWER("Bonjour, qu'est-ce que vous proposez dans ce club?",1)

		ANSWER("Bonjour. Il faut �tre invit� pour entrer?",2)
		ANSWER("Il faut avoir r�serv� � l'avance?",2)
		ANSWER("Est-ce qu'on doit conna�tre les bonnes personnes pour entrer?",2)

		ANSWER("Qui poss�de le Club V�ronique?",3)
		ANSWER("Hmm... qui poss�de ce club?",3)

		ANSWER("Merci, je vais aller ailleurs...",5)
		ANSWER("Au revoir.",5)

		ANSWER("Ca me pla�t. Je vais entrer.",6)
		ANSWER("Ca m'a l'air tr�s bien.",6)

	NODE(1)

		SAY("Le Club V�ronique est le club le plus prestigieux de Neocron. Nous proposons cocktails, danses et distractions en tous genres. Contrairement aux autres clubs, nous n'acceptons pas n'importe qui.")
		SAY("Le Club V�ronique est l'endroit pr�f�r� de la haute soci�t� de Neocron. Nous proposons cocktails, danses et distractions en tous genres. Nous sommes le club le plus en vue de Neocron, et nous voulons pour cette raison n'accepter que les clients de choix.")

		ANSWER("J'ai encore quelques questions...",4)
		ANSWER("Dites-m'en plus...",4)
		ANSWER("Int�ressant...",4)

		ANSWER("Merci, mais je dois m'en aller...",5)
		ANSWER("Au revoir.",5)
		ANSWER("Ca n'est pas mon genre de club... Au revoir.",5)

		ANSWER("Ca me pla�t. Je vais entrer.",6)
		ANSWER("Ca m'a l'air tr�s bien.",6)
		

	NODE(2)
		SAY("Nous n'avons pas de liste d'invit�s � proprement parler, sauf en cas de soir�e sp�ciale. Nous n'appr�cions que les clients corrects.")
		SAY("Pour faire simple, je suis juge, jury et bourreau. Si je pense que vous n'avez rien � faire ici, vous n'entrerez pas.")

		ANSWER("J'ai encore quelques questions...",4)
		ANSWER("Dites-m'en plus...",4)
		ANSWER("Int�ressant...",4)

		ANSWER("Merci, mais je dois m'en aller...",5)
		ANSWER("Au revoir.",5)
		ANSWER("Ca n'est pas mon genre de club... Au revoir.",5)

		ANSWER("Ca me pla�t. Je vais entrer.",6)
		ANSWER("Ca m'a l'air tr�s bien.",6)

	NODE(3)
		SAY("Je ne suis pas l� pour r�pondre aux questions de ce genre...")
		SAY("C'est la corporation Tsunami qui poss�de le Club V�ronique. C'est tout ce que j'ai � dire.")
		SAY("Madame V�ronique poss�de la corporation Tsunami, laquelle poss�de ce club.")

		ANSWER("J'ai encore quelques questions...",4)
		ANSWER("Dites-m'en plus...",4)
		ANSWER("Int�ressant...",4)

		ANSWER("Merci, mais je dois m'en aller...",5)
		ANSWER("Au revoir.",5)
		ANSWER("Ca n'est pas mon genre de club... Au revoir.",5)

		ANSWER("Ca me pla�t. Je vais entrer.",6)
		ANSWER("Ca m'a l'air tr�s bien.",6)

	NODE(4)
		SAY("Qu'aimeriez-vous savoir?")
		SAY("Bien. Quelles sont vos autres questions?")

		ANSWER("Qu'est-ce qu'il y a dans ce club?",1)
		ANSWER("Qu'est-ce que je peux trouver dans ce club?",1)

		ANSWER("Il faut avoir r�serv� � l'avance?",2)

		ANSWER("Qui poss�de le Club V�ronique?",3)

		ANSWER("Merci, mais je dois m'en aller...",5)
		ANSWER("Au revoir.",5)

		ANSWER("Ca me pla�t. Je vais entrer.",6)
		ANSWER("Ca m'a l'air tr�s bien.",6)

	NODE(5)
		SAY("Comme il vous plaira.")
		SAY("Si vous le dites... Mais je vous assure que vous manquez quelque chose.")
		SAY("Bien, au revoir.")
		ENDDIALOG()

	NODE(6)
		SAY("Excellent! Donnez-vous la peine d'entrer.")
		SAY("Vous pouvez entrer. Amusez-vous bien...")
		SAY("Je savais que vous diriez oui. Amusez-vous bien.")
		ENDDIALOG()

end