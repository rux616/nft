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
		ANSWER("Hors de mon chemin!",20)

	NODE(1)

		SAY("OK. Allez voir %NPC_NAME(0), de la faction %FRACTION_NAME(%NPC_TYPE(0)), à %NPC_WORLD(0), demandez lui ce qu'il faut rechercher. Puis revenez me voir, et donnez-moi les plans qu'on vous a demandés. Vous acceptez?")

		ANSWER("Oui.", 2)
		ANSWER("Non.", 20)

	NODE(2)
		ACCEPTMISSION()

SAY("OK, alors dépêchez-vous, s'il-vous-plaît!")

		SETNEXTDIALOGSTATE(5)
		ENDDIALOG()

	NODE(3)

		SAY("Vous venez pour la recherche?")
		SAY("J'espère que vous venez pour la recherche?")

		ANSWER("Oui, tout à fait.",4)

		ANSWER("Jamais je ne travaillerai pour vous.", 21)
		ANSWER("Laissez tomber!",21)
		ANSWER("Pardon, je ne sais pas faire ça!",21)
		
	NODE(4)

		SAY("Ahhh, très bien. Alors effectuez des recherches sur deux pistolets, et donnez les plans à %NPC_NAME(4). Dépêchez-vous, faites-le pour %FRACTION_NAME( %NPC_TYPE(0)).")

		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(21)
		ENDDIALOG()
			
	NODE(5)
		
		ISMISSIONTARGETACCOMPLISHED(0)
		if( result==0 ) then

			SAY("Allez demander à %NPC_NAME(0) ce dont nous avons besoin.")
			ENDDIALOG()

		else			
		

			SAY("OK, vous avez les plans?")

			ANSWER("Oui, les voilà.", 6)
			ANSWER("Non, je travaille encore dessus.", 7)

		end

	NODE(6)

		TAKEITEM(5027)
		if(result==1) then

			TAKEITEM(5027)
			if(result==1) then
				SAY("OK, merci pour votre aide. Voici votre récompense, ainsi que deux InfoCubes vierges.")
				GIVEITEM(1501)
				GIVEITEM(1501)
				ACTIVATEDIALOGTRIGGER(2)
				ENDDIALOG()

			else
				--ein item zurueckgeben, das schon genommen wurde
				SAY("Je ne vois qu'un seul plan. Nous en avons besoin d'un second.")
				GIVEITEM(5027)
			end
				
		else
			SAY("Vous n'avez rien encore. Allez, au travail.")
		end

	NODE(7)
		
		SAY("OK, dépêchez-vous. Nous manquons de temps.")
		ENDDIALOG()

	NODE(20)

		SAY("Alors partez!")
		SAY("C'est pas possible de voir ça... Hors de ma vue!")
		SAY("Alors laissez-moi tranquille.")
		SAY("Je trouverai quelqu'un d'autre.")
		
		ENDDIALOG()

	NODE(21)

		SAY("allez-vous-en. J'ai beaucoup à faire.")
		
		ENDDIALOG()
end