function DIALOG()

	NODE(0)
		SAY("Fr�res et soeurs, venez � moi, venez � Crahn! Renoncez au mal et aux t�n�bres! Nous pouvons vous guider, vous faire oublier vos angoisses! Changez, faites changer le monde! Faites-en un lieu de joie!")
		ANSWER("...",1)
					
	NODE(1)
		SAY("Le SEXE, la VIOLENCE et les DROGUES sont les fl�aux de notre monde moderne! Le sexe corrompt l'esprit et fait de la chair le centre du monde! La violence corrompt l'Homme et le transforme en animal! Les drogues vous montrent une libert� qui n'est en fait qu'une prison! Resaisissez-vous!")
		ANSWER("J'en ai assez entendu...",2)

	NODE(2)
		SAY("*Les gens s'en vont, mais vous pouvez encore entendre la voix du pr�tre r�sonner dans votre t�te.*")
		ENDDIALOG()
		
end