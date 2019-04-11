function DIALOG()

	NODE(0)
		SAY("Frères et soeurs, venez à moi, venez à Crahn! Renoncez au mal et aux ténèbres! Nous pouvons vous guider, vous faire oublier vos angoisses! Changez, faites changer le monde! Faites-en un lieu de joie!")
		ANSWER("...",1)
					
	NODE(1)
		SAY("Le SEXE, la VIOLENCE et les DROGUES sont les fléaux de notre monde moderne! Le sexe corrompt l'esprit et fait de la chair le centre du monde! La violence corrompt l'Homme et le transforme en animal! Les drogues vous montrent une liberté qui n'est en fait qu'une prison! Resaisissez-vous!")
		ANSWER("J'en ai assez entendu...",2)

	NODE(2)
		SAY("*Les gens s'en vont, mais vous pouvez encore entendre la voix du prêtre résonner dans votre tête.*")
		ENDDIALOG()
		
end