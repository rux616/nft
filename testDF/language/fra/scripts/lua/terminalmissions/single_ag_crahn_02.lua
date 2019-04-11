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
		SAY("Ahh oui, disciple, la présence de %TARGET_NPCNAME(0) trouble l'aura psychique locale, et il est difficile de concentrer nos pouvoirs, ce qui est dommageable, car nous voulons accomplir certains rituels aujourd'hui. Fouillez dans le secteur à leur recherche, des détruisez-en au moins %TARGET_VALUE(0,1), cela devrait nous permettre de restaurer notre champ psychique. Une fois votre mission accomplie, revenez me voir, vous serez convenablement récompensé.")
		SAY("Ahh oui, disciple, la présence de %TARGET_NPCNAME(0) trouble l'aura psychique locale, et il est difficile de concentrer nos pouvoirs, ce qui est dommageable, car nous voulons accomplir certains rituels aujourd'hui. Fouillez dans le secteur à leur recherche, des détruisez-en au moins %TARGET_VALUE(0,1), cela devrait nous permettre de restaurer notre champ psychique. Une fois votre mission accomplie, revenez me voir, vous serez convenablement récompensé.")
		SAY("Nous faisons actuellement face à un problème de contrôle de la population de %TARGET_NPCNAME(0). Habituellement, nous résolvons ce genre de problèmes par nous-mêmes, mais actuellement de nombreux frères sont occupés. Rendez un service à la Fraternité et mettez un terme à la fie de, disons, %TARGET_VALUE(0,1) %TARGET_NPCNAME(0). Ceci devrait les éloigner pendant un certain temps. Ensuite, nous pourrons prendre la situation en main.")
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

