function DIALOG()

	NODE(0)
		SAY("Allez approchez approchez, venez tenter votre chance!")
		ANSWER("Qu'est-ce que je dois faire?",1)
		ANSWER("C'est quoi?",1)
		ANSWER("Je ne joue jamais! Ca co�te cher, et il para�t qu'on devient accro!",101)
		ANSWER("Pas question, tout ce que vous voulez c'est d�poss�der les gens de leur argent durement gagn�!",101)
		
	NODE(1)
	if (node==state) then
	counter=0
		SAY("Vous achetez un ticket, et je vous dis combien vous avez gagn�. Vous avez 30% de chances de gagner, et vous pouvez r�colter jusqu'� 100.000 cr�dits! Laissez-vous tenter! Cent... mille! C'est beau, hein? Et tout �a seulement pour un ticket de 100 cr�dits!")
		ANSWER("Allez, je tente. Voil� le pognon.",5)
		ANSWER("Jamais! Pas question que je d�pense de l'argent l�-dedans.",101)
	end

	NODE(5)
	if (node==state) then
		TAKEMONEY(100)
		if (result==1) then
			SAY("Oohkay! Et voil� votre ticket!")
			SAY("C'est parti!")
			SAY("Et voil� votre ticket!")
			counter = counter + 1
			ANSWER("Allez, allez!",10)
			ANSWER("Je tr�pigne, maintenant!",10)
			ANSWER("Allez, on va vori ce que �a donne.",10)
		else
			SAY("Ah, si vous pouvez pas payer, alors l�...")
			ENDDIALOG()
		end
	end
			
	NODE(10)
	if (node==state) then
		RAND(10000)
		if (result < 1) then
			SAY("Allez, nous allons voir si tu as gagn�...")
			ANSWER("BINGO!! En plein dans le mille!! Je suis riche!!",20)
			counter = 0
		--end
		else
			if (result < 49) then
				SAY("Alors, t'as gagn� quelque chose?")
				ANSWER("Ouah, j'ai gagn� un truc, regardez.",21)
				counter = counter - 10
				if (0 > counter) then
					counter = 0
				end
			--end
			else
				if (result < 150) then
					SAY("Regardez ce que vous avez d'�crit sur le ticket.")
					ANSWER("H�! Cool! Je crois que j'ai gagn� un truc...",22)
					counter = counter - 6
					if (0 > counter) then
						counter = 0
					end
				--end
				else
					if (result < 800) then
						SAY("Alors, qu'est-ce que �a donne?")
						ANSWER("Pas mal. Je crois que j'ai gagn� quelque chose.",23)
						counter = counter - 4
						if (0 > counter) then
							counter = 0
						end
					--end
					else
						if (result < 2000) then
							SAY("Alors? Y a marqu� quoi?")
							ANSWER("C'est mieux que rien. Regardez...",24)
							ANSWER("On est sur le bon chemin. Regardez.",24)
							ANSWER("Mouais... Ca pourrait �tre pire, regardez...",24)
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
										SAY("Vous avez gagn�, cette fois?")
										SAY("Alors, comment �a se pr�sente?")
										SAY("Allez, c'est la bonne!")
										ANSWER("Encore rat�.",25)
										ANSWER("Toujours rien.",25)
										ANSWER("J'ai pas de chance.",25)
										ANSWER("Et encore rat�.",25)
									else
										if (counter<6) then 
											SAY("Alors, vous avez gagn�?")
											SAY("Ca se pr�sente comment?")
											SAY("Quelque chose de gagn�?")
											ANSWER("Encore rat�! On a une chance de gagner � ce jeu?",25)
											ANSWER("Toujours rien! Vous �tes s�r qu'on a 30% de chances de gagner?!",25)
											ANSWER("Toujours rien! J'esp�re que je suis pas en train de me faire arnaquer!",25)
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
												ANSWER("Ah, enfin! *soupire* J'y croyais plus! Un ticket de 10.000 cr�dits!",11)
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
		SAY("On a un gagnant! Montrez-moi �a!")
		ANSWER("Hein, pourquoi? Vous me faites pas confiance?",12)
	NODE(12)
		SAY("Les r�gles sont les r�gles! Montrez-moi votre ticket!")
		ANSWER("Vous avez pas confiance en moi!",13)
	NODE(13)
		SAY("Allez, votre ticket! Ensuite vous aurez votre prix!")
		ANSWER("Euh... voil�, tenez.",14)
	NODE(14)
		SAY("C'est quoi, �a? Un ticket perdant? Vous avez essay� de m'arnaquer?")
		ANSWER("*tousse*...Faut que je m'en aille. J'ai un rendez-vous...",15)
	NODE(15)
		SAY("Esp�ce de salopard! C'est � cause de toi que les affaires sont pas bonnes!")		
		ENDDIALOG()
		
	NODE(20)
		GIVEMONEY(100000)
		SAY("Incroyable! C'est le jackpot! F�licitations au grand gagnant! Vous voulez retenter votre chance!")
		ANSWER("J'arrive pas � le croire! Faut que je d�pense �a tout de suite! Donnez-moi un autre ticket!",5)
		ANSWER("J'ai jamais eu autant de chance de ma vie. Je vais m'arr�ter l�.",100)

	NODE(21)
		GIVEMONEY(10000)
		SAY("10.000 cr�dits. C'est le plus gros vainqueur de la journ�e, f�licitations! Vous voulez retenter?")
		ANSWER("Merci, je crois que je suis en veine, je remets �a!",5)
		ANSWER("J'ai jamais eu autant de chance de ma vie. Je vais m'arr�ter l�.",100)

	NODE(22)
		GIVEMONEY(1000)
		SAY("1.000 cr�dits! Tenez! De l'argent facile, et c'est une belle journ�e pour vous! Vous voulez remettre �a?")
		ANSWER("Merci, je crois que je suis en veine, je remets �a!",5)
		ANSWER("L'argent ne pousse pas sur les arbres, je crois que je vais m'arr�ter l�. Trouvez-vous un autre pigeon.",100)

	NODE(23)
		GIVEMONEY(100)
		SAY("Cent cr�dits! Vous voulez refaire une partie?")
		ANSWER("Je vais pas m'arr�ter maintenant, j'ai pas gagn� assez. Redonnez-moi un ticket.",5)
		ANSWER("J'arr�te de gaspiller mon argent!",100)

	NODE(24)
		GIVEMONEY(50)
		SAY("50 cr�dits. Tenez, voil�. Un autre ticket?")
		ANSWER("Oui, je remets �a. Il faut que je r�cup�re mon argent.",5)
		ANSWER("Je ne vais pas perdre tout mon argent, j'arr�te l�.",100)
	
	NODE(25)
	if (node==state) then
		if (counter<3) then
			SAY("Retentez votre chance!")
			SAY("De l'audace!")
			SAY("Allez, r�essayez, vosu allez gagner!")
			ANSWER("D'accord, un autre ticket!",5)
			ANSWER("D'accord, j'en reprends un.",5)
			ANSWER("J'ai d�j� eu assez de chance pour aujourd'hui, je reviendrai plus tard.",100)
		else
			if (counter<6) then
				SAY("Retentez votre chance!")
				SAY("Vous devriez pas vous arr�ter. Les statistiques sont en votre faveur.")
				SAY("Il faut oser pour gagner! Les statistiques sont en votre faveur.")
				ANSWER("Allez, je retente, �a ne peut que s'am�liorer.",5)
				ANSWER("D'accord, mais je vous pr�viens, essayez pas de m'avoir!",5)
				ANSWER("Non, pas aujourd'hui. Peut-�tre une autre fois.",100)
			else
				if (counter<9) then
					SAY("Allez, si vous jouez assez souvent, vous allez finir par gagner!")
					SAY("Achetez un autre ticket, vous finirez par gagner! Vous ne pouvez pas perdre! Vous allez vous refaire!")
					ANSWER("Je peux pas m'arr�ter comme �a! Un autre!",5)
					ANSWER("Je veux gagner! Un autre!",5)
					ANSWER("Arr�tez �a, j'abandonne!",100)
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
		SAY("Si vous voulez pas jouer, d�gagez!")
		ENDDIALOG()
end