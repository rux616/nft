function DIALOG()

	NODE(0)
		SAY("Ca c'�tait de la baston!")
		
		ANSWER("Une baston? L�-dedans?",1)
		ANSWER("Laisse-moi tranquille, �a m'int�resse pas.",100)
		
	NODE(1)
		SAY("Ouais mon pote, des super baston, dans la ligue de combats virtuels! Je les ai tous rinc�s!")
		ANSWER("Ca a l'air puissant! C'est toi le champion, alors?",2)
		
	NODE(2)
		SAY("Ouais, j'suis l'plus fort, l'plus rapide, l'plus beau, l'champion invaincu toutes cat�gories!")
		ANSWER("Je peux m'inscrire, moi aussi?",3)
			
	NODE(3)
		SAY("Ah d�sol�, c'est complet. Mais trouve-toi des potes, et lance ton propre truc. C'est pas compliqu�. Allez, je vais faire la f�te et picoler tout ce que j'ai gagn� ce soir!")
		ENDDIALOG()

	NODE(100)
		SAY("Tu sais pas c'que tu rates...")
		ENDDIALOG()	

		
end