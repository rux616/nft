function DIALOG()

	NODE(0)
		ALIGNMENT()

		if (result==0) then
		
			SAY("Laissez-moi tranquille, parasite!")
			SAY("J'ai pas le temps de parler à tous les perdus que je croise!")
			SAY("La ferme, parasite!")
			SAY("Vous vous prenez pour le centre du monde?")
			SAY("Vous votez pas que j'ai du travail?")
			SAY("Sortez d'ici. Tout de suite!!")
			SAY("Oh non... arrêtez ça, vous voulez bien?")

			ANSWER("Mais... mais...",2)
			ANSWER("Je cherche des renseignements sur...",2)
			ANSWER("Est-ce que vous pourriez me dire...",2)
			ANSWER("Ne vous énervez pas comme ça, je cherchais seulement...",2)
			ANSWER("Est-ce que vous pouvez me dire où...",2)

		else
			SAY("Bonjour. Ca va?")
			SAY("Comment ça va?")
			SAY("'jour.")
			SAY("Vous voyez pas que je travaille?")
			SAY("je peux vous aider?")

			RAND(5)

			if (result==1) then
				ANSWER("Est-ce que vous savez où je pourrais trouver du travail?",2)
				ANSWER("J'ai besoin d'argent. Vous savez où je peux trouver du travail?",2)
				ANSWER("J'ai besoin de travailler. Vous savez où je pourrais trouver quelque chose à faire?",2)
				ANSWER("C'est possible de trouver du travail ici?",2)
			end

			if (result==2) then
				ANSWER("Le temps se couvre, on dirait...",5)
				ANSWER("Sale temps, ces jours-ci...",5)
				ANSWER("Ca vous plairait de revoir le soleil briller? Moi j'aimerais bien.",5)

				ANSWER("Quel temps de cochon! J'irais bien demander à BioTech de construire un régulateur climatique!",3)
				ANSWER("Quel temps de chien! Vous pensez que BioTech saurait construire un régulateur climatique?",3)
			end

			if (result==3) then
				ANSWER("Vous savez où je pourrais acheter un truc à manger?",6)
				ANSWER("J'ai faim. Où est-ce que je pourrais trouver à manger?",6)
				ANSWER("Ca fait des heures que j'ai rien mangé. Il y a un bar dans le coin?",7)
				ANSWER("Vous savez où je pourrais trouver un restaurant dans le coin?",7)
			end
		
			if (result==4) then
				ANSWER("Qu'est-ce que je m'ennuie...",10)
				ANSWER("Il y a rien à faire dans cette ville, je m'ennuie à crever...",10)
				ANSWER("Ma vie est nulle. Je vais aller me faire sauter le caisson.",11)
			end

			if (result==5) then
				ANSWER("j'ai entendu parler de problèmes de vermine dans les égouts de la ville.",14)
				ANSWER("C'est vrai, ce qu'on raconte, que le NCPD n'arrive pas à garder les égouts propres?",14)
				ANSWER("C'est bizarre qu'il y ait toutes ces bêtes dans les égouts. Je pensais que c'était au NCPD de s'occuper de ça.",14)
			end
		end
	NODE(1)

		SAY("Vous n'avez pas entendu ce que j'ai dit?")
		SAY("Vous êtes aussi sourd que stupide, vous...")
		SAY("Mais vous allez partir, oui?!")
		SAY("Cher... Citoyen... Veuillez... Me... Laisser... Tranquille... MAINTENANT!!! VOUS AVEZ COMPRIS COMME CA???")
		SAY("Non mais quelle plaie, j'y crois pas... DEGAGEZ!!!")
		SAY("Vous êtes sourd, ou seulement bête?")
		SAY("Vous ne connaîtriez pas quelqu'un d'autre à énerver, par hasard?")
		ENDDIALOG()

	NODE(2)
		SAY("Désolé, c'est pas mes affaires.")
		SAY("Si vous cherchez un job, allez voir sur un terminal.")
		SAY("Demandez aux ressources humaines!")
		
		ENDDIALOG()

	NODE(3)
		SAY("Si vous me donnez 100 crédits, je peux vous arranger ça.")
		SAY("Il se trouve que j'ai de bons contacts chez BioTech. Donnez-moi 100 crédits et je m'en occupe.")
		
		ANSWER("OK, voilà.",4)
		ANSWER("Prenez-les. Un régulateur climatique, ça vaut bien ça.",4)

		ANSWER("Hein? Non, je parle du temps qu'il fait, c'est tout.",5)
		ANSWER("Laissez tomber. Les nuages, ils sont dans le ciel, pas dans ma tête.",5)
		ANSWER("Oui, c'est ça, on m'a déjà fait le coup! Enfin bon, qu'est-ce que vous pensez de la météo, hein?",5)

	NODE(4)
		TAKEMONEY(100)
		if(result == 1) then
			SAY("Ha! Non mais regardez-moi ça... Vous avez déjà entendu parler d'un régulateur climatique, vous? *éclate de rire*")
		else
			SAY("Vous n'avez même pas assez sur vous. Navré, mais je ne vais rien pouvoir faire.")
		end
		ENDDIALOG()
		
	NODE(5)
		SAY("J'aime bien le temps, actuellement, tout ce brouillard...")
		SAY("Puisque vous me posez la question, j'aime bien le temps comme il est. Et puis, après tout, sans ça, notre ville ne serait plus ce qu'elle est.")
		SAY("Humm... La pluie, c'est bien. Oui, j'aime bien la pluie, moi.")
		SAY("Ne commencez pas à parler du temps qu'il fait... Il y en a qui travaillent, ici, vous savez?")
		SAY("Les gens ne sont jamais contents de ce qu'ils ont. Si le soleil brillait, vous me diriez que vous avez trop chaud.")
		ENDDIALOG()

	NODE(6)
		SAY("Les meilleurs restaurants sont Plaza 4. Excellente nourriture, le service est bon, mais c'est cher. Allez voir, vous le regretterez pas.")
		SAY("Essayez Plaza 4, il y a deux restaurants vraiment excellents. Vous en aurez pour votre argent, je vous le garantis.")
		ENDDIALOG()

	NODE(7)
		SAY("Vous vous moquez de moi? Je n'ai rien avalé depuis des heures, ça me plairait bien s'il y avait un truc à manger pas loin, je ne serais pas là en train de crever de faim. Si vous avez des sucreries ou des trucs dans le même genre, je pourrais vous les acheter.")

		ANSWER("Si j'avais des sucreries, j'aurais déjà tout mangé.",8)

		ANSWER("En voilà. Si vous me payez, c'est à vous.",9)
		ANSWER("Si vous avez de l'argent, j'ai de quoi vous couper votre faim.",9)
		ANSWER("OK, tenez. Gardez tout.",9)

	NODE(8)
		SAY("C'est pas juste... Vous, vous pouvez acheter à manger, et moi je dois rester là sans bouger... *soupir*")
		SAY("Alors laissez-moi tranquille, laissez-moi souffrir en silence... *marmonne*")
		ENDDIALOG()

	NODE(9)
		TAKEITEM(79)
		if(result == 1) then
			SAY("Merci beaucoup! Vous m'avez évité l'ulcère! Tenez, voilà votre argent.")
			SAY("Ah, enfin je trouve quelqu'un! Tenez, prenez ça.")
			GIVEMONEY(100)
			ENDDIALOG()
		else
			TAKEITEM(80)
			if(result == 1) then
				SAY("Merci beaucoup, vous m'avez évité l'ulcère. Tenez, pour vous remercier.")
				SAY("Ah, enfin je trouve quelqu'un! Tenez, prenez ça.")
				GIVEMONEY(100)
				ENDDIALOG()
			else
				TAKEITEM(1009)
				if(result == 1) then
					SAY("Merci beaucoup! Vous m'avez évité l'ulcère! Tenez, voilà votre argent.")
					SAY("Ah, enfin je trouve quelqu'un! Tenez, prenez ça.")
					GIVEMONEY(100)				ENDDIALOG()
				else
					TAKEITEM(1010)
					if(result == 1) then
						SAY("Merci, mais non merci. La viande crue, je peux pas. Je préférerais des sucreries, si vous en avez.")
						SAY("Merci, mais je ne mange pas de viande. Vraiment, je n'en veux pas. Et de la viande crue, en plus...")
						ENDDIALOG()
					else
						TAKEITEM(1011)
						if(result == 1) then
							SAY("Merci, mais non merci. La viande crue, je peux pas. Je préférerais des sucreries, si vous en avez.")
							SAY("Merci, mais je ne mange pas de viande. Vraiment, je n'en veux pas. Et de la viande crue, en plus...")
							ENDDIALOG()
						else
							SAY("Si vous n'avez rien à manger, arrêtez de me donner faim ou bien je vais mourir.")
							ENDDIALOG()
						end
					end
				end
			end
		end

	NODE(10)
		SAY("Si vous vous ennuyez, vous devriez tenter Pepper Park. J'ai entendu dire qu'il se passait de drôles de trucs dans ce quartier.")
		SAY("Allons, ça sert à rien de déprimer comme ça. Après tout, il y a Pepper Park! On y trouve des filles qui vous mettent le sang en ébullition, ça redonne le moral!")
		SAY("Allez, ne déprimez pas comme ça, pourquoi vous n'essayez pas le Club Véronique à Pepper Park? Là-bas, vous oublierez tous vos problèmes, du moins aussi longtemps que vous y serez. *clin d'oeil*")
		ENDDIALOG()

	NODE(11)
		SAY("Ca ne sert à rien de se suicider, vous savez. J'ai quelque chose qui va vous chasser les idées noires. Je vais vous le donner pour... disons... 350 crédits. Qu'est-ce que vous en dites?")
		SAY("Normalement je ne fais pas ça, mais puisque vous n'allez pas bien... J'ai quelque chose qui vous fera vous sentir mieux. Et pour 350 crédits seulement.")

		ANSWER("Et qu'est-ce que c'est?",12)
		ANSWER("Ca n'est pas illégal, j'espère?",12)
		ANSWER("Vous n'allez pas me vendre une drogue, tout de même?",12)

		ANSWER("Je prendrai n'importe quoi pour sortir de là.",13)
		ANSWER("Montrez-moi ce que c'est, je vais l'essayer tout de suite.",13)
		ANSWER("Si j'en veux? Mais bien sûr! Donnez-moi ça!",13)
	
	NODE(12)
		SAY("Euh... de quoi est-ce que vous parlez? Mais je ne vous ai rien proposé, moi.")
		SAY("J'essayais simplement de vous aider, mais... bah, laissez tomber.")		
		SAY("Vous essayez de me culpabiliser, maintenant? Pas étonnant que vous n'avez pas d'amis.")
		ENDDIALOG()


	NODE(13)
		TAKEMONEY(350)
		if(result == 1) then
			SAY("OK, prenez ça. Utilisez-le comme vous voulez, mais ne forcez pas trop sur la dose. J'ai entendu dire que ça vous esquintait la colonne vertébrale si vous en preniez trop.")
			SAY("Tenez. C'est vraiment de la bonne qualité. Amusez-vous bien...")
			GIVEITEM(720)
			ENDDIALOG()
		else
			SAY("Quoi encore? Vous essayez de m'avoir? Vous me prenez pour un demeuré? Si vous n'avez pas un sou, c'est pas la peine de me demander quelque chose!")
			SAY("Oh, ça c'est pas de chance. Pas d'argent, pas de cadeau. Désolé.")
			ENDDIALOG()
		end

	NODE(14)
		SAY("Ouais, tout à fait. C'est bizarre que le NCPD ne prenne pas soin de ces zones. Et en plus, il n'y a pas que les égouts - toute l'Outzone est pleine d'animaux dangereux et de mutants. Encore heureux que les flics donnent une prime pour chaque créature tuée.")
		SAY("Je me suis posé la même question que vous. Pourquoi le NCPD, qui est censé être une organisation soi-disant toute puissante, n'est pas capable de faire sa loi dans les égouts? Je pense qu'ils ont une raison pour ça. Ils donnent une prime pour l'abattage de chaque créature, pour que les citoyens qui les chassent aient l'impression de servir à quelque chose.")

		ANSWER("Une prime?",15)
		ANSWER("Je ne savais pas qu'on pouvait gagner de l'argent comme ça...",15)

	NODE(15)
		SAY("Ils utilisent leur système pour pister vos actions, et vous paient une certaine somme pour chaque monstre que vous tuez. Si vous voulez, je peux vous vendre des balles pour pistolet, pour... disons 90 crédits. C'est de la très bonne qualité.")
	
		ANSWER("Oui, ça m'aiderait bien.",16)
		ANSWER("OK, j'en ai besoin. Je vais vous payer.",16)

		ANSWER("Donnez-les moi et je vous rembourserai quand j'aurai gagné de l'argent.",17)
		ANSWER("Non merci, je ne sais pas me servir d'un flingue.",17)

	NODE(16)
		TAKEMONEY(90)
		if(result == 1) then
			SAY("OK, tenez.")
			SAY("Les voilà. Pensez à repasser pour me raconter vos aventures.")
			GIVEITEM(3160)
			ENDDIALOG()
		else
			SAY("Pour qui est-ce que vous vous prenez? Allez, du vent, et ne revenez pas tant que vous n'avez pas assez d'argent!")
			SAY("Je vois. Pas d'argent, pas de munitions. Désolé.")
			ENDDIALOG()
		end

	NODE(17)
		SAY("Bon, alors allez trouver du travail.")
		ENDDIALOG()	
end