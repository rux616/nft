-- A silly drunk for a bar

function DIALOG()

	NODE(0)

		SAY("Ravi de vous rencontrer. Tous les trois!")
		SAY("Ma foi, c'est de fort belles fringues que t'as l�. Sans d�conner!")
		SAY("Mmmmais je suis farpaitement sobre, merchi beaucoup!")

		ANSWER("Un petit dernier pour la route?",1)
		ANSWER("Allez, je vous en remets un!",1)
		ANSWER("Vous prendrez bien un autre verre?",1)
		ANSWER("Un verre de plus, et je vais devoir vous ramener chez vous en brouette.",2)
		ANSWER("L'alcool, c'est le Mal! Vous devriez savoir �a!",2)
		ANSWER("Je pense que vous avez d�j� bien assez bu.",2)
		ANSWER("J'esp�re que vous ne comptez pas rentrer chez vous dans cet �tat?",3)
		ANSWER("Vous connaissez celle du cheval qui entre dans un bar?",3)
		ANSWER("Vous passez boire souvent, ici?",3)
		ANSWER("Pardon de vous avoir d�rang�.",4)
		ANSWER("Pardon, je me suis tromp� de personne.",4)
		ANSWER("Pardon, je ne voulais pas vous d�ranger.",4)


	NODE(1)

		SAY("Je pense que j'ai assez bu. M'enfin, peut-�tre pas, apr�s tout.")
		SAY("Y a pas assez d'alcool dans le monde.")
		SAY("Vous pensez vraiment que je devrais m'en jeter un autre?")

		ANSWER("Je m'en vais, j'ai besoin de parler � quelqu'un qui a l'esprit moins �th�r�.",4)
		ANSWER("En effet, c'est une mauvaise id�e. Je devrais peut-�tre vous abandonner l�.",4)
		ANSWER("D�sol�, je suis en retard � un rendez-vous. Au plaisir!",4)
		ANSWER("OK, peut-�tre pas, tout compte fait. Parlons d'autre chose.",0)
		ANSWER("Bon, parlons d'autre chose.",0)
		ANSWER("Ce n'est pas ce que je voulais dire.",0)


	NODE(2)

		SAY("Voui m'sieur le CopBot. A vos ordres!")
		SAY("C'est de l'alcool sans alcool m'sieur, je vous le jure!")
		SAY("Je suis toujours mort de soif. C'est un probl�me hormonal, qu'on m'a expliqu�.")

		ANSWER("Bon, on ne pourra pas dire que je n'ai pas essay�.",4)
		ANSWER("En fait, c'�tait une mauvaise id�e de vous parler.",4)
		ANSWER("Je crois que votre cas est compl�tement irr�cup�rable. Au revoir!",4)
		ANSWER("Bon. Essayons encore une fois.",0)
		ANSWER("Je crois que je vais recommencer depuis le d�but.",0)
		ANSWER("OK, �a n'�tait pas la meilleure question � vous poser, en effet.",0)

	
	NODE(3)

		SAY("Vous et moi, on devrait faire du th��tre.")
		SAY("Allez, venez picoler avec moi, �a vous fera du bien.")
		SAY("Vot' pitit num�ro de com�dien, va falloir le perfectionner un peu. Voire beaucoup.")

		ANSWER("Bon, je vais r�fl�chir � quelque chose de dr�le, alors.",4)
		ANSWER("OK, j'irai raconter mes blagues � des gens qui sont capables d'appr�cier!",4)
		ANSWER("Moi je trouvais �a dr�le. Bon, je vais m'en aller...",4)
		ANSWER("Attendez, j'en ai une encore plus dr�le.",0)
		ANSWER("Bon, je vais reprendre depuis le d�but.",0)
		ANSWER("J'ai le bon rythme, l�. Je vais vous en raconter une autre.",0)

	
	NODE(4)

		SAY("Faites attention � la porte quand vous sortez.")
		SAY("*BEUARP*")
		SAY("De toute fa�on je bois tr�s mieux que vous!")
		ENDDIALOG()

end