function DIALOG()

	NODE(0)
		SAY("Salut toi!")                            
		ANSWER("Salut mec. Qu'est-ce que tu trafiques?",1)
				
	NODE(1)
		SAY("Dans mon boulot, faut être cool. Moi, j'fais des 'contrats', et on m'paie...")
		ANSWER("Des contrats?....... Ahh ok, des 'contrats'! Hehehe.",2)                       
				
	NODE(2)
		SAY("Ouais. Et c'est le meilleur coin pour en choper, des contrats. Le meilleur coin!")
		ANSWER("Je suis là pour ça aussi.",3)                                                          
	
	NODE(3)
		SAY("Mais t'as l'air complètement largué. Ce qu'il te faut, c'est les deux C!")
		ANSWER("Du Cash et... euh... des Chips?",4)                                   

	NODE(4)
		SAY("Du Cool et des Contacts, man.")                  
		ANSWER("Tu as des trucs à vendre?",100)             
		ANSWER("Je vois que tu te prends pas pour de la merde...",101)
			
	NODE(100)
		SAY("T'as rien compris du tout. Je suis cool, c'est tout. Je vends pas de flingues. Va chier!")
		ENDDIALOG()	

	NODE(101)
		SAY("Nan, pas du tout. Je sais ce que je vaux, c'est tout.")
		ENDDIALOG()
		
end