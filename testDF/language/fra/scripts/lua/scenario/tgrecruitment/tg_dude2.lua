function DIALOG()

	NODE(0)
	
	
		SAY("Hé, toi! Si tu veux de l'action, tu as sonné à la bonne porte!")
		
		ANSWER("Qui est-ce qui régale?",1)
		ANSWER("On me parle pas comme ça! Ote-toi de mon chemin!",3)
		
	
	NODE(1)
	
	
		SAY("Nous sommes les Gardiens du Crépuscule, nous combattons pour la liberté, le droit et la justice!")
		
		ANSWER("Joli poème que tu viens de me réciter, l'ami. Dis-moi, tu crois vraiment à toutes ces sornettes?",2)
		ANSWER("De bien belles paroles. Je vais y réfléchir, à bientôt.",4)
		
		
	NODE(2)
	
	
		SAY("Evidemment que j'y crois! J'ai vécu trop longtemps sous la tyrannie de Reza!")
		ENDDIALOG()
		
		
	NODE(3)
	
	
		SAY("Dégage!")
		ENDDIALOG()
		
		
	NODE(4)
	
	
		SAY("Fais comme tu veux, et à bientôt.")
		ENDDIALOG()
		
		



end