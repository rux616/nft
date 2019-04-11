function DIALOG()

	NODE(0)

		
		SAY("Bienvenue à CityAdmin, votre source d'information sur la ville de Neocron.")

		ANSWER("Qu'est-ce que je peux trouver ici?",1)
			ANSWER("Je voudrais de l'information au sujet des terminaux.",2)
			ANSWER("Pourriez-vous m'expliquer les fonctions des terminaux?",2)
		ANSWER("Pouvez-vous me parler des différentes factions de Neocron?",3)
		ANSWER("J'aimerais en savoir plus sur les différentes factions de Neocron.",3)
			ANSWER("Je voudrais de l'information sur les quartiers de Neocron.",4)
			ANSWER("J'aimerais de l'information sur les différents secteurs de Neocron.",4)
		ANSWER("Merci pour votre aide, mais il faut que je m'en aille.",30)
		ANSWER("A plus tard.",30)
		ANSWER("Merci pour votre aide, au revoir.",30)
		ANSWER("Il faut que j'y aille. A plus tard.",30)
		ANSWER("Au revoir.",30)


	NODE(1)

		SAY("Vous trouverez aux étages supérieurs le QG de Diamond Immobilier, ainsi que deux salles de conférence du ConCenter et un JobCenter.")

		ANSWER("Qu'est-ce qu'un ConCenter?",5)
			ANSWER("Et maintenant, tout autre chose...",29)
			ANSWER("OK, ça suffira. J'ai d'autres questions.",29)
			ANSWER("J'en ai assez entendu. Mais j'ai d'autres questions.",29)
			ANSWER("Intéressant. Une autre question, maintenant.",29)


	NODE(2)

		SAY("Bien sûr, au sujet de quel terminal voulez-vous des informations?")
		SAY("Sur quel genre de terminal recherchez-vous des informations?")
		SAY("Quel genre de terminal vous intéresse?")
		SAY("Sur quel terminal désirez-vous des informations?")

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
		ANSWER("Intéressant. Mais j'ai d'autres questions.",29)
			ANSWER("Merci pour votre aide, mais il faut que j'y aille.",30)
			ANSWER("Salut, à plus tard!",30)
			ANSWER("Merci pour votre aide.  Au revoir.",30)
			ANSWER("Il faut que je m'en aille. A plus tard.",30)
			ANSWER("Au revoir.",30)

	

	NODE(3)

		SAY("Sur quelle faction recherchez-vous des informations?")
		SAY("Quelle est la faction qui vous intéresse?")

		ANSWER("Parlez-moi de Tangent Technologies.",10)
		ANSWER("Qu'est-ce que vous savez sur Tangent Technologies?",10)
			ANSWER("Que savez-vous sur BioTech?",11)
			ANSWER("J'aimerais des informations sur BioTech.",11)
		ANSWER("Quelle est l'activité de NEXT?",12)
			ANSWER("Avez-vous des informations au sujet de ProtoPharm?",13)
		ANSWER("Que savez-vous sur Diamond Immobilier?",14)
			ANSWER("J'aimerais en savoir plus sur CityMercs.",15)
			ANSWER("Que savez-vous de CityMercs?",15)
		ANSWER("Avez-vous des informations concernant ce groupe de Moines PSI qui vit à Neocron?",16)
			ANSWER("Et maintenant, tout autre chose...",29)
			ANSWER("OK, j'en sais assez. J'ai une autre question.",29)
			ANSWER("J'en sais assez. Mais j'ai d'autres questions.",29)
			ANSWER("C'est intéressant, mais j'ai une autre question à vous poser.",29)
		ANSWER("Merci pour votre aide, mais il faut que j'y aille.",30)
		ANSWER("Salut, à plus tard!",30)
		ANSWER("Merci pour votre aide.  Au revoir.",30)
		ANSWER("Il faut que je m'en aille. A plus tard.",30)
		ANSWER("Au revoir.",30)

	

	NODE(4)

		SAY("Quel est le quartier qui vous intéresse?")
		SAY("Sur quel quartier aimeriez-vous avoir des informations?")

		ANSWER("Parlez-moi de la Plaza.",25)
		ANSWER("je cherche des informations sur la Plaza.",25)
		ANSWER("Où se trouve la Plaza?",25)
			ANSWER("Que pouvez-vous m'apprendre sur Via Rosso?",26)
			ANSWER("Avez-vous des informations sur Via Rosso?",26)
		ANSWER("Où est-ce que je peux aller pour trouver de l'action?",27)
		ANSWER("Qu'est-ce qui se passe à Pepper Park?",27)
		ANSWER("J'aimerais des informations sur Pepper Park.",27)
			ANSWER("Savez-vous quelque chose sur l'Outzone?",28)
			ANSWER("Donnez-moi des éléments concernant l'Outzone.",28)
		ANSWER("Et maintenant, tout autre chose...",29)
		ANSWER("OK, j'en sais assez. J'ai une autre question.",29)
		ANSWER("J'en sais assez. Mais j'ai d'autres questions.",29)
		ANSWER("C'est intéressant, mais j'ai une autre question à vous poser.",29)
			ANSWER("Merci pour votre aide, mais il faut que j'y aille.",30)
			ANSWER("Salut, à plus tard!",30)
			ANSWER("Merci pour votre aide.  Au revoir.",30)
			ANSWER("Il faut que je m'en aille. A plus tard.",30)
			ANSWER("Au revoir.",30)

	

	NODE(5)

		SAY("Les salles de conférence du ConCenter sont des endroits parfaits pour parler sans crainte d'être écouté. Cette structure vous est offerte par le gouvernement, et aucun frais ne vous sera facturé.")

		ANSWER("Et maintenant, tout autre chose...",29)
		ANSWER("OK, j'en sais assez. J'ai une autre question.",29)
		ANSWER("J'en sais assez. Mais j'ai d'autres questions.",29)
		ANSWER("C'est intéressant, mais j'ai une autre question à vous poser.",29)

	

	NODE(6)

		SAY("Utilisez les terminaux de CityAdmin autant que vous le désirez. Ils sont une excellente source d'informations.","Ces terminaux sont un service offert par la ville de Neocron. Leur utilisation est gratuite.")

		ANSWER("Quel genre d'information est-ce que je peux trouver sur ces terminaux?",17)
			ANSWER("Merci, ça suffira pour l'instant. J'aimerais plus d'informations sur les autres.",2)
			ANSWER("Intéressant. Et pour les autres terminaux?",2)
		ANSWER("Et maintenant, tout autre chose...",29)
		ANSWER("OK, j'en sais assez. J'ai une autre question.",29)
		ANSWER("J'en sais assez. Mais j'ai d'autres questions.",29)
		ANSWER("C'est intéressant, mais j'ai une autre question à vous poser.",29)

	

	NODE(7)

		SAY("Utilisez CityCom pour obtenir des informations sur les dernières propositions d'emploi et statistiques.","Vous cherchez du travail? Alors consultez les offres d'emploi et les statistiques de CityCom, elles sont fréquemment mises à jour.")

		ANSWER("Merci, ça suffira pour l'instant. J'aimerais plus d'informations sur les autres.",2)
		ANSWER("Intéressant. Et pour les autres terminaux?",2)
			ANSWER("Et maintenant, tout autre chose...",29)
			ANSWER("OK, j'en sais assez. J'ai une autre question.",29)
			ANSWER("J'en sais assez. Mais j'ai d'autres questions.",29)
			ANSWER("C'est intéressant, mais j'ai une autre question à vous poser.",29)

	

	NODE(8)

		SAY("LawTerm est une source d'information concernant tout ce qui touche à la loi et à l'ordre.")

		ANSWER("Quel genre d'informations exactement?",19)
			ANSWER("Merci, ça suffira pour l'instant. J'aimerais plus d'informations sur les autres.",2)
			ANSWER("Intéressant. Et pour les autres terminaux?",2)
		ANSWER("Et maintenant, tout autre chose...",29)
		ANSWER("OK, j'en sais assez. J'ai une autre question.",29)
		ANSWER("J'en sais assez. Mais j'ai d'autres questions.",29)
		ANSWER("C'est intéressant, mais j'ai une autre question à vous poser.",29)

	
	NODE(9)

		SAY("HomeTerm est votre terminal personnel, installé pour vous dans votre appartement par la ville de Neocron.")

		ANSWER("Qu'est-ce que je pourrai faire avec un HomeTerm?",21)
		ANSWER("Et à quoi est-ce qu'un HomeTerm peut me servir?",21)
			ANSWER("Merci, ça suffira pour l'instant. J'aimerais plus d'informations sur les autres.",2)
			ANSWER("Intéressant. Et pour les autres terminaux?",2)

	

	NODE(10)

		SAY("Tangent Technologies est une compagnie qui développe les armes les plus perfectionnées de Neocron. Elle a été fondée par Robert Jordan, et est maintenant dirigée par son fils, Robert Jordan Jr.")

		ANSWER("Bien, merci. Maintenant, au sujet des autres factions...",3)
		ANSWER("OK, ça suffira. Et a propos des autres factions?",3)
			ANSWER("Et maintenant, tout autre chose...",29)
			ANSWER("OK, j'en sais assez. J'ai une autre question.",29)
			ANSWER("J'en sais assez. Mais j'ai d'autres questions.",29)
			ANSWER("C'est intéressant, mais j'ai une autre question à vous poser.",29)

	

	NODE(11)

		SAY("BioTech Industries est la source de tous les équipements techniques existants, et également des implants si c'est ce que vous recherchez.")

		ANSWER("Bien, merci. Maintenant, au sujet des autres factions...",3)
		ANSWER("OK, ça suffira. Et a propos des autres factions?",3)
			ANSWER("Et maintenant, tout autre chose...",29)
			ANSWER("OK, j'en sais assez. J'ai une autre question.",29)
			ANSWER("J'en sais assez. Mais j'ai d'autres questions.",29)
			ANSWER("C'est intéressant, mais j'ai une autre question à vous poser.",29)


	

	NODE(12)

		SAY("NEXT est en fait l'acronyme de Neocron Exclusive Transport. Cette entreprise produit des vaisseaux spatiaux et des véhicules terrestres.")

		ANSWER("Bien, merci. Maintenant, au sujet des autres factions...",3)
		ANSWER("OK, ça suffira. Et a propos des autres factions?",3)
			ANSWER("Et maintenant, tout autre chose...",29)
			ANSWER("OK, j'en sais assez. J'ai une autre question.",29)
			ANSWER("J'en sais assez. Mais j'ai d'autres questions.",29)
			ANSWER("C'est intéressant, mais j'ai une autre question à vous poser.",29)

	

	NODE(13)

		SAY("Si vous cherchez des produits pharmaceutiques, je vous suggère de vous adresser à ProtoPharm.")

		ANSWER("Bien, merci. Maintenant, au sujet des autres factions...",3)
		ANSWER("OK, ça suffira. Et a propos des autres factions?",3)
			ANSWER("Et maintenant, tout autre chose...",29)
			ANSWER("OK, j'en sais assez. J'ai une autre question.",29)
			ANSWER("J'en sais assez. Mais j'ai d'autres questions.",29)
			ANSWER("C'est intéressant, mais j'ai une autre question à vous poser.",29)


	

	NODE(14)

		SAY("Diamond Immobilier fournit la plupart des logements de Neocron.")

		ANSWER("Bien, merci. Maintenant, au sujet des autres factions...",3)
		ANSWER("OK, ça suffira. Et a propos des autres factions?",3)
			ANSWER("Et maintenant, tout autre chose...",29)
			ANSWER("OK, j'en sais assez. J'ai une autre question.",29)
			ANSWER("J'en sais assez. Mais j'ai d'autres questions.",29)
			ANSWER("C'est intéressant, mais j'ai une autre question à vous poser.",29)


	

	NODE(15)

		SAY("CityMercs? Je connais peu de choses à leur sujet, et très franchement je ne cherche pas à en savoir plus.")

		ANSWER("Bien, merci. Maintenant, au sujet des autres factions...",3)
		ANSWER("OK, ça suffira. Et a propos des autres factions?",3)
			ANSWER("Et maintenant, tout autre chose...",29)
			ANSWER("OK, j'en sais assez. J'ai une autre question.",29)
			ANSWER("J'en sais assez. Mais j'ai d'autres questions.",29)
			ANSWER("C'est intéressant, mais j'ai une autre question à vous poser.",29)


	

	NODE(16)

		SAY("Tout ce que je connais au sujet de la secte de Crahn, c'est que vous pourrez la trouver dans l'Outzone et dans Pepper Park. J'espère que ça vous aide un peu...")

		ANSWER("Bien, merci. Maintenant, au sujet des autres factions...",3)
		ANSWER("OK, ça suffira. Et a propos des autres factions?",3)
			ANSWER("Où est-ce que je dois aller pour trouver un peu d'action?",23)
			ANSWER("Qu'est-ce qui se passe à Pepper Park?",23)
			ANSWER("J'aimerais en savoir plus sur Pepper Park.",23)
		ANSWER("Savez-vous quelque chose sur l'Outzone?",24)
		ANSWER("Donnez-moi des informations sur l'Outzone.",24)
			ANSWER("Et maintenant, tout autre chose...",29)
			ANSWER("OK, j'en sais assez. J'ai une autre question.",29)
			ANSWER("J'en sais assez. Mais j'ai d'autres questions.",29)
			ANSWER("C'est intéressant, mais j'ai une autre question à vous poser.",29)

	

	NODE(17)

		SAY("Vous pouvez y vérifier vos propres informations, lire les toutes dernières nouvelles, afficher certaines informations concernant les autres habitants de Neocron, et accéder au réseau CityCom.")

		ANSWER("CityCom?",18)
		ANSWER("Qu'est-ce que CityCom, au juste?",18)
		ANSWER("Parlez-moi de CityCom.",18)
			ANSWER("Et maintenant, tout autre chose...",29)
			ANSWER("OK, j'en sais assez. J'ai une autre question.",29)
			ANSWER("J'en sais assez. Mais j'ai d'autres questions.",29)
			ANSWER("C'est intéressant, mais j'ai une autre question à vous poser.",29)

	

	NODE(18)

		SAY("CityCom est un vaste réseau informatique qui est utilisé par les compagnies et par les particuliers. De nombreuses informations peuvent être recueillies sur ce réseau, si vous savez ce que vous cherchez.")

		ANSWER("Bien, merci. Maintenant, au sujet des autres terminaux...",2)
		ANSWER("OK, ça suffira. Et a propos des autres terminaux?",2)
			ANSWER("Et maintenant, tout autre chose...",29)
			ANSWER("OK, j'en sais assez. J'ai une autre question.",29)
			ANSWER("J'en sais assez. Mais j'ai d'autres questions.",29)
			ANSWER("C'est intéressant, mais j'ai une autre question à vous poser.",29)


	

	NODE(19)

		SAY("Vos pourrez y trouver des informations sur les lois en vigueur, ainsi que sur les hors-la-loi. Vous pourrez y trouver les annonces policières ainsi que la liste des personnes qui ont été bannies de Neocron pour une raison ou pour une autre.")

		ANSWER("Parlez-moi de cette liste, ça m'intéresse.",20)
		ANSWER("Cette liste m'intéresse.",20)
			ANSWER("Bien, merci. Maintenant, au sujet des autres terminaux...",2)
			ANSWER("OK, ça suffira. Et a propos des autres terminaux?",2)
		ANSWER("Et maintenant, tout autre chose...",29)
		ANSWER("OK, j'en sais assez. J'ai une autre question.",29)
		ANSWER("J'en sais assez. Mais j'ai d'autres questions.",29)
		ANSWER("C'est intéressant, mais j'ai une autre question à vous poser.",29)

	

	NODE(20)

		SAY("Sur cette liste se trouvent les rebuts de la société de Neocron.  Faites attention, la plupart de ces individus sont armés et très dangereux.")

			ANSWER("Bien, merci. Maintenant, au sujet des autres terminaux...",2)
			ANSWER("OK, ça suffira. Et a propos des autres terminaux?",2)
		ANSWER("Et maintenant, tout autre chose...",29)
		ANSWER("OK, j'en sais assez. J'ai une autre question.",29)
		ANSWER("J'en sais assez. Mais j'ai d'autres questions.",29)
		ANSWER("C'est intéressant, mais j'ai une autre question à vous poser.",29)

	

	NODE(21)

		SAY("Grâce aux HomeTerms, vous pouvez consulter vos mails, lire les bulletins d'information, en apprendre davantage sur les factions de Neocron et obtenir des descriptions techniques de certains objets. Vous disposez sur votre HomeTerm des mêmes options que CityCom, et vous pouvez gérer votre compte depuis chez vous.")

		ANSWER("Autre chose?",22)
		ANSWER("Est-ce qu'il y a d'autres fonctions?",22)
			ANSWER("Bien, merci. Maintenant, au sujet des autres terminaux...",2)
			ANSWER("OK, ça suffira. Et a propos des autres terminaux?",2)
		ANSWER("Et maintenant, tout autre chose...",29)
		ANSWER("OK, j'en sais assez. J'ai une autre question.",29)
		ANSWER("J'en sais assez. Mais j'ai d'autres questions.",29)
		ANSWER("C'est intéressant, mais j'ai une autre question à vous poser.",29)

	

	NODE(22)

		SAY("Vous pourrez également gérer l'argent présent sur votre compte, y compris faire des investissements en bourse.")
		SAY("HomeTerm vous donne les mêmes possibilités que CityCom. Par exemple, vous pouvez consulter les dernières offres d'emploi.")
		SAY("Evidemment, vous pourrez accéder à CityCom depuis votre HomeTerm.")

			ANSWER("Bien, merci. Maintenant, au sujet des autres terminaux...",2)
			ANSWER("OK, ça suffira. Et a propos des autres terminaux?",2)
		ANSWER("Et maintenant, tout autre chose...",29)
		ANSWER("OK, j'en sais assez. J'ai une autre question.",29)
		ANSWER("J'en sais assez. Mais j'ai d'autres questions.",29)
		ANSWER("C'est intéressant, mais j'ai une autre question à vous poser.",29)

	

	NODE(23)

		SAY("Si vous voulez vous faire plaisir, je vous suggère Pepper Park. La vie nocturne y est particulièrement animée. Le port d'armes y est officiellement interdit, mais peu de gens se soucient de la loi lorsqu'il n'y a pas de CopBots présents. La criminalité a toujours été un problème dans Pepper Park.")

			ANSWER("Bien, merci. Maintenant, au sujet des autres quartiers...",4)
			ANSWER("OK, ça suffira. Et a propos des autres quartiers?",4)
		ANSWER("Et maintenant, tout autre chose...",29)
		ANSWER("OK, j'en sais assez. J'ai une autre question.",29)
		ANSWER("J'en sais assez. Mais j'ai d'autres questions.",29)
		ANSWER("C'est intéressant, mais j'ai une autre question à vous poser.",29)
	
	

	NODE(24)

		SAY("Jadis, l'Outzone était pleine de vie. Mais maintenant que l'industrie spatiale n'existe plus, la pauvreté et le chaos dominent dans ce secteur immense. Sa superficie fait le triple de celle de tous les autres secteurs combinés. Peut-être est-ce la raison pour laquelle le NCPD n'est pas parvenu à y maintenir l'ordre et a été contraint de l'abandonner.")

			ANSWER("Bien, merci. Maintenant, au sujet des autres quartiers...",4)
			ANSWER("OK, ça suffira. Et a propos des autres quartiers?",4)
		ANSWER("Et maintenant, tout autre chose...",29)
		ANSWER("OK, j'en sais assez. J'ai une autre question.",29)
		ANSWER("J'en sais assez. Mais j'ai d'autres questions.",29)
		ANSWER("C'est intéressant, mais j'ai une autre question à vous poser.",29)
	

	NODE(25)

		SAY("La Plaza est un secteur neutre et bien entretenu. Vous y trouverez le NCPD, CityAdmin, le ConCenter, divers terminaux, ainsi que des magasins dans lesquels vous pourrez acheter tout l'équipement dont vous avez besoin. L'utilisation des armes est interdite dans cette zone, et sauf si vous êtes pressé de mourir, je vous conseille de vous plier à cette règle.")

		ANSWER("J'aimerais avoir des informations concernant les terminaux de la Plaza.",2)
			ANSWER("Bien, merci. Maintenant, au sujet des autres quartiers...",4)
			ANSWER("OK, ça suffira. Et a propos des autres quartiers?",4)
		ANSWER("Et maintenant, tout autre chose...",29)
		ANSWER("OK, j'en sais assez. J'ai une autre question.",29)
		ANSWER("J'en sais assez. Mais j'ai d'autres questions.",29)
		ANSWER("C'est intéressant, mais j'ai une autre question à vous poser.",29)

	

	NODE(26)

		SAY("Dans Via Rosso, vous aurez des difficultés à trouver des produits bon marché. La banque centrale et la Bourse s'y trouvent. Vous y trouverez également de nombreux restaurants et bars luxueux. L'utilisation des armes dans Via Rosso est interdite.")

			ANSWER("Bien, merci. Maintenant, au sujet des autres quartiers...",4)
			ANSWER("OK, ça suffira. Et a propos des autres quartiers?",4)
		ANSWER("Et maintenant, tout autre chose...",29)
		ANSWER("OK, j'en sais assez. J'ai une autre question.",29)
		ANSWER("J'en sais assez. Mais j'ai d'autres questions.",29)
		ANSWER("C'est intéressant, mais j'ai une autre question à vous poser.",29)

	

	NODE(27)

		SAY("Si vous voulez vous faire plaisir, je vous suggère Pepper Park. La vie nocturne y est particulièrement animée. Le port d'armes y est officiellement interdit, mais peu de gens se soucient de la loi lorsqu'il n'y a pas de CopBots présents. La criminalité a toujours été un problème dans Pepper Park.")

			ANSWER("Bien, merci. Maintenant, au sujet des autres quartiers...",4)
			ANSWER("OK, ça suffira. Et a propos des autres quartiers?",4)
		ANSWER("Et maintenant, tout autre chose...",29)
		ANSWER("OK, j'en sais assez. J'ai une autre question.",29)
		ANSWER("J'en sais assez. Mais j'ai d'autres questions.",29)
		ANSWER("C'est intéressant, mais j'ai une autre question à vous poser.",29)

	

	NODE(28)

		SAY("Jadis, l'Outzone était pleine de vie. Mais maintenant que l'industrie spatiale n'existe plus, la pauvreté et le chaos dominent dans ce secteur immense. Sa superficie fait le triple de celle de tous les autres secteurs combinés. Peut-être est-ce la raison pour laquelle le NCPD n'est pas parvenu à y maintenir l'ordre et a été contraint de l'abandonner.")


			ANSWER("Bien, merci. Maintenant, au sujet des autres quartiers...",4)
			ANSWER("OK, ça suffira. Et a propos des autres quartiers?",4)
		ANSWER("Et maintenant, tout autre chose...",29)
		ANSWER("OK, j'en sais assez. J'ai une autre question.",29)
		ANSWER("J'en sais assez. Mais j'ai d'autres questions.",29)
		ANSWER("C'est intéressant, mais j'ai une autre question à vous poser.",29)

	

	NODE(29)

		
		SAY("Bien sûr, que désirez-vous savoir?")
		SAY("Que voudriez-vous savoir?")
		SAY("Je vous en prie, demandez-moi.")

		ANSWER("Qu'est-ce que je peux trouver d'autre ici?",1)
			ANSWER("Je cherche des informations au sujet des terminaux.",2)
			ANSWER("Pourriez-vous m'expliquer les fonctions des terminaux?",2)
		ANSWER("Pourriez-vous me renseigner sur les différentes factions de Neocron?",3)
		ANSWER("J'aimerais en savoir plus sur les factions de Neocron.",3)
			ANSWER("Je cherche des informations sur les quartiers de Neocron.",4)
			ANSWER("J'aimerais des informations sur les quartiers de Neocron.",4)
		ANSWER("Merci pour votre aide, mais il faut que je parte.",30)
		ANSWER("Allez, à plus tard.",30)
		ANSWER("Merci pour votre aide. Au revoir.",30)
		ANSWER("Il faut que j'y aille. Bye.",30)
		ANSWER("Au revoir.",30)


	NODE(30)

		SAY("J'espère avoir pu vous aider.")
		SAY("Revenez quand vous voulez.")
		ENDDIALOG()

	

end