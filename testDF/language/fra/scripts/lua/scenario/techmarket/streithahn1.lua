function DIALOG()

	NODE(0)
		SAY("...et là je lui dis : recycle tes balles, c'est moins cher!")
		ANSWER("Euh... vous parlez de quoi?",1)
				
	NODE(1)
		SAY("Oh, haha, pardon, je discutais avec un pote...")
		ANSWER("A propos de quoi?",2)
		ANSWER("C'est pas mes affaires, je vous laisse.",3)
		
	NODE(2)
		SAY("Il dit qu'acheter des munitions, ça revient moins cher que de recycler. Il est bête!")
		ANSWER("Et il a raison! Ca vaut vraiment moins cher!",4)
		ANSWER("Jamais! Recycler, ça revient vraiment moins cher!",5)
	NODE(3)
		SAY("Ok...")
		ENDDIALOG()

	NODE(4)
		SAY("Pfft... foutaises!")
		ENDDIALOG()
		
	NODE(5)
		SAY("Alors, c'est qui qu'a raison?!")
		ANSWER("Content d'avoir pu rendre service.",6)
	NODE(6)
		SAY("Merci encore!")
		ENDDIALOG()
	
end