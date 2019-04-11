function DIALOG()
	NODE(0)
		SAY("Circulez, citoyen. Il n'y a rien à voir.")
		SAY("Ne restez pas là, citoyen. Il n'y a rien à voir.")

		ANSWER("Rien à voir? Mais ça tirait dans tous les sens, ici, j'ai cru qu'il y avait une guerre! Qu'est-ce que c'était?",1)
		ANSWER("Rien à voir? Je ne pense pas. Il s'est passé quelque chose ici. Qu'est-ce que c'était?",1)

		ANSWER("Oh, OK. Pardon de vous avoir dérangé.",2)
		ANSWER("Bon, si vous le dites...",2)

	NODE(1)
		-- Explanation
			SAY("Vous n'avez pas à savoir cela, citoyen, mais comme votre vie pourrait être mise en danger je dois vous informer ce qui se passe. La faction rebelle connue sous ne nom de Gardiens du Crépuscule a lancé une attaque contre le réseau de transport de Neocron. L'attaque a isolé cette zone du reste de la ville, mais le métro est encore fonctionnel dans les autres zones.")
			ANSWER("Oh, je vois. Merci pour l'information.",2)
			ANSWER("Ca a l'air grave. Je vais tenter de ne pas m'en mêler.",2)

	NODE(2)
		-- end
		SAY("Maintenant, circulez.")
		ENDDIALOG()
end