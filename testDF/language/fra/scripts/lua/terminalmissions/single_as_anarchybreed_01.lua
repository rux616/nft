--single_as_breed_01
--

function DIALOG()

	NODE(0)
		GENDERCHECK()
			if (result==1) then
			SAY("Holà mon pote ? Ca va ?")
			SAY("Salut mec, qu'est-ce que je peux faire pour toi ?")
			SAY("Salut mec. Je peux t'aider ?")

			ANSWER("Je viens pour l'élimination. Le nom de la cible ?",2)
			ANSWER("Mec ? J'ai dû me tromper d'endroit. Au revoir.",1)
			ANSWER("Mec ? J'ai dû te confondre avec quelqu'un d'autre. Au revoir.",1)

			else -- Female
			SAY("Salut ma belle, ca va ?")
			SAY("Salut ma belle, j'peux faire quoi pour tes beaux yeux ?")
			SAY("Salut ma belle, tu veux quoi ??")

			ANSWER("Je viens pour l'élimination. Le nom de la cible ?",2)
			ANSWER("Ma belle ? J'ai dû me tromper d'endroit. Au revoir.",1)
			ANSWER("Ma belle ? J'ai dû te confondre avec quelqu'un d'autre. Au revoir.",1)
			end
	NODE(1)	
		SAY("D'accord. Te perds pas sur le chemin de retour.")
		SAY("Ta mère t'a pas appris la politesse ? Allez, dégage !")
		SAY("Arrête de me faire perdre mon temps, microbe.")
		SAY("J'ai pas de temps pour ça, espèce de parasite. Hors de ma vue.")
		ENDDIALOG()

	NODE(2)
		SAY("Cool, parlons affaires. Ta cible : %NPC_NAME(1). %NPC_WORLD(1). Quand t'as fini, reviens ici pour ton fric.")
		SAY("T'as le feu au cul ou quoi ? Bon d'accord, j'ai compris... Ta cible : %NPC_NAME(1). Va voir dans %NPC_WORLD(1). Reviens me voir quand c'est bon.")
		SAY("Direct dans le vif du sujet, j'aime ça. Ta cible : %NPC_NAME(1). Va voir dans %NPC_WORLD(1). Quand c'est réglé, reviens ici pour ta paye.")
		SETNEXTDIALOGSTATE(3)
		ENDDIALOG()

	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				SAY("T'as perdu ton chemin ? Si tu veux tes %REWARD_MONEY() crédits, faudra que tu penses un peu plus que ça.")
				SAY("Toujours pas fini ? Alors pourquoi t'es de retour ? Allez, va te servir de ton flingue, il y a urgence ! Compris ? Maintenant dégage !")
				SAY("Tu veux jouer au con avec moi ? C'est ça, continue, tu vas voir... Allez, au travail, sinon tu peux dire adieu à ton fric. Ca dépend que de toi.")
				ENDDIALOG()
			else
				GENDERCHECK()
					if (result==1) then
						SAY("Très bien, mon gars. On dirait que tu sais ce que tu fais. Voilà tes %REWARD_MONEY() crédits. Maintenant, choisis ta voie, des missions pour nous, ou jouer au chien-chien pour Reza. Mais me fais pas chier.")
						SAY("T'as tué ta cible et t'as pas de sang sur toi. Mais c'est que tu sais comment t'y prendre, on dirait ! Tiens, voilà tes %REWARD_MONEY() crédits. Surveille les annonces des Fils de l'Anarchie sur ton terminal, mon gars. On va reprendre contact.")
						SAY("Hé, c'est mon copain qui revient ! Toi, t'es un vrai tueur, hein ? T'as tué ta cible, les %REWARD_MONEY() crédits sont à toi. Surveille les annonces des Fils de l'Anarchie sur ton terminal, mon gars. On va reprendre contact.")
						ACTIVATEDIALOGTRIGGER(1)
						ENDDIALOG()
					else
						SAY("Très bien ma belle. On dirait que tu sais ce que tu fais. Voilà tes %REWARD_MONEY() crédits. Maintenant, choisis ta voie, des missions pour nous, ou jouer au chien-chien pour Reza. Mais me fais pas chier.")
						SAY("T'as tué ta cible et t'as pas de sang sur toi. Mais t'aimes bien faire péter des trucs, on dirait ! Tiens, voilà tes %REWARD_MONEY() crédits. Surveille les annonces des Fils de l'Anarchie sur ton terminal, mon gars. On va reprendre contact.")
						SAY("Hé, c'est ma copine qui revient ! Toi, t'es une vraie tueuse, hein ? T'as tué ta cible, les %REWARD_MONEY() crédits sont à toi. Surveille les annonces des Fils de l'Anarchie sur ton terminal, ma belle. On va reprendre contact.")
						ACTIVATEDIALOGTRIGGER(1)
						ENDDIALOG()
					end
			end
end
	
