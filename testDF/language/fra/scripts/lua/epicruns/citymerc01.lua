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
		SAY("Bienvenue chez CityMercs. J'esp�re que vous avez oubli� tout ce que vous avez v�cu avant, parce que chez nous vous allez commencer une nouvelle vie. Ici, il n'y a que des gens pr�ts � vendre leur �me pour leur m�tier. Le vieux Cajun vous l'expliquerait mieux que moi s'il avait du temps � passer avec chaque nouvelle recrue. C'est notre chef, et tout le monde l'appelle l'Oeil.")

		ANSWER("Compris. Par quoi est-ce qu'on commence?",1)
		ANSWER("Il me faut encore du temps avant de prendre ma d�cision.",5)
	NODE(1)
		SAY("Pas si vite. Vous aurez tout le temps d'obtenir votre ruban rouge. Nous verrons si vous vous int�grez bien au groupe. De nos jours, les recrues proviennent principalement de la ville. Pour la plupart, ils ne font pas le poids et partent au bout d'une semaine.")

		ANSWER("La vie est si difficile que �a chez les Mercs?",2)
	NODE(2)
		SAY("Si vous passez les premi�res semaines, �a sera plus facile par la suite. Et peut-�tre qu'un jour vous porterez m�me un ruban noir, qui sait.")

		ANSWER("Euh... On ne peut pas dire que �a me rassure.",3)
	NODE(3)
		SAY("Bon. Allons-y doucement. Regardez autour de vous, et r�fl�chissez. Voulez-vous passez votre vie avec nous ou pas? Oh, et avant que j'oublie : vous voulez bien me faire la faveur de livrer ce colis � notre chef de groupe Marcel? Ses hommes ont �t� bless�s lors de la derni�re mission. Il se trouve dans la base militaire, secteur 2. Essayez les diff�rents entrep�ts. Il aime bien cet endroit, ne me demandez pas pourquoi...")

		ANSWER("Bon, tr�s bien. Et si je change d'avis?",4)
	NODE(4)
--PAKET MIT MEDIZIN
		GIVEITEM(1)
		SAY("Vous me direz �a apr�s la livraison. Vous pouvez aussi demander � des officiers de recrutement de vous donner de nouvelles missions et des infos. Les infos ne restent pas secr�tes bien longtemps chez nous, si vous voyez ce que je veux dire.")
		SETNEXTDIALOGSTATE(150)
		STARTMISSION()
		ENDDIALOG()
	NODE(5)
		SAY("Comme vous voulez. Revenez quand vous avez d�cid�.")
		ENDDIALOG()
	

