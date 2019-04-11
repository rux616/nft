function DIALOG()

	NODE(0)
		SAY("...et là je lui dis : achète des balles, c'est moins cher!")
		ANSWER("Euh... vous parlez de quoi?",1)
				
	NODE(1)
		SAY("Oh, haha, pardon, je discutais avec un pote...")
		ANSWER("A propos de quoi?",2)
		ANSWER("C'est pas mes affaires, je vous laisse.",3)
		
	NODE(2)
		SAY("Il pense que recycler des munitions ça revient moins cher que des les acheter en magasin.")
		ANSWER("Et il a raison! Ca vaut vraiment moins cher!",4)
		ANSWER("C'est ridicule, acheter en magasin c'est moins cher et plus rapide!",5)
	NODE(3)
		SAY("A la prochaine!")
		ENDDIALOG()

	NODE(4)
		SAY("Vous voulez pas le reconnaître, mais j'ai raison!")
		ENDDIALOG()
		
	NODE(5)
		SAY("Et voilà, encore quelqu'un qui confirme!")
		ANSWER("Content d'avoir pu rendre service.",6)
	NODE(6)
		SAY("
		
		ENDDIALOG()
	
end