function DIALOG()

	NODE(0)
	
	
		SAY("Ouah! Ils m'ont convaincu, je vais rejoindre les Gardiens du Crépuscule! MORT A REZA!!!")
		
		ANSWER("Excellent!",1)
		   ANSWER("Un autre terroriste... Comme si on en manquait!",2)
		   
	
	NODE(1)
	
	
		SAY("Ne me dis pas que la situation actuelle te convient! Tu devrais parler à un de nos recruteurs...")
		ENDDIALOG()
		
	
	NODE(2)
	
	
		SAY("Tu ne sais pas de quoi tu parles quand tu nosu traites de terroristes. Va parler à un de nos recruteurs, il t'apprendra qui nous sommes vraiment.")
		ENDDIALOG()
		
		





end