--------------------------------------------------------------------
--Marcel
--50
	NODE(50)
		SAY("Qu'est-ce que vous faites ici? Attention � pas vous perdre, on sait jamais ce qui pourrait vous arriver.")

		ANSWER("Qu'est-ce que vous voulez dire? C'est une menace?",51)
	NODE(51)
		SAY("Pourquoi toujours penser au pire? Non, je ne vous menace pas. Mais vous pourriez faire de mauvaises rencontres. Sinon, je ne crois pas vous avoir d�j� rencontr�.")

		ANSWER("Pas �tonnant, je viens d'arriver. J'ai une livraison pour les bless�s de votre groupe.",52)
	NODE(52)
		SAY("Il �tait temps. Ils ne sont pas gri�vement bless�s, mais ils veulent �tre en pleine forme lorsqu'ils recevront leur ruban rouge.")

		ANSWER("Qu'est-ce que c'est, un ruban rouge?",53)
	NODE(53)
		SAY("Ha, alors vous venez vraiment d'arriver, il n'y a pas de doute! Un ruban rouge est ue r�compense que vous obtenez lorsque vous �tes bless� au combat. Si vous obtenez un ruban rouge, vous pouvez vous choisir un pseudonyme qui n'appartient qu'� vous.")

		ANSWER("Et moi, je pourrai en avoir un?",54)
	NODE(54)
		SAY("Non. Du moins, pas encore. Vous devrez passer les tests d'entra�nement, puis avoir un ruban blanc avant d'obtenir le ruban rouge.")

		ANSWER("J'aimerais en savoir plus � ce sujet.",55)
	NODE(55)
		SAY("Alors demandez � quelqu'un d'autre, je n'ai pas envie de tout expliquer. Surtout depuis que Cajun a d�cid� de ne pas attaquer les Anges D�chus. Je ne veux pas perdre mon temps avec �a. Mas les choses vont d�g�n�rer, vous allez voir.")

		ANSWER("Pourquoi attaquer les Anges D�chus?",56)
	NODE(56)
		SAY("Parce qu'ils sont ennemis de Tangent, et que Tangent nous paye pour les attaquer. Mais Cajun, l'Oeil, semble bien les aimer malgr� tout. Il est grand temps que les choses changent. Bon, il est temps de donner ces m�dicaments � mes hommes. Ils sont ici dans cette pi�ce. Maintenant d�p�chez-vous.")
		SETNEXTDIALOGSTATE(57)
		ENDDIALOG()
		ACTIVATEDIALOGTRIGGER(0)

	NODE(57)
		SAY("Si vous voulez vraiment entrer chez les CityMercs, vous allez devoir faire preuve d'un peu plus de discipline. Mes hommes sont ici dans cette pi�ce.")
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
			SAY("Tenez, c'est pour vous. On a une bonne raison de faire la f�te.")

			ANSWER("Hum. Donc c'est vous le m�decin?",101)
		end
	NODE(101)
		TAKEITEM(9452)
		if(result==0)then
			SAY("O� est mon m�dicament?")
			ENDDIALOG()
		else
			SAY("Tr�s bien, maintenant je sais que je serai en pleine forme pour obtenir mon ruban rouge. Marcel sera fier de nous.")

			ANSWER("Marcel est un bon chef?",102)
		end
	NODE(102)
		SAY("Oui, certainement. Il est toujours concentr�, il ne rate jamais sa cible. Mais il est plut�t froid et insensible. Enfin, j'imagine que c'est le grade qui veut �a. Peut-�tre que �a a un lien avec ce qui s'est pass� il y a quelques mois.")

		ANSWER("Quoi donc?",103)
	NODE(103)
		SAY("Marcel a vraiment mis Cajun en col�re. Apparemment, il aurait d�sob�i � un ordre direct. Il a �t� envoy� au trou pour �a. Il aurait d� faire des excuses en sortant, mais il n'en a pas fait. Il pouvait � peine se tenir debout, parce que quand on est au trou on a pas de place pour bouger, se tenir debout... Cajun n'a pas appr�ci� qu'il ne s'excuse pas, et il n'a renvoy� au trou trois jours de plus.")

		ANSWER("Six jours? C'est dur...",104)
	NODE(104)
		SAY("C'est ce que certains pensent ici. Beaucoup ont eu de la peine pour lui. M�me Cajun a regrett�, mais il n'a pas pou revenir sur sa d�cision, sinon il aurait perdu sa r�putation. Mais Marcel n'a pas fait d'excuses en sortant, et il a gagn� une grande r�putation aupr�s de tout le monde. Bon, assez parl�, voyons ces m�dicaments. J'esp�re que les Nanobots seront plus tendres avec moi la prochaine fois.")
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(105)
		ENDDIALOG()

	NODE(105)
		SAY("Merci encore pour les m�dicaments.")
		ENDDIALOG()
		

--------------------------------------------------------------------
--Soldat
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Vous avez donn� les m�dicaments � Marcel, dans le secteur Base Militaire 2?")
			ENDDIALOG()
		else
			SAY("Alors, votre d�cision?")

			ANSWER("Je veux rejoindre CityMercs.",151)
		end
	NODE(151)
		GIVEMONEY(2000)
		SAY("Sage d�cision. Pr�parez-vous autant que possible, et contactez-nous quand vous vous sentez apte pour votre premi�re �preuve. Allez voir notre officier de recrutement le moment venu. Ensuite, vous pourrez devenir l'un des n�tres. Tenez, quelques cr�dits pour votre entra�nement. (prochaine mission au niveau 20)")
		EPICRUNFINISHED(11,0)		
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()

end