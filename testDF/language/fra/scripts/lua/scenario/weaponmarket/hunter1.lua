function DIALOG()

	NODE(0)
		SAY("Salut toi!")
		ANSWER("Vous �tes des chasseurs?",1)
				
	NODE(1)
		SAY("Ouaip. Moi et mon pote, on est les meilleurs. On est les plus grands de tout le secteur!")
		ANSWER("Et vous chassez quoi?",2)
				
	NODE(2)
		SAY("Des bestioles. Les plus grosses. Des doomreapers, des trucs comme �a.")
		ANSWER("Qu'est-ce que vous utilisez comme technique?",3)
	
	NODE(3)
		SAY("On y va au char d'assaut. Mais c'est pas un char comme les autres, il est boost� de partout. Le moteur, le blindage... M�me le flingue a �t� remplac�, on a mis un bazar de CopBot � la place!")
		ANSWER("Quoi? Un flingue de CopBot? Comment est-ce que vous avez eu �a?",4)	

	NODE(4)
		SAY("Ah, celui-l� on en est fiers! Tout le monde le veut!")
		ANSWER("D'accord, mais o� est-ce que vous l'avez trouv�?",100)
		ANSWER("Vantard!",101)
			
	NODE(100)
		SAY("Arr�te d'insister, je te donnerai pas notre fournisseur.")
		ENDDIALOG()	

	NODE(101)
		SAY("Attention � ce que tu dis, j'aime pas beaucoup �a. Tire-toi en vitesse, et t'avise pas de croiser notre route!")
		ENDDIALOG()
		
end