function DIALOG()

	NODE(0)
		SAY("Ouais?")                      
		ANSWER("Toi aussi t'es un chasseur?",1)
				
	NODE(1)
		SAY("Surtout pilote. Mais je chasse aussi. Avec mon pote l�-bas.")
		ANSWER("Il est dou�?",2)                                            
				
	NODE(2)
		SAY("Et comment! Il a cr�� un canon bas� sur la technologie des CopBots!")
		ANSWER("Impressionnant.",3)                                                   
	
	NODE(3)
		SAY("Et notre char d'assaut n'est pas d�gueulasse non plus. J'ai juste bidouill� deux ou trois trucs dessus.")
		ANSWER("Bidouill�?",4)                                                             

	NODE(4)
		SAY("Renforts de chenilles, blindage deux fois plus �pais, moteur boost�... C'est moi qu'ai fait tout �a!")
		ANSWER("Ouah. Tu t'y connais, on dira�t!",100)                       
		ANSWER("Vantard!",101)                                                          
			
	NODE(100)
		SAY("Et pas qu'un peu!")
		ENDDIALOG()	

	NODE(101)
		SAY("Si tu savais...")
		ENDDIALOG()
		
end