function DIALOG()

	NODE(0)
	
	
		SAY("H�, toi! Si tu veux de l'action, tu as sonn� � la bonne porte!")
		
		ANSWER("Qui est-ce qui r�gale?",1)
		ANSWER("On me parle pas comme �a! Ote-toi de mon chemin!",3)
		
	
	NODE(1)
	
	
		SAY("Nous sommes les Gardiens du Cr�puscule, nous combattons pour la libert�, le droit et la justice!")
		
		ANSWER("Joli po�me que tu viens de me r�citer, l'ami. Dis-moi, tu crois vraiment � toutes ces sornettes?",2)
		ANSWER("De bien belles paroles. Je vais y r�fl�chir, � bient�t.",4)
		
		
	NODE(2)
	
	
		SAY("Evidemment que j'y crois! J'ai v�cu trop longtemps sous la tyrannie de Reza!")
		ENDDIALOG()
		
		
	NODE(3)
	
	
		SAY("D�gage!")
		ENDDIALOG()
		
		
	NODE(4)
	
	
		SAY("Fais comme tu veux, et � bient�t.")
		ENDDIALOG()
		
		



end