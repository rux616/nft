function DIALOG()

	NODE(0)
		SAY("T'as pas... comment qu'on dit d�j�... un cred ou deux?")                                     
		ANSWER("Pour quoi faire?",1)                                        
		ANSWER("Va gagner ta vie, pauvre cloche!",101)
				
	NODE(1)
		SAY("Y m'faut un canon! Mais j'peux pas m'en payer un si j'ai pas de bl�.")
		ANSWER("Et tu veux que je t'aide?",2)                           
				
	NODE(2)
		SAY("Euh... dit comme �a... ouais!")                                              
		ANSWER("Tu auras rien de moi! J'ai travaill� dur!",101)
		ANSWER("Voil� 20 creds. C'est un d�but.",3)
		ANSWER("Voil� 200. Demande � d'autres gens.",5)                                       
		ANSWER("Voil� 2000. Ca devrait suffire.",7)                        

	NODE(3)
		GIVEMONEY(20)
		SAY("C'est pas bien lourd, mais merci quand m�me.")
		ENDDIALOG()
		
	NODE(5)
		GIVEMONEY(200)
		SAY("Cool, je vois d�j� mon canon qui se rapproche!")
		ENDDIALOG()
		
	NODE(7)
		GIVEMONEY(2000)
		SAY("Enfin! Les jours tristes sont termin�s, je vais acheter un canon, je vais gagner du fric par moi-m�me! Je suis libre!")
		ENDDIALOG()
			
	NODE(100)
		SAY("...AARRHGGGGNNNN....!")
		ENDDIALOG()	

	NODE(101)
		SAY("Va chier, pauvre minable!")
		ENDDIALOG()	
		
end