function DIALOG()

	NODE(0)
		DOYALIGNMENT()
			if( result==-1 ) then
			-- Fall 1: Reza Anh�nger
				SAY("Quoi?!.")
				ANSWER("Qu'est-ce qui se passe ici? Qu'est-ce qui m'est arriv�?",1)
				ANSWER("C'est l'Admin qui m'envoie. Je voudrais savoir o� je peux trouver des bots.",7)
				ANSWER("Tenez, j'ai trouv� quatre puces pour vous.",4)
			else
			-- Fall 2: Reza Feind	
				SAY("Vous avez d�j� �t� averti! Je ne veux pas avoir de probl�mes avec vous, quittez la zone MC5 imm�diatement!")
				ANSWER("Encore un de ces abrutis de gardes... *soupir* Et c'est quoi, la zone MC5?",11)
			end
		
		
	NODE(1)
		SAY("Laissez-moi tranquille! Je fais un travail stressant, et j'ai beaucoup de choses � faire. Si vous voulez des renseignements, allez poser vos questions � l'Admin qui se trouve l�-bas.")
		ANSWER("OK, je vais faire �a.",2)		
		ANSWER("Mais c'est ce que j'ai fait! Et maintenant, je comprends encore moins pourquoi je suis l�.",3)		
		
	NODE(2)	
		SAY("Je vous conseille de garder vos questions pour vous.")
		ENDDIALOG()

	NODE(3)
		SAY("Est-ce qu'il vous a parl� des probl�mes techniques?")
		ANSWER("Oui. J'ai trouv� 4 puces, comme il me l'a demand�. C'est � vous que je dois les remettre, c'est bien �a?",4)
		ANSWER("Oui, je suis au courant. Mais je voulais juste vous demander o� je peux trouver des bots.",7)
		ANSWER("Non, on ne m'a rien dit � ce sujet. Des probl�mes techniques?",6)

	NODE(4)
		TAKEITEMCNT(4039,4)
		if (result==1) then
			SAY("Ah, enfin! Il �tait temps! On va peut-�tre enfin pouvoir travailler, � pr�sent.")
			ANSWER("Attendez une minute! Vous n'�tiez pas cens� me donner de l'argent?",5)	
		else
			SAY("Il a d� vous dire qu'il me fallait 4 puces, je suppose. Pas de puces, pas d'argent. Allez, d�brouillez-vous!")
			ENDDIALOG()
		end
		
	NODE(5)
		SAY("Oui, oui. Voil� votre argent. Maintenant filez, et taisez-vous. Le GenRep est le petit appareil qui se trouve devant l'unit� de commande. Il vous transf�rera directement dans votre appartement. Bonne chance.")
		GIVEMONEY(3000)
		ENDDIALOG()

	NODE(6)
		SAY("Allez voir l'Admin. Il vous expliquera tout. Je vous ai d�j� dit que j'�tais occup�!")
		ENDDIALOG()

	NODE(7)
		SAY("Tout ce que je sais, c'est que la plupart des unit�s se sont �chapp�es de la zone MC5. En g�n�ral, on les trouve dans les unit�s de production d'�nergie, c'est l� qu'elles s'approvisionnent. Les puces ne sont pas optimis�es pour aller dans ce secteur. Mais vous allez devoir les trouver vous-m�me.")
		ENDDIALOG()

		
		
	NODE(11)
		SAY("Je n'ai pas l'autorisation de vous parler. Et de plus, j'ai du travail. Allez-vous en!")
		ENDDIALOG()
		
end
