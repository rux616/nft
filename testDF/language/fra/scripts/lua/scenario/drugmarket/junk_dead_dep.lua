function DIALOG()

	NODE(0)
		SAY("Mon dieu, oh mon dieu!.")
		ANSWER("Qu'est-ce que tu as?",1)
				
	NODE(1)
		SAY("Il est mort! Ces putain de drogues l'ont tué!")
		ANSWER("Le pauvre, il aurait dû commencer par pas en prendre...",101)
		ANSWER("Désolé pour toi, mec. Il a pris quoi? Une dose pas nette?",2)
		
	NODE(2)
		SAY("J'en sais rien, mec. On se fournit toujours au même endroit.")
		ANSWER("Les drogues sont un fléau. Ne touche plus à ça.",100)
			
	NODE(100)
		SAY("T'as raison. J'arrête ça, j'ai trop souffert! Merci!")
		ENDDIALOG()	

	NODE(101)
		SAY("Dégage, va te foutre de la gueule de quelqu'un d'autre.")
		ENDDIALOG()
		
end