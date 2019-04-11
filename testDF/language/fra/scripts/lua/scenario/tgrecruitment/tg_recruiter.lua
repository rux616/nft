function DIALOG()

	NODE(0)
	
	
		SAY("Bienvenue chez les gardiens du Crépuscule, runner! Choisis la libreté, rejoins-nous!")
		
		ANSWER("Je voudrais queques renseignements avant de faire mon choix.",1)
		ANSWER("Pourquoi est-ce que je vous rejoindrais? Qu'est-ce que vous avez à me proposer?",1)
		   ANSWER("Oui!!! J'arrive! A MORT REZA!!!!",2)
		   ANSWER("Ca m'a l'air sympa, on s'inscrit où?",2)
	        ANSWER("Faut que je l'en aille!!",3)
	        ANSWER("A mort les terroristes! Je veux pas entendre parler de vous!",3)
	        
	        
	NODE(1)
	
	
		SAY("Nous sommes des individus épris de liberté, qui refusent le joug d'un gouvernement totalitaire. Nous préférons mourir plutôt que de nous jeter aux pieds de ces imposteurs. Je vois dans tes yeux que tu admires notre courage. C'est là ta chance de nous rejoindre! Saisis-la!")
		
		ANSWER("Moi aussi j'en ai marre de ce gouvernement! Je viens avec vous!",2)
		ANSWER("J'ai les mêmes idées que toi, j'arrive!",2)
		ANSWER("Ouah! Merci de m'avoir ouvert les yeux, maintenant j'ai une raison de vivre!",2)
		     ANSWER("L'ide de départ n'est pas mauvaise, mais faut pas pousser non plus... Je suis heureux avec les choses telles qu'elles sont.",3)
		     ANSWER("Allez en enfer, sales terroristes! Je vous conchie!!!",3)
		     ANSWER("Faut que je m'en aille.",3)
		    
		    
	NODE(2)
	
	
		SAY("Sage décision, tu ne le regretteras pas. Va parler à notre recruteur, dans notre quartier général.")
		ENDDIALOG()
		
	NODE(3)
	
	
		SAY(""Si vous changez d'avis, vous savez à qui demander.")
		ENDDIALOG()
		



end