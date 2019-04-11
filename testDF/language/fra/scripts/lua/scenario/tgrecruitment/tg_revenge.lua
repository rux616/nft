function DIALOG()

	NODE(0)
	
	
		SAY("Encore une enflure de Gardien du Crépuscule? Dégage!")
		
		ANSWER("Faux... Mais c'est quoi ton problème avec eux?",1)
		ANSWER("J'en suis un, et je voudrais bien savoir ce que tu as à redire.",2)
		
		
	NODE(1)
	
	
		SAY("Ils ont fait péter un café il y a pas longtemps. Dans ce café, il y avait ma femme et mon fils de 9 ans, ils déjeunaient. Ils ont jamais fait de mal à personne, et pourtant ils sont morts! POURQUOI! J'aimerais bien le savoir! Mais j'ai pu voir le visage d'un des terroristes, et dès qu'il ressort du bâtiment, je le blinde de plomb. Il va mourir lentement, et dans d'atroces souffrances!!!")
		
		ANSWER("Hmmm...Navré d'entendre ça... Je vais m'en aller...",3)
		ANSWER("Ugh... J'espère que tu vas l'aplatir comme un chien!",3)
		
		
	NODE(2)
	
	
		SAY("Si tu décampes pas, je te transforme en passoire!")
		ENDDIALOG()
		
		
	NODE(3)
	
	
		SAY("Faites attention à vous...")
		ENDDIALOG()
		
		
		
		
end