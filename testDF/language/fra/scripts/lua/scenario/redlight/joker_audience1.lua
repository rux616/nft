function DIALOG()

	NODE(0)
		SAY("Hahaha... Ce type est terrible! Il a vraiment des blagues marrantes! Faut que vous �coutiez �a!")
		
		ANSWER("Il raconte des blagues?",1)
		ANSWER("Fichez-moi la paix!",100)
		
	NODE(1)
		SAY("Et quelles blagues! C'est du premier choix!")
		ANSWER("On va voir �a.",2)
		ANSWER("J'aime pas les blagues.",101)
		
	NODE(2)
		SAY("Ouais, demandez-lui ses blagues de cul, elles sont top!")
		ENDDIALOG()
			
	NODE(100)
		SAY("D�gage!")
		ENDDIALOG()	

	NODE(101)
		SAY("Vous savez pas ce que vous ratez...")
		ENDDIALOG()
		
end