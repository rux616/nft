function DIALOG()

	NODE(0)
		SAY("H�, toi! Tu connais Spinner?")
		
		ANSWER("Euh... Ouais. Il faut que je m'en aille.",1)
		ANSWER("Esp�ce d'ivrogne, laisse-moi tranquille!",2)
		ANSWER("Non. Qui c'est?",3)
		
	NODE(1)
		SAY("Oh. Bon cycle lunaire � toi!")
		SAY("Oui, oui. Les gens ont tous des trucs � faire. Tout le monde a un truc � faire...")
		SAY("Spinner te dit 'au revoir'.")
		
		ENDDIALOG()
		
	NODE(2)
		SAY("Tu peux pas nous parler comme �a! Spinner est pas contente!")
		SAY("Tant pis pour toi.")
		SAY("Pas �tonnant que mes seules copines c'est des araign�es. Les humains, c'est nul.")
		
		ENDDIALOG()
		
	NODE(3)
		SAY("J'esp�re que tu pensais pas faire de mal � Spinner! Sinon je vais te taper, moi!")
		SAY("Ca va faire deux ans que Spinner et moi on vit ensemble. Mais je pense qu'elle va voir ailleurs. Elle dispara�t pendant des jours, et quand elle revient elle me donne jamais un mot d'explication.")

		ANSWER("Euh... Ouais. Bon, je m'en vais.",1)
		ANSWER("Esp�ce d'ivrogne, laisse-moi tranquille!",2)

end