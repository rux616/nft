function DIALOG() --The GenRep guy

	NODE(0)
		SAY("J'ai vu la lumière, c'est vrai! Je suis allé au paradis et je suis revenu sur terre pour vous faire partager ma sagesse infinie!")
		SAY("Ouais, ouais! Je suis mort une fois! Je sais que vous ne me croyez pas, parce que je suis là devant vous à vous parler. Mais c'est la main divine de Crahn lui-même!")
		SAY("La mort n'est pas accessible à tous, seulement aux illuminés!")
		SAY("Ne les laissez pas vous mentir avec leur Dupli-machinchoses, C'est la main de Crahn lui-même qui m'a sorti du royaume des Morts!")
		SAY("Mon âme a certainement été resplendissante le jour où je suis mort et où je suis revenu parmi vous. Seules les âmes les plus pures sont récompensées.")
		
		
		ANSWER("Mais oui, mais oui. Bon, je m'en vais.",1)
		ANSWER("Arrête l'alcool. Un jour, tu me remercieras.",1)
		ANSWER("En réalité, les DupliGenes fonctionnent selon un système de reconstitution dynamique. Mais bon, c'est pas grave.",1)
		
	NODE(1)
		SAY("Non, vous ne comprenez rien du tout!")
		SAY("Vous n'avez pas vu la lumière, mais un jour vous comprendrez.")
		
		ENDDIALOG()
	
end