function DIALOG()

	NODE(0)
		SAY("Ahhh fantastique... Je me sens revivre!")
		ANSWER("Pourquoi �a?",1)
				
	NODE(1)
		SAY("J'ai achet� quelques implants, et je me les suis fait poser. Et je n'ai plus mal au dos!")
		ANSWER("Cool! Je vais y penser, moi aussi.",2)
		ANSWER("Beurk. C'est pas mon truc, je reste naturel � 100%!",3)
		ANSWER("Je confirme, les implants c'est vraiment top!",4)
	NODE(2)
		SAY("Je ne peux que vous le conseiller!")
		ENDDIALOG()
			
	NODE(3)
		SAY("Vous avez rien compris. Ces renforts osseux dureront cent fois plus longtemps que des vrais os!")
		ANSWER("Je n'aime pas ce qui est artificiel.",5)	

	NODE(4)
		SAY("Vous en avez d�j�? Je pense que les prochains sur ma liste seront ces yeux de combat......")
		ENDDIALOG()
		
	NODE(5)
		SAY("On verra o� vous en serez dans cinquante ans!")
		ENDDIALOG()


end