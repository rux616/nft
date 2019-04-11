function DIALOG()

	NODE(0)
		SAY("J'adore ce coin!")
		ANSWER("Pourquoi ça?",1)         
				
	NODE(1)
		SAY("Parce que tu peux avoir les meilleurs flingues de tout le quartier! Je dirais même, de tout le Dôme! Le top du top!")
		ANSWER("Où est-ce que je dois aller si je cherche ce genre de trucs?",2)                                                                  
		ANSWER("De la technologie? Des armes? Sans façons...",101)                                                                                 
		
	NODE(2)
		SAY("K'ao des contacts, des gens qui me livrent directement depuis les stocks de H.E.W., et moi et mes potes on se sert comme on veut! ")
		ANSWER("Sympa! Qui c'est, tes potes?",100)                                                                                                                                                
			
	NODE(100)
		SAY("Je peux rien dire. T'es peut-être un espion. La confiance, ça se gagne. Faut que j'y aille.")
		ENDDIALOG()	

	NODE(101)
		SAY("Alors on a rien à se dire.")
		ENDDIALOG()
		
end