function DIALOG()

	NODE(0)

		SAY("Bonjour! J'ai un travail de recherche � effectuer. Ca vous int�resse?")
		SAY("Bonjour! Vous voulez gagner de l'argent en faisant un peu de recherche?")
		SAY("Bonjour! Un peu de recherche, �a vous plairait?")
		SAY("Bonjour! Un peu de recherche, vite fait bien fait, �a vous tente?")
		
		ANSWER("Oui!", 1)
		ANSWER("Evidemment!", 1)
		ANSWER("Pourquoi pas?", 1)
		ANSWER("Sur quoi?", 1)

		ANSWER("Pas le temps.",20)
		ANSWER("Non. Laissez-moi tranquille.",20)
		ANSWER("Non, je ne fais pas de recherche.",20)


	NODE(1)

		SAY("OK. Nous avons besoin de votre aide. Allez voir %NPC_NAME(0) qui travaille pour %FRACTION_NAME(%NPC_TYPE(0)), � %NPC_WORLD(0). Demandez-lui les recherches les plus urgentes � accomplir. Puis revenez me voir avec les plans pour toucher votre r�compense. Vous acceptez?")
		ANSWER("Oui.", 2)
		ANSWER("Non.", 20)

	NODE(2)
		ACCEPTMISSION()

SAY("OK, alors faites vite s'il-vous-pla�t!")

		SETNEXTDIALOGSTATE(5)
		ENDDIALOG()

	NODE(3)

		SAY("Vous �tes l� pour la recherche?")
		SAY("J'esp�re que vous venez pour la recherche?")

		ANSWER("Oui, tout � fait.",4)

		ANSWER("Jamais je ne travaillerai pour vous.", 21)
		ANSWER("Laissez tomber!",21)
		ANSWER("Pardon, je ne sais pas faire �a!",21)
		
	NODE(4)

		SAY("Ahhh, tr�s bien. Alors veuillez produire deux plans de couteaux et les donner � %NPC_NAME(4). D�p�chez-vous, c'est tr�s important pour %FRACTION_NAME( %NPC_TYPE(0)). Vous avez d�j� de quoi faire la recherche?")


		ANSWER("Oui. Je peux commencer tout de suite.",10)
		ANSWER("Non, pas encore. O� est-ce que je peux acheter un chercheur?", 11)

			
	NODE(5)
		
		ISMISSIONTARGETACCOMPLISHED(0)
		if( result==0 ) then

			SAY("Allez demander � %NPC_NAME(0) les plans dont nous avons besoin.")
			ENDDIALOG()

		else			
		

			SAY("OK, vous avez les plans?")

			ANSWER("Oui, les voil�.", 6)
			ANSWER("Non. Je travaille encore dessus.", 7)

		end

	NODE(6)

		TAKEITEM(5035)
		if(result==1) then

			TAKEITEM(5035)
			if(result==1) then
				SAY("OK, merci pour votre aide. Voici votre r�compense, ainsi que deux InfoCubes vierges.")
				GIVEITEM(1501)
				GIVEITEM(1501)
				ACTIVATEDIALOGTRIGGER(2)
				ENDDIALOG()

			else
				--ein item zurueckgeben, das schon genommen wurde
				SAY("Je ne vois qu'un seul plan. Revenez quand vous aurez l'autre.")
				GIVEITEM(5035)
			end
				
		else
			SAY("Vous n'avez pas termin�. Je vous attends.")
		end

	NODE(7)
		
		SAY("OK, d�p�chez-vous. Le temps presse.")
		ENDDIALOG()

	NODE(10)

		SAY("Cool. Alors allez-y.")
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(21)
		ENDDIALOG()

	NODE(11)
		SAY("Vous avez de la chance, je peux vous en vendre un. Ca vous fera 2500 cr�dits.")

		ANSWER("Je prends.",12)
		ANSWER("Je le prends pour 2300 cr�dits, pas un de plus.",13)
		ANSWER("Oubliez �a.",14)

	NODE(12)
		TAKEMONEY(2500)
		if (result==1) then
			GIVEITEM(1503)
			SAY("Le voil�. Maintenant, au travail.")
		else
			SAY("Ne jouez pas � �a avec moi. Si vous n'avez pas assez d'argent, il faut travailler!")
		end
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(21)
		ENDDIALOG()

	NODE(13)
		SAY("Je ne donne rien gratuitement. Trouvez-vous quelqu'un d'autre... et... mettez-vous au travail.")
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(21)
		ENDDIALOG()


	NODE(14)
		SAY("Je pense que vous en trouverez ailleurs. Je sais que vous pouvez en trouver dans nos boutiques. Faites simplement en sorte de donner les plans � %NPC_NAME(0) � temps.")
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(21)
		ENDDIALOG()


	NODE(20)

		SAY("Alors veuillez partir.")
		SAY("Je trouverai quelqu'un d'autre.")
		
		ENDDIALOG()

	NODE(21)

		SAY("Alors partez. J'ai plein de choses � faire.")
		
		ENDDIALOG()
end