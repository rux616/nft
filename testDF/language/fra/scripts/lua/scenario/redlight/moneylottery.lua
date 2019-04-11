function DIALOG()

	NODE(0)
		SAY("Allez approchez approchez, venez tenter votre chance!")
		ANSWER("Qu'est-ce que je dois faire?",1)
		ANSWER("C'est quoi?",1)
		ANSWER("Je ne joue jamais! Ca coûte cher, et il paraît qu'on devient accro!",101)
		ANSWER("Pas question, tout ce que vous voulez c'est déposséder les gens de leur argent durement gagné!",101)
		
	NODE(1)
	if (node==state) then
	counter=0
		SAY("Vous achetez un ticket, et je vous dis combien vous avez gagné. Vous avez 30% de chances de gagner, et vous pouvez récolter jusqu'à 100.000 crédits! Laissez-vous tenter! Cent... mille! C'est beau, hein? Et tout ça seulement pour un ticket de 100 crédits!")
		ANSWER("Allez, je tente. Voilà le pognon.",5)
		ANSWER("Jamais! Pas question que je dépense de l'argent là-dedans.",101)
	end

	NODE(5)
	if (node==state) then
		TAKEMONEY(100)
		if (result==1) then
			SAY("Oohkay! Et voilà votre ticket!")
			SAY("C'est parti!")
			SAY("Et voilà votre ticket!")
			counter = counter + 1
			ANSWER("Allez, allez!",10)
			ANSWER("Je trépigne, maintenant!",10)
			ANSWER("Allez, on va vori ce que ça donne.",10)
		else
			SAY("Ah, si vous pouvez pas payer, alors là...")
			ENDDIALOG()
		end
	end
			
	NODE(10)
	if (node==state) then
		RAND(10000)
		if (result < 1) then
			SAY("Allez, nous allons voir si tu as gagné...")
			ANSWER("BINGO!! En plein dans le mille!! Je suis riche!!",20)
			counter = 0
		--end
		else
			if (result < 49) then
				SAY("Alors, t'as gagné quelque chose?")
				ANSWER("Ouah, j'ai gagné un truc, regardez.",21)
				counter = counter - 10
				if (0 > counter) then
					counter = 0
				end
			--end
			else
				if (result < 150) then
					SAY("Regardez ce que vous avez d'écrit sur le ticket.")
					ANSWER("Hé! Cool! Je crois que j'ai gagné un truc...",22)
					counter = counter - 6
					if (0 > counter) then
						counter = 0
					end
				--end
				else
					if (result < 800) then
						SAY("Alors, qu'est-ce que ça donne?")
						ANSWER("Pas mal. Je crois que j'ai gagné quelque chose.",23)
						counter = counter - 4
						if (0 > counter) then
							counter = 0
						end
					--end
					else
						if (result < 2000) then
							SAY("Alors? Y a marqué quoi?")
							ANSWER("C'est mieux que rien. Regardez...",24)
							ANSWER("On est sur le bon chemin. Regardez.",24)
							ANSWER("Mouais... Ca pourrait être pire, regardez...",24)
							counter = counter -2
							if (0 > counter) then
								counter = 0
							end
						--end
						else
							if (result < 10000) then
								if (counter==1) then
									SAY("Alors?")
									ANSWER("Que dalle!",25)
									ANSWER("Des clous!",25)
									ANSWER("Pas de bol...",25)
									ANSWER("Peau de zob.",25)
								else
									if (counter<3) then
										SAY("Vous avez gagné, cette fois?")
										SAY("Alors, comment ça se présente?")
										SAY("Allez, c'est la bonne!")
										ANSWER("Encore raté.",25)
										ANSWER("Toujours rien.",25)
										ANSWER("J'ai pas de chance.",25)
										ANSWER("Et encore raté.",25)
									else
										if (counter<6) then 
											SAY("Alors, vous avez gagné?")
											SAY("Ca se présente comment?")
											SAY("Quelque chose de gagné?")
											ANSWER("Encore raté! On a une chance de gagner à ce jeu?",25)
											ANSWER("Toujours rien! Vous êtes sûr qu'on a 30% de chances de gagner?!",25)
											ANSWER("Toujours rien! J'espère que je suis pas en train de me faire arnaquer!",25)
											ANSWER("Et rien, rien, toujours rien!",25)
										else
											if (counter<9) then
												SAY("Alors?")
												SAY("C'est mieux?")
												SAY("Et maintenant?")
												ANSWER("Et merde, encore perdu! J'en ai marre!",25)
												ANSWER("Encore perdu! Je perds tout le temps!",25)
												ANSWER("Merde, encore perdu, merde, merde!!!",25)
												ANSWER("J'y crois pas! Je perds tout mon pognon! C'est pas normal!",25)
											else
												ANSWER("Ah, enfin! *soupire* J'y croyais plus! Un ticket de 10.000 crédits!",11)
											end
										end
									end		
								end
							end
						end
					end
				end
			end
		end
	end	
	
	NODE(11)
		SAY("On a un gagnant! Montrez-moi ça!")
		ANSWER("Hein, pourquoi? Vous me faites pas confiance?",12)
	NODE(12)
		SAY("Les règles sont les règles! Montrez-moi votre ticket!")
		ANSWER("Vous avez pas confiance en moi!",13)
	NODE(13)
		SAY("Allez, votre ticket! Ensuite vous aurez votre prix!")
		ANSWER("Euh... voilà, tenez.",14)
	NODE(14)
		SAY("C'est quoi, ça? Un ticket perdant? Vous avez essayé de m'arnaquer?")
		ANSWER("*tousse*...Faut que je m'en aille. J'ai un rendez-vous...",15)
	NODE(15)
		SAY("Espèce de salopard! C'est à cause de toi que les affaires sont pas bonnes!")		
		ENDDIALOG()
		
	NODE(20)
		GIVEMONEY(100000)
		SAY("Incroyable! C'est le jackpot! Félicitations au grand gagnant! Vous voulez retenter votre chance!")
		ANSWER("J'arrive pas à le croire! Faut que je dépense ça tout de suite! Donnez-moi un autre ticket!",5)
		ANSWER("J'ai jamais eu autant de chance de ma vie. Je vais m'arrêter là.",100)

	NODE(21)
		GIVEMONEY(10000)
		SAY("10.000 crédits. C'est le plus gros vainqueur de la journée, félicitations! Vous voulez retenter?")
		ANSWER("Merci, je crois que je suis en veine, je remets ça!",5)
		ANSWER("J'ai jamais eu autant de chance de ma vie. Je vais m'arrêter là.",100)

	NODE(22)
		GIVEMONEY(1000)
		SAY("1.000 crédits! Tenez! De l'argent facile, et c'est une belle journée pour vous! Vous voulez remettre ça?")
		ANSWER("Merci, je crois que je suis en veine, je remets ça!",5)
		ANSWER("L'argent ne pousse pas sur les arbres, je crois que je vais m'arrêter là. Trouvez-vous un autre pigeon.",100)

	NODE(23)
		GIVEMONEY(100)
		SAY("Cent crédits! Vous voulez refaire une partie?")
		ANSWER("Je vais pas m'arrêter maintenant, j'ai pas gagné assez. Redonnez-moi un ticket.",5)
		ANSWER("J'arrête de gaspiller mon argent!",100)

	NODE(24)
		GIVEMONEY(50)
		SAY("50 crédits. Tenez, voilà. Un autre ticket?")
		ANSWER("Oui, je remets ça. Il faut que je récupère mon argent.",5)
		ANSWER("Je ne vais pas perdre tout mon argent, j'arrête là.",100)
	
	NODE(25)
	if (node==state) then
		if (counter<3) then
			SAY("Retentez votre chance!")
			SAY("De l'audace!")
			SAY("Allez, réessayez, vosu allez gagner!")
			ANSWER("D'accord, un autre ticket!",5)
			ANSWER("D'accord, j'en reprends un.",5)
			ANSWER("J'ai déjà eu assez de chance pour aujourd'hui, je reviendrai plus tard.",100)
		else
			if (counter<6) then
				SAY("Retentez votre chance!")
				SAY("Vous devriez pas vous arrêter. Les statistiques sont en votre faveur.")
				SAY("Il faut oser pour gagner! Les statistiques sont en votre faveur.")
				ANSWER("Allez, je retente, ça ne peut que s'améliorer.",5)
				ANSWER("D'accord, mais je vous préviens, essayez pas de m'avoir!",5)
				ANSWER("Non, pas aujourd'hui. Peut-être une autre fois.",100)
			else
				if (counter<9) then
					SAY("Allez, si vous jouez assez souvent, vous allez finir par gagner!")
					SAY("Achetez un autre ticket, vous finirez par gagner! Vous ne pouvez pas perdre! Vous allez vous refaire!")
					ANSWER("Je peux pas m'arrêter comme ça! Un autre!",5)
					ANSWER("Je veux gagner! Un autre!",5)
					ANSWER("Arrêtez ça, j'abandonne!",100)
				end
			end
		end
	end

-- Dialog Ausstiege 
	NODE(100)
		SAY("D'accord, repassez quand vous voulez.")
		ENDDIALOG()	

	NODE(101)
		SAY("Salopard! Vous ruinez le business!")
		SAY("Si vous voulez pas jouer, dégagez!")
		ENDDIALOG()
end