function DIALOG()

	NODE(0)
		SAY("Ils ont fouillé tout l'entrepôt là-bas derrière!")
		ANSWER("Et ensuite?",1)
		
	NODE(1)
		SAY("Vers Archer & Wesson. J'ai entendu parler d'une cave et de données...")
		ANSWER("Archer & Wesson? Une cave? Merci beaucoup.",2)
	NODE(2)
		SAY("Attends! Qu'est-ce que tu vas...")
		ANSWER("Je vais descendre et tous les tuer!",3)

	NODE(3)
		SAY("T'es malade! T'as pas une chance contre des S.T.O.R.M.-Bots!")
		ANSWER("Crois-moi, ça va bien se passer.",4)

	NODE(4)
		SAY("Attends, t'imagines pas ce qu'ils vont te faire! Ils vont t'arracher le cerveau, le rembobiner, et te transformer en zombie!")
		ENDDIALOG()


end