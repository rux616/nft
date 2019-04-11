--new
--CityMerc
--
--Trigger
--Triggernumber,Type,Person
--0,D,Marcel
--1,D,Eljena
--2,D,Soldat 150
--3
--
--Startnode, Person
--0, Recruitment Officer
--50, Marcel
--100, Eljena
--150, Soldat
--200,
--250,
--
--Items
--

function DIALOG()
--------------------------------------------------------------------
--Soldat
--0
	
	NODE(0)
		SAY("Bienvenue chez CityMercs. J'espère que vous avez oublié tout ce que vous avez vécu avant, parce que chez nous vous allez commencer une nouvelle vie. Ici, il n'y a que des gens prêts à vendre leur âme pour leur métier. Le vieux Cajun vous l'expliquerait mieux que moi s'il avait du temps à passer avec chaque nouvelle recrue. C'est notre chef, et tout le monde l'appelle l'Oeil.")

		ANSWER("Compris. Par quoi est-ce qu'on commence?",1)
		ANSWER("Il me faut encore du temps avant de prendre ma décision.",5)
	NODE(1)
		SAY("Pas si vite. Vous aurez tout le temps d'obtenir votre ruban rouge. Nous verrons si vous vous intégrez bien au groupe. De nos jours, les recrues proviennent principalement de la ville. Pour la plupart, ils ne font pas le poids et partent au bout d'une semaine.")

		ANSWER("La vie est si difficile que ça chez les Mercs?",2)
	NODE(2)
		SAY("Si vous passez les premières semaines, ça sera plus facile par la suite. Et peut-être qu'un jour vous porterez même un ruban noir, qui sait.")

		ANSWER("Euh... On ne peut pas dire que ça me rassure.",3)
	NODE(3)
		SAY("Bon. Allons-y doucement. Regardez autour de vous, et réfléchissez. Voulez-vous passez votre vie avec nous ou pas? Oh, et avant que j'oublie : vous voulez bien me faire la faveur de livrer ce colis à notre chef de groupe Marcel? Ses hommes ont été blessés lors de la dernière mission. Il se trouve dans la base militaire, secteur 2. Essayez les différents entrepôts. Il aime bien cet endroit, ne me demandez pas pourquoi...")

		ANSWER("Bon, très bien. Et si je change d'avis?",4)
	NODE(4)
--PAKET MIT MEDIZIN
		GIVEITEM(1)
		SAY("Vous me direz ça après la livraison. Vous pouvez aussi demander à des officiers de recrutement de vous donner de nouvelles missions et des infos. Les infos ne restent pas secrètes bien longtemps chez nous, si vous voyez ce que je veux dire.")
		SETNEXTDIALOGSTATE(150)
		STARTMISSION()
		ENDDIALOG()
	NODE(5)
		SAY("Comme vous voulez. Revenez quand vous avez décidé.")
		ENDDIALOG()
	

--------------------------------------------------------------------
--Marcel
--50
	NODE(50)
		SAY("Qu'est-ce que vous faites ici? Attention à pas vous perdre, on sait jamais ce qui pourrait vous arriver.")

		ANSWER("Qu'est-ce que vous voulez dire? C'est une menace?",51)
	NODE(51)
		SAY("Pourquoi toujours penser au pire? Non, je ne vous menace pas. Mais vous pourriez faire de mauvaises rencontres. Sinon, je ne crois pas vous avoir déjà rencontré.")

		ANSWER("Pas étonnant, je viens d'arriver. J'ai une livraison pour les blessés de votre groupe.",52)
	NODE(52)
		SAY("Il était temps. Ils ne sont pas grièvement blessés, mais ils veulent être en pleine forme lorsqu'ils recevront leur ruban rouge.")

		ANSWER("Qu'est-ce que c'est, un ruban rouge?",53)
	NODE(53)
		SAY("Ha, alors vous venez vraiment d'arriver, il n'y a pas de doute! Un ruban rouge est ue récompense que vous obtenez lorsque vous êtes blessé au combat. Si vous obtenez un ruban rouge, vous pouvez vous choisir un pseudonyme qui n'appartient qu'à vous.")

		ANSWER("Et moi, je pourrai en avoir un?",54)
	NODE(54)
		SAY("Non. Du moins, pas encore. Vous devrez passer les tests d'entraînement, puis avoir un ruban blanc avant d'obtenir le ruban rouge.")

		ANSWER("J'aimerais en savoir plus à ce sujet.",55)
	NODE(55)
		SAY("Alors demandez à quelqu'un d'autre, je n'ai pas envie de tout expliquer. Surtout depuis que Cajun a décidé de ne pas attaquer les Anges Déchus. Je ne veux pas perdre mon temps avec ça. Mas les choses vont dégénérer, vous allez voir.")

		ANSWER("Pourquoi attaquer les Anges Déchus?",56)
	NODE(56)
		SAY("Parce qu'ils sont ennemis de Tangent, et que Tangent nous paye pour les attaquer. Mais Cajun, l'Oeil, semble bien les aimer malgré tout. Il est grand temps que les choses changent. Bon, il est temps de donner ces médicaments à mes hommes. Ils sont ici dans cette pièce. Maintenant dépêchez-vous.")
		SETNEXTDIALOGSTATE(57)
		ENDDIALOG()
		ACTIVATEDIALOGTRIGGER(0)

	NODE(57)
		SAY("Si vous voulez vraiment entrer chez les CityMercs, vous allez devoir faire preuve d'un peu plus de discipline. Mes hommes sont ici dans cette pièce.")
		ENDDIALOG()

