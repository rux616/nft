function DIALOG()

	NODE(0)
		SAY("Salut toi!")
		ANSWER("Vous êtes des chasseurs?",1)
				
	NODE(1)
		SAY("Ouaip. Moi et mon pote, on est les meilleurs. On est les plus grands de tout le secteur!")
		ANSWER("Et vous chassez quoi?",2)
				
	NODE(2)
		SAY("Des bestioles. Les plus grosses. Des doomreapers, des trucs comme ça.")
		ANSWER("Qu'est-ce que vous utilisez comme technique?",3)
	
	NODE(3)
		SAY("On y va au char d'assaut. Mais c'est pas un char comme les autres, il est boosté de partout. Le moteur, le blindage... Même le flingue a été remplacé, on a mis un bazar de CopBot à la place!")
		ANSWER("Quoi? Un flingue de CopBot? Comment est-ce que vous avez eu ça?",4)	

	NODE(4)
		SAY("Ah, celui-là on en est fiers! Tout le monde le veut!")
		ANSWER("D'accord, mais où est-ce que vous l'avez trouvé?",100)
		ANSWER("Vantard!",101)
			
	NODE(100)
		SAY("Arrête d'insister, je te donnerai pas notre fournisseur.")
		ENDDIALOG()	

	NODE(101)
		SAY("Attention à ce que tu dis, j'aime pas beaucoup ça. Tire-toi en vitesse, et t'avise pas de croiser notre route!")
		ENDDIALOG()
		
end