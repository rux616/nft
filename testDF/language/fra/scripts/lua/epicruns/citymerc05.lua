--new
--CityMerc

--
--Trigger
--Triggernumber,Type,Person
--0,PVP,2 Black D
--1,PVP,2 Twilight G
--2,D, Marcel
--3
--
--Startnode, Person
--0, Soldat
--50, Marcel
--100, 
--150,
--200,
--250,
--
--Items
--Red Ribbon...Marcel

function DIALOG()
--------------------------------------------------------------------
--Human Resource Director
--0
	
	NODE(0)
		SAY("Cette fois, c'est du sérieux, soldat. On diraît que tous nos ennemis ont décidé de frapper en même temps. On ne peut les laisser s'en tirer comme ça, il faut faire quelque chose.")

		ANSWER("Ceux qui nous menacent doivent se préparer à des représailles. Vous pouvez compter sur moi.",1)
		ANSWER("J'ai autre chose à faire d'abord.",4)
	NODE(1)
		SAY("Très bien, j'aime entendre ça. Le problème, c'est qu'ils ont recours à des tactiques de guérilla. Dès que nous concentrons nos forces pour frapper un grand coup, ils disparaissent. C'est pourquoi nous allons les vaincre avec leur propre tactique, même si c'est probablement une manoeuvre à laquelle ils s'attendent.")

		ANSWER("En utilisant de petits groupes pour attaquer leurs points sensibles?",2)
	NODE(2)
		SAY("Vous comprenez vite. Nous allons utiliser des soldats isolés et les frapper là où ça fait mal. Vous allez devoir tuer un runner des Gardiens du Crépuscule, et un runner du Dragon Noir. Cela nous donnera assez de temps pour préparer la contre-attaque. Souvenez-vous que vous ne serez pas le seul soldat sur cette mission.")

		ANSWER("Considérez-la comme accomplie. Quelque chose à ajouter?",3)
	NODE(3)
		SAY("Oui : ne tuez que des runners qui sont de force égale à vous. Ignorez les plus forts, et les plus faibles ne sont pas dignes de votre attention Lorsque vous avez fait terminé, Marcel a demandé à vous voir personnellement. Bonne chance, nous comptons sur vous.")
		SETNEXTDIALOGSTATE(5)
		STARTMISSION()
		ENDDIALOG()
		
	NODE(4)
		SAY("Si vous le devez, alors faites-le. Mais dépêchez-vous, nos ennemis ne nous attendrons pas.")
		ENDDIALOG()
	NODE(5)
		SAY("N'oubliez pas : un runner des Gardiens du Crépuscule, et un du Dragon Noir. Et allez parler à Marcel quand vous avez terminé.")

		ENDDIALOG()

--Spieler killt je zwei BD und TG
--------------------------------------------------------------------
--MArcel
--50
	NODE(50)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Je pensais vous avoir demandé de tuer un runner du Dragon Noir et un des Gardiens du Crépuscule. Ne revenez que lorsque vous avez terminé le travail.")
			ENDDIALOG()
		else
			ISMISSIONTARGETACCOMPLISHED(1)
			if(result==0)then
				SAY("Je pensais vous avoir demandé de tuer un runner du Dragon Noir et un des Gardiens du Crépuscule. Ne revenez que lorsque vous avez terminé le travail.")
				ENDDIALOG()
			else	
				GIVEITEM()
--Red Ribbon
				SAY("Vous avez été jusqu'ici la personne à recevoir son Ruban Rouge le plus rapidement, et j'admets que vous l'avez mérité. Voilà le genre de soldats dont on aura besoin bientôt. De grands changements vont survenir. Mais assez parlé, voici votre Ruban Rouge. Il est la preuve du dévouement et du courage que vous avez montré.")

				ANSWER("Merci, j'y ferai honneur. Mais qu'entendez-vous par grands changements?",51)
			end
		end
	NODE(51)
		SAY("Vous avez beaucoup travaillé ces derniers temps, je comprends que vous ne soyez pas au courant. Félicitations, vous avez vraiment mis la pagaille dans les rangs ennemis, avec l'aide de vos camarades courageux. Mais de mon côté, je ne suis pas resté à me tourner les pouces. Tout est en train de changer. Je sais que de plus en plus de Mercs me soutiennent. Et je pense que l'Oeil va devoir passer la main bientôt.")

		ANSWER("Vous pensez affronter Cajun?",52)
	NODE(52)
		GIVEMONEY(20000)
		SAY("Seulement si c'est nécessaire. Je suis un CityMerc dévoué, et je vais tenter de préserver ce qu'ils ont toujours été. Mais je vais avoir besoin de temps pour réunir mes hommes. Allez vous reposer. Je compte sur vous pour bientôt. (prochaine mission au niveau 45)")
		ACTIVATEDIALOGTRIGGER(2)
		EPICRUNFINISHED(11,4)	
		ENDDIALOG()


end