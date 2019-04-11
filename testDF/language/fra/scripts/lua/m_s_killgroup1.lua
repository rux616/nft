function DIALOG()

	NODE(0)

		SAY("Nous avons besoin d'assurer la sécurité de nos livraisons. Pouvez-vous nous aider?")

		ANSWER("Bien sûr. Qu'est-ce qu'il faut faire?",2)

		ANSWER("Non, je ne pense pas.",1)
		ANSWER("Non, je suis incapable de faire du mal à une mouche.",1)
	

	NODE(1)

		SAY("*hausse les épaule* Pas grave. On trouvera quelqu'un d'autre.")	
		SAY("*se tourne vers les autres* Hé, les gars! Regardez, on a un héros qui a peur de tuer de la vermine! Ha Ha!")	

		ENDDIALOG()
	

	NODE(2)

		SAY("Nous avons besoin de quelqu'un pour abattre des %TARGET_NPCNAME(0)s. Vous les trouverez principalement dans les égouts de la ville. Nous vous donnerons %REWARD_MONEY() crédits si vous en tuez au moins %TARGET_VALUE(0, 1) pour nous. Vous acceptez?")

		ANSWER("Bien sûr.",3)
		ANSWER("OK.",3)
		ANSWER("Oui.",3)
		ANSWER("Pas question.",1)
		ANSWER("NON.",1)
		ANSWER("Haha.",1)

	NODE(3)

		SAY("Alors qu'est-ce que vous attendez? Ces %TARGET_NPCNAME(0) commencent à nous énerver.")

		ACCEPTMISSION()
		SETNEXTDIALOGSTATE(4)
		ENDDIALOG()

	NODE(4)

		ISMISSIONTARGETACCOMPLISHED(0)
		if( result==0 ) then

			SAY("Allez, en chasse!")
			SAY("Vous n'avez pas terminé. Revenez quand vous avez tué assez de %TARGET_NPCNAME(0).")
			SAY("Il n'y en a pas assez. Vous devez en tuer au moins %TARGET_NPCNAME(0)s.")
			ENDDIALOG()

		else			

			SAY("Vous avez rendu la ville plus sûre. Voici votre récompense.")
			ACTIVATEDIALOGTRIGGER(1)
			ENDDIALOG()

		end
end