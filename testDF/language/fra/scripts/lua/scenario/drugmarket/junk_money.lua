function DIALOG()

	NODE(0)
		SAY("Hep toi, t'as un cr�dit? Il me faut un cr�dit!")
		ANSWER("Pour quoi faire?",1)
		ANSWER("L�che-moi, sale cloche, va gagner ta vie toi-m�me.",101)
				
	NODE(1)
		SAY("Il me faut un fix rapidement, je vais crever!")
		ANSWER("T'auras pas un rond. Je gaspille pas mon argent.",101)
		ANSWER("Voil� 20 cr�dits.",3)
		ANSWER("Avec 200 cr�dits tu devrais �tre tranquille.",5)
		ANSWER("Tiens, voil� 2000 cr�dits. Pense � moi quand tu rencontreras ton cr�ateur, d'accord? He.He.He!",7)

	NODE(3)
		TAKEMONEY(20)
		SAY("Merci mec.")
		ENDDIALOG()
		
	NODE(5)
		TAKEMONEY(200)
		SAY("Cool, �a pourra me payer un fix.")
		ENDDIALOG()
		
	NODE(7)
		TAKEMONEY(2000)
		SAY("Ouah! Attends-moi, monde merveilleux, j'arrive!")
		ENDDIALOG()
			
	NODE(101)
		SAY("Esp�ce de radin!")
		ENDDIALOG()	
		
end