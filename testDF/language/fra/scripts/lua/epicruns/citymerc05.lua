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
		SAY("Cette fois, c'est du s�rieux, soldat. On dira�t que tous nos ennemis ont d�cid� de frapper en m�me temps. On ne peut les laisser s'en tirer comme �a, il faut faire quelque chose.")

		ANSWER("Ceux qui nous menacent doivent se pr�parer � des repr�sailles. Vous pouvez compter sur moi.",1)
		ANSWER("J'ai autre chose � faire d'abord.",4)
	NODE(1)
		SAY("Tr�s bien, j'aime entendre �a. Le probl�me, c'est qu'ils ont recours � des tactiques de gu�rilla. D�s que nous concentrons nos forces pour frapper un grand coup, ils disparaissent. C'est pourquoi nous allons les vaincre avec leur propre tactique, m�me si c'est probablement une manoeuvre � laquelle ils s'attendent.")

		ANSWER("En utilisant de petits groupes pour attaquer leurs points sensibles?",2)
	NODE(2)
		SAY("Vous comprenez vite. Nous allons utiliser des soldats isol�s et les frapper l� o� �a fait mal. Vous allez devoir tuer un runner des Gardiens du Cr�puscule, et un runner du Dragon Noir. Cela nous donnera assez de temps pour pr�parer la contre-attaque. Souvenez-vous que vous ne serez pas le seul soldat sur cette mission.")

		ANSWER("Consid�rez-la comme accomplie. Quelque chose � ajouter?",3)
	NODE(3)
		SAY("Oui : ne tuez que des runners qui sont de force �gale � vous. Ignorez les plus forts, et les plus faibles ne sont pas dignes de votre attention Lorsque vous avez fait termin�, Marcel a demand� � vous voir personnellement. Bonne chance, nous comptons sur vous.")
		SETNEXTDIALOGSTATE(5)
		STARTMISSION()
		ENDDIALOG()
		
	NODE(4)
		SAY("Si vous le devez, alors faites-le. Mais d�p�chez-vous, nos ennemis ne nous attendrons pas.")
		ENDDIALOG()
	NODE(5)
		SAY("N'oubliez pas : un runner des Gardiens du Cr�puscule, et un du Dragon Noir. Et allez parler � Marcel quand vous avez termin�.")

		ENDDIALOG()

--Spieler killt je zwei BD und TG
--------------------------------------------------------------------
--MArcel
--50
	NODE(50)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Je pensais vous avoir demand� de tuer un runner du Dragon Noir et un des Gardiens du Cr�puscule. Ne revenez que lorsque vous avez termin� le travail.")
			ENDDIALOG()
		else
			ISMISSIONTARGETACCOMPLISHED(1)
			if(result==0)then
				SAY("Je pensais vous avoir demand� de tuer un runner du Dragon Noir et un des Gardiens du Cr�puscule. Ne revenez que lorsque vous avez termin� le travail.")
				ENDDIALOG()
			else	
				GIVEITEM()
--Red Ribbon
				SAY("Vous avez �t� jusqu'ici la personne � recevoir son Ruban Rouge le plus rapidement, et j'admets que vous l'avez m�rit�. Voil� le genre de soldats dont on aura besoin bient�t. De grands changements vont survenir. Mais assez parl�, voici votre Ruban Rouge. Il est la preuve du d�vouement et du courage que vous avez montr�.")

				ANSWER("Merci, j'y ferai honneur. Mais qu'entendez-vous par grands changements?",51)
			end
		end
	NODE(51)
		SAY("Vous avez beaucoup travaill� ces derniers temps, je comprends que vous ne soyez pas au courant. F�licitations, vous avez vraiment mis la pagaille dans les rangs ennemis, avec l'aide de vos camarades courageux. Mais de mon c�t�, je ne suis pas rest� � me tourner les pouces. Tout est en train de changer. Je sais que de plus en plus de Mercs me soutiennent. Et je pense que l'Oeil va devoir passer la main bient�t.")

		ANSWER("Vous pensez affronter Cajun?",52)
	NODE(52)
		GIVEMONEY(20000)
		SAY("Seulement si c'est n�cessaire. Je suis un CityMerc d�vou�, et je vais tenter de pr�server ce qu'ils ont toujours �t�. Mais je vais avoir besoin de temps pour r�unir mes hommes. Allez vous reposer. Je compte sur vous pour bient�t. (prochaine mission au niveau 45)")
		ACTIVATEDIALOGTRIGGER(2)
		EPICRUNFINISHED(11,4)	
		ENDDIALOG()


end