-- Here is the Conversation with the Veronique Bouncer. Written by Nulltone.

function DIALOG()

	NODE(0)
		SAY("Bonjour, et bienvenue au Club Véronique. Comment puis-je vous aider?")
		SAY("Bienvenue au club le plus sélect de Neocron, le Club Véronique.")

		ANSWER("Bonjour, qu'est-ce qu'il y a là-dedans?",1)
		ANSWER("Bonjour, qu'est-ce que vous proposez dans ce club?",1)

		ANSWER("Bonjour. Il faut être invité pour entrer?",2)
		ANSWER("Il faut avoir réservé à l'avance?",2)
		ANSWER("Est-ce qu'on doit connaître les bonnes personnes pour entrer?",2)

		ANSWER("Qui possède le Club Véronique?",3)
		ANSWER("Hmm... qui possède ce club?",3)

		ANSWER("Merci, je vais aller ailleurs...",5)
		ANSWER("Au revoir.",5)

		ANSWER("Ca me plaît. Je vais entrer.",6)
		ANSWER("Ca m'a l'air très bien.",6)

	NODE(1)

		SAY("Le Club Véronique est le club le plus prestigieux de Neocron. Nous proposons cocktails, danses et distractions en tous genres. Contrairement aux autres clubs, nous n'acceptons pas n'importe qui.")
		SAY("Le Club Véronique est l'endroit préféré de la haute société de Neocron. Nous proposons cocktails, danses et distractions en tous genres. Nous sommes le club le plus en vue de Neocron, et nous voulons pour cette raison n'accepter que les clients de choix.")

		ANSWER("J'ai encore quelques questions...",4)
		ANSWER("Dites-m'en plus...",4)
		ANSWER("Intéressant...",4)

		ANSWER("Merci, mais je dois m'en aller...",5)
		ANSWER("Au revoir.",5)
		ANSWER("Ca n'est pas mon genre de club... Au revoir.",5)

		ANSWER("Ca me plaît. Je vais entrer.",6)
		ANSWER("Ca m'a l'air très bien.",6)
		

	NODE(2)
		SAY("Nous n'avons pas de liste d'invités à proprement parler, sauf en cas de soirée spéciale. Nous n'apprécions que les clients corrects.")
		SAY("Pour faire simple, je suis juge, jury et bourreau. Si je pense que vous n'avez rien à faire ici, vous n'entrerez pas.")

		ANSWER("J'ai encore quelques questions...",4)
		ANSWER("Dites-m'en plus...",4)
		ANSWER("Intéressant...",4)

		ANSWER("Merci, mais je dois m'en aller...",5)
		ANSWER("Au revoir.",5)
		ANSWER("Ca n'est pas mon genre de club... Au revoir.",5)

		ANSWER("Ca me plaît. Je vais entrer.",6)
		ANSWER("Ca m'a l'air très bien.",6)

	NODE(3)
		SAY("Je ne suis pas là pour répondre aux questions de ce genre...")
		SAY("C'est la corporation Tsunami qui possède le Club Véronique. C'est tout ce que j'ai à dire.")
		SAY("Madame Véronique possède la corporation Tsunami, laquelle possède ce club.")

		ANSWER("J'ai encore quelques questions...",4)
		ANSWER("Dites-m'en plus...",4)
		ANSWER("Intéressant...",4)

		ANSWER("Merci, mais je dois m'en aller...",5)
		ANSWER("Au revoir.",5)
		ANSWER("Ca n'est pas mon genre de club... Au revoir.",5)

		ANSWER("Ca me plaît. Je vais entrer.",6)
		ANSWER("Ca m'a l'air très bien.",6)

	NODE(4)
		SAY("Qu'aimeriez-vous savoir?")
		SAY("Bien. Quelles sont vos autres questions?")

		ANSWER("Qu'est-ce qu'il y a dans ce club?",1)
		ANSWER("Qu'est-ce que je peux trouver dans ce club?",1)

		ANSWER("Il faut avoir réservé à l'avance?",2)

		ANSWER("Qui possède le Club Véronique?",3)

		ANSWER("Merci, mais je dois m'en aller...",5)
		ANSWER("Au revoir.",5)

		ANSWER("Ca me plaît. Je vais entrer.",6)
		ANSWER("Ca m'a l'air très bien.",6)

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