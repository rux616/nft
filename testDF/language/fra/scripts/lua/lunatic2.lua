function DIALOG() --The GenRep guy

	NODE(0)
		SAY("J'ai vu la lumi�re, c'est vrai! Je suis all� au paradis et je suis revenu sur terre pour vous faire partager ma sagesse infinie!")
		SAY("Ouais, ouais! Je suis mort une fois! Je sais que vous ne me croyez pas, parce que je suis l� devant vous � vous parler. Mais c'est la main divine de Crahn lui-m�me!")
		SAY("La mort n'est pas accessible � tous, seulement aux illumin�s!")
		SAY("Ne les laissez pas vous mentir avec leur Dupli-machinchoses, C'est la main de Crahn lui-m�me qui m'a sorti du royaume des Morts!")
		SAY("Mon �me a certainement �t� resplendissante le jour o� je suis mort et o� je suis revenu parmi vous. Seules les �mes les plus pures sont r�compens�es.")
		
		
		ANSWER("Mais oui, mais oui. Bon, je m'en vais.",1)
		ANSWER("Arr�te l'alcool. Un jour, tu me remercieras.",1)
		ANSWER("En r�alit�, les DupliGenes fonctionnent selon un syst�me de reconstitution dynamique. Mais bon, c'est pas grave.",1)
		
	NODE(1)
		SAY("Non, vous ne comprenez rien du tout!")
		SAY("Vous n'avez pas vu la lumi�re, mais un jour vous comprendrez.")
		
		ENDDIALOG()
	
end