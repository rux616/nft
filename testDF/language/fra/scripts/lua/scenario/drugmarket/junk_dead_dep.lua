function DIALOG()

	NODE(0)
		SAY("Mon dieu, oh mon dieu!.")
		ANSWER("Qu'est-ce que tu as?",1)
				
	NODE(1)
		SAY("Il est mort! Ces putain de drogues l'ont tu�!")
		ANSWER("Le pauvre, il aurait d� commencer par pas en prendre...",101)
		ANSWER("D�sol� pour toi, mec. Il a pris quoi? Une dose pas nette?",2)
		
	NODE(2)
		SAY("J'en sais rien, mec. On se fournit toujours au m�me endroit.")
		ANSWER("Les drogues sont un fl�au. Ne touche plus � �a.",100)
			
	NODE(100)
		SAY("T'as raison. J'arr�te �a, j'ai trop souffert! Merci!")
		ENDDIALOG()	

	NODE(101)
		SAY("D�gage, va te foutre de la gueule de quelqu'un d'autre.")
		ENDDIALOG()
		
end