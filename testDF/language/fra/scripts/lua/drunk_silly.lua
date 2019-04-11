-- A silly drunk for a bar

function DIALOG()

	NODE(0)

		SAY("Ravi de vous rencontrer. Tous les trois!")
		SAY("Ma foi, c'est de fort belles fringues que t'as là. Sans déconner!")
		SAY("Mmmmais je suis farpaitement sobre, merchi beaucoup!")

		ANSWER("Un petit dernier pour la route?",1)
		ANSWER("Allez, je vous en remets un!",1)
		ANSWER("Vous prendrez bien un autre verre?",1)
		ANSWER("Un verre de plus, et je vais devoir vous ramener chez vous en brouette.",2)
		ANSWER("L'alcool, c'est le Mal! Vous devriez savoir ça!",2)
		ANSWER("Je pense que vous avez déjà bien assez bu.",2)
		ANSWER("J'espère que vous ne comptez pas rentrer chez vous dans cet état?",3)
		ANSWER("Vous connaissez celle du cheval qui entre dans un bar?",3)
		ANSWER("Vous passez boire souvent, ici?",3)
		ANSWER("Pardon de vous avoir dérangé.",4)
		ANSWER("Pardon, je me suis trompé de personne.",4)
		ANSWER("Pardon, je ne voulais pas vous déranger.",4)


	NODE(1)

		SAY("Je pense que j'ai assez bu. M'enfin, peut-être pas, après tout.")
		SAY("Y a pas assez d'alcool dans le monde.")
		SAY("Vous pensez vraiment que je devrais m'en jeter un autre?")

		ANSWER("Je m'en vais, j'ai besoin de parler à quelqu'un qui a l'esprit moins éthéré.",4)
		ANSWER("En effet, c'est une mauvaise idée. Je devrais peut-être vous abandonner là.",4)
		ANSWER("Désolé, je suis en retard à un rendez-vous. Au plaisir!",4)
		ANSWER("OK, peut-être pas, tout compte fait. Parlons d'autre chose.",0)
		ANSWER("Bon, parlons d'autre chose.",0)
		ANSWER("Ce n'est pas ce que je voulais dire.",0)


	NODE(2)

		SAY("Voui m'sieur le CopBot. A vos ordres!")
		SAY("C'est de l'alcool sans alcool m'sieur, je vous le jure!")
		SAY("Je suis toujours mort de soif. C'est un problème hormonal, qu'on m'a expliqué.")

		ANSWER("Bon, on ne pourra pas dire que je n'ai pas essayé.",4)
		ANSWER("En fait, c'était une mauvaise idée de vous parler.",4)
		ANSWER("Je crois que votre cas est complètement irrécupérable. Au revoir!",4)
		ANSWER("Bon. Essayons encore une fois.",0)
		ANSWER("Je crois que je vais recommencer depuis le début.",0)
		ANSWER("OK, ça n'était pas la meilleure question à vous poser, en effet.",0)

	
	NODE(3)

		SAY("Vous et moi, on devrait faire du théâtre.")
		SAY("Allez, venez picoler avec moi, ça vous fera du bien.")
		SAY("Vot' pitit numéro de comédien, va falloir le perfectionner un peu. Voire beaucoup.")

		ANSWER("Bon, je vais réfléchir à quelque chose de drôle, alors.",4)
		ANSWER("OK, j'irai raconter mes blagues à des gens qui sont capables d'apprécier!",4)
		ANSWER("Moi je trouvais ça drôle. Bon, je vais m'en aller...",4)
		ANSWER("Attendez, j'en ai une encore plus drôle.",0)
		ANSWER("Bon, je vais reprendre depuis le début.",0)
		ANSWER("J'ai le bon rythme, là. Je vais vous en raconter une autre.",0)

	
	NODE(4)

		SAY("Faites attention à la porte quand vous sortez.")
		SAY("*BEUARP*")
		SAY("De toute façon je bois très mieux que vous!")
		ENDDIALOG()

end