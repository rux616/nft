function DIALOG()

	NODE(0)	--** A Greeting
		SAY("H�, toi, tu peux m'aider?")
		SAY("L'ami, �a te plairait de venir � une �me en peine?")
		SAY("H� toi, t'as l'air riche, tu pourrais pas m'aider?")

		ANSWER("Pas le temps... laisse-moi tranquille.",1)
		ANSWER("Raconte-moi ton histoire.",3)
		
	
	NODE(1)

		SAY("Non mais ho, lui! H�, j'ai pas demand� � �tre l�, moi!")
		SAY("J'ai pas de toit sur la t�te, et toi t'as pas le temps? Esp�ce de...")
		SAY("J'te souhaite de te faire plomber par un CopBot dans l'heure qui vient!")

		ENDDIALOG()

	
	NODE(2)
		SAY("Bon, pardon de t'avoir fait perdre ton temps.")
		SAY("Reviens quand tu auras le temps.")
		SAY("C'est bon, tant pis. Au revoir.")
		
		ENDDIALOG()


	NODE(3)
		SAY("J'avais un bel appartement au m�morial Typherra, et puis Tangent a fait des coupes franches dans son personnel de surveillance, et j'ai pas du de chance, je me suis retrouv� dedans. Maintenant, ils ont tous ces mechs qui font le travail mieux que personne, ils ont plus besoin de nous.")

		ANSWER("Continuez.",4)
		ANSWER("Pardon, mais je vais devoir partir.",2)

	NODE(4)
		SAY("Ben j'ai �t� vir�, j'ai perdu mon appartement, et maintenant je vis dans un carton. J'vais te dire, les corpos elles en ont rien � cirer de ce qui t'arrive. Rien du tout.")
		
		ANSWER("Oui, les corpos sont des organisations froides et avares, mais elles remplissent une fonction dans la ville.",5)
		ANSWER("Pardon, mais il faut que je m'en aille.",2)
		
	NODE(5)
		SAY("Une fonction, hein? Ouais, si tu veux... Bon, merci de m'avoir �cout�.")
		SAY("Ca n'a pas �t� tout le temps comme �a. Mais qu'est-ce qu'on peut y faire... Qu'est-ce qu'on peut y faire?")
		
		ENDDIALOG()

end