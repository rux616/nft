-- Commentary for Bouncer at the PeepClub

function DIALOG()	

	NODE(0)						-- NODE 0 is always the node with text for the greeting
		SAY("Salut toi. Est-ce que les belles filles qui sont à l'intérieur pourraient t'aider à quelque chose?")
		SAY("Salut champion. Si t'as le fric, t'auras le show.")

		ANSWER("Pardon, j'ai dû me tromper de chemin.",1) 	
		ANSWER("Ecoute-moi bien, j'ai pas besoin de payer pour m'amuser.",1) 		

		ANSWER("Il y a de la chair fraîche, ce soir?",2)
		ANSWER("Comment sont les filles ce soir?",2)
							

	NODE(1)

		SAY("Ouais, comme tu veux. Reviens quand t'auras de quoi payer.")
		SAY("Alors va-t-en, tu me fais perdre mon temps.")

		ENDDIALOG()

	NODE(2)
		SAY("C'est que du bon ce soir. On a Carla la contorsionniste qui se tortille dans des positions, tu paierais rien que pour en entendre parler. On a Mona les Beaux Melons sur son mini trampoline, et on a même réussi à convaincre Cyprina de prendre un bâton d'un mètre pour son numéro. T'as pas idée de ce qu'elle arrive à faire avec ce truc...")
		SAY("Ce soir, on a des filles qui vont t'empêcher de te lever pendant une semaine. Et je suis bien placé pour le savoir, c'est moi qui ai fait le casting, et je laisse entrer que du bon.")

		ANSWER("Nan, c'est pas mon truc.",1)
		ANSWER("Peut-être une autre fois.",1)

		ANSWER("Hmm. Je cherchais quelque chose d'un peu plus exotique. Qu'est-ce que vous avez d'autre?",3)
		ANSWER("C'est tout? J'espérais que vous aviez de quoi contenter les clients avec des goûts un peu plus... spéciaux. Il n'y a vraiment rien d'autre?",3)

		ANSWER("Ouais, ça me plaît.",4)
		ANSWER("Ouais, pourquoi pas. J'ai besoin de me détendre un peu.",4)

	NODE(3)
		SAY("Ahhh, tu veux quelque chose de 'spécial', c'est ça? Ben disons qu'en coulisses il se passe pas mal de trucs, tu verras par toi-même si tu vas faire un tour à l'intérieur.")
		SAY("On a tout ce que tu veux. Pourquoi tu entres pas vérifier par toi-même?")

		ANSWER("Nan, c'est pas mon truc.",1)
		ANSWER("Peut-être une autre fois.",1)

		ANSWER("Ouais, ça me plaît.",4)
		ANSWER("Ouais, pourquoi pas. J'ai besoin de me détendre un peu.",4)

	NODE(4)
		SAY("Bon choix. Entre et mets-toi à l'aise. T'aura une belle fille dans les bras en un rien de temps.")
		
		ENDDIALOG()

end