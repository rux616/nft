function DIALOG()

	NODE(0)
		DOYALIGNMENT()
			if( result==-1 ) then
			-- Fall 1: Reza Anhänger
				SAY("Runner?")
				ANSWER("Qu'est-ce que vous faites ici?",1)
				ANSWER("Qu'est-ce qui se passe ici?",2)
			else		
			-- Fall 2: Reza Feind		
				SAY("On a reçu une alerte de sécurité vous concernant. Veuillez vous rendre immédiatement au GenRep et quitter la zone MC5!")
				ANSWER("Argh! Qu'est-ce qui se passe ici?!",11)
			end
		
	NODE(1)
		SAY("Je travaille à la sécurité, et je protège la zone MC5.")
		ANSWER("La zone MC5?",2)		
				
	NODE(2)	
		SAY("Si vous voulez des renseignements à ce sujet, je vous conseille de parler à l'administrateur civil. Moi, je dois rester concentré. Merci.")
		ENDDIALOG()
		
	NODE(11)
		SAY("Si vous partez tout de suite, vous éviterez une démonstration de violence insoutenable. CECI N'EST PAS UNE DEMANDE!!")
		ENDDIALOG()
		
end
