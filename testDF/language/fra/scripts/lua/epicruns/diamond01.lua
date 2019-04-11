--new
--Diamond Real Estate
--
--Trigger
--Triggernumber,Type,Person
--0,D,Grimm
--1
--2
--3
--
--Startnode, Person
--0, Human Resource Director
--50, Thompson
--100, Foster
--150,Jenna
--200,Human Resource Director
--250,
--
--Items
--

function DIALOG()
--------------------------------------------------------------------
--Human Resource Director
--0
	
	NODE(0)
		SAY("Ahh, bienvenue � Diamond. Nous avons suivi de pr�s votre progr�s jusqu'ici et certains ici ont �t� tr�s impressionn�s. Pour le prouver, on a d�cid� de vous donner une t�che qui exige une certaine comp�tence.")

		ANSWER("Je suis heureux d'apprendre cela.",1)
		ANSWER("Avant d'accepter une telle t�che, je crois que je devrais me pr�parer un peu mieux.",5)
	NODE(1)
		SAY("Comme vous devez d�j� le savoir, nous faisons face � certaines difficult�s � cause de ces impr�visibles Dragons Noirs . Ce sont des criminels impitoyables qui ne renonceraient � rien pour atteindre leurs buts. M�me avant que Diamond ne soit privatis� en 2046, le Dragon Noir a �t� la menace la plus s�rieuse que nous ayons eu � traiter.")

		ANSWER("Pourquoi? Que veulent-ils? Diamond ne fait des affaires que dans l'immobilier.",2)
	NODE(2)
		SAY("Oui, exactement. Le but du Dragon Noir est de dominer le march� de l'immobilier, et la seule mani�re de l'atteindre est de neutraliser Diamond. Nous d�j� avons d� diminuer nos efforts dans la r�gion de Pepper Park, puisque le Dragon Noir menace nos clients. M�me Eric Danmund lui-m�me, le chef de Diamond a d�cr�t� l'�tat d'urgence.")

		ANSWER("C'est dommage, mais je croyais que vous vouliez me parler au sujet de ma t�che.",3)
	NODE(3)
		SAY("Naturellement, mais je suis d'avis que vous devriez avoir quelques connaissances de base. Trop de gens ne savent pas que presque tous les appartements et magasins sont propri�t� de Diamond. Sauf que les probl�mes avec le Dragon Noir se sont aggrav�s encore r�cemment. Ils ont d�j� �loign� certains de nos clients. Diamond voudrait que vous rendiez visite � deux personnes qui veulent clore leurs contrats avec nous. Vous devrez les convaincre de revenir sur leur d�cision. �videmment le Dragon Noir ont quelque chose faire avec ceci. Apr�s que vous les aurez convaincus, vous pourriez aller au NCPD et vous assurer qu'ils soient au courant du probl�me avec le Dragon Noir.")

		ANSWER("O� puis-je trouver ces deux personnes? Je ferai de mon mieux.",4)
	NODE(4)
		SAY("Vous trouverez le premier client dans Plaza 02, il a accept� une rencontre dans le restaurant Gariots. Vous trouverez l'autre dans ViaRosso 03. S'il vous reste du temps, ensuite vous devriez vraiment aller au NCPD et venir me faire un compte-rendu de votre travail.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()
		
	NODE(5)
		SAY("Faites donc. Soyez toujours en forme, c'est important. Revenez une fois que vous penserez vous �tre suffisamment pr�par�.")
		ENDDIALOG()

--------------------------------------------------------------------
--Thompson
--50
	NODE(50)
		SAY("Bonjour, �tes-vous le repr�sentant Diamond?")

		ANSWER("Oui, d�sol� de mon retard.",51)
	NODE(51)
		SAY("Alors vous ne savez pas encore ce que ces b�tards nous ont fait? ")

		ANSWER("Non, d�sol�.",52)
	NODE(52)
		SAY("Ils ont d�fonc� la porte apr�s avoir neutralis� notre syst�me d'alarme. Pointant leurs pistolets vers nous, ils nous ont forc�s � rester dans un coin de notre appartement tandis qu'ils vidaient nos tiroirs et nos meubles. Ils ont empil� toutes nos affaires sur une table et y ont mis le feu. Nous avons d� patiemment attendre et les regarder br�ler tous nos v�tements, ma fille pleurait et je pouvais rien faire. Ensuite ils sont partis, nous mena�ant de revenir si nous ne quittions pas notre appartement.")

		ANSWER("C'est terrible. Avez-vous alert� le NCPD?",53)
	NODE(53)
		SAY("Oui et ils m'ont dit qu'ils ne pouvaient rien faire, que les brutes d�crites n'apparaissent dans aucun dossier de CityAdmin. Je suis d�sol� mais la seule chose que je peux faire dans ces circonstances est de r�silier le contrat avec Diamond. Ma petite fille Jasmine ne quitte pas sa m�re m�me une seconde sans �clater en larmes.")

		ANSWER("Je comprends. Dans ces circonstances tout le monde agirait comme cela. Mais si jamais vous changez d'avis, vous savez que Diamond est l�.",54)
	NODE(54)
		SAY("Merci de l'offre. Nous avons toujours eu de bonnes exp�riences avec Diamond, mais je ne peux pas continuer comme �a.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(55)
		ENDDIALOG()
		
	NODE(55)
		SAY("Ma d�cision est prise. Je ne veux pas la changer, c'est pour mon enfant.")
		ENDDIALOG()



--------------------------------------------------------------------
--fOSTER
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Ne me d�rangez pas. Notre rencontre n'est pas pour tout de suite, et j'ai encore des choses � faire.")
			ENDDIALOG()
		else

			SAY("Vous �tes le repr�sentant de Diamond, c'est �at?")

			ANSWER("C'est moi. Je viens pour qu'on parle de votre futur en tant que client de la compagnie.",101)

		end
	NODE(101)
		SAY("Tentez votre chance alors, bien que je pense que ce sera en vain. Je ne continuerai pas mon contrat avec Diamond.")

		ANSWER("Je respecte votre d�cision mais je voudrais entendre quelles sont vos raisons.",102)
	NODE(102)
		SAY("Je ne veux pas vraiment en parler puisqu'elles sont personnelles.")

		ANSWER("Je vous assure que toutes les mesures ont �t� prises contre ces brutes, s'ils �taient responsables dans ce cas-ci.",103)
	NODE(103)
		SAY("Toutes les pr�cautions possibles?! Ca ne suffit pas! Comment comptez-vous �viter de telles choses � l'avenir?!")

		ANSWER("Je suis s�r que nos experts en mati�re de s�curit� vont s'en occuper.",104)
	NODE(104)
		SAY("Que pensez-vous que vos experts en mati�re de s�curit� peuvent faire contre six tanks massifs qui envahissent votre appartement et vous forcent � avaler le contenu en entier de votre Cryofridge?!! Je dois encore prendre des pilules � cause de cet incident! Bon, maintenant vous savez de quoi je parle, vous �tes content?")

		ANSWER("Vous avez raison. Je ferais mieux d'aller voir le NCPD personnellement.",105)
	NODE(105)
		SAY("Allez-y et essayez, mais �a ne m'a pas aid�. Le contrat est annul� de toute fa�on. D�sol�.")
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(106)
		ENDDIALOG()
		
	NODE(106)
		SAY("Je ne vais pas changer d'avis. Bonne journ�e.")
		ENDDIALOG()
--------------------------------------------------------------------
--Jenna
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Pour toute question, veuillez demander � un employ�  .")
			ENDDIALOG()
		else
			SAY("D�crivez vos intentions, citoyen.")

			ANSWER("Je viens de Diamond et je veux rapporter que nos clients sont harcel�es par des brutes qui les forcent � abandonner leurs maisons. Par la force, je pr�cise.",151)
		end
	NODE(151)
		SAY("Oui, nous avons �t� inform�s � ce sujet dans plusieurs cas, 36 exactement. Mais nous manquons toujours d'information essentielle pour poursuivre l'enqu�te. Je suis d�sol�e.")

		ANSWER("Quoi? Tant que �a? Et vous me dites que toutes ces personnes ne peuvent pas vous donner assez de d�tails sur les criminels? Que suis-je suppos� penser de ceci?",152)
	NODE(152)
		SAY("Les descriptions des criminels n'apparaissent dans aucun de nos dossiers. Selon nos dossiers ils n'existent pas. Ils ne sont simplement pas enregistr�s dans Neocron. Le NCPD suspecte le Dragon Noir d'�tre derri�re ceci mais jusqu'� ce point seulement quelques ex�cutions pr�ventives ont �t� ex�cut�es.")

		ANSWER("Ex�cutions pr�ventives? Mais le NCPD...",153)
	NODE(153)
		SAY("D�sol� citoyen. Tout le monde ici fait de son mieux. Je ne peux pas vous en dire plus.")
		ACTIVATEDIALOGTRIGGER(2)
		SETNEXTDIALOGSTATE(154)
		ENDDIALOG()

	NODE(154)
		SAY("Le NCPD essaie de maintenir la paix dans Neocron. Le NCPD se donne toujours � 110 pourcent. Par cons�quent vous pouvez retourner chez Diamond et soyez assur� que nous trouverons t�t ou tard.")	
		ENDDIALOG()
--------------------------------------------------------------------
-- Human Resource Director
--200
	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Soyez toujours gentil et amical. Un client attend dans la Plaza 02 et l'autre dans ViaRosso 03. Vous les trouverez dans un des divers restaurants du quartier.")
			ENDDIALOG()
		else
			SAY("Vous revoil�. C'�tait assez rapide. Vous semblez �tre une personne tr�s d�termin�e.")

			ANSWER("D�termin� est un peu exag�r�. Les clients �taient forc�s de quitter leur propri�t� par des brutes.",201)
		end
	NODE(201)
		SAY("Avez-vous �t� capable de les convaincre de revenir chez Diamond?")

		ANSWER("Malheureusement pas et ce n'est pas une co�ncidence. Ces personnes ont vraiment souffert et m�me le NCPD est confront� � une �nigme.",202)
	NODE(202)
		GIVEMONEY(1000)
		SAY("Nouvelles tr�s d�stabilisantes. Je devrai les exp�dier aux sup�rieurs. M. Danmund devrait entendre parler de ceci. Vous n'avez pas exactement accompli votre t�che avec succ�s, n�anmoins Diamond vous donne ces 1000 cr�dits. Si vous d�sirez, vous pouvez am�liorer vos qualifications, et revenir nous rendre visite plus tard pour une nouvelle mission (prochaine mission au niveau 20)")
		EPICRUNFINISHED(2,0)
		ACTIVATEDIALOGTRIGGER(3)
		ENDDIALOG()

end