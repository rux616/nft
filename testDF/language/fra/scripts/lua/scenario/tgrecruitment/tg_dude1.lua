function DIALOG()

	NODE(0)
		
		
		SAY("Bonjour, merci de passer. Prends ton temps, regarde partout, on n'a rien � cacher.")
		
		ANSWER("Je vais aller voir �a. Qu'est-ce qu'il y a de bien � visiter?",1)
		ANSWER("Gardes tes d�lires pour toi, je sais que vous �tes un tas de terroristes!",2)
		
		
		
	NODE(1)
	
	
		SAY("Nous recrutons ici tous ceux qui veulent soutenir notre cause. Si tu veux te joindre � nous, adresse-toi � un recruteur, il t'expliquera tout.")
		ENDDIALOG()
		
		
	NODE(2)
	
	
		SAY("Avec une attitude comme celle-l�, tu n'iras pas loin. Retourne te cacher dans les jupes de Reza!")
		ENDDIALOG()
		


end