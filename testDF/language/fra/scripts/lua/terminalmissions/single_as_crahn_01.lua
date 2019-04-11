function DIALOG()

	NODE(0)
		if (result==1) then
			SAY("Salutations, mon Frère. Comment puis-je t'aider ?")
			SAY("Gloire à Crahn, mon Frère. Que cherches-tu donc ?")
			SAY("Besoin de mon aide, mon Frère ?")
				
			ANSWER("C'est beau, comme endroit. Qu'est-ce que vous y faites ?",1)
			ANSWER("Je viens pour l'exécution.",2)
			ANSWER("J'ai dû me tromper. Au revoir.",4)

		else
			SAY("Salutations, ma Soeur. Comment puis-je t'aider ?")
			SAY("Gloire à Crahn, ma soeur. Que cherches-tu donc ?")
			SAY("Besoin de mon aide, ma soeur ?")
				
			ANSWER("C'est beau, comme endroit. Qu'est-ce que vous y faites ?",1)
			ANSWER("Je viens pour l'exécution.",2)
			ANSWER("Je me suis trompée. Au revoir.",4)
		end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Va-t-en, mon Frère. Ta présence déséquilibre mon être !")
				SAY("Le temps est à l'intériorisation, mon Frère, ne me trouble point.")
				ENDDIALOG()
			else
				SAY("Va-t-en, ma Soeur. Ta présence déséquilibre mon être !")
				SAY("Le temps est à l'intériorisation, ma Soeur. Ne me trouble point.")
				ENDDIALOG()
			end
	NODE(2)
		
				SAY("%NPC_NAME(1) faisait partie de notre ordre, mais a été banni en raison d'irrégularités financières. A présent, nous savons qu'il a été approché par les Néochroniques pour écrire un article sur la vie au sein de la Fraternité. Nous craignons qu'il ne trahisse notre voeu de silence. Rends-toi à %NPC_WORLD(1), trouve %NPC_NAME(1), et fais-lui respecter son voeu de silence... définitivement. Ce sera un exemple pour tous ceux qui pensent trahir la Fraternité. Lorsque ta tâche sera accomplie, reviens ici pour toucher ta récompense.")
				SAY("Nos informateurs dans les rues nous disent que %NPC_NAME(1) est le dirigeant d'un culte insignifiant qui prêche activement contre les enseignements de Crahn. Localise %NPC_NAME(1) à %NPC_WORLD(1), et transforme cet hérétique en histoire ancienne. Lorsque tu auras terminé ton oeuvre, reviens ici et tu recevras les honneurs qui te sont dus.")       
				SAY("%NPC_NAME(1) a tenté de s'approprier des informations sur le cercle des dirigeants de la Fraternité. Nous ne tolérons pas les espions. Rends-toi à %NPC_WORLD(1) et mets un terme à son enquête. Lorsque ta tâche sera accomplie, reviens toucher ta récompense.")
				SETNEXTDIALOGSTATE(3)
				ENDDIALOG()

	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				SAY("Je pensais que tes instructions étaient claires, disciple. Ne reviens pas tant que tu n'as pas éliminé ta cible. Ce n'est qu'alors que tu recevras ta récompense.")
				SAY("Pourquoi traînes-tu en route, disciple ? Le temps nous est compté ! Elimine cet hérétique avant qu'il soit trop tard. Ce n'est que lorsque tu auras accompli ta tâche que tu bénéficieras de la bienveillance de Crahn.")
				ENDDIALOG()
			else
				GENDERCHECK()
					if (result==1) then
						SAY("Excellent travail, mon Frère. Accepte ces %REWARD_MONEY() crédits en témoignage de notre confiance indéfectible en tes compétences. Maintenant va, et ne parle à personne de ce que tes yeux ont vu.")
						SAY("Tes efforts ont mis Gordon Kalah en joie, et il m'a demandé de te donner ces %REWARD_MONEY() crédits en signe de son approbation, mon Frère. Maintenant va, et ne parle à personne de ce que tes yeux ont vu.")
						SAY("Tes efforts n'ont pas été vains, mon Frère. Accepte ces %REWARD_MONEY() crédits en signe du soutien de la Fraternité. Maintenant va, et ne parle à personne de ce que tes yeux ont vu.")  
						ACTIVATEDIALOGTRIGGER(1)
						ENDDIALOG()
					else
						SAY("Excellent travail, ma Soeur. Accepte ces %REWARD_MONEY() crédits en témoignage de notre confiance indéfectible en tes compétences. Maintenant va, et ne parle à personne de ce que tes yeux ont vu.")
						SAY("Tes efforts ont mis Gordon Kalah en joie, et il m'a demandé de te donner ces %REWARD_MONEY() crédits en signe de son approbation, ma Soeur. Maintenant va, et ne parle à personne de ce que tes yeux ont vu.")
						SAY("Tes efforts n'ont pas été vains, ma Soeur. Accepte ces %REWARD_MONEY() crédits en signe du soutien de la Fraternité. Maintenant va, et ne parle à personne de ce que tes yeux ont vu.") 
						ACTIVATEDIALOGTRIGGER(1)
						ENDDIALOG()
					end
			end
	NODE(4)
		SAY("Good bye.")
		ENDDIALOG()
end
						
		
			
