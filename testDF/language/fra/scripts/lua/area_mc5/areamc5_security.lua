function DIALOG()

	NODE(0)
		DOYALIGNMENT()
			if( result==-1 ) then
			-- Fall 1: Reza Anh�nger
				SAY("Runner?")
				ANSWER("Qu'est-ce que vous faites ici?",1)
				ANSWER("Qu'est-ce qui se passe ici?",2)
			else		
			-- Fall 2: Reza Feind		
				SAY("On a re�u une alerte de s�curit� vous concernant. Veuillez vous rendre imm�diatement au GenRep et quitter la zone MC5!")
				ANSWER("Argh! Qu'est-ce qui se passe ici?!",11)
			end
		
	NODE(1)
		SAY("Je travaille � la s�curit�, et je prot�ge la zone MC5.")
		ANSWER("La zone MC5?",2)		
				
	NODE(2)	
		SAY("Si vous voulez des renseignements � ce sujet, je vous conseille de parler � l'administrateur civil. Moi, je dois rester concentr�. Merci.")
		ENDDIALOG()
		
	NODE(11)
		SAY("Si vous partez tout de suite, vous �viterez une d�monstration de violence insoutenable. CECI N'EST PAS UNE DEMANDE!!")
		ENDDIALOG()
		
end
