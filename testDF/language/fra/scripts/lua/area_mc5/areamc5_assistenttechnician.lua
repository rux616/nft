function DIALOG()

	NODE(0)
		DOYALIGNMENT()
			if( result==-1 ) then
			-- Fall 1: Reza Anh�nger
				SAY("Salut.")

				ANSWER("Qu'est-ce qui se passe ici?",1)
				ANSWER("Qu'est-ce que c'est ici?",1)
			else
			-- Fall 1: Reza Feind	
				SAY("Oh, c'est vous. On nous a d�j� pr�venus. On dira�t que l'op�ration a encore rat�, une fois de plus. C'est moi qu'ils devraient nommer technicien chef, avant que �a devienne irr�cup�rable.")
				ANSWER("Mais...!",11)
			end
		

	NODE(1)
		SAY("Notre chef technicien et l'administrateur ont un petit probl�me. Leur toute derni�re invention est devenue incontr�lable.")
		ANSWER("C'est � dire?",2)		
		
	NODE(2)	
		SAY("Ils ont voulu jouer � Dieu, et ont d�cid� d'installer des prototypes de puces dans les SecBots. C'est pas tr�s malin, parce que maintenant on en a perdu le contr�le. Ils vous ont d�j� expliqu�?")
		ANSWER("Nan. Pourquoi?",3)
		ANSWER("Ouaip. Ils veulent que je chasse des bots.",5)		

	NODE(3)
		SAY("Alors vous devriez vous mettre au travail d�s que possible. Vous avez quelques cr�dits � vous faire dans l'op�ration. Mais avant de partir, pensez � parler au chef de la s�curit�. Je pense qu'il pourra vous donner quelques conseils utiles. A plus tard, il faut que je retourne travailler.")
		ANSWER("OK, � plus tard. Merci du conseil.",4)

	NODE(4)
		SAY("Pas de probl�me.")
		ENDDIALOG()

	NODE(5)	
		SAY("Je le savais! Ils refont le coup � chaque fois. H�h�. Je vous pr�viens, c'est pas du g�teau d'abattre ces bots. Avant de vous en aller, je vous conseille de parler au chef de la s�curit�, je pense qu'il voudra vous expliquer quelques trucs. Moi, il faut que je retourne travailler.")
		ANSWER("Parfait, merci.",6)

	NODE(6)
		SAY("Je vous en prie. A plus tard.")
		ENDDIALOG()
			
	NODE(11)
		SAY("J'ai rien � vous dire. Je tiens pas � mettre ma carri�re en danger. Personne ne va vous parler ici, c'est pas la peine de tra�ner. Mais allez faire un tour dehors, vous trouverez peut-�tre des gens qui pensent comme vous.")
		ENDDIALOG()
		
end
