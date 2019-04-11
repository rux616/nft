function DIALOG()

	NODE(0)
		SAY("Hep toi, t'as un crédit? Il me faut un crédit!")
		ANSWER("Pour quoi faire?",1)
		ANSWER("Lâche-moi, sale cloche, va gagner ta vie toi-même.",101)
				
	NODE(1)
		SAY("Il me faut un fix rapidement, je vais crever!")
		ANSWER("T'auras pas un rond. Je gaspille pas mon argent.",101)
		ANSWER("Voilà 20 crédits.",3)
		ANSWER("Avec 200 crédits tu devrais être tranquille.",5)
		ANSWER("Tiens, voilà 2000 crédits. Pense à moi quand tu rencontreras ton créateur, d'accord? He.He.He!",7)

	NODE(3)
		TAKEMONEY(20)
		SAY("Merci mec.")
		ENDDIALOG()
		
	NODE(5)
		TAKEMONEY(200)
		SAY("Cool, ça pourra me payer un fix.")
		ENDDIALOG()
		
	NODE(7)
		TAKEMONEY(2000)
		SAY("Ouah! Attends-moi, monde merveilleux, j'arrive!")
		ENDDIALOG()
			
	NODE(101)
		SAY("Espèce de radin!")
		ENDDIALOG()	
		
end