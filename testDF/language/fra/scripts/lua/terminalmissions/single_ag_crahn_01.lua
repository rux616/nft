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
		SAY("Ahh oui, disciple, nous avons un probl�me local avec les %TARGET_NPCNAME(). Va dans le secteur en �liminer au moins %TARGET_VALUE(0,1). Une fois ce nombre atteint, reviens me voir, et tu seras correctement r�compens�.")
		SAY("La pr�sence de %TARGET_NPCNAME() � proximit� de notre lieu de r�union nuit � l'int�grit� du domaine. Rends-toi dans le secteur et sacrifie au moins %TARGET_VALUE(0,1) de ces cr�atures � la gloire de Crahn. Le temps nous est compt�, disciple. Agis prestement.")
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

