function DIALOG()

	NODE(0)

		SAY("Nous avons besoin d'assurer la s�curit� de nos livraisons. Pouvez-vous nous aider?")

		ANSWER("Bien s�r. Qu'est-ce qu'il faut faire?",2)

		ANSWER("Non, je ne pense pas.",1)
		ANSWER("Non, je suis incapable de faire du mal � une mouche.",1)
	

	NODE(1)

		SAY("*hausse les �paule* Pas grave. On trouvera quelqu'un d'autre.")	
		SAY("*se tourne vers les autres* H�, les gars! Regardez, on a un h�ros qui a peur de tuer de la vermine! Ha Ha!")	

		ENDDIALOG()
	

	NODE(2)

		SAY("Nous avons besoin de quelqu'un pour abattre des %TARGET_NPCNAME(0)s. Vous les trouverez principalement dans les �gouts de la ville. Nous vous donnerons %REWARD_MONEY() cr�dits si vous en tuez au moins %TARGET_VALUE(0, 1) pour nous. Vous acceptez?")

		ANSWER("Bien s�r.",3)
		ANSWER("OK.",3)
		ANSWER("Oui.",3)
		ANSWER("Pas question.",1)
		ANSWER("NON.",1)
		ANSWER("Haha.",1)

	NODE(3)

		SAY("Alors qu'est-ce que vous attendez? Ces %TARGET_NPCNAME(0) commencent � nous �nerver.")

		ACCEPTMISSION()
		SETNEXTDIALOGSTATE(4)
		ENDDIALOG()

	NODE(4)

		ISMISSIONTARGETACCOMPLISHED(0)
		if( result==0 ) then

			SAY("Allez, en chasse!")
			SAY("Vous n'avez pas termin�. Revenez quand vous avez tu� assez de %TARGET_NPCNAME(0).")
			SAY("Il n'y en a pas assez. Vous devez en tuer au moins %TARGET_NPCNAME(0)s.")
			ENDDIALOG()

		else			

			SAY("Vous avez rendu la ville plus s�re. Voici votre r�compense.")
			ACTIVATEDIALOGTRIGGER(1)
			ENDDIALOG()

		end
end