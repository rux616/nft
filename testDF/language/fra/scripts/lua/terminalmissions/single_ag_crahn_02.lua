function DIALOG()

	NODE(0)
		GENDERCHECK()
		if (result==1) then
			SAY("Salutations, fr�re, comment puis-je t'aider ?")
			SAY("Gloire � Crahn, fr�re. Que cherches-tu ?")
			SAY("As-tu besoin d'assistance, fr�re ?")
				
			ANSWER("Je suis l� pour l'extermination. Qu'est-ce que je dois faire ?",1)
			ANSWER("L'extermination de vermines...",1)
			ANSWER("C'est rien. Bye.",4)

		else
			SAY("Salutations, soeur, comment puis-je t'aider ?")
			SAY("Gloire � Crahn, soeur. Que cherches-tu ?")
			SAY("As-tu besoin d'assistance, soeur ?")
				
			ANSWER("Je suis l� pour l'extermination. Qu'est-ce que je dois faire ?",1)
			ANSWER("L'extermination de vermines...",1)
			ANSWER("C'est rien. Bye.",4)
		end

	NODE(1)
		SAY("Ahh oui, disciple, la pr�sence de %TARGET_NPCNAME(0) trouble l'aura psychique locale, et il est difficile de concentrer nos pouvoirs, ce qui est dommageable, car nous voulons accomplir certains rituels aujourd'hui. Fouillez dans le secteur � leur recherche, des d�truisez-en au moins %TARGET_VALUE(0,1), cela devrait nous permettre de restaurer notre champ psychique. Une fois votre mission accomplie, revenez me voir, vous serez convenablement r�compens�.")
		SAY("Ahh oui, disciple, la pr�sence de %TARGET_NPCNAME(0) trouble l'aura psychique locale, et il est difficile de concentrer nos pouvoirs, ce qui est dommageable, car nous voulons accomplir certains rituels aujourd'hui. Fouillez dans le secteur � leur recherche, des d�truisez-en au moins %TARGET_VALUE(0,1), cela devrait nous permettre de restaurer notre champ psychique. Une fois votre mission accomplie, revenez me voir, vous serez convenablement r�compens�.")
		SAY("Nous faisons actuellement face � un probl�me de contr�le de la population de %TARGET_NPCNAME(0). Habituellement, nous r�solvons ce genre de probl�mes par nous-m�mes, mais actuellement de nombreux fr�res sont occup�s. Rendez un service � la Fraternit� et mettez un terme � la fie de, disons, %TARGET_VALUE(0,1) %TARGET_NPCNAME(0). Ceci devrait les �loigner pendant un certain temps. Ensuite, nous pourrons prendre la situation en main.")
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				SAY("Disciple, oserais-tu questionner les instructions de la Fraternit� ? Reviens � moi lorsque ta mission sera accomplie.")
				SAY("Ne reviens que lorsque les rues seront purifi�es.")
				ENDDIALOG()
			else
				SAY("Bon travail, disciple. Accepte ces %REWARD_MONEY() cr�dits en signe d'approbation de la Fraternit�.")
				SAY("Rendons gr�ce � Crahn, vos efforts nous ont b�n�fici� � tous. Accepte ces %REWARD_MONEY() cr�dits en signe d'approbation de la Fraternit�.") 
				ACTIVATEDIALOGTRIGGER(1)
				ENDDIALOG()
			end
	NODE(4)
		SAY("Bonne journ�e, disciple.")
		SAY("Reviens lorsque tu auras fait le m�nage dans tes pens�es, disciple.")
		ENDDIALOG()
end

