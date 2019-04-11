function DIALOG()

	NODE(0)
		if (result==1) then
			SAY("Salutations, mon Fr�re. Comment puis-je t'aider ?")
			SAY("Gloire � Crahn, mon Fr�re. Que cherches-tu donc ?")
			SAY("Besoin de mon aide, mon Fr�re ?")
				
			ANSWER("C'est beau, comme endroit. Qu'est-ce que vous y faites ?",1)
			ANSWER("Je viens pour l'ex�cution.",2)
			ANSWER("J'ai d� me tromper. Au revoir.",4)

		else
			SAY("Salutations, ma Soeur. Comment puis-je t'aider ?")
			SAY("Gloire � Crahn, ma soeur. Que cherches-tu donc ?")
			SAY("Besoin de mon aide, ma soeur ?")
				
			ANSWER("C'est beau, comme endroit. Qu'est-ce que vous y faites ?",1)
			ANSWER("Je viens pour l'ex�cution.",2)
			ANSWER("Je me suis tromp�e. Au revoir.",4)
		end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Va-t-en, mon Fr�re. Ta pr�sence d�s�quilibre mon �tre !")
				SAY("Le temps est � l'int�riorisation, mon Fr�re, ne me trouble point.")
				ENDDIALOG()
			else
				SAY("Va-t-en, ma Soeur. Ta pr�sence d�s�quilibre mon �tre !")
				SAY("Le temps est � l'int�riorisation, ma Soeur. Ne me trouble point.")
				ENDDIALOG()
			end
	NODE(2)
		
				SAY("%NPC_NAME(1) faisait partie de notre ordre, mais a �t� banni en raison d'irr�gularit�s financi�res. A pr�sent, nous savons qu'il a �t� approch� par les N�ochroniques pour �crire un article sur la vie au sein de la Fraternit�. Nous craignons qu'il ne trahisse notre voeu de silence. Rends-toi � %NPC_WORLD(1), trouve %NPC_NAME(1), et fais-lui respecter son voeu de silence... d�finitivement. Ce sera un exemple pour tous ceux qui pensent trahir la Fraternit�. Lorsque ta t�che sera accomplie, reviens ici pour toucher ta r�compense.")
				SAY("Nos informateurs dans les rues nous disent que %NPC_NAME(1) est le dirigeant d'un culte insignifiant qui pr�che activement contre les enseignements de Crahn. Localise %NPC_NAME(1) � %NPC_WORLD(1), et transforme cet h�r�tique en histoire ancienne. Lorsque tu auras termin� ton oeuvre, reviens ici et tu recevras les honneurs qui te sont dus.")       
				SAY("%NPC_NAME(1) a tent� de s'approprier des informations sur le cercle des dirigeants de la Fraternit�. Nous ne tol�rons pas les espions. Rends-toi � %NPC_WORLD(1) et mets un terme � son enqu�te. Lorsque ta t�che sera accomplie, reviens toucher ta r�compense.")
				SETNEXTDIALOGSTATE(3)
				ENDDIALOG()

	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				SAY("Je pensais que tes instructions �taient claires, disciple. Ne reviens pas tant que tu n'as pas �limin� ta cible. Ce n'est qu'alors que tu recevras ta r�compense.")
				SAY("Pourquoi tra�nes-tu en route, disciple ? Le temps nous est compt� ! Elimine cet h�r�tique avant qu'il soit trop tard. Ce n'est que lorsque tu auras accompli ta t�che que tu b�n�ficieras de la bienveillance de Crahn.")
				ENDDIALOG()
			else
				GENDERCHECK()
					if (result==1) then
						SAY("Excellent travail, mon Fr�re. Accepte ces %REWARD_MONEY() cr�dits en t�moignage de notre confiance ind�fectible en tes comp�tences. Maintenant va, et ne parle � personne de ce que tes yeux ont vu.")
						SAY("Tes efforts ont mis Gordon Kalah en joie, et il m'a demand� de te donner ces %REWARD_MONEY() cr�dits en signe de son approbation, mon Fr�re. Maintenant va, et ne parle � personne de ce que tes yeux ont vu.")
						SAY("Tes efforts n'ont pas �t� vains, mon Fr�re. Accepte ces %REWARD_MONEY() cr�dits en signe du soutien de la Fraternit�. Maintenant va, et ne parle � personne de ce que tes yeux ont vu.")  
						ACTIVATEDIALOGTRIGGER(1)
						ENDDIALOG()
					else
						SAY("Excellent travail, ma Soeur. Accepte ces %REWARD_MONEY() cr�dits en t�moignage de notre confiance ind�fectible en tes comp�tences. Maintenant va, et ne parle � personne de ce que tes yeux ont vu.")
						SAY("Tes efforts ont mis Gordon Kalah en joie, et il m'a demand� de te donner ces %REWARD_MONEY() cr�dits en signe de son approbation, ma Soeur. Maintenant va, et ne parle � personne de ce que tes yeux ont vu.")
						SAY("Tes efforts n'ont pas �t� vains, ma Soeur. Accepte ces %REWARD_MONEY() cr�dits en signe du soutien de la Fraternit�. Maintenant va, et ne parle � personne de ce que tes yeux ont vu.") 
						ACTIVATEDIALOGTRIGGER(1)
						ENDDIALOG()
					end
			end
	NODE(4)
		SAY("Good bye.")
		ENDDIALOG()
end
						
		
			