--------------------------------------------------------------------
--Eljena
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Je n'en peux plus d'attendre mon ruban rouge. Mais qu'est-ce que vous faites ici?")
			ENDDIALOG()
		else
			GIVEITEM(804)
			SAY("Tenez, c'est pour vous. On a une bonne raison de faire la fête.")

			ANSWER("Hum. Donc c'est vous le médecin?",101)
		end
	NODE(101)
		TAKEITEM(9452)
		if(result==0)then
			SAY("Où est mon médicament?")
			ENDDIALOG()
		else
			SAY("Très bien, maintenant je sais que je serai en pleine forme pour obtenir mon ruban rouge. Marcel sera fier de nous.")

			ANSWER("Marcel est un bon chef?",102)
		end
	NODE(102)
		SAY("Oui, certainement. Il est toujours concentré, il ne rate jamais sa cible. Mais il est plutôt froid et insensible. Enfin, j'imagine que c'est le grade qui veut ça. Peut-être que ça a un lien avec ce qui s'est passé il y a quelques mois.")

		ANSWER("Quoi donc?",103)
	NODE(103)
		SAY("Marcel a vraiment mis Cajun en colère. Apparemment, il aurait désobéi à un ordre direct. Il a été envoyé au trou pour ça. Il aurait dû faire des excuses en sortant, mais il n'en a pas fait. Il pouvait à peine se tenir debout, parce que quand on est au trou on a pas de place pour bouger, se tenir debout... Cajun n'a pas apprécié qu'il ne s'excuse pas, et il n'a renvoyé au trou trois jours de plus.")

		ANSWER("Six jours? C'est dur...",104)
	NODE(104)
		SAY("C'est ce que certains pensent ici. Beaucoup ont eu de la peine pour lui. Même Cajun a regretté, mais il n'a pas pou revenir sur sa décision, sinon il aurait perdu sa réputation. Mais Marcel n'a pas fait d'excuses en sortant, et il a gagné une grande réputation auprès de tout le monde. Bon, assez parlé, voyons ces médicaments. J'espère que les Nanobots seront plus tendres avec moi la prochaine fois.")
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(105)
		ENDDIALOG()

	NODE(105)
		SAY("Merci encore pour les médicaments.")
		ENDDIALOG()
		

--------------------------------------------------------------------
--Soldat
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Vous avez donné les médicaments à Marcel, dans le secteur Base Militaire 2?")
			ENDDIALOG()
		else
			SAY("Alors, votre décision?")

			ANSWER("Je veux rejoindre CityMercs.",151)
		end
	NODE(151)
		GIVEMONEY(2000)
		SAY("Sage décision. Préparez-vous autant que possible, et contactez-nous quand vous vous sentez apte pour votre première épreuve. Allez voir notre officier de recrutement le moment venu. Ensuite, vous pourrez devenir l'un des nôtres. Tenez, quelques crédits pour votre entraînement. (prochaine mission au niveau 20)")
		EPICRUNFINISHED(11,0)		
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()

end