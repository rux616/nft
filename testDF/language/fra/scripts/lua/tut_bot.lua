function DIALOG()
	NODE(0)
		SAY("Circulez, citoyen. Il n'y a rien � voir.")
		SAY("Ne restez pas l�, citoyen. Il n'y a rien � voir.")

		ANSWER("Rien � voir? Mais �a tirait dans tous les sens, ici, j'ai cru qu'il y avait une guerre! Qu'est-ce que c'�tait?",1)
		ANSWER("Rien � voir? Je ne pense pas. Il s'est pass� quelque chose ici. Qu'est-ce que c'�tait?",1)

		ANSWER("Oh, OK. Pardon de vous avoir d�rang�.",2)
		ANSWER("Bon, si vous le dites...",2)

	NODE(1)
		-- Explanation
			SAY("Vous n'avez pas � savoir cela, citoyen, mais comme votre vie pourrait �tre mise en danger je dois vous informer ce qui se passe. La faction rebelle connue sous ne nom de Gardiens du Cr�puscule a lanc� une attaque contre le r�seau de transport de Neocron. L'attaque a isol� cette zone du reste de la ville, mais le m�tro est encore fonctionnel dans les autres zones.")
			ANSWER("Oh, je vois. Merci pour l'information.",2)
			ANSWER("Ca a l'air grave. Je vais tenter de ne pas m'en m�ler.",2)

	NODE(2)
		-- end
		SAY("Maintenant, circulez.")
		ENDDIALOG()
end