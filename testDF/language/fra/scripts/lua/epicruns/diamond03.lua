--new
--Diamond Real Estate
--
--Trigger
--Triggernumber,Type,Person
--0,D, Simmons 50
--1,D, Simmons 150
--2,D, Simmons 250
--3,D, Human Resource Director 300
--
--Startnode, Person
--0, Human Resource Director
--50, Simmons
--100, Crazy Dillan
--150, Simmons
--200, Max Delavare
--250, Simmons
--300, Human resource Director
--
--Items
--Paket mit Wohnungsschl�sseln. 100 Crazy 9351
--CATHRINE ID CUBE 9355

function DIALOG()
--------------------------------------------------------------------
--Human Resource Director
--0
	
	NODE(0)
		SAY("Ravi de vous revoir. Les choses ont �volu� pendant votre absence. Le Dragon Noir ne nous laisse pas de r�pit, et en attendant la mise en place du contrat avec CityMercs nous perdons beaucoup de clients. Et maintenant, on sait que certains ont pens� tirer avantage de la situation actuelle.")

		ANSWER("Je vois que les vautours se pressent...",1)
	NODE(1)
		SAY("Une compagnie immobili�re ind�pendante est en train de tirer avantage de la situation pour vendre ses logements � un prix plus �lev�. Nous ne pouvons pas tol�rer cette situation.")

		ANSWER("Je comprends, �a n'est pas bon pour les affaire. Qu'est-ce qu'on peut faire?",2)
	NODE(2)
		SAY("Diamond veut donner � tous ses vendeurs de Diamond un pourcentage sur leurs ventes. Ainsi, nous aurons plus de vendeurs, plus d'appartements, et cela nous permettra d'�craser la comp�tition.")

		ANSWER("Logique. Mais l'op�ration va co�ter cher. Et moi, qu'est-ce que je fais dans cette histoire?",3)
		ANSWER("Si vous �tes en train de me proposer une mission, j'ai bien peur de devoir vous faire attendre.",5)
	NODE(3)
		SAY("J'allais vous demander de convaincre un revendeur ind�pendant de rejoindre notre compagnie. Salaire � d�battre.")

		ANSWER("Je peux essayer. Mais ces ind�pendants ne sont en g�n�ral pas faciles � convaincre.",4)
	NODE(4)
		SAY("Si vous r�ussissez, Diamond aura une prime pour vous aussi. Bonne chance. Il s'appelle Simmons, je pense que vous le trouverez dans Pepper Park 02. On a organis� une rencontre dans un des restaurants de ce quartier. Il n'y en a pas beaucoup, vous devriez le rep�rer facilement.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(300)
		ENDDIALOG()
	NODE(5)
		SAY("C'est comme vous voulez. Mais on ne sera pas toujours en mesure de vous proposer des missions.")
		ENDDIALOG()
--------------------------------------------------------------------
-- Simmons
--50
	NODE(50)
		SAY("Vous �tes de Diamond?")

		ANSWER("Si vous �tes Simmons, oui. C'est � vous que je dois parler. Vous pouvez m'accorder un peu de votre temps?",51)
	NODE(51)
		SAY("Vous venez vraiment de Diamond?")

		ANSWER("Vous semblez sceptique. Oui, c'est bien avec moi que vous avez rendez-vous.",52)
	NODE(52)
		SAY("Tr�s bien. J'ai toujours l'impression d'�tre suivi. Toutes les nuits, on entend des tirs d'arme au plasma, et des hurlements dans Pepper park. Si on est pas sur ses gardes tout le temps, autant se faire sauter le caisson tout de suite, le r�sultat sera le m�me.")

		ANSWER("N'oubliez pas les GenReps, il y en a partout.",53)
	NODE(53)
		SAY("Quoi, vous voulez dire le clonage? R�fl�chissez un peu. Imaginez-vous en train de crevez dans une all�e sombre, dans un tas de poubelles. Et votre code g�n�tique est dupliqu�. Je vous le demande: est-ce que vous �tes le clone, ou plut�t le cadavre vautr� dans le tas de poubelles? Et le clone n'est-il pas simplement quelqu'un d'autre qui prend votre place?")

		ANSWER("Ca vaut le coup d'y r�fl�chir.",54)
	NODE(54)
		SAY("C'est pour �a que j'ai choisi un travail o� on ne prend pas de risques. L'immobilier. Mais m�me ce secteur est devenu un terrain de chasse. Il y a des membres du Dragon Noir partout, et ils sont pr�ts � me tuer. Les Tsunami, c'est du pareil au m�me, mais heureusement qu'ils se fichent de l'immobilier.")

		ANSWER("Et c'est pour �a que je suis l�. Diamond a une proposition � vous faire.",55)
	NODE(55)
		SAY("Une proposition? Arr�tez de vous moquer de moi, c'est pas plut�t un pi�ge?")

		ANSWER("Non, pas du tout. Diamond veut vraiment vous engager.",56)
	NODE(56)
		SAY("Moi, travailler pour Diamond? Ah non, en ce moment c'est vraiment pas possible.")

		ANSWER("C'est dommage. Mais si jamais vous changez d'avis...",57)
	NODE(57)
		SAY("Attendez! Je viens de changer d'avis, justement... mais � une condition!")

		ANSWER("Voil� qui est mieux. J'�coute.",58)
	NODE(58)
		SAY("Voil�... J'ai des probl�mes avec certaines personnes. Je suis dedans jusqu'au cou.")

		ANSWER("Vous avez besoin d'argent? Je pense que Diamond pourrait...",59)
	NODE(59)
		SAY("Non, non, pas d'argent. Enfin si, de l'argent si vous voulez, mais j'ai vraiment besoin d'aide. Si vous m'aidez, alors j'entrerai chez Diamond. Je suis au bout du rouleau, vous savez!")

		ANSWER("Pourquoi? En quoi est-ce qu'on peut vous aider?",60)
	NODE(60)
		SAY("C'est... C'est ma femme. Elle a �t� kidnapp�e par un type. Certainement du Dragon Noir. Leur chef s'appelle Max. J'en sais pas plus. Ils ont menac� de la tuer si je ne leur donnais pas les cl�s des appartements que j'ai. C'est affreux, je ne sais pas du tout quoi faire. Je ne mange plus, je ne dors plus. Je ne sais pas ce que je ferais si quelque chose lui arrivait.")

		ANSWER("C'est incroyable... Bon, je vais faire tout ce que je peux pour vous aider. Dites-moi seulement ce qu'il faut que je fasse.",61)
	NODE(61)
		SAY("j'ai un ami qui garde des cl�s en s�curit� pour moi. Mais les kidnappeurs m'ont donn� un ultimatum, et je n'ai pas le temps d'aller chercher toutes les cl�s. Vous voulez bien les chercher chez mon ami? Je le pr�viendrai de votre visite.")

		ANSWER("Et o� est-ce que je peux le trouver, votre ami?",62)
	NODE(62)
		SAY("Il est un peu bizarre, mais faut pas avoir peur de lui. C'est un membre des Fils de l'Anarchie, il se trouve aux portes de la ville. Il s'appelle Crazy Dillan. Je vais attendre que vous reveniez, d�p�chez-vous.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()	

--------------------------------------------------------------------
-- Crazy Dillan
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Donne-moi ton argent! Ou plut�t non, je vais le prendre moi-m�me.")
			ATTACK()
			ENDDIALOG()
		else
			SAY("Yo, runner! Quelle surprise! T'as de l'argent � me donner, ou bien faut que je vienne me servir moi-m�me? Je te pr�viens, je suis un habitu� des GenReps, j'ai pas peur de la mort!")

			ANSWER("Du calme. C'est Simmons qui m'envoie.",101)
		end
	NODE(101)
		SAY("Ben pourquoi tu l'as pas dit plus t�t? C'est vache, ce qui est arriv� � sa berg�re. Si ces b�tards montrent le bout de leur nez, je vais leur en faire voir de toutes les couleurs.")

		ANSWER("Je ne sais pas qui ils sont, mais ils sont violents.",102)
	NODE(102)
--Packet mit Schl�sseln
		GIVEITEM(9351)
		SAY("Alors qu'est-ce que vous attendez? Tenez, prenez ces cl�s et retournez voir Simmons, runner. On joue plus, c'est du s�rieux!")
		
		SETNEXTDIALOGSTATE(103)
		ENDDIALOG()
		
		
	NODE(103)
		SAY("D�p�che-toi, runner! Simmons a besoin de toi!")
		ENDDIALOG()

	
--------------------------------------------------------------------
--Simmons
--150
	NODE(150)
--Schl�ssel
		TAKEITEM(9351)
		if(result==0)then
			SAY("Allez, j'ai vraiment besoin de ces cl�s. Crazy Dillan doit vous attendre � l'ext�rieur de la ville, pas tr�s loin des portes.")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(151)
			SAY("Bien bien, vous avez les cl�s? Alors je vous sugg�re d'aller voir ce type dans Outzone 5. C'est dangereux, mais c'est pas moi qui d�cide. Vous voulez bien faire �a pour moi?")

			ANSWER("Une minute... Pourquoi vous n'y allez pas vous-m�me? C'est votre femme, apr�s tout.",151)
		end
	NODE(151)
		SAY("Je... disons que j'ai eu de mauvaises exp�riences dans l'Outzone.")

		ANSWER("De mauvaises exp�riences?!! Vous allez devoir vous ressaisir, c'est tout de m�me votre femme!",152)
	NODE(152)
		SAY("OK!! JE ME CHIE DESSUS QUAND JE VAIS DANS L'OUTZONE!! Ca va, vous �tes content comme �a? Vous en avez assez? Je vous en supplie, aidez-moi � la sauver de ces enflures.")

		ANSWER("Tr�s bien, je vais m'en occuper. Mais n'oubliez pas notre march�.",153)
	NODE(153)
		SAY("Merci, merci beaucoup. Vous me donnez un grand coup de main. Je vais attendre que vous deveniez ici tous les deux.")
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(250)
		ENDDIALOG()

		
	

--------------------------------------------------------------------
-- Max Delavare
--200
	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Fiche le camp!")
			ENDDIALOG()
		else
			SAY("Tu veux quoi, runner? Tu as perdu ton chemin?")

			ANSWER("Je vous apporte les cl�s des appartements pour que vous rel�chiez Catherine.",201)
		end
	NODE(201)
		SAY("Ah, il s'est enfin d�cid� � nous payer? Je parie qu'il est d�j� en train de se pisser dessus. Mais faut admettre que sa femme �tait un beau morceau. Bon, maintenant, les clefs, avant que je sois oblig� de vous refroidir.")

		ANSWER("Une minute... '�tait'? Qu'est-ce que vous lui avez fait?",202)
	NODE(202)
		GIVEITEM(9355)

		SAY("Mais non, te fais pas de bile. Tu la trouveras quelque part dans le secteur industriel 01. Voil� un cube ID qu'on a trouv� sur elle. Maintenant, les clefs!")

		ANSWER("Non, tant que je n'ai pas la preuve que Catherine est vivante vous ne toucherez rien.",203)
	NODE(203)
		SAY("Casse-toi de l�, moucheron!")
		SETNEXTDIALOGSTATE(204)
		ENDDIALOG()

	NODE(204)
		SAY("Va te faire foutre!")
		ENDDIALOG()

--------------------------------------------------------------------
-- Simmons
--250
	NODE(250)
		TAKEITEM(9355)
--CATHRINE ID CUBE
		if(result==0)then
			SAY("Allez voir Max, et ramenez-moi ma Catherine. Ou du moins dites-moi o� elle se trouve. Une preuve, un objet, n'importe quoi...")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(251)
			SAY("Ne me faites pas attendre. O� est Catherine?")
		
			ANSWER("Je ne sais pas vraiment. Je n'ai pu avoir que ce DataCube contenant quelques notes �crites par elle.",251)
		end
	NODE(251)
		SAY("Oh mon dieu! Comment est-ce possible??")
		
		ANSWER("Je suis d�sol�. Bon, je pense que je vais vous laisser...",252)
	NODE(252)
		TAKEITEM(9351)
		if(result==0)then
			SAY("Ma pauvre Catherine... Qu'est-ce que je vais faire maintenant? Hein?")
			ACTIVATEDIALOGTRIGGER(2)
			SETNEXTDIALOGSTATE(253)
			ENDDIALOG()
		else
			SAY("Ma pauvre Catherine... Qu'est-ce que je vais faire maintenant? Hein?")
			ACTIVATEDIALOGTRIGGER(2)
			SETNEXTDIALOGSTATE(253)
			ENDDIALOG()
		end
	NODE(253)
		SAY("laissez-moi tranquille. Je n'ai pas envie de parler pour l'instant. Retournez dans votre compagnie.")
		ENDDIALOG()
--------------------------------------------------------------------
-- Human Resource Director
--300

	NODE(300)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Essayez de convaincre Simmons de rejoindre nos rangs. Vous le trouverez dans Pepper Park 02.")
			ENDDIALOG()
		else
			SAY("Ah, vous revoil�. Alors, qu'est-ce que �a a donn�?")
		
			ANSWER("Je ne veux pas en parler. Le pauvre homme a d�j� trop souffert.",301)
		end
	NODE(301)
		SAY("Les temps sont durs pour nous tous. Peut-�tre pourrons-nous r�essayer un peu plus tard. Diamond vous donnera une autre chance. Vous devriez vous entra�ner et devenir un peu plus persuasif la prochaine fois. (prochaine mission au niveau 35)")
		EPICRUNFINISHED(2,2)
		ACTIVATEDIALOGTRIGGER(3)
		ENDDIALOG()


end