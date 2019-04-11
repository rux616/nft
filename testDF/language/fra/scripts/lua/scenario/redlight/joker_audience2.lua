function DIALOG()


	NODE(0)
		SAY("Ce type raconte des blagues. Je lui en ai acheté une. Je suis trop con...")
		ANSWER("Qu'est-ce qu'il y a de bête à payer pour des blagues?",2)
				
	NODE(2)
		SAY("Les siennes sont tellement nulles...")
		ENDDIALOG()
			
	NODE(100)
		SAY("Merci, mec. A la prochaine.")
		ENDDIALOG()	


		
end