function DIALOG()

	NODE(0)
		SAY("Des couleurs partout... c'est si beau...")
		ANSWER("T'as pris quoi?",1)
				
	NODE(1)
		SAY("Tout est si beau... si joyeux...")
		ANSWER("Encore un qui en a trop pris... Gamin, faut apprendre à doser un peu.",2)
				
	NODE(2)
		SAY(".....Je suis pas un gamin... Arrête d'onduler comme ça, tu me fais mal au crâne...")
		ENDDIALOG()

	
end