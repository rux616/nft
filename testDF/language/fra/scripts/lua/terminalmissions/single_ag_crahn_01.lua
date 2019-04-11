function DIALOG()

	NODE(0)
		

GENDERCHECK()
		if (result==1) then
			SAY("Salutations, frère, comment puis-je t'aider ?")
			SAY("Gloire à Crahn, frère. Que cherches-tu ?")
			SAY("As-tu besoin d'assistance, frère ?")
				
			ANSWER("Je suis là pour l'extermination. Qu'est-ce que je dois faire ?",1)
			ANSWER("L'extermination de vermines...",1)
			ANSWER("C'est rien. Bye.",4)

		else
			SAY("Salutations, soeur, comment puis-je t'aider ?")
			SAY("Gloire à Crahn, soeur. Que cherches-tu ?")
			SAY("As-tu besoin d'assistance, soeur ?")
				
			ANSWER("Je suis là pour l'extermination. Qu'est-ce que je dois faire ?",1)
			ANSWER("L'extermination de vermines...",1)
			ANSWER("C'est rien. Bye.",4)
		end

	NODE(1)
		SAY("Ahh oui, disciple, nous avons un problème local avec les %TARGET_NPCNAME(). Va dans le secteur en éliminer au moins %TARGET_VALUE(0,1). Une fois ce nombre atteint, reviens me voir, et tu seras correctement récompensé.")
		SAY("La présence de %TARGET_NPCNAME() à proximité de notre lieu de réunion nuit à l'intégrité du domaine. Rends-toi dans le secteur et sacrifie au moins %TARGET_VALUE(0,1) de ces créatures à la gloire de Crahn. Le temps nous est compté, disciple. Agis prestement.")
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				SAY("Disciple, oserais-tu questionner les instructions de la Fraternité ? Reviens à moi lorsque ta mission sera accomplie.")
				SAY("Ne reviens que lorsque les rues seront purifiées.")
				ENDDIALOG()
			else
				SAY("Bon travail, disciple. Accepte ces %REWARD_MONEY() crédits en signe d'approbation de la Fraternité.")
				SAY("Rendons grâce à Crahn, vos efforts nous ont bénéficié à tous. Accepte ces %REWARD_MONEY() crédits en signe d'approbation de la Fraternité.") 
				ACTIVATEDIALOGTRIGGER(1)
				ENDDIALOG()
			end
	NODE(4)
		SAY("Bonne journée, disciple.")
		SAY("Reviens lorsque tu auras fait le ménage dans tes pensées, disciple.")
		ENDDIALOG()
end

