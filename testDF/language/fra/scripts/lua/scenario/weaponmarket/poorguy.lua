function DIALOG()

	NODE(0)
		SAY("T'as pas... comment qu'on dit déjà... un cred ou deux?")                                     
		ANSWER("Pour quoi faire?",1)                                        
		ANSWER("Va gagner ta vie, pauvre cloche!",101)
				
	NODE(1)
		SAY("Y m'faut un canon! Mais j'peux pas m'en payer un si j'ai pas de blé.")
		ANSWER("Et tu veux que je t'aide?",2)                           
				
	NODE(2)
		SAY("Euh... dit comme ça... ouais!")                                              
		ANSWER("Tu auras rien de moi! J'ai travaillé dur!",101)
		ANSWER("Voilà 20 creds. C'est un début.",3)
		ANSWER("Voilà 200. Demande à d'autres gens.",5)                                       
		ANSWER("Voilà 2000. Ca devrait suffire.",7)                        

	NODE(3)
		GIVEMONEY(20)
		SAY("C'est pas bien lourd, mais merci quand même.")
		ENDDIALOG()
		
	NODE(5)
		GIVEMONEY(200)
		SAY("Cool, je vois déjà mon canon qui se rapproche!")
		ENDDIALOG()
		
	NODE(7)
		GIVEMONEY(2000)
		SAY("Enfin! Les jours tristes sont terminés, je vais acheter un canon, je vais gagner du fric par moi-même! Je suis libre!")
		ENDDIALOG()
			
	NODE(100)
		SAY("...AARRHGGGGNNNN....!")
		ENDDIALOG()	

	NODE(101)
		SAY("Va chier, pauvre minable!")
		ENDDIALOG()	
		
end