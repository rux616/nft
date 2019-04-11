function DIALOG()

	NODE(0)

		SAY("Bonjour, on cherche des gens pour nettoyer la ville. Ca vous int�resse?")
		SAY("Est-ce que vous vous y connaissez en recyclage? Nous cherchons des gens pour ce type de travail.")
		
		ANSWER("Hmmm... oui.", 1)
		ANSWER("Oui, je pense.", 1)

		ANSWER("Non, pas le temps.",20)
		ANSWER("Non. Peut-�tre une autre fois.",20)
		ANSWER("Pardon, mais je n'ai jamais recycl� quoi que ce soit...",20)

	NODE(1)

		SAY("Alors �coutez-moi bien. Allez voir %NPC_NAME(0), qui travaille pour %FRACTION_NAME(%NPC_TYPE(0)) dans %NPC_WORLD(0). Vous en apprendrez plus l�-bas. Quand vous avez termin�, revenez me voir et je vous donnerai votre r�compense. Compris?")

		ANSWER("Oui.", 2)
		ANSWER("Non.", 20)

	NODE(2)
		ACCEPTMISSION()

		SAY("OK, alors ne perdez pas de temps!")

		SETNEXTDIALOGSTATE(5)
		ENDDIALOG()

	NODE(3)

		SAY("Vous venez pour le recyclage?")
		SAY("J'esp�re que vous faites partie de notre nouvelle �quipe de recyclage?")

		ANSWER("C'est exact.",4)

		ANSWER("Mais vous �tes fou! Je ne travaillerai pas pour vous, jamais!", 21)
		ANSWER("Vous vous moquez de moi! Vous me voyez en train de fouiller les poubelles, s�rieusement?",21)
		
	NODE(4)

		SAY("Mouais. Alors �coutez. Je voudrais que vous collectiez toutes les ordures que vous trouvez. Fouillez principalement dans les caisses qui tra�nent dans la rue, vous voyez de quoi je parle? Enfin bref, je vous demande au moins deux doses de 'Plastique basique', et de les porter � %NPC_NAME(4), qui vous a dit de venir ici. Ca nous servira � construire des objets. Vous avez ce qu'il faut pour recycler?")

		ANSWER("Oui, c'est bon. Je commence tout de suite.",10)
		ANSWER("Maintenant que vous le dites... non. Dites-moi, est-ce que vous savez o� je pourrais en acheter un?", 11)

		
	NODE(5)
		
		ISMISSIONTARGETACCOMPLISHED(0)
		if( result==0 ) then
			SAY("Allez demander � %NPC_NAME(0) ce dont on a besoin.")
			ENDDIALOG()
		else		
			SAY("Vous avez le plastique?")

			ANSWER("Oui, voil�.", 6)
			ANSWER("Non. Je travaille encore dessus.", 7)
		end

	NODE(6)

		TAKEITEM(282)
		if (result==1) then

			TAKEITEM(282)
			if (result==1) then
				SAY("Excellent, merci pour votre aide. Voici votre r�compense, ainsi que deux InfoCubes vierges. J'ai pens� que vous pourriez en avoir besoin un jour.")
				GIVEITEM(1501)
				GIVEITEM(1501)
				ACTIVATEDIALOGTRIGGER(2)
				ENDDIALOG()

			else
				--ein item zurueckgeben, das schon genommen wurde
				SAY("Il me semble que vous n'avez pas suffisamment de plastique. Il va falloir recycler davantage.")
				GIVEITEM(282)
			end
				
		else
			SAY("Vous n'avez encore rien produit. Retournez au travail.")
		end

	NODE(7)
		
		SAY("Alors d�p�chez-vous. Le temps passe vite.")
		ENDDIALOG()

					
	NODE(10)

		SAY("Cool. Alors allez-y.")
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(21)
		ENDDIALOG()

	NODE(11)
		SAY("Vous en avez, de la chance. J'ai un recycleur � vendre, justement. Pour 900 cr�dits seulement.")

		ANSWER("Hmmm.... j'h�site... bon, et puis zut, �a me fait gagner du temps, j'ach�te.",12)
		ANSWER("C'est cher... Je vous en donne pour 800 cr�dits.",13)
		ANSWER("900 cr�dits? Vous vous moquez de moi? Pas question!",14)


	NODE(12)
		TAKEMONEY(900)
		if (result==1) then
			GIVEITEM(1500)
			SAY("Le voil�. Vous pouvez aller travailler.")
		else
			SAY("Vous essayez de m'avoir? Si vous n'avez pas assez d'argent, aller travailler!")
		end
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(21)
		ENDDIALOG()


	NODE(13)
		
		RAND(2)

		if (result==1) then
			TAKEMONEY(800)
			if (result==1) then
				GIVEITEM(1500)
				SAY("Vous me ruinez, l�. Mais c'est d'accord. Tenez, maintenant au travail!")
			else
				SAY("Vous me prenez pour le dernier des abrutis? Vous n'avez m�me pas la moiti� de �a en poche!")
			end
			ACTIVATEDIALOGTRIGGER(1)
			SETNEXTDIALOGSTATE(21)
			ENDDIALOG()
		end

		if (result==2) then
			SAY("Mais c'est pas une oeuvre de charit�, ici! Vous feriez mieux d'aller chercher du travail ailleurs, on s'occupe pas des mendiants.")
			ACTIVATEDIALOGTRIGGER(1)
			SETNEXTDIALOGSTATE(21)
			ENDDIALOG()
		end


	NODE(14)
		SAY("Je pense que vous en trouverez sans probl�me quelque part. Pour ce que je sais, on en trouve dans beaucoup de magasins. Occupez-vous seulement de livrer ce que je vous ai demand� � %NPC_NAME(0) � temps, OK?")
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(21)
		ENDDIALOG()


	NODE(20)
		SAY("Alors d�barrassez-moi le plancher!")
		SAY("*marmonne* Esp�ce de parasite... Hors de ma vue!")
		SAY("Alors laissez-moi tranquille!")
		SAY("*hausse les �paules* Je trouverai bien quelqu'un qui sera int�ress�, ne vous en faites pas pour moi.")
		
		ENDDIALOG()

	NODE(21)

		SAY("Alors laissez-moi, j'ai beaucoup de travail.")
		
		ENDDIALOG()
end