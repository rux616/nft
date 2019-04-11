function DIALOG()

	NODE(0)
		DOYALIGNMENT()
			if( result==-1 ) then
			-- Fall 1: Reza Anhänger
				SAY("Salut.")

				ANSWER("Qu'est-ce qui se passe ici?",1)
				ANSWER("Qu'est-ce que c'est ici?",1)
			else
			-- Fall 1: Reza Feind	
				SAY("Oh, c'est vous. On nous a déjà prévenus. On diraît que l'opération a encore raté, une fois de plus. C'est moi qu'ils devraient nommer technicien chef, avant que ça devienne irrécupérable.")
				ANSWER("Mais...!",11)
			end
		

	NODE(1)
		SAY("Notre chef technicien et l'administrateur ont un petit problème. Leur toute dernière invention est devenue incontrôlable.")
		ANSWER("C'est à dire?",2)		
		
	NODE(2)	
		SAY("Ils ont voulu jouer à Dieu, et ont décidé d'installer des prototypes de puces dans les SecBots. C'est pas très malin, parce que maintenant on en a perdu le contrôle. Ils vous ont déjà expliqué?")
		ANSWER("Nan. Pourquoi?",3)
		ANSWER("Ouaip. Ils veulent que je chasse des bots.",5)		

	NODE(3)
		SAY("Alors vous devriez vous mettre au travail dès que possible. Vous avez quelques crédits à vous faire dans l'opération. Mais avant de partir, pensez à parler au chef de la sécurité. Je pense qu'il pourra vous donner quelques conseils utiles. A plus tard, il faut que je retourne travailler.")
		ANSWER("OK, à plus tard. Merci du conseil.",4)

	NODE(4)
		SAY("Pas de problème.")
		ENDDIALOG()

	NODE(5)	
		SAY("Je le savais! Ils refont le coup à chaque fois. Héhé. Je vous préviens, c'est pas du gâteau d'abattre ces bots. Avant de vous en aller, je vous conseille de parler au chef de la sécurité, je pense qu'il voudra vous expliquer quelques trucs. Moi, il faut que je retourne travailler.")
		ANSWER("Parfait, merci.",6)

	NODE(6)
		SAY("Je vous en prie. A plus tard.")
		ENDDIALOG()
			
	NODE(11)
		SAY("J'ai rien à vous dire. Je tiens pas à mettre ma carrière en danger. Personne ne va vous parler ici, c'est pas la peine de traîner. Mais allez faire un tour dehors, vous trouverez peut-être des gens qui pensent comme vous.")
		ENDDIALOG()
		
end
