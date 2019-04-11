function DIALOG()

	NODE(0)
		
		
		SAY("Bonjour, merci de passer. Prends ton temps, regarde partout, on n'a rien à cacher.")
		
		ANSWER("Je vais aller voir ça. Qu'est-ce qu'il y a de bien à visiter?",1)
		ANSWER("Gardes tes délires pour toi, je sais que vous êtes un tas de terroristes!",2)
		
		
		
	NODE(1)
	
	
		SAY("Nous recrutons ici tous ceux qui veulent soutenir notre cause. Si tu veux te joindre à nous, adresse-toi à un recruteur, il t'expliquera tout.")
		ENDDIALOG()
		
		
	NODE(2)
	
	
		SAY("Avec une attitude comme celle-là, tu n'iras pas loin. Retourne te cacher dans les jupes de Reza!")
		ENDDIALOG()
		


end