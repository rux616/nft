--single_as_breed_01
--

function DIALOG()

	NODE(0)
		GENDERCHECK()
			if (result==1) then
			SAY("Hol� mon pote ? Ca va ?")
			SAY("Salut mec, qu'est-ce que je peux faire pour toi ?")
			SAY("Salut mec. Je peux t'aider ?")

			ANSWER("Je viens pour l'�limination. Le nom de la cible ?",2)
			ANSWER("Mec ? J'ai d� me tromper d'endroit. Au revoir.",1)
			ANSWER("Mec ? J'ai d� te confondre avec quelqu'un d'autre. Au revoir.",1)

			else -- Female
			SAY("Salut ma belle, ca va ?")
			SAY("Salut ma belle, j'peux faire quoi pour tes beaux yeux ?")
			SAY("Salut ma belle, tu veux quoi ??")

			ANSWER("Je viens pour l'�limination. Le nom de la cible ?",2)
			ANSWER("Ma belle ? J'ai d� me tromper d'endroit. Au revoir.",1)
			ANSWER("Ma belle ? J'ai d� te confondre avec quelqu'un d'autre. Au revoir.",1)
			end
	NODE(1)	
		SAY("D'accord. Te perds pas sur le chemin de retour.")
		SAY("Ta m�re t'a pas appris la politesse ? Allez, d�gage !")
		SAY("Arr�te de me faire perdre mon temps, microbe.")
		SAY("J'ai pas de temps pour �a, esp�ce de parasite. Hors de ma vue.")
		ENDDIALOG()

	NODE(2)
		SAY("Cool, parlons affaires. Ta cible : %NPC_NAME(1). %NPC_WORLD(1). Quand t'as fini, reviens ici pour ton fric.")
		SAY("T'as le feu au cul ou quoi ? Bon d'accord, j'ai compris... Ta cible : %NPC_NAME(1). Va voir dans %NPC_WORLD(1). Reviens me voir quand c'est bon.")
		SAY("Direct dans le vif du sujet, j'aime �a. Ta cible : %NPC_NAME(1). Va voir dans %NPC_WORLD(1). Quand c'est r�gl�, reviens ici pour ta paye.")
		SETNEXTDIALOGSTATE(3)
		ENDDIALOG()

	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				SAY("T'as perdu ton chemin ? Si tu veux tes %REWARD_MONEY() cr�dits, faudra que tu penses un peu plus que �a.")
				SAY("Toujours pas fini ? Alors pourquoi t'es de retour ? Allez, va te servir de ton flingue, il y a urgence ! Compris ? Maintenant d�gage !")
				SAY("Tu veux jouer au con avec moi ? C'est �a, continue, tu vas voir... Allez, au travail, sinon tu peux dire adieu � ton fric. Ca d�pend que de toi.")
				ENDDIALOG()
			else
				GENDERCHECK()
					if (result==1) then
						SAY("Tr�s bien, mon gars. On dirait que tu sais ce que tu fais. Voil� tes %REWARD_MONEY() cr�dits. Maintenant, choisis ta voie, des missions pour nous, ou jouer au chien-chien pour Reza. Mais me fais pas chier.")
						SAY("T'as tu� ta cible et t'as pas de sang sur toi. Mais c'est que tu sais comment t'y prendre, on dirait ! Tiens, voil� tes %REWARD_MONEY() cr�dits. Surveille les annonces des Fils de l'Anarchie sur ton terminal, mon gars. On va reprendre contact.")
						SAY("H�, c'est mon copain qui revient ! Toi, t'es un vrai tueur, hein ? T'as tu� ta cible, les %REWARD_MONEY() cr�dits sont � toi. Surveille les annonces des Fils de l'Anarchie sur ton terminal, mon gars. On va reprendre contact.")
						ACTIVATEDIALOGTRIGGER(1)
						ENDDIALOG()
					else
						SAY("Tr�s bien ma belle. On dirait que tu sais ce que tu fais. Voil� tes %REWARD_MONEY() cr�dits. Maintenant, choisis ta voie, des missions pour nous, ou jouer au chien-chien pour Reza. Mais me fais pas chier.")
						SAY("T'as tu� ta cible et t'as pas de sang sur toi. Mais t'aimes bien faire p�ter des trucs, on dirait ! Tiens, voil� tes %REWARD_MONEY() cr�dits. Surveille les annonces des Fils de l'Anarchie sur ton terminal, mon gars. On va reprendre contact.")
						SAY("H�, c'est ma copine qui revient ! Toi, t'es une vraie tueuse, hein ? T'as tu� ta cible, les %REWARD_MONEY() cr�dits sont � toi. Surveille les annonces des Fils de l'Anarchie sur ton terminal, ma belle. On va reprendre contact.")
						ACTIVATEDIALOGTRIGGER(1)
						ENDDIALOG()
					end
			end
end
	
