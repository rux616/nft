function DIALOG()

	NODE(0)
		SAY("J'adore ce coin!")
		ANSWER("Pourquoi �a?",1)         
				
	NODE(1)
		SAY("Parce que tu peux avoir les meilleurs flingues de tout le quartier! Je dirais m�me, de tout le D�me! Le top du top!")
		ANSWER("O� est-ce que je dois aller si je cherche ce genre de trucs?",2)                                                                  
		ANSWER("De la technologie? Des armes? Sans fa�ons...",101)                                                                                 
		
	NODE(2)
		SAY("K'ao des contacts, des gens qui me livrent directement depuis les stocks de H.E.W., et moi et mes potes on se sert comme on veut! ")
		ANSWER("Sympa! Qui c'est, tes potes?",100)                                                                                                                                                
			
	NODE(100)
		SAY("Je peux rien dire. T'es peut-�tre un espion. La confiance, �a se gagne. Faut que j'y aille.")
		ENDDIALOG()	

	NODE(101)
		SAY("Alors on a rien � se dire.")
		ENDDIALOG()
		
end