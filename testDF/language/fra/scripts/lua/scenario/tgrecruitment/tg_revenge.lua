function DIALOG()

	NODE(0)
	
	
		SAY("Encore une enflure de Gardien du Cr�puscule? D�gage!")
		
		ANSWER("Faux... Mais c'est quoi ton probl�me avec eux?",1)
		ANSWER("J'en suis un, et je voudrais bien savoir ce que tu as � redire.",2)
		
		
	NODE(1)
	
	
		SAY("Ils ont fait p�ter un caf� il y a pas longtemps. Dans ce caf�, il y avait ma femme et mon fils de 9 ans, ils d�jeunaient. Ils ont jamais fait de mal � personne, et pourtant ils sont morts! POURQUOI! J'aimerais bien le savoir! Mais j'ai pu voir le visage d'un des terroristes, et d�s qu'il ressort du b�timent, je le blinde de plomb. Il va mourir lentement, et dans d'atroces souffrances!!!")
		
		ANSWER("Hmmm...Navr� d'entendre �a... Je vais m'en aller...",3)
		ANSWER("Ugh... J'esp�re que tu vas l'aplatir comme un chien!",3)
		
		
	NODE(2)
	
	
		SAY("Si tu d�campes pas, je te transforme en passoire!")
		ENDDIALOG()
		
		
	NODE(3)
	
	
		SAY("Faites attention � vous...")
		ENDDIALOG()
		
		
		
		
end