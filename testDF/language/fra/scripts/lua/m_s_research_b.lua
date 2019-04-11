function DIALOG()

	NODE(0)

		SAY("Bonjour! J'ai un travail de recherche à effectuer. Ca vous intéresse?")
		SAY("Bonjour! Vous voulez gagner de l'argent en faisant un peu de recherche?")
		SAY("Bonjour! Un peu de recherche, ça vous plairait?")
		SAY("Bonjour! Un peu de recherche, vite fait bien fait, ça vous tente?")
		
		ANSWER("Oui!", 1)
		ANSWER("Evidemment!", 1)
		ANSWER("Pourquoi pas?", 1)
		ANSWER("Sur quoi?", 1)

		ANSWER("Pas le temps.",20)
		ANSWER("Non. Laissez-moi tranquille.",20)
		ANSWER("Allez-vous en!",20)

	NODE(1)

		SAY("OK. Nous avons besoin de votre aide. Allez voir %NPC_NAME(0) qui travaille pour %FRACTION_NAME(%NPC_TYPE(0)), à %NPC_WORLD(0). Demandez-lui les recherches les plus urgentes à accomplir. Puis revenez me voir avec les plans pour toucher votre récompense. Vous acceptez?")

		ANSWER("Oui.", 2)
		ANSWER("Non.", 20)

	NODE(2)
		ACCEPTMISSION()

SAY("OK, alors faites vite s'il-vous-plaît!")

		SETNEXTDIALOGSTATE(5)
		ENDDIALOG()

	NODE(3)

		SAY("Vous êtes là pour la recherche?")
		SAY("J'espère que vous venez pour la recherche?")

		ANSWER("Oui, tout à fait.",4)

		ANSWER("Jamais je ne travaillerai pour vous.", 21)
		ANSWER("Laissez tomber!",21)
		ANSWER("Pardon, je ne sais pas faire ça!",21)
		
	NODE(4)

		SAY("Ahhh, très bien. Alors veuillez produire deux plans de battes de baseball et les donner à %NPC_NAME(4). Dépêchez-vous, c'est très important pour %FRACTION_NAME( %NPC_TYPE(0)). Vous avez déjà de quoi faire la recherche?")
		GIVEITEM(1501)
		GIVEITEM(1501)
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(21)
		ENDDIALOG()
			
	NODE(5)
		
		ISMISSIONTARGETACCOMPLISHED(0)
		if( result==0 ) then

			SAY("Allez demander à %NPC_NAME(0) les plans dont nous avons besoin.")
			ENDDIALOG()

		else			
		

			SAY("OK, vous avez les plans?")

			ANSWER("Oui, les voilà.", 6)
			ANSWER("Non. Je travaille encore dessus.", 7)

		end

	NODE(6)

		TAKEITEM(5034)
		if (result==1) then

			TAKEITEM(5034)
			if (result==1) then
				SAY("OK, merci pour votre aide. Voici votre récompense.")
				ACTIVATEDIALOGTRIGGER(2)
				ENDDIALOG()

			else
				--ein item zurueckgeben, das schon genommen wurde
				SAY("Je ne vois qu'un seul plan. Revenez quand vous aurez l'autre.")
				GIVEITEM(5034)
			end
				
		else
			SAY("Vous n'avez pas terminé. Je vous attends.")
		end

	NODE(7)
		
		SAY("OK, dépêchez-vous. Le temps presse.")
		ENDDIALOG()

	NODE(20)

		SAY("Alors dégagez le plancher!")
		SAY("Espèce d'incapable, hors de ma vue!")
		SAY("Alors fichez-moi la paix!")
		SAY("Bon, je trouverai quelqu'un d'autre!")
		
		ENDDIALOG()

	NODE(21)

		SAY("Alors partez. J'ai plein de choses à faire.")
		
		ENDDIALOG()
end