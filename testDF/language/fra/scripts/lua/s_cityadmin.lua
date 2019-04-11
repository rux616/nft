function DIALOG()

	NODE(0)

		
		SAY("Bienvenue � CityAdmin, votre source d'information sur la ville de Neocron.")

		ANSWER("Qu'est-ce que je peux trouver ici?",1)
			ANSWER("Je voudrais de l'information au sujet des terminaux.",2)
			ANSWER("Pourriez-vous m'expliquer les fonctions des terminaux?",2)
		ANSWER("Pouvez-vous me parler des diff�rentes factions de Neocron?",3)
		ANSWER("J'aimerais en savoir plus sur les diff�rentes factions de Neocron.",3)
			ANSWER("Je voudrais de l'information sur les quartiers de Neocron.",4)
			ANSWER("J'aimerais de l'information sur les diff�rents secteurs de Neocron.",4)
		ANSWER("Merci pour votre aide, mais il faut que je m'en aille.",30)
		ANSWER("A plus tard.",30)
		ANSWER("Merci pour votre aide, au revoir.",30)
		ANSWER("Il faut que j'y aille. A plus tard.",30)
		ANSWER("Au revoir.",30)


	NODE(1)

		SAY("Vous trouverez aux �tages sup�rieurs le QG de Diamond Immobilier, ainsi que deux salles de conf�rence du ConCenter et un JobCenter.")

		ANSWER("Qu'est-ce qu'un ConCenter?",5)
			ANSWER("Et maintenant, tout autre chose...",29)
			ANSWER("OK, �a suffira. J'ai d'autres questions.",29)
			ANSWER("J'en ai assez entendu. Mais j'ai d'autres questions.",29)
			ANSWER("Int�ressant. Une autre question, maintenant.",29)


	NODE(2)

		SAY("Bien s�r, au sujet de quel terminal voulez-vous des informations?")
		SAY("Sur quel genre de terminal recherchez-vous des informations?")
		SAY("Quel genre de terminal vous int�resse?")
		SAY("Sur quel terminal d�sirez-vous des informations?")

		ANSWER("Parlez-moi des terminaux de CityAdmin.",6)
		ANSWER("A quoi servent les terminaux de cette salle?",6)
			ANSWER("A quoi sert CityCom?",7)
			ANSWER("Qu'est-ce que je peux faire avec CityCom?",7)
		ANSWER("A quoi servent les LawTerms?",8)
		ANSWER("Qu'est-ce que je peux faire avec un LawTerm?",8)
			ANSWER("Qu'est-ce qu'un HomeTerm?",9)
			ANSWER("A quoi sert un HomeTerm?",9)
			ANSWER("Parlez-moi des HomeTerms.",9)
		ANSWER("Et maintenant, tout autre chose...",29)
		ANSWER("OK, j'en sais assez. J'ai une autre question.",29)
		ANSWER("J'en sais assez. Mais j'ai d'autres questions.",29)
		ANSWER("Int�ressant. Mais j'ai d'autres questions.",29)
			ANSWER("Merci pour votre aide, mais il faut que j'y aille.",30)
			ANSWER("Salut, � plus tard!",30)
			ANSWER("Merci pour votre aide.  Au revoir.",30)
			ANSWER("Il faut que je m'en aille. A plus tard.",30)
			ANSWER("Au revoir.",30)

	

	NODE(3)

		SAY("Sur quelle faction recherchez-vous des informations?")
		SAY("Quelle est la faction qui vous int�resse?")

		ANSWER("Parlez-moi de Tangent Technologies.",10)
		ANSWER("Qu'est-ce que vous savez sur Tangent Technologies?",10)
			ANSWER("Que savez-vous sur BioTech?",11)
			ANSWER("J'aimerais des informations sur BioTech.",11)
		ANSWER("Quelle est l'activit� de NEXT?",12)
			ANSWER("Avez-vous des informations au sujet de ProtoPharm?",13)
		ANSWER("Que savez-vous sur Diamond Immobilier?",14)
			ANSWER("J'aimerais en savoir plus sur CityMercs.",15)
			ANSWER("Que savez-vous de CityMercs?",15)
		ANSWER("Avez-vous des informations concernant ce groupe de Moines PSI qui vit � Neocron?",16)
			ANSWER("Et maintenant, tout autre chose...",29)
			ANSWER("OK, j'en sais assez. J'ai une autre question.",29)
			ANSWER("J'en sais assez. Mais j'ai d'autres questions.",29)
			ANSWER("C'est int�ressant, mais j'ai une autre question � vous poser.",29)
		ANSWER("Merci pour votre aide, mais il faut que j'y aille.",30)
		ANSWER("Salut, � plus tard!",30)
		ANSWER("Merci pour votre aide.  Au revoir.",30)
		ANSWER("Il faut que je m'en aille. A plus tard.",30)
		ANSWER("Au revoir.",30)

	

	NODE(4)

		SAY("Quel est le quartier qui vous int�resse?")
		SAY("Sur quel quartier aimeriez-vous avoir des informations?")

		ANSWER("Parlez-moi de la Plaza.",25)
		ANSWER("je cherche des informations sur la Plaza.",25)
		ANSWER("O� se trouve la Plaza?",25)
			ANSWER("Que pouvez-vous m'apprendre sur Via Rosso?",26)
			ANSWER("Avez-vous des informations sur Via Rosso?",26)
		ANSWER("O� est-ce que je peux aller pour trouver de l'action?",27)
		ANSWER("Qu'est-ce qui se passe � Pepper Park?",27)
		ANSWER("J'aimerais des informations sur Pepper Park.",27)
			ANSWER("Savez-vous quelque chose sur l'Outzone?",28)
			ANSWER("Donnez-moi des �l�ments concernant l'Outzone.",28)
		ANSWER("Et maintenant, tout autre chose...",29)
		ANSWER("OK, j'en sais assez. J'ai une autre question.",29)
		ANSWER("J'en sais assez. Mais j'ai d'autres questions.",29)
		ANSWER("C'est int�ressant, mais j'ai une autre question � vous poser.",29)
			ANSWER("Merci pour votre aide, mais il faut que j'y aille.",30)
			ANSWER("Salut, � plus tard!",30)
			ANSWER("Merci pour votre aide.  Au revoir.",30)
			ANSWER("Il faut que je m'en aille. A plus tard.",30)
			ANSWER("Au revoir.",30)

	

	NODE(5)

		SAY("Les salles de conf�rence du ConCenter sont des endroits parfaits pour parler sans crainte d'�tre �cout�. Cette structure vous est offerte par le gouvernement, et aucun frais ne vous sera factur�.")

		ANSWER("Et maintenant, tout autre chose...",29)
		ANSWER("OK, j'en sais assez. J'ai une autre question.",29)
		ANSWER("J'en sais assez. Mais j'ai d'autres questions.",29)
		ANSWER("C'est int�ressant, mais j'ai une autre question � vous poser.",29)

	

	NODE(6)

		SAY("Utilisez les terminaux de CityAdmin autant que vous le d�sirez. Ils sont une excellente source d'informations.","Ces terminaux sont un service offert par la ville de Neocron. Leur utilisation est gratuite.")

		ANSWER("Quel genre d'information est-ce que je peux trouver sur ces terminaux?",17)
			ANSWER("Merci, �a suffira pour l'instant. J'aimerais plus d'informations sur les autres.",2)
			ANSWER("Int�ressant. Et pour les autres terminaux?",2)
		ANSWER("Et maintenant, tout autre chose...",29)
		ANSWER("OK, j'en sais assez. J'ai une autre question.",29)
		ANSWER("J'en sais assez. Mais j'ai d'autres questions.",29)
		ANSWER("C'est int�ressant, mais j'ai une autre question � vous poser.",29)

	

	NODE(7)

		SAY("Utilisez CityCom pour obtenir des informations sur les derni�res propositions d'emploi et statistiques.","Vous cherchez du travail? Alors consultez les offres d'emploi et les statistiques de CityCom, elles sont fr�quemment mises � jour.")

		ANSWER("Merci, �a suffira pour l'instant. J'aimerais plus d'informations sur les autres.",2)
		ANSWER("Int�ressant. Et pour les autres terminaux?",2)
			ANSWER("Et maintenant, tout autre chose...",29)
			ANSWER("OK, j'en sais assez. J'ai une autre question.",29)
			ANSWER("J'en sais assez. Mais j'ai d'autres questions.",29)
			ANSWER("C'est int�ressant, mais j'ai une autre question � vous poser.",29)

	

	NODE(8)

		SAY("LawTerm est une source d'information concernant tout ce qui touche � la loi et � l'ordre.")

		ANSWER("Quel genre d'informations exactement?",19)
			ANSWER("Merci, �a suffira pour l'instant. J'aimerais plus d'informations sur les autres.",2)
			ANSWER("Int�ressant. Et pour les autres terminaux?",2)
		ANSWER("Et maintenant, tout autre chose...",29)
		ANSWER("OK, j'en sais assez. J'ai une autre question.",29)
		ANSWER("J'en sais assez. Mais j'ai d'autres questions.",29)
		ANSWER("C'est int�ressant, mais j'ai une autre question � vous poser.",29)

	
	NODE(9)

		SAY("HomeTerm est votre terminal personnel, install� pour vous dans votre appartement par la ville de Neocron.")

		ANSWER("Qu'est-ce que je pourrai faire avec un HomeTerm?",21)
		ANSWER("Et � quoi est-ce qu'un HomeTerm peut me servir?",21)
			ANSWER("Merci, �a suffira pour l'instant. J'aimerais plus d'informations sur les autres.",2)
			ANSWER("Int�ressant. Et pour les autres terminaux?",2)

	

	NODE(10)

		SAY("Tangent Technologies est une compagnie qui d�veloppe les armes les plus perfectionn�es de Neocron. Elle a �t� fond�e par Robert Jordan, et est maintenant dirig�e par son fils, Robert Jordan Jr.")

		ANSWER("Bien, merci. Maintenant, au sujet des autres factions...",3)
		ANSWER("OK, �a suffira. Et a propos des autres factions?",3)
			ANSWER("Et maintenant, tout autre chose...",29)
			ANSWER("OK, j'en sais assez. J'ai une autre question.",29)
			ANSWER("J'en sais assez. Mais j'ai d'autres questions.",29)
			ANSWER("C'est int�ressant, mais j'ai une autre question � vous poser.",29)

	

	NODE(11)

		SAY("BioTech Industries est la source de tous les �quipements techniques existants, et �galement des implants si c'est ce que vous recherchez.")

		ANSWER("Bien, merci. Maintenant, au sujet des autres factions...",3)
		ANSWER("OK, �a suffira. Et a propos des autres factions?",3)
			ANSWER("Et maintenant, tout autre chose...",29)
			ANSWER("OK, j'en sais assez. J'ai une autre question.",29)
			ANSWER("J'en sais assez. Mais j'ai d'autres questions.",29)
			ANSWER("C'est int�ressant, mais j'ai une autre question � vous poser.",29)


	

	NODE(12)

		SAY("NEXT est en fait l'acronyme de Neocron Exclusive Transport. Cette entreprise produit des vaisseaux spatiaux et des v�hicules terrestres.")

		ANSWER("Bien, merci. Maintenant, au sujet des autres factions...",3)
		ANSWER("OK, �a suffira. Et a propos des autres factions?",3)
			ANSWER("Et maintenant, tout autre chose...",29)
			ANSWER("OK, j'en sais assez. J'ai une autre question.",29)
			ANSWER("J'en sais assez. Mais j'ai d'autres questions.",29)
			ANSWER("C'est int�ressant, mais j'ai une autre question � vous poser.",29)

	

	NODE(13)

		SAY("Si vous cherchez des produits pharmaceutiques, je vous sugg�re de vous adresser � ProtoPharm.")

		ANSWER("Bien, merci. Maintenant, au sujet des autres factions...",3)
		ANSWER("OK, �a suffira. Et a propos des autres factions?",3)
			ANSWER("Et maintenant, tout autre chose...",29)
			ANSWER("OK, j'en sais assez. J'ai une autre question.",29)
			ANSWER("J'en sais assez. Mais j'ai d'autres questions.",29)
			ANSWER("C'est int�ressant, mais j'ai une autre question � vous poser.",29)


	

	NODE(14)

		SAY("Diamond Immobilier fournit la plupart des logements de Neocron.")

		ANSWER("Bien, merci. Maintenant, au sujet des autres factions...",3)
		ANSWER("OK, �a suffira. Et a propos des autres factions?",3)
			ANSWER("Et maintenant, tout autre chose...",29)
			ANSWER("OK, j'en sais assez. J'ai une autre question.",29)
			ANSWER("J'en sais assez. Mais j'ai d'autres questions.",29)
			ANSWER("C'est int�ressant, mais j'ai une autre question � vous poser.",29)


	

	NODE(15)

		SAY("CityMercs? Je connais peu de choses � leur sujet, et tr�s franchement je ne cherche pas � en savoir plus.")

		ANSWER("Bien, merci. Maintenant, au sujet des autres factions...",3)
		ANSWER("OK, �a suffira. Et a propos des autres factions?",3)
			ANSWER("Et maintenant, tout autre chose...",29)
			ANSWER("OK, j'en sais assez. J'ai une autre question.",29)
			ANSWER("J'en sais assez. Mais j'ai d'autres questions.",29)
			ANSWER("C'est int�ressant, mais j'ai une autre question � vous poser.",29)


	

	NODE(16)

		SAY("Tout ce que je connais au sujet de la secte de Crahn, c'est que vous pourrez la trouver dans l'Outzone et dans Pepper Park. J'esp�re que �a vous aide un peu...")

		ANSWER("Bien, merci. Maintenant, au sujet des autres factions...",3)
		ANSWER("OK, �a suffira. Et a propos des autres factions?",3)
			ANSWER("O� est-ce que je dois aller pour trouver un peu d'action?",23)
			ANSWER("Qu'est-ce qui se passe � Pepper Park?",23)
			ANSWER("J'aimerais en savoir plus sur Pepper Park.",23)
		ANSWER("Savez-vous quelque chose sur l'Outzone?",24)
		ANSWER("Donnez-moi des informations sur l'Outzone.",24)
			ANSWER("Et maintenant, tout autre chose...",29)
			ANSWER("OK, j'en sais assez. J'ai une autre question.",29)
			ANSWER("J'en sais assez. Mais j'ai d'autres questions.",29)
			ANSWER("C'est int�ressant, mais j'ai une autre question � vous poser.",29)

	

	NODE(17)

		SAY("Vous pouvez y v�rifier vos propres informations, lire les toutes derni�res nouvelles, afficher certaines informations concernant les autres habitants de Neocron, et acc�der au r�seau CityCom.")

		ANSWER("CityCom?",18)
		ANSWER("Qu'est-ce que CityCom, au juste?",18)
		ANSWER("Parlez-moi de CityCom.",18)
			ANSWER("Et maintenant, tout autre chose...",29)
			ANSWER("OK, j'en sais assez. J'ai une autre question.",29)
			ANSWER("J'en sais assez. Mais j'ai d'autres questions.",29)
			ANSWER("C'est int�ressant, mais j'ai une autre question � vous poser.",29)

	

	NODE(18)

		SAY("CityCom est un vaste r�seau informatique qui est utilis� par les compagnies et par les particuliers. De nombreuses informations peuvent �tre recueillies sur ce r�seau, si vous savez ce que vous cherchez.")

		ANSWER("Bien, merci. Maintenant, au sujet des autres terminaux...",2)
		ANSWER("OK, �a suffira. Et a propos des autres terminaux?",2)
			ANSWER("Et maintenant, tout autre chose...",29)
			ANSWER("OK, j'en sais assez. J'ai une autre question.",29)
			ANSWER("J'en sais assez. Mais j'ai d'autres questions.",29)
			ANSWER("C'est int�ressant, mais j'ai une autre question � vous poser.",29)


	

	NODE(19)

		SAY("Vos pourrez y trouver des informations sur les lois en vigueur, ainsi que sur les hors-la-loi. Vous pourrez y trouver les annonces polici�res ainsi que la liste des personnes qui ont �t� bannies de Neocron pour une raison ou pour une autre.")

		ANSWER("Parlez-moi de cette liste, �a m'int�resse.",20)
		ANSWER("Cette liste m'int�resse.",20)
			ANSWER("Bien, merci. Maintenant, au sujet des autres terminaux...",2)
			ANSWER("OK, �a suffira. Et a propos des autres terminaux?",2)
		ANSWER("Et maintenant, tout autre chose...",29)
		ANSWER("OK, j'en sais assez. J'ai une autre question.",29)
		ANSWER("J'en sais assez. Mais j'ai d'autres questions.",29)
		ANSWER("C'est int�ressant, mais j'ai une autre question � vous poser.",29)

	

	NODE(20)

		SAY("Sur cette liste se trouvent les rebuts de la soci�t� de Neocron.  Faites attention, la plupart de ces individus sont arm�s et tr�s dangereux.")

			ANSWER("Bien, merci. Maintenant, au sujet des autres terminaux...",2)
			ANSWER("OK, �a suffira. Et a propos des autres terminaux?",2)
		ANSWER("Et maintenant, tout autre chose...",29)
		ANSWER("OK, j'en sais assez. J'ai une autre question.",29)
		ANSWER("J'en sais assez. Mais j'ai d'autres questions.",29)
		ANSWER("C'est int�ressant, mais j'ai une autre question � vous poser.",29)

	

	NODE(21)

		SAY("Gr�ce aux HomeTerms, vous pouvez consulter vos mails, lire les bulletins d'information, en apprendre davantage sur les factions de Neocron et obtenir des descriptions techniques de certains objets. Vous disposez sur votre HomeTerm des m�mes options que CityCom, et vous pouvez g�rer votre compte depuis chez vous.")

		ANSWER("Autre chose?",22)
		ANSWER("Est-ce qu'il y a d'autres fonctions?",22)
			ANSWER("Bien, merci. Maintenant, au sujet des autres terminaux...",2)
			ANSWER("OK, �a suffira. Et a propos des autres terminaux?",2)
		ANSWER("Et maintenant, tout autre chose...",29)
		ANSWER("OK, j'en sais assez. J'ai une autre question.",29)
		ANSWER("J'en sais assez. Mais j'ai d'autres questions.",29)
		ANSWER("C'est int�ressant, mais j'ai une autre question � vous poser.",29)

	

	NODE(22)

		SAY("Vous pourrez �galement g�rer l'argent pr�sent sur votre compte, y compris faire des investissements en bourse.")
		SAY("HomeTerm vous donne les m�mes possibilit�s que CityCom. Par exemple, vous pouvez consulter les derni�res offres d'emploi.")
		SAY("Evidemment, vous pourrez acc�der � CityCom depuis votre HomeTerm.")

			ANSWER("Bien, merci. Maintenant, au sujet des autres terminaux...",2)
			ANSWER("OK, �a suffira. Et a propos des autres terminaux?",2)
		ANSWER("Et maintenant, tout autre chose...",29)
		ANSWER("OK, j'en sais assez. J'ai une autre question.",29)
		ANSWER("J'en sais assez. Mais j'ai d'autres questions.",29)
		ANSWER("C'est int�ressant, mais j'ai une autre question � vous poser.",29)

	

	NODE(23)

		SAY("Si vous voulez vous faire plaisir, je vous sugg�re Pepper Park. La vie nocturne y est particuli�rement anim�e. Le port d'armes y est officiellement interdit, mais peu de gens se soucient de la loi lorsqu'il n'y a pas de CopBots pr�sents. La criminalit� a toujours �t� un probl�me dans Pepper Park.")

			ANSWER("Bien, merci. Maintenant, au sujet des autres quartiers...",4)
			ANSWER("OK, �a suffira. Et a propos des autres quartiers?",4)
		ANSWER("Et maintenant, tout autre chose...",29)
		ANSWER("OK, j'en sais assez. J'ai une autre question.",29)
		ANSWER("J'en sais assez. Mais j'ai d'autres questions.",29)
		ANSWER("C'est int�ressant, mais j'ai une autre question � vous poser.",29)
	
	

	NODE(24)

		SAY("Jadis, l'Outzone �tait pleine de vie. Mais maintenant que l'industrie spatiale n'existe plus, la pauvret� et le chaos dominent dans ce secteur immense. Sa superficie fait le triple de celle de tous les autres secteurs combin�s. Peut-�tre est-ce la raison pour laquelle le NCPD n'est pas parvenu � y maintenir l'ordre et a �t� contraint de l'abandonner.")

			ANSWER("Bien, merci. Maintenant, au sujet des autres quartiers...",4)
			ANSWER("OK, �a suffira. Et a propos des autres quartiers?",4)
		ANSWER("Et maintenant, tout autre chose...",29)
		ANSWER("OK, j'en sais assez. J'ai une autre question.",29)
		ANSWER("J'en sais assez. Mais j'ai d'autres questions.",29)
		ANSWER("C'est int�ressant, mais j'ai une autre question � vous poser.",29)
	

	NODE(25)

		SAY("La Plaza est un secteur neutre et bien entretenu. Vous y trouverez le NCPD, CityAdmin, le ConCenter, divers terminaux, ainsi que des magasins dans lesquels vous pourrez acheter tout l'�quipement dont vous avez besoin. L'utilisation des armes est interdite dans cette zone, et sauf si vous �tes press� de mourir, je vous conseille de vous plier � cette r�gle.")

		ANSWER("J'aimerais avoir des informations concernant les terminaux de la Plaza.",2)
			ANSWER("Bien, merci. Maintenant, au sujet des autres quartiers...",4)
			ANSWER("OK, �a suffira. Et a propos des autres quartiers?",4)
		ANSWER("Et maintenant, tout autre chose...",29)
		ANSWER("OK, j'en sais assez. J'ai une autre question.",29)
		ANSWER("J'en sais assez. Mais j'ai d'autres questions.",29)
		ANSWER("C'est int�ressant, mais j'ai une autre question � vous poser.",29)

	

	NODE(26)

		SAY("Dans Via Rosso, vous aurez des difficult�s � trouver des produits bon march�. La banque centrale et la Bourse s'y trouvent. Vous y trouverez �galement de nombreux restaurants et bars luxueux. L'utilisation des armes dans Via Rosso est interdite.")

			ANSWER("Bien, merci. Maintenant, au sujet des autres quartiers...",4)
			ANSWER("OK, �a suffira. Et a propos des autres quartiers?",4)
		ANSWER("Et maintenant, tout autre chose...",29)
		ANSWER("OK, j'en sais assez. J'ai une autre question.",29)
		ANSWER("J'en sais assez. Mais j'ai d'autres questions.",29)
		ANSWER("C'est int�ressant, mais j'ai une autre question � vous poser.",29)

	

	NODE(27)

		SAY("Si vous voulez vous faire plaisir, je vous sugg�re Pepper Park. La vie nocturne y est particuli�rement anim�e. Le port d'armes y est officiellement interdit, mais peu de gens se soucient de la loi lorsqu'il n'y a pas de CopBots pr�sents. La criminalit� a toujours �t� un probl�me dans Pepper Park.")

			ANSWER("Bien, merci. Maintenant, au sujet des autres quartiers...",4)
			ANSWER("OK, �a suffira. Et a propos des autres quartiers?",4)
		ANSWER("Et maintenant, tout autre chose...",29)
		ANSWER("OK, j'en sais assez. J'ai une autre question.",29)
		ANSWER("J'en sais assez. Mais j'ai d'autres questions.",29)
		ANSWER("C'est int�ressant, mais j'ai une autre question � vous poser.",29)

	

	NODE(28)

		SAY("Jadis, l'Outzone �tait pleine de vie. Mais maintenant que l'industrie spatiale n'existe plus, la pauvret� et le chaos dominent dans ce secteur immense. Sa superficie fait le triple de celle de tous les autres secteurs combin�s. Peut-�tre est-ce la raison pour laquelle le NCPD n'est pas parvenu � y maintenir l'ordre et a �t� contraint de l'abandonner.")


			ANSWER("Bien, merci. Maintenant, au sujet des autres quartiers...",4)
			ANSWER("OK, �a suffira. Et a propos des autres quartiers?",4)
		ANSWER("Et maintenant, tout autre chose...",29)
		ANSWER("OK, j'en sais assez. J'ai une autre question.",29)
		ANSWER("J'en sais assez. Mais j'ai d'autres questions.",29)
		ANSWER("C'est int�ressant, mais j'ai une autre question � vous poser.",29)

	

	NODE(29)

		
		SAY("Bien s�r, que d�sirez-vous savoir?")
		SAY("Que voudriez-vous savoir?")
		SAY("Je vous en prie, demandez-moi.")

		ANSWER("Qu'est-ce que je peux trouver d'autre ici?",1)
			ANSWER("Je cherche des informations au sujet des terminaux.",2)
			ANSWER("Pourriez-vous m'expliquer les fonctions des terminaux?",2)
		ANSWER("Pourriez-vous me renseigner sur les diff�rentes factions de Neocron?",3)
		ANSWER("J'aimerais en savoir plus sur les factions de Neocron.",3)
			ANSWER("Je cherche des informations sur les quartiers de Neocron.",4)
			ANSWER("J'aimerais des informations sur les quartiers de Neocron.",4)
		ANSWER("Merci pour votre aide, mais il faut que je parte.",30)
		ANSWER("Allez, � plus tard.",30)
		ANSWER("Merci pour votre aide. Au revoir.",30)
		ANSWER("Il faut que j'y aille. Bye.",30)
		ANSWER("Au revoir.",30)


	NODE(30)

		SAY("J'esp�re avoir pu vous aider.")
		SAY("Revenez quand vous voulez.")
		ENDDIALOG()

	

end