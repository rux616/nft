function DIALOG()

	NODE(0)
		SAY("Ouais?")                      
		ANSWER("Toi aussi t'es un chasseur?",1)
				
	NODE(1)
		SAY("Surtout pilote. Mais je chasse aussi. Avec mon pote là-bas.")
		ANSWER("Il est doué?",2)                                            
				
	NODE(2)
		SAY("Et comment! Il a créé un canon basé sur la technologie des CopBots!")
		ANSWER("Impressionnant.",3)                                                   
	
	NODE(3)
		SAY("Et notre char d'assaut n'est pas dégueulasse non plus. J'ai juste bidouillé deux ou trois trucs dessus.")
		ANSWER("Bidouillé?",4)                                                             

	NODE(4)
		SAY("Renforts de chenilles, blindage deux fois plus épais, moteur boosté... C'est moi qu'ai fait tout ça!")
		ANSWER("Ouah. Tu t'y connais, on diraît!",100)                       
		ANSWER("Vantard!",101)                                                          
			
	NODE(100)
		SAY("Et pas qu'un peu!")
		ENDDIALOG()	

	NODE(101)
		SAY("Si tu savais...")
		ENDDIALOG()
		
end