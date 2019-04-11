function DIALOG()

	NODE(0)
		SAY("Ca c'était de la baston!")
		
		ANSWER("Une baston? Là-dedans?",1)
		ANSWER("Laisse-moi tranquille, ça m'intéresse pas.",100)
		
	NODE(1)
		SAY("Ouais mon pote, des super baston, dans la ligue de combats virtuels! Je les ai tous rincés!")
		ANSWER("Ca a l'air puissant! C'est toi le champion, alors?",2)
		
	NODE(2)
		SAY("Ouais, j'suis l'plus fort, l'plus rapide, l'plus beau, l'champion invaincu toutes catégories!")
		ANSWER("Je peux m'inscrire, moi aussi?",3)
			
	NODE(3)
		SAY("Ah désolé, c'est complet. Mais trouve-toi des potes, et lance ton propre truc. C'est pas compliqué. Allez, je vais faire la fête et picoler tout ce que j'ai gagné ce soir!")
		ENDDIALOG()

	NODE(100)
		SAY("Tu sais pas c'que tu rates...")
		ENDDIALOG()	

		
end