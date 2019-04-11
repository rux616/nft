function DIALOG()

	NODE(0)
		DOYALIGNMENT()
			if( result==-1 ) then
			-- Fall 1: Reza Anhänger
				SAY("Quoi?!.")
				ANSWER("Qu'est-ce qui se passe ici? Qu'est-ce qui m'est arrivé?",1)
				ANSWER("C'est l'Admin qui m'envoie. Je voudrais savoir où je peux trouver des bots.",7)
				ANSWER("Tenez, j'ai trouvé quatre puces pour vous.",4)
			else
			-- Fall 2: Reza Feind	
				SAY("Vous avez déjà été averti! Je ne veux pas avoir de problèmes avec vous, quittez la zone MC5 immédiatement!")
				ANSWER("Encore un de ces abrutis de gardes... *soupir* Et c'est quoi, la zone MC5?",11)
			end
		
		
	NODE(1)
		SAY("Laissez-moi tranquille! Je fais un travail stressant, et j'ai beaucoup de choses à faire. Si vous voulez des renseignements, allez poser vos questions à l'Admin qui se trouve là-bas.")
		ANSWER("OK, je vais faire ça.",2)		
		ANSWER("Mais c'est ce que j'ai fait! Et maintenant, je comprends encore moins pourquoi je suis là.",3)		
		
	NODE(2)	
		SAY("Je vous conseille de garder vos questions pour vous.")
		ENDDIALOG()

	NODE(3)
		SAY("Est-ce qu'il vous a parlé des problèmes techniques?")
		ANSWER("Oui. J'ai trouvé 4 puces, comme il me l'a demandé. C'est à vous que je dois les remettre, c'est bien ça?",4)
		ANSWER("Oui, je suis au courant. Mais je voulais juste vous demander où je peux trouver des bots.",7)
		ANSWER("Non, on ne m'a rien dit à ce sujet. Des problèmes techniques?",6)

	NODE(4)
		TAKEITEMCNT(4039,4)
		if (result==1) then
			SAY("Ah, enfin! Il était temps! On va peut-être enfin pouvoir travailler, à présent.")
			ANSWER("Attendez une minute! Vous n'étiez pas censé me donner de l'argent?",5)	
		else
			SAY("Il a dû vous dire qu'il me fallait 4 puces, je suppose. Pas de puces, pas d'argent. Allez, débrouillez-vous!")
			ENDDIALOG()
		end
		
	NODE(5)
		SAY("Oui, oui. Voilà votre argent. Maintenant filez, et taisez-vous. Le GenRep est le petit appareil qui se trouve devant l'unité de commande. Il vous transfèrera directement dans votre appartement. Bonne chance.")
		GIVEMONEY(3000)
		ENDDIALOG()

	NODE(6)
		SAY("Allez voir l'Admin. Il vous expliquera tout. Je vous ai déjà dit que j'étais occupé!")
		ENDDIALOG()

	NODE(7)
		SAY("Tout ce que je sais, c'est que la plupart des unités se sont échappées de la zone MC5. En général, on les trouve dans les unités de production d'énergie, c'est là qu'elles s'approvisionnent. Les puces ne sont pas optimisées pour aller dans ce secteur. Mais vous allez devoir les trouver vous-même.")
		ENDDIALOG()

		
		
	NODE(11)
		SAY("Je n'ai pas l'autorisation de vous parler. Et de plus, j'ai du travail. Allez-vous en!")
		ENDDIALOG()
		
end
