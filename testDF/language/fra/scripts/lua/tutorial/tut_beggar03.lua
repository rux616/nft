function DIALOG()

	NODE(0)
		SAY("Quel bordel!")
		ANSWER("C'est qui ce type?",1)
		
	NODE(1)
		SAY("Un pote � moi qu'ils viennent de flinguer. Je comprends toujours pas comment je respire encore et pas lui.")
		ANSWER("C'�tait qui? A quoi ils ressemblaient?",2)
	NODE(2)
		SAY("C'�tait qui? J'en sais que dalle. On aurait dit deux CopBots, mais noirs... Putain, ils avaient l'air violent!")
		ENDDIALOG()


end